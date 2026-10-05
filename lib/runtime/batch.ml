[@@@alert "-internal"]

let boundary = "google_api_ml_batch"

let request_target uri =
  match Uri.encoded_of_query (Uri.query uri) with
  | "" -> Uri.path uri
  | query -> Uri.path uri ^ "?" ^ query

let inner_request { Http.meth; uri; headers; body } =
  let request_line = Http.string_of_meth meth ^ " " ^ request_target uri in
  let headers =
    match body with
    | None -> headers
    | Some body -> headers @ [ "content-length", string_of_int (String.length body) ]
  in
  let head =
    request_line :: List.map (fun (key, value) -> key ^ ": " ^ value) headers
    |> String.concat "\r\n"
  in
  head ^ "\r\n\r\n" ^ Option.value body ~default:""

let build requests =
  let part i request =
    Printf.sprintf "--%s\r\nContent-Type: application/http\r\nContent-ID: <item-%d>\r\n\r\n%s\r\n"
      boundary i (inner_request request)
  in
  String.concat "" (List.mapi part requests) ^ Printf.sprintf "--%s--\r\n" boundary

let strip_cr = String.replace_all ~sub:"\r" ~by:""

let unquote ~opening ~closing value =
  if
    String.length value >= 2
    && String.starts_with ~prefix:opening value
    && String.ends_with ~suffix:closing value
  then
    String.drop_first 1 value |> String.drop_last 1
  else
    value

(* [name sep value], e.g. a header line or a Content-Type parameter; names are case-insensitive. *)
let named ~sep ~name s =
  match String.split_first ~sep s with
  | Some (key, value) when String.lowercase_ascii (String.trim key) = name ->
    Some (String.trim value)
  | Some _ | None -> None

let boundary_of_content_type content_type =
  String.split_on_char ';' content_type
  |> List.find_map (named ~sep:"=" ~name:"boundary")
  |> Option.map (unquote ~opening:"\"" ~closing:"\"")

let ( let* ) = Option.bind

let index_of_part_header header =
  let prefix = "response-item-" in
  let* id = String.split_on_char '\n' header |> List.find_map (named ~sep:":" ~name:"content-id") in
  let id = unquote ~opening:"<" ~closing:">" id in
  if String.starts_with ~prefix id then
    int_of_string_opt (String.drop_first (String.length prefix) id)
  else
    None

let status_of_status_line line =
  match String.split_on_char ' ' line with
  | _version :: code :: _reason -> int_of_string_opt code
  | [ _ ] | [] -> None

(* Without a blank line the response has no body, e.g. a trimmed 204. *)
let inner_response inner =
  let head, body =
    match String.split_first ~sep:"\n\n" inner with
    | Some (head, body) -> head, String.trim body
    | None -> inner, ""
  in
  match String.split_on_char '\n' head with
  | status_line :: _headers ->
    status_of_status_line status_line |> Option.map (fun status -> status, body)
  | [] -> None

let part segment =
  let* part_header, inner = String.split_first ~sep:"\n\n" (String.trim segment) in
  let* index = index_of_part_header part_header in
  let* response = inner_response inner in
  Some (index, response)

let parse ~boundary raw =
  String.split_all ~sep:("--" ^ boundary) (strip_cr raw) |> List.filter_map part

let responses calls { Http.status; headers; body } =
  let boundary = Option.bind (Http.header "content-type" headers) boundary_of_content_type in
  match status >= 200 && status < 300, boundary with
  | false, (Some _ | None) -> Error (Error.Http { status; body })
  | true, None ->
    Error
      (Error.Malformed_batch_response
         { status; body; reason = "no multipart boundary in Content-Type" })
  | true, Some boundary ->
    let parts = parse ~boundary body in
    calls
    |> List.mapi (fun i call ->
      match List.assoc_opt i parts with
      | None -> Error Error.Missing_batch_part
      | Some (status, body) -> Call.response call ~status ~body)
    |> Result.ok

let execute ~access_token ~endpoint calls =
  if calls = [] then
    Ok []
  else
    Http.perform
      {
        meth = `POST;
        uri = endpoint;
        headers =
          [
            "authorization", "Bearer " ^ access_token;
            "content-type", "multipart/mixed; boundary=" ^ boundary;
          ];
        body = Some (build (List.map Call.request calls));
      }
    |> responses calls
