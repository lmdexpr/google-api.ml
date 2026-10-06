[@@@alert "-internal"]

module Cloudidentity = Google_api_cloudidentity
module Call = Google_api_runtime.Call

let uri call = Uri.to_string (Call.request call).uri
let unwrap = function Ok x -> x | Error e -> Alcotest.fail (Google_api.Error.to_string e)

let test_lookup_group () =
  let call = Cloudidentity.Groups.lookup ~group_key_id:"team@example.com" () in
  Alcotest.(check string)
    "uri" "https://cloudidentity.googleapis.com/v1/groups:lookup?groupKey.id=team@example.com"
    (uri call);
  let group = Call.response call ~status:200 ~body:{|{"name":"groups/abc123"}|} |> unwrap in
  Alcotest.(check (option string)) "name" (Some "groups/abc123") group.name

let test_search_transitive_groups () =
  let call =
    Cloudidentity.Groups.Memberships.search_transitive_groups ~parent:"groups/-"
      ~query:
        "member_key_id == 'a@example.com' && \
         'cloudidentity.googleapis.com/groups.discussion_forum' in labels"
      ()
  in
  Alcotest.(check string)
    "uri"
    "https://cloudidentity.googleapis.com/v1/groups/-/memberships:searchTransitiveGroups?query=member_key_id%20==%20'a@example.com'%20%26%26%20'cloudidentity.googleapis.com/groups.discussion_forum'%20in%20labels"
    (uri call);
  let groups =
    Call.response call ~status:200
      ~body:
        {|{"memberships":[{"group":"groups/abc123","groupKey":{"id":"team@example.com"},"displayName":"Team","labels":{"cloudidentity.googleapis.com/groups.discussion_forum":""},"relationType":"INDIRECT"}]}|}
    |> unwrap
  in
  Alcotest.(check (option string)) "next page" None groups.next_page_token;
  match groups.memberships with
  | Some [ { group; group_key = Some { id; _ }; relation_type; labels; _ } ] ->
    Alcotest.(check (option string)) "group" (Some "groups/abc123") group;
    Alcotest.(check (option string)) "group key" (Some "team@example.com") id;
    Alcotest.(check bool) "relation type" true (relation_type = Some `Indirect);
    Alcotest.(check (option (list (pair string string))))
      "labels"
      (Some [ "cloudidentity.googleapis.com/groups.discussion_forum", "" ])
      labels
  | Some _ | None -> Alcotest.fail "expected one group with a key"

let () =
  Alcotest.run "google-api-cloudidentity"
    [
      ( "cloudidentity",
        [
          Alcotest.test_case "lookup group" `Quick test_lookup_group;
          Alcotest.test_case "search transitive groups" `Quick test_search_transitive_groups;
        ] );
    ]
