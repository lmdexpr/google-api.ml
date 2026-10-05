(* Against a fake provider behind [Google_api.Http.Request]; ID tokens are signed with a key made
   for the run. *)

let () = Mirage_crypto_rng_unix.use_default ()
let issuer = "https://accounts.google.com"
let token_endpoint = "https://oauth2.googleapis.com/token"
let jwks_uri = "https://www.googleapis.com/oauth2/v3/certs"
let userinfo_endpoint = "https://openidconnect.googleapis.com/v1/userinfo"
let jwk = Jose.Jwk.make_priv_rsa (Mirage_crypto_pk.Rsa.generate ~bits:2048 ())
let public = Jose.Jwk.pub_of_priv jwk
let redirect_uri = Uri.of_string "http://127.0.0.1:8080/callback"

let config =
  { Google_auth.client_id = "client"; client_secret = "secret"; scopes = [ "openid"; "email" ] }

let id_token ?(jwk = jwk) ?(aud = `String "client") ?azp ?(nonce = "nonce") () =
  let now = int_of_float (Unix.gettimeofday ()) in
  let payload =
    `Assoc
      ([
         "iss", `String issuer;
         "aud", aud;
         "sub", `String "123";
         "iat", `Int now;
         "exp", `Int (now + 3600);
         "nonce", `String nonce;
       ]
      @ Option.fold azp ~none:[] ~some:(fun azp -> [ "azp", `String azp ]))
  in
  match Jose.Jwt.sign ~header:(Jose.Header.make_header ~typ:"JWT" jwk) ~payload jwk with
  | Ok jwt -> Jose.Jwt.to_string jwt
  | Error (`Msg message) -> failwith message

let token_response id_token =
  Printf.sprintf
    {|{"access_token":"at","expires_in":3599,"scope":"openid https://www.googleapis.com/auth/userinfo.email","token_type":"Bearer","id_token":"%s","refresh_token":"rt"}|}
    id_token

(* A fake provider. Mutable so that a test can rotate keys or change the token response. *)
type provider = {
  mutable discovered_issuer : string;
  mutable keys : Jose.Jwk.public Jose.Jwk.t list;
  mutable jwks_fetches : int;
  mutable token_status : int;
  mutable token : string;
  mutable requests : Google_api.Http.request list;
}

let provider () =
  {
    discovered_issuer = issuer;
    keys = [ public ];
    jwks_fetches = 0;
    token_status = 200;
    token = token_response (id_token ());
    requests = [];
  }

let discovery provider =
  Printf.sprintf
    {|{"issuer":"%s","authorization_endpoint":"https://accounts.google.com/o/oauth2/v2/auth","token_endpoint":"%s","jwks_uri":"%s","userinfo_endpoint":"%s","response_types_supported":["code"],"subject_types_supported":["public"],"id_token_signing_alg_values_supported":["RS256"]}|}
    provider.discovered_issuer token_endpoint jwks_uri userinfo_endpoint

let respond provider (request : Google_api.Http.request) =
  provider.requests <- request :: provider.requests;
  let response ?(status = 200) body = { Google_api.Http.status; headers = []; body } in
  match request.meth, Uri.to_string request.uri with
  | `GET, uri when uri = issuer ^ "/.well-known/openid-configuration" ->
    response (discovery provider)
  | `GET, uri when uri = jwks_uri ->
    provider.jwks_fetches <- provider.jwks_fetches + 1;
    response (Jose.Jwks.to_string { keys = provider.keys })
  | `POST, uri when uri = token_endpoint -> response ~status:provider.token_status provider.token
  | (`GET | `POST | `PUT | `PATCH | `DELETE), uri -> response ~status:404 uri

let with_provider provider k =
  try k ()
  with effect Google_api.Http.Request request, k ->
    Effect.Deep.continue k (respond provider request)

let error =
  Alcotest.testable (fun ppf e -> Format.pp_print_string ppf (Google_auth.error_to_string e)) ( = )

let unwrap = function Ok x -> x | Error e -> Alcotest.fail (Google_auth.error_to_string e)
let client provider = with_provider provider (fun () -> Google_auth.initialize config) |> unwrap

let exchange ?(code = "code") ?code_verifier ?(redirect_uri = redirect_uri) provider client =
  with_provider provider (fun () ->
    Google_auth.exchange_code client ~redirect_uri ~code ~nonce:"nonce" ?code_verifier ())
  |> Result.map (fun (signed_in : Google_auth.signed_in) -> signed_in.credentials.access_token)

let token_request_body provider =
  List.find_map
    (fun (request : Google_api.Http.request) ->
      match request.meth with `POST -> request.body | `GET | `PUT | `PATCH | `DELETE -> None)
    provider.requests

let query_param query key =
  match List.assoc_opt key query with Some [ value ] -> Some value | Some _ | None -> None

(* Authorization request *)

let test_auth_uri () =
  let client = client (provider ()) in
  let uri =
    Google_auth.auth_uri client ~redirect_uri ~state:"state" ~nonce:"nonce" ~access_type:`Offline
      ~code_challenge:"challenge" ()
  in
  let check key expected =
    Alcotest.(check (option string)) key (Some expected) (Uri.get_query_param uri key)
  in
  check "redirect_uri" "http://127.0.0.1:8080/callback";
  check "client_id" "client";
  check "scope" "openid email";
  check "state" "state";
  check "nonce" "nonce";
  check "access_type" "offline";
  check "code_challenge" "challenge";
  check "code_challenge_method" "S256"

(* Code exchange *)

let test_exchange_code () =
  let provider = provider () in
  let client = client provider in
  Alcotest.(check (result string error))
    "access token" (Ok "at")
    (exchange ~code:"4/a+b" ~code_verifier:"verifier" provider client);
  Alcotest.(check (option string))
    "form body"
    (Some
       "grant_type=authorization_code&code=4/a%2Bb&redirect_uri=http://127.0.0.1:8080/callback&code_verifier=verifier&client_id=client&client_secret=secret")
    (token_request_body provider)

let test_same_redirect_uri () =
  let provider = provider () in
  let client = client provider in
  let redirect_uri = Uri.of_string "https://EXAMPLE.com/CALLBACK" in
  let uri = Google_auth.auth_uri client ~redirect_uri ~state:"s" ~nonce:"nonce" () in
  let (_ : (string, Google_auth.error) result) = exchange ~redirect_uri provider client in
  Alcotest.(check (option string))
    "token request uses the authorization request value"
    (Uri.get_query_param uri "redirect_uri")
    (Option.bind (token_request_body provider) (fun body ->
       query_param (Uri.query_of_encoded body) "redirect_uri"))

let test_key_rotation () =
  let provider = provider () in
  provider.keys <- [];
  let client = client provider in
  provider.keys <- [ public ];
  Alcotest.(check (result string error)) "first" (Ok "at") (exchange provider client);
  Alcotest.(check (result string error)) "second" (Ok "at") (exchange provider client);
  Alcotest.(check int) "fetched once more" 2 provider.jwks_fetches

(* ID token *)

let rejects token () =
  let provider = provider () in
  let client = client provider in
  provider.token <- token_response token;
  match exchange provider client with
  | Error (Google_auth.Invalid_id_token (_ : string)) -> ()
  | Ok (_ : string) | Error (Invalid_grant | Rejected _ | Unexpected_response _) ->
    Alcotest.fail "accepted"

(* Valid but for the signature, so that only the alg check can reject it. *)
let unsigned () =
  let encode json = Base64.encode_string ~pad:false ~alphabet:Base64.uri_safe_alphabet json in
  let now = int_of_float (Unix.gettimeofday ()) in
  encode
    (Printf.sprintf {|{"alg":"none","typ":"JWT","kid":"%s"}|}
       (Option.get (Jose.Jwk.get_kid public)))
  ^ "."
  ^ encode
      (Printf.sprintf {|{"iss":"%s","aud":"client","sub":"1","iat":%d,"exp":%d,"nonce":"nonce"}|}
         issuer now (now + 3600))
  ^ "."

let test_unknown_kid () =
  let provider = provider () in
  let client = client provider in
  let other = Jose.Jwk.make_priv_rsa (Mirage_crypto_pk.Rsa.generate ~bits:2048 ()) in
  provider.token <- token_response (id_token ~jwk:other ());
  Alcotest.(check (result string error))
    "rejected after a refetch" (Error (Invalid_id_token "unknown kid")) (exchange provider client);
  Alcotest.(check int) "refetched" 2 provider.jwks_fetches

let test_missing_id_token () =
  let provider = provider () in
  let client = client provider in
  provider.token <- {|{"access_token":"at"}|};
  Alcotest.(check (result string error))
    "missing" (Error (Invalid_id_token "missing")) (exchange provider client)

let test_claims_for_the_caller () =
  let provider = provider () in
  let client = client provider in
  provider.token <- token_response (id_token ~azp:"android-client" ());
  let signed_in =
    with_provider provider (fun () ->
      Google_auth.exchange_code client ~redirect_uri ~code:"code" ~nonce:"nonce" ())
    |> unwrap
  in
  Alcotest.(check (option string))
    "azp" (Some "android-client")
    Yojson.Safe.Util.(member "azp" signed_in.claims |> to_string_option);
  Alcotest.(check (option string))
    "sub" (Some "123")
    Yojson.Safe.Util.(member "sub" signed_in.claims |> to_string_option)

(* Errors *)

let test_oauth_errors () =
  let provider = provider () in
  let client = client provider in
  provider.token_status <- 400;
  provider.token <- {|{"error":"invalid_grant","error_description":"Bad Request"}|};
  Alcotest.(check (result string error))
    "invalid_grant" (Error Invalid_grant) (exchange provider client);
  provider.token_status <- 401;
  provider.token <- {|{"error":"invalid_client"}|};
  Alcotest.(check (result string error))
    "invalid_client" (Error (Rejected "invalid_client")) (exchange provider client);
  provider.token_status <- 502;
  provider.token <- "<html>";
  Alcotest.(check (result string error))
    "not JSON"
    (Error (Unexpected_response { status = 502; reason = "token response is not JSON" }))
    (exchange provider client)

let test_no_secret_in_errors () =
  let provider = provider () in
  let client = client provider in
  provider.token <- {|{"access_token":12345678,"refresh_token":"secret-refresh"}|};
  Alcotest.(check (result string error))
    "path only"
    (Error
       (Unexpected_response
          { status = 200; reason = "malformed response: Expected string, got int" }))
    (exchange provider client)

let test_other_issuer () =
  let provider = provider () in
  provider.discovered_issuer <- "https://evil.example.com";
  match with_provider provider (fun () -> Google_auth.initialize config) with
  | Error (Google_auth.Unexpected_response { status = _; reason = (_ : string) }) -> ()
  | Ok (_ : Google_auth.client) | Error (Invalid_grant | Rejected _ | Invalid_id_token _) ->
    Alcotest.fail "accepted another issuer"

(* Refresh *)

let test_refresh () =
  let provider = provider () in
  let client = client provider in
  provider.token <-
    {|{"access_token":"at2","expires_in":3599,"scope":"openid","token_type":"Bearer"}|};
  let credentials =
    with_provider provider (fun () -> Google_auth.refresh client ~refresh_token:"1//rt") |> unwrap
  in
  Alcotest.(check string) "access token" "at2" credentials.access_token;
  Alcotest.(check (list string)) "scope" [ "openid" ] credentials.scope;
  Alcotest.(check (option string))
    "form body"
    (Some "grant_type=refresh_token&refresh_token=1//rt&client_id=client&client_secret=secret")
    (token_request_body provider)

(* PKCE *)

let test_code_challenge () =
  Alcotest.(check string)
    "RFC 7636 appendix B" "E9Melhoa2OwvFrEMTJguCHaoeK1t8URWbuGJSstw-cM"
    (Google_auth.code_challenge ~verifier:"dBjftJeZ4CVP-mB92K27uhbUJU1p1r_wW1gFWFOEjXk")

let () =
  Alcotest.run "google-auth"
    [
      "authorization request", [ Alcotest.test_case "auth_uri" `Quick test_auth_uri ];
      ( "code exchange",
        [
          Alcotest.test_case "exchange_code" `Quick test_exchange_code;
          Alcotest.test_case "same redirect_uri" `Quick test_same_redirect_uri;
          Alcotest.test_case "key rotation" `Quick test_key_rotation;
        ] );
      ( "id token",
        [
          Alcotest.test_case "rejects a wrong nonce" `Quick (rejects (id_token ~nonce:"other" ()));
          Alcotest.test_case "rejects a wrong audience" `Quick
            (rejects (id_token ~aud:(`String "other-client") ()));
          Alcotest.test_case "rejects alg none" `Quick (fun () -> rejects (unsigned ()) ());
          Alcotest.test_case "rejects an unknown kid" `Quick test_unknown_kid;
          Alcotest.test_case "missing" `Quick test_missing_id_token;
          Alcotest.test_case "claims for the caller" `Quick test_claims_for_the_caller;
        ] );
      ( "errors",
        [
          Alcotest.test_case "OAuth error codes" `Quick test_oauth_errors;
          Alcotest.test_case "no secret in errors" `Quick test_no_secret_in_errors;
          Alcotest.test_case "another issuer" `Quick test_other_issuer;
        ] );
      "refresh", [ Alcotest.test_case "refresh" `Quick test_refresh ];
      "pkce", [ Alcotest.test_case "code challenge" `Quick test_code_challenge ];
    ]
