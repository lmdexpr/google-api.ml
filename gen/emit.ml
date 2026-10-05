exception Invalid of string

let invalid fmt = Printf.ksprintf (fun message -> raise (Invalid message)) fmt

type ty =
  | Base of Discovery.scalar
  | Enum of (string * string) list  (** tag, value *)
  | Named of string
  | List of ty
  | Map of ty

type field = { label : string; json : string; description : string option; ty : ty }
type shape = Record of field list | Alias of ty
type typedef = { name : string; description : string option; shape : shape }

(* OCaml lexes string literals and quoted strings inside comments too, so an unbalanced double quote
   in a description would break the build. *)
let doc text =
  let escape = function
    | ('{' | '}' | '[' | ']' | '@' | '\\') as c -> "\\" ^ String.of_char c
    | '"' -> "'"
    | c -> String.of_char c
  in
  (* A brace followed by lowercase letters and a bar opens a quoted string, escaped or not. *)
  let opens_quoted_string piece =
    String.drop_first_while (function 'a' .. 'z' | '_' -> true | _ -> false) piece
    |> String.starts_with ~prefix:"|"
  in
  String.to_seq text |> Seq.map escape |> List.of_seq |> String.concat ""
  |> String.replace_all ~sub:"(*" ~by:"( *"
  |> String.replace_all ~sub:"*)" ~by:"* )"
  |> String.split_all ~sep:"\\{"
  |> List.mapi (fun i piece -> if i > 0 && opens_quoted_string piece then " " ^ piece else piece)
  |> String.concat "\\{" |> String.trim |> String.split_on_char '\n'
  |> List.map (fun line ->
    let line = String.trim line in
    if String.is_empty line then "" else "    " ^ line)
  |> String.concat "\n" |> String.trim

(* Lowering: Discovery schemas to named OCaml types. *)

let enum values =
  let values = List.map (fun (v : Discovery.enum_value) -> v.value) values in
  let values = List.filteri (fun i value -> not (List.mem value (List.take i values))) values in
  let tags = Naming.dedupe (List.map Naming.tag values) in
  if List.mem "Unrecognized" tags then invalid "enum value collides with `Unrecognized";
  List.combine tags values

let lower_schemas (definitions : Discovery.definition list) =
  let names =
    Naming.dedupe (List.map (fun (d : Discovery.definition) -> Naming.type_ d.id) definitions)
  in
  let ids = List.combine (List.map (fun (d : Discovery.definition) -> d.id) definitions) names in
  let resolve id =
    match List.assoc_opt id ids with Some name -> name | None -> invalid "unknown schema %s" id
  in
  let rec lower ~owner state (schema : Discovery.schema) =
    match schema with
    | Scalar scalar -> Base scalar, state
    | Enum values -> Enum (enum values), state
    | Ref id -> Named (resolve id), state
    | Array items ->
      let ty, state = lower ~owner:(owner ^ "_item") state items in
      List ty, state
    | Map values ->
      let ty, state = lower ~owner:(owner ^ "_value") state values in
      Map ty, state
    | Object [] -> Base Any, state
    | Object properties ->
      let taken, defs = state in
      let name = Naming.fresh taken owner in
      let shape, (taken, defs) = record ~owner:name (name :: taken, defs) properties in
      Named name, (taken, { name; description = None; shape } :: defs)
  and record ~owner state (properties : Discovery.property list) =
    let labels =
      Naming.dedupe (List.map (fun (p : Discovery.property) -> Naming.value p.name) properties)
    in
    let field state ((p : Discovery.property), label) =
      let ty, state = lower ~owner:(owner ^ "_" ^ Naming.snake p.name) state p.schema in
      state, { label; json = p.name; description = p.description; ty }
    in
    let state, fields = List.fold_left_map field state (List.combine properties labels) in
    Record fields, state
  in
  let definition taken ((d : Discovery.definition), name) =
    let shape, (taken, inline) =
      match d.schema with
      | Object (_ :: _ as properties) -> record ~owner:name (taken, []) properties
      | Scalar _ | Enum _ | Ref _ | Array _ | Map _ | Object [] ->
        let ty, state = lower ~owner:name (taken, []) d.schema in
        Alias ty, state
    in
    taken, List.rev inline @ [ { name; description = d.description; shape } ]
  in
  let _taken, typedefs = List.fold_left_map definition names (List.combine definitions names) in
  List.concat typedefs, resolve

