[@@@alert "-internal"]

module Bigquery = Google_api_bigquery
module Call = Google_api_runtime.Call

let uri call = Uri.to_string (Call.request call).uri
let unwrap = function Ok x -> x | Error e -> Alcotest.fail (Google_api.Error.to_string e)

let test_insert_all () =
  let row =
    Bigquery.make_table_data_insert_all_request_rows_item ~insert_id:"evt-1"
      ~json:[ "event_id", `String "evt-1"; "count", `Int 2 ]
      ()
  in
  let call =
    Bigquery.Tabledata.insert_all ~project_id:"p" ~dataset_id:"d" ~table_id:"t"
      ~body:(Bigquery.make_table_data_insert_all_request ~rows:[ row ] ())
      ()
  in
  Alcotest.(check string)
    "uri" "https://bigquery.googleapis.com/bigquery/v2/projects/p/datasets/d/tables/t/insertAll"
    (uri call);
  Alcotest.(check (option string))
    "body"
    (Some {|{"rows":[{"insertId":"evt-1","json":{"event_id":"evt-1","count":2}}]}|})
    (Call.request call).body;
  let response =
    Call.response call ~status:200
      ~body:
        {|{"kind":"bigquery#tableDataInsertAllResponse","insertErrors":[{"index":0,"errors":[{"reason":"invalid","message":"no such field: count"}]}]}|}
    |> unwrap
  in
  match response.insert_errors with
  | Some [ { index = Some 0; errors = Some [ { reason; message; _ } ] } ] ->
    Alcotest.(check (option string)) "reason" (Some "invalid") reason;
    Alcotest.(check (option string)) "message" (Some "no such field: count") message
  | Some _ | None -> Alcotest.fail "expected one row error"

let () =
  Alcotest.run "google-api-bigquery"
    [ "tabledata", [ Alcotest.test_case "insert_all" `Quick test_insert_all ] ]
