type scalar = String | Int | Float | Bool | Any
type enum_value = { value : string; description : string option }

type schema =
  | Scalar of scalar
  | Enum of enum_value list
  | Ref of string
  | Array of schema
  | Map of schema
  | Object of property list

and property = { name : string; description : string option; schema : schema }

type definition = { id : string; description : string option; schema : schema }
type location = Path | Query

type parameter = {
  name : string;
  description : string option;
  location : location;
  required : bool;
  repeated : bool;
  schema : schema;
}

type meth = {
  name : string;
  description : string option;
  http_method : [ `GET | `POST | `PUT | `PATCH | `DELETE ];
  path : string;
  parameters : parameter list;
  request : string option;
  response : string option;
}

type resource = { name : string; methods : meth list; resources : resource list }

type t = {
  name : string;
  version : string;
  revision : string;
  title : string;
  description : string option;
  documentation_link : string option;
  root_url : string;
  service_path : string;
  batch_path : string;
  schemas : definition list;
  methods : meth list;
  resources : resource list;
}

exception Unsupported of { path : string; message : string }

let unsupported path message = raise (Unsupported { path; message })

let members path : Yojson.Safe.t -> _ = function
  | `Assoc members -> members
  | `Null | `Bool _ | `Int _ | `Intlit _ | `Float _ | `String _ | `List _ ->
    unsupported path "expected an object"

let member_opt key (json : Yojson.Safe.t) = List.assoc_opt key (members "" json)

let string path = function
  | `String s -> s
  | `Null | `Bool _ | `Int _ | `Intlit _ | `Float _ | `Assoc _ | `List _ ->
    unsupported path "expected a string"

let bool path = function
  | `Bool b -> b
  | `Null | `Int _ | `Intlit _ | `Float _ | `String _ | `Assoc _ | `List _ ->
    unsupported path "expected a boolean"

let list path = function
  | `List items -> items
  | `Null | `Bool _ | `Int _ | `Intlit _ | `Float _ | `String _ | `Assoc _ ->
    unsupported path "expected an array"

let optional path key decode json = member_opt key json |> Option.map (decode (path ^ "." ^ key))

let required path key decode json =
  match optional path key decode json with
  | Some value -> value
  | None -> unsupported path ("missing " ^ key)

(* Sorted: Google serves the members in a different order on every request. *)
let entries' decode path (json : Yojson.Safe.t) =
  members path json
  |> List.sort (fun (a, _) (b, _) -> String.compare a b)
  |> List.map (fun (key, value) -> decode (path ^ "." ^ key) key value)

let enum_values path json =
  let values =
    required path "enum" (fun path json -> list path json |> List.map (string path)) json
  in
  let descriptions =
    optional path "enumDescriptions"
      (fun path json -> list path json |> List.map (string path))
      json
  in
  values
  |> List.mapi (fun i value ->
    let description = Option.bind descriptions (fun descriptions -> List.nth_opt descriptions i) in
    { value; description })

let rec schema path json =
  match optional path "$ref" string json, optional path "type" string json with
  | Some id, _ -> Ref id
  (* Like the Google client libraries, format int64 stays the JSON string it is on the wire. *)
  | None, Some "string" -> (
    match member_opt "enum" json with
    | Some _ -> Enum (enum_values path json)
    | None -> Scalar String)
  | None, Some "integer" -> Scalar Int
  | None, Some "number" -> Scalar Float
  | None, Some "boolean" -> Scalar Bool
  | None, Some "any" -> Scalar Any
  | None, Some "array" -> Array (required path "items" schema json)
  | None, Some "object" -> (
    match optional path "properties" (entries' property) json with
    | Some properties -> Object properties
    | None -> (
      match optional path "additionalProperties" schema json with
      | Some schema -> Map schema
      | None -> Object []))
  | None, Some other -> unsupported path ("unknown type " ^ other)
  | None, None -> unsupported path "neither $ref nor type"

and property path name json =
  { name; description = optional path "description" string json; schema = schema path json }

let definition path id json =
  { id; description = optional path "description" string json; schema = schema path json }

let location path = function
  | "path" -> Path
  | "query" -> Query
  | other -> unsupported path ("unknown parameter location " ^ other)

let parameter path name json =
  let schema = schema path json in
  (match schema with
  | Scalar (String | Int | Float | Bool) | Enum _ -> ()
  | Scalar Any | Ref _ | Array _ | Map _ | Object _ ->
    unsupported path "a parameter must be a scalar or an enum");
  {
    name;
    description = optional path "description" string json;
    location = required path "location" (fun path json -> location path (string path json)) json;
    required = optional path "required" bool json |> Option.value ~default:false;
    repeated = optional path "repeated" bool json |> Option.value ~default:false;
    schema;
  }

let http_method path = function
  | "GET" -> `GET
  | "POST" -> `POST
  | "PUT" -> `PUT
  | "PATCH" -> `PATCH
  | "DELETE" -> `DELETE
  | other -> unsupported path ("unknown HTTP method " ^ other)

let ordered_parameters ~order parameters =
  let first =
    List.filter_map
      (fun name -> List.find_opt (fun (p : parameter) -> p.name = name) parameters)
      order
  in
  first @ List.filter (fun (p : parameter) -> not (List.mem p.name order)) parameters

let ref_of path json = required path "$ref" string json

let meth path name json =
  let flag key = optional path key bool json |> Option.value ~default:false in
  if flag "supportsMediaUpload" || flag "supportsMediaDownload" then
    unsupported path "media upload and download";
  let path' = required path "path" string json in
  if String.starts_with ~prefix:"/" path' then unsupported path "absolute method path";
  let order =
    optional path "parameterOrder" (fun path json -> list path json |> List.map (string path)) json
    |> Option.value ~default:[]
  in
  {
    name;
    description = optional path "description" string json;
    http_method =
      required path "httpMethod" (fun path json -> http_method path (string path json)) json;
    path = path';
    parameters =
      optional path "parameters" (entries' parameter) json
      |> Option.value ~default:[] |> ordered_parameters ~order;
    request = optional path "request" ref_of json;
    response = optional path "response" ref_of json;
  }

let methods path json = optional path "methods" (entries' meth) json |> Option.value ~default:[]

let rec resource path name json =
  {
    name;
    methods = methods path json;
    resources = optional path "resources" (entries' resource) json |> Option.value ~default:[];
  }

let of_yojson json =
  let path = "$" in
  let field key = required path key string json in
  {
    name = field "name";
    version = field "version";
    revision = field "revision";
    title = field "title";
    description = optional path "description" string json;
    documentation_link = optional path "documentationLink" string json;
    root_url = field "rootUrl";
    service_path = field "servicePath";
    batch_path = field "batchPath";
    schemas = optional path "schemas" (entries' definition) json |> Option.value ~default:[];
    methods = methods path json;
    resources = optional path "resources" (entries' resource) json |> Option.value ~default:[];
  }
