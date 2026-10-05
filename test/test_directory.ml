[@@@alert "-internal"]

module Directory = Google_api_directory
module Call = Google_api_runtime.Call

let uri call = Uri.to_string (Call.request call).uri
let unwrap = function Ok x -> x | Error e -> Alcotest.fail (Google_api.Error.to_string e)

let test_org_unit_path_keeps_slashes () =
  Alcotest.(check string)
    "uri"
    "https://admin.googleapis.com/admin/directory/v1/customer/my_customer/orgunits/Sales/Tokyo%20Office"
    (uri (Directory.Orgunits.get ~customer_id:"my_customer" ~org_unit_path:"Sales/Tokyo Office" ()))

let test_list_members () =
  let call =
    Directory.Members.list ~group_key:"team@example.com" ~include_derived_membership:true ()
  in
  Alcotest.(check string)
    "uri"
    "https://admin.googleapis.com/admin/directory/v1/groups/team@example.com/members?includeDerivedMembership=true"
    (uri call);
  let members =
    Call.response call ~status:200
      ~body:
        {|{"kind":"admin#directory#members","members":[{"email":"a@example.com","role":"MEMBER","type":"USER","status":"ACTIVE"}],"nextPageToken":"p"}|}
    |> unwrap
  in
  Alcotest.(check (option string)) "next page" (Some "p") members.next_page_token;
  match members.members with
  | Some [ member ] ->
    Alcotest.(check (option string)) "email" (Some "a@example.com") member.email;
    Alcotest.(check (option string)) "type" (Some "USER") member.type_
  | Some _ | None -> Alcotest.fail "expected one member"

let () =
  Alcotest.run "google-api-directory"
    [
      ( "directory",
        [
          Alcotest.test_case "org unit path keeps slashes" `Quick test_org_unit_path_keeps_slashes;
          Alcotest.test_case "list members" `Quick test_list_members;
        ] );
    ]
