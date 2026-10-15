[@@@alert "-internal"]

module Kms = Google_api_cloudkms
module Call = Google_api_runtime.Call

let uri call = Uri.to_string (Call.request call).uri
let unwrap = function Ok x -> x | Error e -> Alcotest.fail (Google_api.Error.to_string e)
let key = "projects/p/locations/global/keyRings/r/cryptoKeys/k"

(* "plaintext" and "ciphertext" are base64 on the wire; CRC32C checksums are int64 strings. *)
let test_encrypt () =
  let call =
    Kms.Projects.Locations.Key_rings.Crypto_keys.encrypt ~name:key
      ~body:(Kms.make_encrypt_request ~plaintext:"aGVsbG8=" ~plaintext_crc32c:"907060870" ())
      ()
  in
  Alcotest.(check string)
    "uri"
    ("https://cloudkms.googleapis.com/v1/" ^ key ^ ":encrypt")
    (uri call);
  Alcotest.(check (option string))
    "body" (Some {|{"plaintext":"aGVsbG8=","plaintextCrc32c":"907060870"}|})
    (Call.request call).body;
  let response =
    Call.response call ~status:200
      ~body:
        {|{"name":"projects/p/locations/global/keyRings/r/cryptoKeys/k/cryptoKeyVersions/1","ciphertext":"Y2lwaGVy","verifiedPlaintextCrc32c":true,"protectionLevel":"SOFTWARE"}|}
    |> unwrap
  in
  Alcotest.(check (option string)) "ciphertext" (Some "Y2lwaGVy") response.ciphertext;
  Alcotest.(check (option bool)) "verified" (Some true) response.verified_plaintext_crc32c;
  Alcotest.(check bool) "protection level" true (response.protection_level = Some `Software)

let test_decrypt () =
  let call =
    Kms.Projects.Locations.Key_rings.Crypto_keys.decrypt ~name:key
      ~body:(Kms.make_decrypt_request ~ciphertext:"Y2lwaGVy" ())
      ()
  in
  Alcotest.(check string)
    "uri"
    ("https://cloudkms.googleapis.com/v1/" ^ key ^ ":decrypt")
    (uri call);
  Alcotest.(check (option string))
    "body" (Some {|{"ciphertext":"Y2lwaGVy"}|}) (Call.request call).body;
  let response =
    Call.response call ~status:200 ~body:{|{"plaintext":"aGVsbG8=","usedPrimary":true}|} |> unwrap
  in
  Alcotest.(check (option string)) "plaintext" (Some "aGVsbG8=") response.plaintext;
  Alcotest.(check (option bool)) "used primary" (Some true) response.used_primary

let version = key ^ "/cryptoKeyVersions/1"

let test_asymmetric_sign () =
  let call =
    Kms.Projects.Locations.Key_rings.Crypto_keys.Crypto_key_versions.asymmetric_sign ~name:version
      ~body:(Kms.make_asymmetric_sign_request ~digest:(Kms.make_digest ~sha256:"ZGlnZXN0" ()) ())
      ()
  in
  Alcotest.(check string)
    "uri"
    ("https://cloudkms.googleapis.com/v1/" ^ version ^ ":asymmetricSign")
    (uri call);
  Alcotest.(check (option string))
    "body" (Some {|{"digest":{"sha256":"ZGlnZXN0"}}|}) (Call.request call).body;
  let response =
    Call.response call ~status:200 ~body:{|{"signature":"c2lnbmF0dXJl","name":"n"}|} |> unwrap
  in
  Alcotest.(check (option string)) "signature" (Some "c2lnbmF0dXJl") response.signature

let test_get_public_key () =
  let call =
    Kms.Projects.Locations.Key_rings.Crypto_keys.Crypto_key_versions.get_public_key ~name:version
      ~public_key_format:`Pem ()
  in
  Alcotest.(check string)
    "uri"
    ("https://cloudkms.googleapis.com/v1/" ^ version ^ "/publicKey?publicKeyFormat=PEM")
    (uri call);
  let response =
    Call.response call ~status:200
      ~body:{|{"pem":"-----BEGIN PUBLIC KEY-----\n...","algorithm":"EC_SIGN_P256_SHA256"}|}
    |> unwrap
  in
  Alcotest.(check (option string)) "pem" (Some "-----BEGIN PUBLIC KEY-----\n...") response.pem;
  Alcotest.(check bool) "algorithm" true (response.algorithm = Some `Ec_sign_p256_sha256)

let test_list_key_rings () =
  let call =
    Kms.Projects.Locations.Key_rings.list ~parent:"projects/p/locations/global" ~page_size:10 ()
  in
  Alcotest.(check string)
    "uri" "https://cloudkms.googleapis.com/v1/projects/p/locations/global/keyRings?pageSize=10"
    (uri call);
  let response =
    Call.response call ~status:200
      ~body:{|{"keyRings":[{"name":"projects/p/locations/global/keyRings/r"}],"totalSize":1}|}
    |> unwrap
  in
  match response.key_rings with
  | Some [ { name; _ } ] ->
    Alcotest.(check (option string)) "name" (Some "projects/p/locations/global/keyRings/r") name
  | Some _ | None -> Alcotest.fail "expected one key ring"

let () =
  Alcotest.run "google-api-cloudkms"
    [
      ( "crypto keys",
        [
          Alcotest.test_case "encrypt" `Quick test_encrypt;
          Alcotest.test_case "decrypt" `Quick test_decrypt;
        ] );
      ( "crypto key versions",
        [
          Alcotest.test_case "asymmetric sign" `Quick test_asymmetric_sign;
          Alcotest.test_case "get public key" `Quick test_get_public_key;
        ] );
      "key rings", [ Alcotest.test_case "list" `Quick test_list_key_rings ];
    ]