(* Expressions *)

let rec ty_expr = function
  | Base String -> "string"
  | Base Int -> "int"
  | Base Float -> "float"
  | Base Bool -> "bool"
  | Base Any -> "Yojson.Safe.t"
  | Enum tags ->
    "[ "
    ^ String.concat " | " (List.map (fun (tag, _) -> "`" ^ tag) tags @ [ "`Unrecognized of string" ])
    ^ " ]"
  | Named name -> name
  | List ty -> ty_expr ty ^ " list"
  | Map ty -> "(string * " ^ ty_expr ty ^ ") list"

let enum_to_string tags =
  "(function "
  ^ String.concat " | " (List.map (fun (tag, value) -> Printf.sprintf "`%s -> %S" tag value) tags)
  ^ " | `Unrecognized value -> value)"

(* Used inside [let open Yojson.Safe.Util in]. *)
let rec decoder = function
  | Base String -> "to_string"
  | Base Int -> "to_int"
  | Base Float -> "to_number"
  | Base Bool -> "to_bool"
  | Base Any -> "Fun.id"
  | Enum tags ->
    "(fun json -> match to_string json with "
    ^ String.concat " | " (List.map (fun (tag, value) -> Printf.sprintf "%S -> `%s" value tag) tags)
    ^ " | value -> `Unrecognized value)"
  | Named name -> name ^ "_of_yojson"
  | List ty -> "(convert_each " ^ decoder ty ^ ")"
  | Map ty ->
    "(fun json -> List.map (fun (key, value) -> (key, " ^ decoder ty ^ " value)) (to_assoc json))"

let rec encoder = function
  | Base String -> "(fun value -> `String value)"
  | Base Int -> "(fun value -> `Int value)"
  | Base Float -> "(fun value -> `Float value)"
  | Base Bool -> "(fun value -> `Bool value)"
  | Base Any -> "Fun.id"
  | Enum tags -> "(fun value -> `String (" ^ enum_to_string tags ^ " value))"
  | Named name -> "yojson_of_" ^ name
  | List ty -> "(fun items -> `List (List.map " ^ encoder ty ^ " items))"
  | Map ty ->
    "(fun members -> `Assoc (List.map (fun (key, value) -> (key, " ^ encoder ty
    ^ " value)) members))"

let rec references = function
  | Named _ -> true
  | List ty | Map ty -> references ty
  | Base _ | Enum _ -> false

(* Methods *)

type arg = { param : Discovery.parameter; var : string; kind : ty }

let param_ty (p : Discovery.parameter) =
  match p.schema with
  | Scalar scalar -> Base scalar
  | Enum values -> Enum (enum values)
  | Ref _ | Array _ | Map _ | Object _ -> invalid "parameter %s is not a scalar" p.name

let to_string = function
  | Base String -> "Fun.id"
  | Base Int -> "string_of_int"
  | Base Float -> "Float.to_string"
  | Base Bool -> "string_of_bool"
  | Enum tags -> enum_to_string tags
  | Base Any | Named _ | List _ | Map _ -> invalid "not a parameter type"

let args (m : Discovery.meth) =
  let labels =
    Naming.dedupe
      ("body" :: "base_url"
      :: List.map (fun (p : Discovery.parameter) -> Naming.value p.name) m.parameters)
  in
  List.map2
    (fun param label -> { param; var = label; kind = param_ty param })
    m.parameters (List.drop 2 labels)

let required args = List.filter (fun a -> a.param.required) args
let optional args = List.filter (fun a -> not a.param.required) args
let arg_ty a = if a.param.repeated then ty_expr a.kind ^ " list" else ty_expr a.kind

let query a =
  let name = a.param.name and convert = to_string a.kind in
  match a.param.required, a.param.repeated with
  | true, false -> Printf.sprintf "Google_api_runtime.Query.required %S %s %s" name convert a.var
  | true, true ->
    Printf.sprintf "Google_api_runtime.Query.repeated %S %s (Some %s)" name convert a.var
  | false, false -> Printf.sprintf "Google_api_runtime.Query.optional %S %s %s" name convert a.var
  | false, true -> Printf.sprintf "Google_api_runtime.Query.repeated %S %s %s" name convert a.var

