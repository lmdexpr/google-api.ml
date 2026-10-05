[@@@alert "-internal"]

module Http = Google_api_runtime.Http
module Error = Google_api_runtime.Error
module Error_body = Google_api_runtime.Error_body
module Call = Google_api_runtime.Call
module Batch = Google_api_runtime.Batch

let json = Alcotest.testable Yojson.Safe.pp Yojson.Safe.equal
let error = Alcotest.testable (fun ppf e -> Format.pp_print_string ppf (Error.to_string e)) ( = )
let parse = Yojson.Safe.from_string

let reasons =
  Alcotest.(
    list
      (testable
         (fun ppf -> function
           | `Legacy reason -> Format.fprintf ppf "`Legacy %S" reason
           | `Rpc reason -> Format.fprintf ppf "`Rpc %S" reason)
         ( = )))

let response ?(headers = []) status body = { Http.status; headers; body }

let with_stub ~(respond : Http.request -> Http.response) k =
  try k () with effect Http.Request request, k -> Effect.Deep.continue k (respond request)

let record ~response =
  let seen = ref [] in
  let respond request =
    seen := request :: !seen;
    response
  in
  seen, respond

let get_id = Call.json Yojson.Safe.Util.(fun json -> member "id" json |> to_option to_string)

(* Error bodies *)

let legacy_body =
  {|{"error":{"errors":[{"domain":"usageLimits","reason":"userRateLimitExceeded","message":"Rate Limit Exceeded"}],"code":403,"message":"Rate Limit Exceeded"}}|}

let rpc_body =
  {|{"error":{"code":403,"message":"API has not been used in project 1 before or it is disabled.","status":"PERMISSION_DENIED","details":[{"@type":"type.googleapis.com/google.rpc.ErrorInfo","reason":"SERVICE_DISABLED","domain":"googleapis.com"}]}}|}

let reasonless_body =
  {|{"error":{"code":403,"message":"Permission denied for resource user@example.com.","status":"PERMISSION_DENIED","details":[{"@type":"type.googleapis.com/google.rpc.ResourceInfo","resourceName":"user@example.com"}]}}|}

let test_error_body_reasons () =
  Alcotest.check reasons "legacy"
    [ `Legacy "userRateLimitExceeded" ]
    (Error_body.reasons legacy_body);
  Alcotest.check reasons "rpc" [ `Rpc "SERVICE_DISABLED" ] (Error_body.reasons rpc_body);
  Alcotest.check reasons "both"
    [ `Legacy "forbidden"; `Rpc "SERVICE_DISABLED" ]
    (Error_body.reasons
       {|{"error":{"errors":[{"reason":"forbidden"}],"details":[{"reason":"SERVICE_DISABLED"}]}}|})

let test_error_body_status () =
  Alcotest.(check (option string)) "status" (Some "PERMISSION_DENIED") (Error_body.status rpc_body)

let test_error_body_summary () =
  Alcotest.(check string)
    "with reason"
    "PERMISSION_DENIED / SERVICE_DISABLED / API has not been used in project 1 before or it is \
     disabled."
    (Error_body.summary rpc_body);
  Alcotest.(check string)
    "without reason" "PERMISSION_DENIED / Permission denied for resource user@example.com."
    (Error_body.summary reasonless_body)

let test_error_body_truncates_message () =
  let body = Printf.sprintf {|{"error":{"message":"%s"}}|} (String.make 250 'x') in
  Alcotest.(check (option int))
    "truncated" (Some 203)
    (Error_body.message body |> Option.map String.length)

let test_error_body_tolerates_any_body () =
  Alcotest.check reasons "not json" [] (Error_body.reasons "not json");
  Alcotest.(check string) "summary" "no error details" (Error_body.summary "not json");
  Alcotest.check reasons "no error" [] (Error_body.reasons {|{"ok":true}|})

(* Calls *)

let get = Call.make ~meth:`GET ~uri:(Uri.of_string "https://example.com/v1/things/1") get_id

let test_call_execute () =
  let seen, respond = record ~response:(response 200 {|{"id":"1"}|}) in
  Alcotest.(check (result (option string) error))
    "decoded" (Ok (Some "1"))
    (with_stub ~respond (fun () -> Call.execute ~access_token:"token" get));
  match !seen with
  | [ request ] ->
    Alcotest.(check (option string))
      "authorization" (Some "Bearer token")
      (Http.header "Authorization" request.headers)
  | _ -> Alcotest.fail "expected one request"

let test_call_body () =
  let request =
    Call.make ~meth:`POST
      ~uri:(Uri.of_string "https://example.com/v1/things")
      ~body:(`Assoc [ "a", `Int 1 ])
      Call.empty
    |> Call.request
  in
  Alcotest.(check (option json)) "body" (Some (parse {|{"a":1}|})) (Option.map parse request.body);
  Alcotest.(check (option string))
    "content-type" (Some "application/json")
    (Http.header "content-type" request.headers)

