(* The accessors below read bodies of any shape. *)
let tolerant ~default f json =
  match f json with value -> value | exception Yojson.Safe.Util.Type_error _ -> default

let error_of_body body =
  match Yojson.Safe.from_string body with
  | json -> tolerant ~default:`Null (Yojson.Safe.Util.member "error") json
  | exception Yojson.Json_error _ -> `Null

let reasons_at key =
  let open Yojson.Safe.Util in
  tolerant ~default:[] (fun error ->
    member key error |> to_list |> filter_member "reason" |> filter_string)

let string_at key =
  tolerant ~default:None Yojson.Safe.Util.(fun error -> member key error |> to_string_option)

let reasons_of_error error =
  List.map (fun reason -> `Legacy reason) (reasons_at "errors" error)
  @ List.map (fun reason -> `Rpc reason) (reasons_at "details" error)

let message_max_length = 200

let message_of_error error =
  match string_at "message" error with
  | Some message when String.length message > message_max_length ->
    Some (String.take_first message_max_length message ^ "...")
  | message -> message

let reasons body = reasons_of_error (error_of_body body)
let status body = string_at "status" (error_of_body body)
let message body = message_of_error (error_of_body body)

let summary body =
  let error = error_of_body body in
  let reasons =
    match reasons_of_error error with
    | [] -> None
    | reasons -> Some (String.concat "," (List.map (function `Legacy r | `Rpc r -> r) reasons))
  in
  match List.filter_map Fun.id [ string_at "status" error; reasons; message_of_error error ] with
  | [] -> "no error details"
  | parts -> String.concat " / " parts
