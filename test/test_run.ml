[@@@alert "-internal"]

module Run = Google_api_run
module Call = Google_api_runtime.Call

let uri call = Uri.to_string (Call.request call).uri
let unwrap = function Ok x -> x | Error e -> Alcotest.fail (Google_api.Error.to_string e)
let job = "projects/p/locations/asia-northeast1/jobs/j"
let operation = "projects/p/locations/asia-northeast1/operations/o"

let test_run_job () =
  let overrides =
    let env = [ Run.make_google_cloud_run_v2_env_var ~name:"MODE" ~value:"full" () ] in
    Run.make_google_cloud_run_v2_overrides
      ~container_overrides:
        [ Run.make_google_cloud_run_v2_container_override ~args:[ "--dry-run" ] ~env () ]
      ~task_count:2 ~timeout:"600s" ()
  in
  let call =
    Run.Projects.Locations.Jobs.run ~name:job
      ~body:(Run.make_google_cloud_run_v2_run_job_request ~overrides ())
      ()
  in
  Alcotest.(check string) "uri" ("https://run.googleapis.com/v2/" ^ job ^ ":run") (uri call);
  Alcotest.(check (option string))
    "body"
    (Some
       {|{"overrides":{"containerOverrides":[{"args":["--dry-run"],"env":[{"name":"MODE","value":"full"}]}],"taskCount":2,"timeout":"600s"}}|})
    (Call.request call).body;
  let response =
    Call.response call ~status:200
      ~body:
        (Printf.sprintf
           {|{"name":"%s","metadata":{"@type":"type.googleapis.com/google.cloud.run.v2.Execution"}}|}
           operation)
    |> unwrap
  in
  Alcotest.(check (option string)) "name" (Some operation) response.name;
  Alcotest.(check (option bool)) "done" None response.done_

let test_get_operation () =
  let call = Run.Projects.Locations.Operations.get ~name:operation () in
  Alcotest.(check string) "uri" ("https://run.googleapis.com/v2/" ^ operation) (uri call);
  let response =
    Call.response call ~status:200
      ~body:
        (Printf.sprintf {|{"name":"%s","done":true,"error":{"code":9,"message":"failed"}}|}
           operation)
    |> unwrap
  in
  Alcotest.(check (option bool)) "done" (Some true) response.done_;
  match response.error with
  | Some { code; message; _ } ->
    Alcotest.(check (option int)) "code" (Some 9) code;
    Alcotest.(check (option string)) "message" (Some "failed") message
  | None -> Alcotest.fail "expected an error"

let () =
  Alcotest.run "google-api-run"
    [
      "jobs", [ Alcotest.test_case "run" `Quick test_run_job ];
      "operations", [ Alcotest.test_case "get" `Quick test_get_operation ];
    ]
