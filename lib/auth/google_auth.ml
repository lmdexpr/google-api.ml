[@@@alert "-internal"]

type config = { client_id : string; client_secret : string; scopes : string list }

type credentials = {
  access_token : string;
  expires_in : int option;
  scope : string list;
  id_token : string option;
  refresh_token : string option;
}

type signed_in = { credentials : credentials; claims : Yojson.Safe.t }

type error =
  | Invalid_grant
  | Rejected of string
  | Invalid_id_token of string
  | Unexpected_response of { status : int; reason : string }

let error_to_string = function
  | Invalid_grant -> "invalid_grant"
  | Rejected code -> "rejected: " ^ code
  | Invalid_id_token reason -> "invalid ID token: " ^ reason
  | Unexpected_response { status; reason } ->
    Printf.sprintf "unexpected response (HTTP %d): %s" status reason

type client = { config : config; discovery : Oidc.Discover.t; jwks : Jose.Jwks.t Atomic.t }

let google = Uri.of_string "https://accounts.google.com"
let ( let* ) = Result.bind
let is_success status = status >= 200 && status < 300
let unexpected ~status reason = Error (Unexpected_response { status; reason })
let base64url bytes = Base64.encode_string ~pad:false ~alphabet:Base64.uri_safe_alphabet bytes

let code_challenge ~verifier =
  base64url (Digestif.SHA256.digest_string verifier |> Digestif.SHA256.to_raw_string)

let fetch ~what uri parse =
  let { Google_api.Http.status; body; headers = _ } =
    Google_api_runtime.Http.perform { meth = `GET; uri; headers = []; body = None }
  in
  if not (is_success status) then
    unexpected ~status what
  else
    match
      parse body
    with
    | Ok value -> Ok value
    | Error reason -> unexpected ~status (what ^ ": " ^ reason)

let parse_discovery body =
  match Oidc.Discover.of_string body with
  | Ok discovery -> Ok discovery
  | Error (`Msg message) -> Error message
  | exception Yojson.Json_error message -> Error message
  | exception Yojson.Safe.Util.Type_error (message, _) -> Error message

let parse_jwks body =
  match Jose.Jwks.of_string body with
  | jwks -> Ok jwks
  | exception Yojson.Json_error message -> Error message
  | exception Yojson.Safe.Util.Type_error (message, _) -> Error message

let fetch_jwks discovery = fetch ~what:"JWKS" discovery.Oidc.Discover.jwks_uri parse_jwks
let discovery_uri = Uri.of_string "https://accounts.google.com/.well-known/openid-configuration"

let initialize config =
  let* discovery = fetch ~what:"discovery document" discovery_uri parse_discovery in
  (* OpenID Connect Discovery 1.0, section 4.3 *)
  let* () =
    if Uri.equal discovery.issuer google then
      Ok ()
    else
      unexpected ~status:200
        ("discovery document of another issuer: " ^ Uri.to_string discovery.issuer)
  in
  let* jwks = fetch_jwks discovery in
  Ok { config; discovery; jwks = Atomic.make jwks }

let oidc_client client ~redirect_uri =
  Oidc.SimpleClient.make ~secret:client.config.client_secret ~redirect_uri
    ~provider_uri:client.discovery.issuer client.config.client_id

let auth_uri client ~redirect_uri ~state ~nonce ?access_type ?prompt ?code_challenge () =
  let uri =
    Oidc.SimpleClient.make_auth_uri
      ~scope:(List.map Oidc.Scopes.of_string client.config.scopes)
      ~nonce ~state ~discovery:client.discovery
      (oidc_client client ~redirect_uri)
  in
  let access_type =
    Option.map (function `Online -> "online" | `Offline -> "offline") access_type
  in
  let pkce =
    match code_challenge with
    | Some challenge -> [ "code_challenge", challenge; "code_challenge_method", "S256" ]
    | None -> []
  in
  let optional =
    [ "access_type", access_type; "prompt", prompt ]
    |> List.filter_map (fun (key, value) -> Option.map (fun value -> key, value) value)
  in
  Uri.add_query_params' uri (optional @ pkce)

