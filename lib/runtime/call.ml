[@@@alert "-internal"]

type 'a t = { request : Http.request; decode : string -> 'a }

let make ~meth ~uri ?body decode =
  let headers, body =
    match body with
    | None -> [], None
    | Some json -> [ "content-type", "application/json" ], Some (Yojson.Safe.to_string json)
  in
  { request = { meth; uri; headers; body }; decode }

let json decode body = decode (Yojson.Safe.from_string body)
let empty (_ : string) = ()
let request call = call.request
let map f call = { call with decode = (fun body -> f (call.decode body)) }

let add_query query call =
  { call with request = { call.request with uri = Uri.add_query_params call.request.uri query } }

let add_header name value call =
  { call with request = { call.request with headers = (name, value) :: call.request.headers } }

let fields fields call =
  let uri = Uri.remove_query_param call.request.uri "fields" in
  { call with request = { call.request with uri = Uri.add_query_param uri ("fields", [ fields ]) } }

let response call ~status ~body =
  if status >= 200 && status < 300 then
    match
      call.decode body
    with
    | value -> Ok value
    | exception (Yojson.Json_error message | Yojson.Safe.Util.Type_error (message, _)) ->
      Error (Error.Decode { status; body; message })
  else
    Error (Error.Http { status; body })

let execute ~access_token call =
  let request =
    {
      call.request with
      headers = ("authorization", "Bearer " ^ access_token) :: call.request.headers;
    }
  in
  let { Http.status; body; headers = _ } = Http.perform request in
  response call ~status ~body