(* The path as an OCaml expression. RFC 6570: [{var}] escapes '/', [{+var}] keeps it. *)
let path_expr path_args path =
  let value name =
    let a =
      match List.find_opt (fun a -> a.param.name = name) path_args with
      | Some a -> a
      | None -> invalid "path %s refers to an unknown parameter %s" path name
    in
    if a.param.repeated || not a.param.required then
      invalid "path parameter %s must be required and single" a.param.name;
    match to_string a.kind with
    | "Fun.id" -> a.var
    | convert -> Printf.sprintf "(%s %s)" convert a.var
  in
  let literal s = if String.is_empty s then [] else [ Printf.sprintf "%S" s ] in
  let expression piece =
    match String.split_first ~sep:"}" piece with
    | None -> invalid "unclosed expression in path %s" path
    | Some (expression, rest) ->
      let component, name =
        if String.starts_with ~prefix:"+" expression then
          "(`Custom (`Path, \"/\", \"\"))", String.drop_first 1 expression
        else
          "`Path", expression
      in
      Printf.sprintf "Uri.pct_encode ~component:%s %s" component (value name) :: literal rest
  in
  match String.split_on_char '{' path with
  | first :: pieces ->
    String.concat " ^ " (("base_url" :: literal first) @ List.concat_map expression pieces)
  | [] -> invalid "empty path"

let string_of_http_method = function
  | `GET -> "GET"
  | `POST -> "POST"
  | `PUT -> "PUT"
  | `PATCH -> "PATCH"
  | `DELETE -> "DELETE"

(* Output *)

let indent depth = String.make (2 * depth) ' '

(* Names the generated code defines itself; method bodies refer to [base_url]. *)
let reserved = [ "base_url"; "batch_endpoint"; "batch" ]

let method_names (methods : Discovery.meth list) =
  Naming.dedupe (reserved @ List.map (fun (m : Discovery.meth) -> Naming.value m.name) methods)
  |> List.drop (List.length reserved)

let resource_names (resources : Discovery.resource list) =
  Naming.dedupe (List.map (fun (r : Discovery.resource) -> Naming.module_ r.name) resources)

let method_impl b ~resolve ~depth name (m : Discovery.meth) =
  let p fmt = Printf.bprintf b fmt in
  let pad = indent depth in
  let args = args m in
  let path_args, query_args = List.partition (fun a -> a.param.location = Discovery.Path) args in
  let params =
    List.map (fun a -> "~" ^ a.var) (required args)
    @ (match m.request with Some _ -> [ "~body" ] | None -> [])
    @ List.map (fun a -> "?" ^ a.var) (optional args)
    @ [ "()" ]
  in
  p "%slet %s %s =\n" pad name (String.concat " " params);
  p "%s  Google_api_runtime.Call.make ~meth:`%s\n" pad (string_of_http_method m.http_method);
  let path = path_expr path_args m.path in
  p "%s    ~uri:\n" pad;
  (match query_args with
  | [] -> p "%s      (Uri.of_string (%s))\n" pad path
  | query_args ->
    p "%s      (Uri.add_query_params\n" pad;
    p "%s         (Uri.of_string (%s))\n" pad path;
    p "%s         (List.concat\n" pad;
    p "%s            [\n" pad;
    List.iter (fun a -> p "%s              %s;\n" pad (query a)) query_args;
    p "%s            ]))\n" pad);
  Option.iter (fun id -> p "%s    ~body:(yojson_of_%s body)\n" pad (resolve id)) m.request;
  match m.response with
  | Some id -> p "%s    (Google_api_runtime.Call.json %s_of_yojson)\n" pad (resolve id)
  | None -> p "%s    Google_api_runtime.Call.empty\n" pad

let method_doc ~depth (m : Discovery.meth) =
  let args = args m in
  let pad = indent depth in
  let params =
    args
    |> List.filter_map (fun a ->
      Option.map (fun d -> Printf.sprintf "- [%s]: %s" a.var (doc d)) a.param.description)
  in
  let http = Printf.sprintf "[%s %s]" (string_of_http_method m.http_method) m.path in
  let paragraphs =
    Option.to_list (Option.map doc m.description)
    @ [ http ]
    @ match params with [] -> [] | params -> [ String.concat "\n" params ]
  in
  let text = String.concat "\n\n" paragraphs in
  let indent i line = if i = 0 || line = "" then line else pad ^ "    " ^ String.trim line in
  let text = String.split_on_char '\n' text |> List.mapi indent |> String.concat "\n" in
  pad ^ "(** " ^ text ^ " *)\n"

