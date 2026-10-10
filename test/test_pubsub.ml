[@@@alert "-internal"]

module Pubsub = Google_api_pubsub
module Call = Google_api_runtime.Call

let uri call = Uri.to_string (Call.request call).uri
let unwrap = function Ok x -> x | Error e -> Alcotest.fail (Google_api.Error.to_string e)

(* "data" is base64 on the wire; the caller encodes it. *)
let test_publish () =
  let message = Pubsub.make_pubsub_message ~data:"aGVsbG8=" ~attributes:[ "origin", "test" ] () in
  let call =
    Pubsub.Projects.Topics.publish ~topic:"projects/p/topics/t"
      ~body:(Pubsub.make_publish_request ~messages:[ message ] ())
      ()
  in
  Alcotest.(check string)
    "uri" "https://pubsub.googleapis.com/v1/projects/p/topics/t:publish" (uri call);
  Alcotest.(check (option string))
    "body" (Some {|{"messages":[{"attributes":{"origin":"test"},"data":"aGVsbG8="}]}|})
    (Call.request call).body;
  let response = Call.response call ~status:200 ~body:{|{"messageIds":["1"]}|} |> unwrap in
  Alcotest.(check (option (list string))) "message ids" (Some [ "1" ]) response.message_ids

let test_pull () =
  let call =
    Pubsub.Projects.Subscriptions.pull ~subscription:"projects/p/subscriptions/s"
      ~body:(Pubsub.make_pull_request ~max_messages:10 ())
      ()
  in
  Alcotest.(check string)
    "uri" "https://pubsub.googleapis.com/v1/projects/p/subscriptions/s:pull" (uri call);
  Alcotest.(check (option string)) "body" (Some {|{"maxMessages":10}|}) (Call.request call).body;
  let response =
    Call.response call ~status:200
      ~body:
        {|{"receivedMessages":[{"ackId":"a1","message":{"data":"aGVsbG8=","messageId":"1","publishTime":"2026-10-11T00:00:00Z"}}]}|}
    |> unwrap
  in
  match response.received_messages with
  | Some [ { ack_id; message = Some { data; message_id; _ }; _ } ] ->
    Alcotest.(check (option string)) "ack id" (Some "a1") ack_id;
    Alcotest.(check (option string)) "data" (Some "aGVsbG8=") data;
    Alcotest.(check (option string)) "message id" (Some "1") message_id
  | Some _ | None -> Alcotest.fail "expected one message"

(* An empty pull response may have no "receivedMessages" at all. *)
let test_pull_empty () =
  let call =
    Pubsub.Projects.Subscriptions.pull ~subscription:"projects/p/subscriptions/s"
      ~body:(Pubsub.make_pull_request ~max_messages:10 ())
      ()
  in
  let response = Call.response call ~status:200 ~body:"{}" |> unwrap in
  Alcotest.(check bool) "no messages" true (Option.is_none response.received_messages)

let test_acknowledge () =
  let call =
    Pubsub.Projects.Subscriptions.acknowledge ~subscription:"projects/p/subscriptions/s"
      ~body:(Pubsub.make_acknowledge_request ~ack_ids:[ "a1"; "a2" ] ())
      ()
  in
  Alcotest.(check string)
    "uri" "https://pubsub.googleapis.com/v1/projects/p/subscriptions/s:acknowledge" (uri call);
  Alcotest.(check (option string)) "body" (Some {|{"ackIds":["a1","a2"]}|}) (Call.request call).body;
  ignore (Call.response call ~status:200 ~body:"{}" |> unwrap : Pubsub.empty)

let () =
  Alcotest.run "google-api-pubsub"
    [
      "topics", [ Alcotest.test_case "publish" `Quick test_publish ];
      ( "subscriptions",
        [
          Alcotest.test_case "pull" `Quick test_pull;
          Alcotest.test_case "pull empty" `Quick test_pull_empty;
          Alcotest.test_case "acknowledge" `Quick test_acknowledge;
        ] );
    ]
