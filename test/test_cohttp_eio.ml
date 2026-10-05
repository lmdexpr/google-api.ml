(* Calls are covered in test_google_api; here only the cohttp-eio handler is exercised, against a
   fake server on the loopback interface. *)

[@@@alert "-internal"]

type recorded = { meth : string; resource : string; headers : Http.Header.t; body : string }

(* Every request is recorded and answered with 201, an [x-test] header and the body [ok]. *)
let with_fake_server ~env f =
  let recorded = ref [] in
  Eio.Switch.run @@ fun sw ->
  let socket =
    Eio.Net.listen ~sw ~backlog:4 ~reuse_addr:true env#net (`Tcp (Eio.Net.Ipaddr.V4.loopback, 0))
  in
  let port =
    match Eio.Net.listening_addr socket with `Tcp (_, port) -> port | `Unix _ -> assert false
  in
  let callback _conn (request : Http.Request.t) body =
    let body = Eio.Buf_read.of_flow ~max_size:1_000_000 body |> Eio.Buf_read.take_all in
    recorded :=
      {
        meth = Http.Method.to_string (Http.Request.meth request);
        resource = Http.Request.resource request;
        headers = Http.Request.headers request;
        body;
      }
      :: !recorded;
    Cohttp_eio.Server.respond_string
      ~headers:(Http.Header.of_list [ "x-test", "1" ])
      ~status:`Created ~body:"ok" ()
  in
  let server = Cohttp_eio.Server.make ~callback () in
  Eio.Fiber.fork_daemon ~sw (fun () -> Cohttp_eio.Server.run socket server ~on_error:raise);
  let client = Cohttp_eio.Client.make ~https:None env#net in
  let result = Google_api_cohttp_eio.run ~client (fun () -> f ~port) in
  result, List.rev !recorded

let request ~port ?body meth path =
  {
    Google_api.Http.meth;
    uri = Uri.of_string (Printf.sprintf "http://127.0.0.1:%d%s" port path);
    headers = [ "authorization", "Bearer token" ];
    body;
  }

let only = function [ request ] -> request | _ -> Alcotest.fail "expected exactly one request"

let test_maps_request_and_response env () =
  let response, recorded =
    with_fake_server ~env @@ fun ~port ->
    Google_api_runtime.Http.perform (request ~port `GET "/a/b%2Fc?x=1&x=2")
  in
  Alcotest.(check int) "status" 201 response.status;
  Alcotest.(check string) "body" "ok" response.body;
  Alcotest.(check (option string))
    "header lookup is case-insensitive" (Some "1")
    (Google_api.Http.header "X-Test" response.headers);
  let request = only recorded in
  Alcotest.(check string) "method" "GET" request.meth;
  Alcotest.(check string) "resource" "/a/b%2Fc?x=1&x=2" request.resource;
  Alcotest.(check (option string))
    "authorization" (Some "Bearer token")
    (Http.Header.get request.headers "authorization")

let test_post_without_body env () =
  let (_ : Google_api.Http.response), recorded =
    with_fake_server ~env @@ fun ~port ->
    Google_api_runtime.Http.perform (request ~port `POST "/move")
  in
  let request = only recorded in
  Alcotest.(check string) "method" "POST" request.meth;
  Alcotest.(check (option string))
    "content-length" (Some "0")
    (Http.Header.get request.headers "content-length")

let test_patch_with_body env () =
  let (_ : Google_api.Http.response), recorded =
    with_fake_server ~env @@ fun ~port ->
    Google_api_runtime.Http.perform (request ~port ~body:{|{"a":1}|} `PATCH "/p")
  in
  Alcotest.(check string) "body" {|{"a":1}|} (only recorded).body

let test_call_execute env () =
  let result, (_ : recorded list) =
    with_fake_server ~env @@ fun ~port ->
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:(Uri.of_string (Printf.sprintf "http://127.0.0.1:%d/things/1" port))
      Google_api_runtime.Call.empty
    |> Google_api.Call.execute ~access_token:"token"
  in
  Alcotest.(check bool) "executed" true (result = Ok ())

let test_transport_error_at_perform env () =
  let failed, (_ : recorded list) =
    with_fake_server ~env @@ fun ~port:_ ->
    match Google_api_runtime.Http.perform (request ~port:1 `GET "/") with
    | (_ : Google_api.Http.response) -> false
    | exception Eio.Io _ -> true
  in
  Alcotest.(check bool) "raised where performed" true failed

let () =
  Eio_main.run @@ fun env ->
  Alcotest.run "google-api-cohttp-eio"
    [
      ( "handler",
        [
          Alcotest.test_case "maps request and response" `Quick (test_maps_request_and_response env);
          Alcotest.test_case "POST without body" `Quick (test_post_without_body env);
          Alcotest.test_case "PATCH with body" `Quick (test_patch_with_body env);
          Alcotest.test_case "Call.execute" `Quick (test_call_execute env);
          Alcotest.test_case "transport error surfaces at perform" `Quick
            (test_transport_error_at_perform env);
        ] );
    ]