let test_call_http_error () =
  let (_ : Http.request list ref), respond = record ~response:(response 404 "{}") in
  Alcotest.(check (result (option string) error))
    "404"
    (Error (Error.Http { status = 404; body = "{}" }))
    (with_stub ~respond (fun () -> Call.execute ~access_token:"token" get))

let test_call_decode_error () =
  Alcotest.(check (result (option string) error))
    "wrong type"
    (Error
       (Error.Decode { status = 200; body = {|{"id":1}|}; message = "Expected string, got int" }))
    (Call.response get ~status:200 ~body:{|{"id":1}|})

let test_call_add_header () =
  let request = get |> Call.add_header "if-match" "\"etag\"" |> Call.request in
  Alcotest.(check (option string))
    "if-match" (Some "\"etag\"")
    (Http.header "If-Match" request.headers)

let test_call_fields_replaces () =
  Alcotest.(check string)
    "replaced" "https://example.com/v1/things/1?fields=id%2Cname"
    (Uri.to_string (get |> Call.fields "id" |> Call.fields "id,name" |> Call.request).uri)

(* Batch *)

let endpoint = Uri.of_string "https://www.googleapis.com/batch/calendar/v3"

let thing id =
  Call.make ~meth:`GET
    ~uri:(Uri.of_string ("https://www.googleapis.com/calendar/v3/things/" ^ id ^ "?a=b"))
    get_id

let part ~index ~status ~reason body =
  Printf.sprintf
    "--batch_resp\r\n\
     Content-Type: application/http\r\n\
     Content-ID: <response-item-%d>\r\n\
     \r\n\
     HTTP/1.1 %d %s\r\n\
     Content-Type: application/json; charset=UTF-8\r\n\
     \r\n\
     %s\r\n"
    index status reason body

let batch_response parts =
  response
    ~headers:[ "Content-Type", "multipart/mixed; boundary=batch_resp" ]
    200
    (String.concat "" parts ^ "--batch_resp--\r\n")

let batch_result = Alcotest.(result (list (result (option string) error)) error)

let test_batch_request_body () =
  let seen, respond = record ~response:(batch_response []) in
  let post =
    Call.make ~meth:`POST
      ~uri:(Uri.of_string "https://www.googleapis.com/calendar/v3/things")
      ~body:(`Assoc []) Call.empty
    |> Call.add_header "if-match" "e"
  in
  let (_ : ((unit, Error.t) result list, Error.t) result) =
    with_stub ~respond (fun () ->
      Batch.execute ~access_token:"token" ~endpoint [ Call.map ignore (thing "1"); post ])
  in
  match !seen with
  | [ request ] ->
    Alcotest.(check (option string))
      "content-type" (Some "multipart/mixed; boundary=google_api_ml_batch")
      (Http.header "content-type" request.headers);
    Alcotest.(check (option string))
      "authorization" (Some "Bearer token")
      (Http.header "authorization" request.headers);
    Alcotest.(check (option string))
      "multipart"
      (Some
         "--google_api_ml_batch\r\n\
          Content-Type: application/http\r\n\
          Content-ID: <item-0>\r\n\
          \r\n\
          GET /calendar/v3/things/1?a=b\r\n\
          \r\n\
          \r\n\
          --google_api_ml_batch\r\n\
          Content-Type: application/http\r\n\
          Content-ID: <item-1>\r\n\
          \r\n\
          POST /calendar/v3/things\r\n\
          if-match: e\r\n\
          content-type: application/json\r\n\
          content-length: 2\r\n\
          \r\n\
          {}\r\n\
          --google_api_ml_batch--\r\n")
      request.body
  | _ -> Alcotest.fail "expected one request"

let test_batch_matches_parts_by_content_id () =
  let (_ : Http.request list ref), respond =
    record
      ~response:
        (batch_response
           [
             part ~index:1 ~status:404 ~reason:"Not Found" "{}";
             part ~index:0 ~status:200 ~reason:"OK" {|{"id":"1"}|};
           ])
  in
  Alcotest.check batch_result "parts"
    (Ok
       [
         Ok (Some "1");
         Error (Error.Http { status = 404; body = "{}" });
         Error Error.Missing_batch_part;
       ])
    (with_stub ~respond (fun () ->
       Batch.execute ~access_token:"token" ~endpoint [ thing "1"; thing "2"; thing "3" ]))

let test_batch_part_without_body () =
  let delete =
    Call.make ~meth:`DELETE
      ~uri:(Uri.of_string "https://www.googleapis.com/calendar/v3/things/1")
      Call.empty
  in
  let (_ : Http.request list ref), respond =
    record
      ~response:
        (batch_response
           [
             "--batch_resp\r\n\
              Content-Type: application/http\r\n\
              Content-ID: <response-item-0>\r\n\
              \r\n\
              HTTP/1.1 204 No Content\r\n\
              \r\n\
              \r\n";
           ])
  in
  Alcotest.(check (result (list (result unit error)) error))
    "204" (Ok [ Ok () ])
    (with_stub ~respond (fun () -> Batch.execute ~access_token:"token" ~endpoint [ delete ]))

let test_batch_without_boundary () =
  let (_ : Http.request list ref), respond = record ~response:(response 200 "") in
  Alcotest.check batch_result "malformed"
    (Error
       (Error.Malformed_batch_response
          { status = 200; body = ""; reason = "no multipart boundary in Content-Type" }))
    (with_stub ~respond (fun () -> Batch.execute ~access_token:"token" ~endpoint [ thing "1" ]))

let test_batch_of_nothing () =
  Alcotest.check batch_result "no request" (Ok [])
    (Batch.execute ~access_token:"token" ~endpoint [])

let () =
  Alcotest.run "google-api"
    [
      ( "error body",
        [
          Alcotest.test_case "reasons of both shapes" `Quick test_error_body_reasons;
          Alcotest.test_case "status" `Quick test_error_body_status;
          Alcotest.test_case "summary" `Quick test_error_body_summary;
          Alcotest.test_case "truncates the message" `Quick test_error_body_truncates_message;
          Alcotest.test_case "tolerates any body" `Quick test_error_body_tolerates_any_body;
        ] );
      ( "call",
        [
          Alcotest.test_case "execute" `Quick test_call_execute;
          Alcotest.test_case "JSON body" `Quick test_call_body;
          Alcotest.test_case "HTTP error" `Quick test_call_http_error;
          Alcotest.test_case "decode error" `Quick test_call_decode_error;
          Alcotest.test_case "add header" `Quick test_call_add_header;
          Alcotest.test_case "fields replaces fields" `Quick test_call_fields_replaces;
        ] );
      ( "batch",
        [
          Alcotest.test_case "request body" `Quick test_batch_request_body;
          Alcotest.test_case "matches parts by Content-ID" `Quick
            test_batch_matches_parts_by_content_id;
          Alcotest.test_case "part without body" `Quick test_batch_part_without_body;
          Alcotest.test_case "response without boundary" `Quick test_batch_without_boundary;
          Alcotest.test_case "of nothing sends nothing" `Quick test_batch_of_nothing;
        ] );
    ]
