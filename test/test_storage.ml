[@@@alert "-internal"]

module Storage = Google_api_storage
module Call = Google_api_runtime.Call

let uri call = Uri.to_string (Call.request call).uri
let unwrap = function Ok x -> x | Error e -> Alcotest.fail (Google_api.Error.to_string e)

(* Object names keep their slashes as part of one path segment. *)
let test_get_metadata () =
  let call = Storage.Objects.get ~bucket:"b" ~object_:"dir/a b.txt" () in
  Alcotest.(check string)
    "uri" "https://storage.googleapis.com/storage/v1/b/b/o/dir%2Fa%20b.txt" (uri call);
  let response =
    Call.response call ~status:200
      ~body:{|{"name":"dir/a b.txt","size":"12","generation":"1700000000000000"}|}
    |> unwrap
  in
  Alcotest.(check (option string)) "name" (Some "dir/a b.txt") response.name;
  Alcotest.(check (option string)) "size" (Some "12") response.size

let test_get_media () =
  let call =
    Storage.Objects.get_media ~bucket:"b" ~object_:"dir/cli.tar.gz" ~generation:"1700000000000000"
      ()
  in
  Alcotest.(check string)
    "uri"
    "https://storage.googleapis.com/storage/v1/b/b/o/dir%2Fcli.tar.gz?generation=1700000000000000&alt=media"
    (uri call);
  let content = "\x1f\x8b\x08\x00binary" in
  Alcotest.(check string) "content" content (Call.response call ~status:200 ~body:content |> unwrap)

let test_get_media_not_found () =
  let body = {|{"error":{"code":404,"message":"No such object: b/missing"}}|} in
  match
    Call.response (Storage.Objects.get_media ~bucket:"b" ~object_:"missing" ()) ~status:404 ~body
  with
  | Error (Google_api.Error.Http { status; _ }) -> Alcotest.(check int) "status" 404 status
  | Ok _ | Error _ -> Alcotest.fail "expected an HTTP error"

let () =
  Alcotest.run "google-api-storage"
    [
      ( "objects",
        [
          Alcotest.test_case "get metadata" `Quick test_get_metadata;
          Alcotest.test_case "get media" `Quick test_get_media;
          Alcotest.test_case "get media not found" `Quick test_get_media_not_found;
        ] );
    ]
