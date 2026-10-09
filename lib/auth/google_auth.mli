(** Google sign-in (OpenID Connect authorization code flow) and OAuth 2.0 tokens.

    HTTP goes through [Google_api.Http.Request]; install a handler such as
    [Google_api_cohttp_eio.run]. *)

type config = {
  client_id : string;
  client_secret : string;
  scopes : string list;  (** Must include ["openid"], e.g. [["openid"; "email"]]. *)
}

type credentials = {
  access_token : string;
  expires_in : int option;  (** Seconds *)
  scope : string list;
  id_token : string option;  (** Validated by {!exchange_code}; returned as is by {!refresh}. *)
  refresh_token : string option;
}

type signed_in = {
  credentials : credentials;
  claims : Yojson.Safe.t;
    (** The payload of the validated ID token, for checks of your own such as [hd] or [azp]. *)
}

type error =
  | Invalid_grant
    (** The code or refresh token is expired, revoked, already used, or does not match the
        [redirect_uri] / PKCE verifier. *)
  | Rejected of string  (** Any other OAuth error code, e.g. ["invalid_client"]. *)
  | Invalid_id_token of string
  | Unexpected_response of { status : int; reason : string }
    (** Response bodies are left out: successful ones carry tokens. *)

val error_to_string : error -> string

type client
(** The configuration with the provider metadata and its signing keys. *)

val initialize : config -> (client, error) result
(** Fetches the discovery document and the signing keys of [https://accounts.google.com]. *)

val auth_uri :
  client ->
  redirect_uri:Uri.t ->
  state:string ->
  nonce:string ->
  ?access_type:[ `Online | `Offline ] ->
  ?prompt:string ->
  ?code_challenge:string ->
  unit ->
  Uri.t
(** The URI to send the user to. Pass the same [redirect_uri] value to {!exchange_code}. Generate
    [state], [nonce] and the PKCE verifier with a cryptographically secure random generator. Request
    a refresh token with [~access_type:`Offline] (and [~prompt:"consent"] to get one again).
    [code_challenge] is an S256 challenge from {!code_challenge}. *)

val exchange_code :
  client ->
  redirect_uri:Uri.t ->
  code:string ->
  nonce:string ->
  ?code_verifier:string ->
  unit ->
  (signed_in, error) result
(** Exchanges the authorization code and validates the ID token: RS256 signature by Google, issuer,
    audience, expiry and issue time with 60 seconds of clock skew allowed, and [nonce]. *)

val refresh : client -> refresh_token:string -> (credentials, error) result

val code_challenge : verifier:string -> string
(** The PKCE S256 challenge: base64url (no padding) of SHA-256 of [verifier], 43 to 128 characters
    of [A-Z a-z 0-9 - . _ ~] (RFC 7636). *)

module Service_account : sig
  (** OAuth 2.0 for server-to-server calls with a service account key: a JWT signed with the key is
      exchanged for an access token (RFC 7523). *)

  type t

  val of_json : Yojson.Safe.t -> (t, string) result
  (** Reads the JSON key file as downloaded from the Google Cloud console. Fails unless
      [private_key] is an RSA key and [token_uri] an https URI. *)

  val of_string : string -> (t, string) result
  val client_email : t -> string

  val access_token :
    t -> now:Ptime.t -> scopes:string list -> ?subject:string -> unit -> (credentials, error) result
  (** An access token for [scopes], valid for an hour from [now]. [subject] is the user to
      impersonate with domain-wide delegation. [credentials.refresh_token] is [None]: call again
      instead. *)
end
