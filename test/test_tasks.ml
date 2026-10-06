module Tasks = Google_api_tasks
module Http = Google_api.Http
module Call = Google_api.Call

let json = Alcotest.testable Yojson.Safe.pp Yojson.Safe.equal
let parse = Yojson.Safe.from_string
let unwrap = function Ok x -> x | Error e -> Alcotest.fail (Google_api.Error.to_string e)

let with_stub ~(respond : Http.request -> Http.response) k =
  try k () with effect Http.Request request, k -> Effect.Deep.continue k (respond request)

let record ~response =
  let seen = ref [] in
  let respond request =
    seen := request :: !seen;
    response
  in
  seen, respond

let test_list_tasks () =
  let seen, respond =
    record
      ~response:
        {
          Http.status = 200;
          headers = [];
          body =
            {|{"kind":"tasks#tasks","etag":"\"e\"","items":[{"kind":"tasks#task","id":"t1","title":"Write","status":"needsAction","due":"2026-10-06T00:00:00.000Z","links":[{"type":"email","link":"https://example.com"}],"unknownField":1}]}|};
        }
  in
  let tasks =
    with_stub ~respond (fun () ->
      Tasks.Tasks.list ~tasklist:"@default" ~show_completed:false ~max_results:10 ()
      |> Call.execute ~access_token:"token")
    |> unwrap
  in
  (match !seen with
  | [ request ] ->
    Alcotest.(check string)
      "uri"
      "https://tasks.googleapis.com/tasks/v1/lists/@default/tasks?maxResults=10&showCompleted=false"
      (Uri.to_string request.uri)
  | _ -> Alcotest.fail "expected one request");
  match tasks.items with
  | Some [ task ] ->
    Alcotest.(check (option string)) "title" (Some "Write") task.title;
    Alcotest.(check (option (list (option string))))
      "link types" (Some [ Some "email" ])
      (Option.map (List.map (fun (link : Tasks.task_links_item) -> link.type_)) task.links)
  | Some _ | None -> Alcotest.fail "expected one task"

let test_insert_task () =
  let request =
    Tasks.Tasks.insert ~tasklist:"list" ~body:(Tasks.make_task ~title:"Write" ~notes:"n" ()) ()
    |> Call.request
  in
  Alcotest.(check string) "method" "POST" (Http.string_of_meth request.meth);
  Alcotest.(check (option json))
    "body"
    (Some (parse {|{"title":"Write","notes":"n"}|}))
    (Option.map parse request.body)

let test_batch_delete () =
  let seen, respond =
    record
      ~response:
        {
          Http.status = 200;
          headers = [ "content-type", "multipart/mixed; boundary=b" ];
          body =
            "--b\r\n\
             Content-Type: application/http\r\n\
             Content-ID: <response-item-0>\r\n\
             \r\n\
             HTTP/1.1 204 No Content\r\n\
             \r\n\
             \r\n\
             --b--";
        }
  in
  let results =
    with_stub ~respond (fun () ->
      Tasks.batch ~access_token:"token" [ Tasks.Tasks.delete ~tasklist:"l" ~task:"t" () ])
    |> unwrap
  in
  Alcotest.(check (list string))
    "endpoint"
    [ "https://tasks.googleapis.com/batch" ]
    (List.map (fun (request : Http.request) -> Uri.to_string request.uri) !seen);
  Alcotest.(check (list (result unit reject))) "deleted" [ Ok () ] results

let test_list_all_pages () =
  let respond (request : Http.request) =
    let body =
      match Uri.get_query_param request.uri "pageToken" with
      | None -> {|{"items":[{"id":"t1"}],"nextPageToken":"p2"}|}
      | Some "p2" -> {|{"items":[{"id":"t2"}]}|}
      | Some token -> Alcotest.failf "unexpected page token %s" token
    in
    { Http.status = 200; headers = []; body }
  in
  let ids =
    with_stub ~respond (fun () ->
      Tasks.Tasks.list ~tasklist:"@default" ()
      |> Google_api.Page.fold ~access_token:"token"
           ~next_page_token:(fun (page : Tasks.tasks) -> page.next_page_token)
           ~init:[]
           ~f:(fun acc (page : Tasks.tasks) ->
             List.rev_append (Option.value page.items ~default:[]) acc)
      |> Result.map List.rev)
    |> unwrap
  in
  Alcotest.(check (list (option string)))
    "ids" [ Some "t1"; Some "t2" ]
    (List.map (fun (task : Tasks.task) -> task.id) ids)

let () =
  Alcotest.run "google-api-tasks"
    [
      ( "tasks",
        [
          Alcotest.test_case "list" `Quick test_list_tasks;
          Alcotest.test_case "list all pages" `Quick test_list_all_pages;
          Alcotest.test_case "insert" `Quick test_insert_task;
          Alcotest.test_case "delete in a batch" `Quick test_batch_delete;
        ] );
    ]