let method_sig b ~resolve ~depth name (m : Discovery.meth) =
  let p fmt = Printf.bprintf b fmt in
  let pad = indent depth in
  let args = args m in
  let params =
    List.map (fun a -> Printf.sprintf "%s:%s" a.var (arg_ty a)) (required args)
    @ (match m.request with Some id -> [ "body:" ^ resolve id ] | None -> [])
    @ List.map (fun a -> Printf.sprintf "?%s:%s" a.var (arg_ty a)) (optional args)
    @ [ "unit" ]
  in
  let response = match m.response with Some id -> resolve id | None -> "unit" in
  p "%sval %s :\n" pad name;
  List.iter (fun param -> p "%s  %s ->\n" pad param) params;
  p "%s  %s Google_api.Call.t\n" pad response;
  p "%s" (method_doc ~depth m)

(* Prints [items] separated by blank lines. *)
let separated b print names items =
  List.iteri
    (fun i (name, item) ->
      if i > 0 then Buffer.add_char b '\n';
      print name item)
    (List.combine names items)

let rec resources_impl b ~resolve ~depth (resources : Discovery.resource list) =
  separated b
    (fun module_name (r : Discovery.resource) ->
      Printf.bprintf b "%smodule %s = struct\n" (indent depth) module_name;
      separated b (method_impl b ~resolve ~depth:(depth + 1)) (method_names r.methods) r.methods;
      if r.methods <> [] && r.resources <> [] then Buffer.add_char b '\n';
      resources_impl b ~resolve ~depth:(depth + 1) r.resources;
      Printf.bprintf b "%send\n" (indent depth))
    (resource_names resources) resources

let rec resources_sig b ~resolve ~depth (resources : Discovery.resource list) =
  separated b
    (fun module_name (r : Discovery.resource) ->
      Printf.bprintf b "%smodule %s : sig\n" (indent depth) module_name;
      separated b (method_sig b ~resolve ~depth:(depth + 1)) (method_names r.methods) r.methods;
      if r.methods <> [] && r.resources <> [] then Buffer.add_char b '\n';
      resources_sig b ~resolve ~depth:(depth + 1) r.resources;
      Printf.bprintf b "%send\n" (indent depth))
    (resource_names resources) resources

let field_doc (f : field) =
  match f.description with None -> "" | Some d -> "  (** " ^ doc d ^ " *)"

let field_type ~with_docs f =
  Printf.sprintf "  %s : %s option;%s\n" f.label (ty_expr f.ty)
    (if with_docs then field_doc f else "")

let field_decoder f =
  Printf.sprintf "    %s = member %S json |> to_option %s;\n" f.label f.json (decoder f.ty)

let field_encoder f =
  Printf.sprintf "         Option.map (fun field -> (%S, %s field)) value.%s;\n" f.json
    (encoder f.ty) f.label

let lines b line items = List.iter (Buffer.add_string b) (List.map line items)

let type_def b ~with_docs i t =
  let p fmt = Printf.bprintf b fmt in
  if with_docs then Option.iter (fun d -> p "(** %s *)\n" (doc d)) t.description;
  let keyword = if i = 0 then "type" else "and" in
  match t.shape with
  | Alias ty -> p "%s %s = %s\n\n" keyword t.name (ty_expr ty)
  | Record fields ->
    p "%s %s = {\n" keyword t.name;
    lines b (field_type ~with_docs) fields;
    p "}\n\n"

let type_defs b ~with_docs typedefs = List.iteri (type_def b ~with_docs) typedefs

let shape_references t =
  match t.shape with
  | Alias ty -> references ty
  | Record fields -> List.exists (fun f -> references f.ty) fields

