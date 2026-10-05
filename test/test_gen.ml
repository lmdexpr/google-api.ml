(* [Fixture] is generated from fixture.json at build time: that it compiles at all covers keyword
   fields, predefined type names, recursive and inline schemas, maps, enums and nested resources. *)

[@@@alert "-internal"]

module Naming = Google_api_gen.Naming
module Call = Google_api_runtime.Call

let json = Alcotest.testable Yojson.Safe.pp Yojson.Safe.equal
let parse = Yojson.Safe.from_string
let uri call = Uri.to_string (Call.request call).uri

(* Naming *)

let test_naming () =
  let check name expected actual = Alcotest.(check string) name expected actual in
  check "camel" "i_cal_uid" (Naming.snake "iCalUID");
  check "acronym" "http_server" (Naming.snake "HTTPServer");
  check "upper snake" "permission_denied" (Naming.snake "PERMISSION_DENIED");
  check "punctuation" "x_goog_api" (Naming.snake "$.x-goog-api");
  check "keyword" "end_" (Naming.value "end");
  check "predefined type is fine as a value" "list" (Naming.value "list");
  check "predefined type" "result_" (Naming.type_ "Result");
  check "digit" "v1" (Naming.value "1");
  check "module" "Calendar_list" (Naming.module_ "calendarList");
  check "tag" "All_including_parent" (Naming.tag "allIncludingParent");
  check "digit tag" "V1" (Naming.tag "1");
  Alcotest.(check (list string))
    "dedupe" [ "a"; "b"; "a_"; "a__" ]
    (Naming.dedupe [ "a"; "b"; "a"; "a" ])

let test_doc_escapes_comment_syntax () =
  Alcotest.(check string)
    "escaped" {s|'a' \{ |x|\} ( * c * ) \@t \[c\] b\\s|s}
    (Google_api_gen.Emit.doc {s|"a" {|x|} (* c *) @t [c] b\s|s})

(* Methods *)

let test_reserved_expansion_and_repeated_enum () =
  Alcotest.(check string)
    "uri" "https://fixture.example.com/fixture/v1/nodes/a/b%20c?ids=1&ids=2&type=basic"
    (uri (Fixture.Nodes.get ~name:"a/b c" ~type_:`Basic ~ids:[ "1"; "2" ] ()))

let test_parameter_named_body () =
  let insert =
    Fixture.Nodes.insert ~page_size:10 ~body:(Fixture.make_node ~type_:`A_value ()) ~body_:true ()
  in
  Alcotest.(check string)
    "uri" "https://fixture.example.com/fixture/v1/nodes?body=true&pageSize=10" (uri insert);
  Alcotest.(check (option json))
    "request body"
    (Some (parse {|{"type":"A_VALUE"}|}))
    (Option.map parse (Call.request insert).body)

let test_integer_path_parameter () =
  let delete = Fixture.Nodes.delete ~node_id:3 () in
  Alcotest.(check string) "uri" "https://fixture.example.com/fixture/v1/nodes/3" (uri delete);
  Alcotest.(check string)
    "method" "DELETE"
    (Google_api.Http.string_of_meth (Call.request delete).meth)

let test_nested_resource_escapes_path () =
  Alcotest.(check string)
    "uri" "https://fixture.example.com/fixture/v1/nodes/a%2Fb@example.com%23c%20d/children"
    (uri (Fixture.Nodes.Children.list ~node_id:"a/b@example.com#c d" ()))

let test_batch_endpoint () =
  Alcotest.(check string)
    "endpoint" "https://fixture.example.com/batch/fixture/v1"
    (Uri.to_string Fixture.batch_endpoint)

(* Codecs *)

let node_json =
  {|{"children":[{"type":"new"}],"count":1,"empty":{},"end":"2026-01-01T00:00:00Z","inner":{"Value":"s","value":1.5},"labels":{"k":"v"},"list":[{"x":true}],"meta":{"any":[1]},"ratio":0.5,"size":"9007199254740993","type":"bValue"}|}

let test_codecs_round_trip () =
  let node = Fixture.node_of_yojson (parse node_json) in
  Alcotest.(check bool) "enum" true (node.type_ = Some `B_value);
  Alcotest.(check (option string)) "int64 as on the wire" (Some "9007199254740993") node.size;
  Alcotest.(check bool)
    "unknown enum value" true
    (Option.map (List.map (fun (child : Fixture.node) -> child.type_)) node.children
    = Some [ Some (`Unrecognized "new") ]);
  Alcotest.check json "same JSON" (parse node_json) (Fixture.yojson_of_node node)

let test_decode_error () =
  match
    Call.response (Fixture.Nodes.get ~name:"n" ()) ~status:200
      ~body:{|{"children":[{"count":"x"}]}|}
  with
  | Error (Google_api.Error.Decode { message; status = _; body = _ }) ->
    Alcotest.(check string) "path" "Expected int, got string" message
  | Ok (_ : Fixture.node) | Error (Http _ | Missing_batch_part | Malformed_batch_response _) ->
    Alcotest.fail "expected a decode error"

let () =
  Alcotest.run "google-api-gen"
    [
      ( "generator",
        [
          Alcotest.test_case "naming" `Quick test_naming;
          Alcotest.test_case "doc escapes comment syntax" `Quick test_doc_escapes_comment_syntax;
        ] );
      ( "methods",
        [
          Alcotest.test_case "reserved expansion and repeated enum" `Quick
            test_reserved_expansion_and_repeated_enum;
          Alcotest.test_case "parameter named body" `Quick test_parameter_named_body;
          Alcotest.test_case "integer path parameter" `Quick test_integer_path_parameter;
          Alcotest.test_case "nested resource escapes the path" `Quick
            test_nested_resource_escapes_path;
          Alcotest.test_case "batch endpoint" `Quick test_batch_endpoint;
        ] );
      ( "codecs",
        [
          Alcotest.test_case "round trip" `Quick test_codecs_round_trip;
          Alcotest.test_case "decode error" `Quick test_decode_error;
        ] );
    ]