let oauth_error = function
  | `Assoc fields -> (
    match List.assoc_opt "error" fields with
    | Some (`String code) -> Some code
    | Some (`Null | `Bool _ | `Int _ | `Intlit _ | `Float _ | `Assoc _ | `List _) | None -> None)
  | `Null | `Bool _ | `Int _ | `Intlit _ | `Float _ | `String _ | `List _ -> None

(* Type_error carries the offending value: values of a token response are secrets. *)
let decode ~status decode json =
  match decode json with
  | value -> Ok value
  | exception Yojson.Safe.Util.Type_error (message, _) ->
    unexpected ~status ("malformed response: " ^ message)

let json_response ~what { Google_api.Http.status; body; headers = _ } decoder =
  match Yojson.Safe.from_string body with
  | exception Yojson.Json_error _ -> unexpected ~status (what ^ " is not JSON")
  | json -> (
    match oauth_error json with
    | Some "invalid_grant" -> Error Invalid_grant
    | Some code -> Error (Rejected code)
    | None when not (is_success status) -> unexpected ~status (what ^ " without an error code")
    | None -> decode ~status decoder json)

let credentials_of_json json =
  let open Yojson.Safe.Util in
  let string key = member key json |> to_option to_string in
  {
    access_token = member "access_token" json |> to_string;
    expires_in = member "expires_in" json |> to_option to_int;
    scope =
      string "scope" |> Option.fold ~none:[] ~some:(String.split_all ~sep:" " ~drop:String.is_empty);
    id_token = string "id_token";
    refresh_token = string "refresh_token";
  }

let token_request client params =
  let params =
    params @ [ "client_id", client.config.client_id; "client_secret", client.config.client_secret ]
  in
  Google_api_runtime.Http.perform
    {
      meth = `POST;
      uri = client.discovery.token_endpoint;
      headers = [ "content-type", "application/x-www-form-urlencoded" ];
      body = Some (Uri.encoded_of_query (List.map (fun (key, value) -> key, [ value ]) params));
    }

let id_token_error = function
  | `Msg message -> message
  | #Oidc.IDToken.validation_error as e -> Oidc.IDToken.validation_error_to_string e

let validate_id_token client ~redirect_uri ~nonce id_token =
  let* jwt =
    match Jose.Jwt.unsafe_of_string id_token with
    | Ok jwt -> Ok jwt
    | Error (`Msg message) -> Error (Invalid_id_token message)
    | Error `Not_json | (exception Yojson.Json_error _) -> Error (Invalid_id_token "not JSON")
    | Error `Not_supported -> Error (Invalid_id_token "not supported")
  in
  (* OpenID Connect Core 1.0, section 3.1.3.7: RS256 unless registered otherwise. *)
  let* kid =
    match jwt.header with
    | { alg = `RS256; kid = Some kid; _ } -> Ok kid
    | { alg = `RS256; kid = None; _ } -> Error (Invalid_id_token "no kid")
    | { alg = _; _ } -> Error (Invalid_id_token "alg must be RS256")
  in
  (* Google rotates its signing keys. *)
  let* jwks =
    let jwks = Atomic.get client.jwks in
    match Jose.Jwks.find_key jwks kid with
    | Some (_ : Jose.Jwk.public Jose.Jwk.t) -> Ok jwks
    | None ->
      let* jwks = fetch_jwks client.discovery in
      Atomic.set client.jwks jwks;
      Jose.Jwks.find_key jwks kid
      |> Option.map (fun (_ : Jose.Jwk.public Jose.Jwk.t) -> jwks)
      |> Option.to_result ~none:(Invalid_id_token "unknown kid")
  in
  Oidc.Token.Response.validate ~clock_tolerance:60 ~nonce ~jwks
    ~client:(oidc_client client ~redirect_uri).client ~discovery:client.discovery
    (Oidc.Token.Response.make ~id_token ())
  |> Result.map (fun (_ : Oidc.Token.Response.t) -> jwt.payload)
  |> Result.map_error (fun e -> Invalid_id_token (id_token_error e))

let exchange_code client ~redirect_uri ~code ~nonce ?code_verifier () =
  let params =
    [ "grant_type", "authorization_code"; "code", code; "redirect_uri", Uri.to_string redirect_uri ]
    @ Option.fold code_verifier ~none:[] ~some:(fun verifier -> [ "code_verifier", verifier ])
  in
  let* credentials =
    json_response ~what:"token response" (token_request client params) credentials_of_json
  in
  let* id_token = Option.to_result credentials.id_token ~none:(Invalid_id_token "missing") in
  let* claims = validate_id_token client ~redirect_uri ~nonce id_token in
  Ok { credentials; claims }

let refresh client ~refresh_token =
  json_response ~what:"token response"
    (token_request client [ "grant_type", "refresh_token"; "refresh_token", refresh_token ])
    credentials_of_json