let codec b ~recursive i t =
  let p fmt = Printf.bprintf b fmt in
  let keyword = if i > 0 then "and" else if recursive then "let rec" else "let" in
  match t.shape with
  | Alias ty ->
    p "%s %s_of_yojson json : %s =\n  let open Yojson.Safe.Util in\n  %s json\n\n" keyword t.name
      t.name (decoder ty);
    p "and yojson_of_%s (value : %s) : Yojson.Safe.t = %s value\n\n" t.name t.name (encoder ty)
  | Record fields ->
    p "%s %s_of_yojson json : %s =\n" keyword t.name t.name;
    p "  let open Yojson.Safe.Util in\n";
    p "  {\n";
    lines b field_decoder fields;
    p "  }\n\n";
    p "and yojson_of_%s (value : %s) : Yojson.Safe.t =\n" t.name t.name;
    p "  `Assoc\n";
    p "    (List.filter_map Fun.id\n";
    p "       [\n";
    lines b field_encoder fields;
    p "       ])\n\n"

let codecs b typedefs =
  List.iteri (codec b ~recursive:(List.exists shape_references typedefs)) typedefs

let makers_impl b typedefs =
  typedefs
  |> List.iter (fun t ->
    match t.shape with
    | Alias _ -> ()
    | Record fields ->
      let labels = List.map (fun f -> f.label) fields in
      let args = String.concat " " (List.map (( ^ ) "?") labels) in
      Printf.bprintf b "let make_%s %s () : %s = { %s }\n\n" t.name args t.name
        (String.concat "; " labels))

let codecs_and_makers_sig b typedefs =
  let p fmt = Printf.bprintf b fmt in
  typedefs
  |> List.iter (fun t ->
    p "val %s_of_yojson : Yojson.Safe.t -> %s\n" t.name t.name;
    p "val yojson_of_%s : %s -> Yojson.Safe.t\n" t.name t.name;
    (match t.shape with
    | Alias _ -> ()
    | Record fields ->
      p "\nval make_%s :\n" t.name;
      List.iter (fun f -> p "  ?%s:%s ->\n" f.label (ty_expr f.ty)) fields;
      p "  unit ->\n  %s\n" t.name);
    p "\n")

let header (api : Discovery.t) =
  Printf.sprintf
    "(* Generated from the Discovery document of %s %s (revision %s). Do not edit. *)\n\n" api.name
    api.version api.revision

let generate (api : Discovery.t) =
  let typedefs, resolve = lower_schemas api.schemas in
  let base_url = api.root_url ^ api.service_path in
  let batch_endpoint = api.root_url ^ api.batch_path in
  let ml = Buffer.create 65536 in
  let p fmt = Printf.bprintf ml fmt in
  p "%s" (header api);
  p "[@@@alert \"-internal\"]\n\n";
  type_defs ml ~with_docs:false typedefs;
  codecs ml typedefs;
  makers_impl ml typedefs;
  p "let base_url = %S\n" base_url;
  p "let batch_endpoint = Uri.of_string %S\n" batch_endpoint;
  p
    "let batch ~access_token calls = Google_api.Batch.execute ~access_token \
     ~endpoint:batch_endpoint calls\n\n";
  separated ml (method_impl ml ~resolve ~depth:0) (method_names api.methods) api.methods;
  if api.methods <> [] && api.resources <> [] then Buffer.add_char ml '\n';
  resources_impl ml ~resolve ~depth:0 api.resources;
  let mli = Buffer.create 65536 in
  let p fmt = Printf.bprintf mli fmt in
  p "%s" (header api);
  p "(** %s (%s %s, revision %s)." (doc api.title) api.name api.version api.revision;
  Option.iter (fun d -> p "\n\n    %s" (doc d)) api.description;
  Option.iter (fun link -> p "\n\n    {{:%s}Documentation}" link) api.documentation_link;
  p " *)\n\n";
  type_defs mli ~with_docs:true typedefs;
  codecs_and_makers_sig mli typedefs;
  p "val base_url : string\nval batch_endpoint : Uri.t\n\n";
  p
    "val batch :\n\
    \  access_token:string ->\n\
    \  'a Google_api.Call.t list ->\n\
    \  (('a, Google_api.Error.t) result list, Google_api.Error.t) result\n";
  p "(** {!Google_api.Batch.execute} on {!batch_endpoint}. *)\n\n";
  separated mli (method_sig mli ~resolve ~depth:0) (method_names api.methods) api.methods;
  if api.methods <> [] && api.resources <> [] then Buffer.add_char mli '\n';
  resources_sig mli ~resolve ~depth:0 api.resources;
  Buffer.contents ml, Buffer.contents mli
