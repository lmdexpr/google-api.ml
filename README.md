# google-api.ml

OCaml clients for Google APIs. Types, JSON codecs and calls are generated from the
[Discovery documents][discovery], so every method and field of an API is available.

| Package | Contents |
| --- | --- |
| `google-api` | Transport-independent core: the HTTP effect, errors, calls, batch requests, pagination |
| `google-api-cohttp-eio` | Handles the HTTP effect with [cohttp-eio][cohttp-eio] |
| `google-api-tasks` | Google Tasks API v1 |
| `google-api-calendar` | Google Calendar API v3 |
| `google-api-directory` | Admin SDK Directory API v1 |
| `google-api-cloudidentity` | Cloud Identity API v1 |
| `google-auth` | Sign-in with Google (OpenID Connect) and OAuth 2.0 tokens |

API packages only depend on `google-api`, `uri` and `yojson`; they take an access token, so
`google-auth` (and its crypto dependencies) is optional.

`google-api.runtime` holds what generated packages and `google-auth` are built on. It is not for
applications: its functions for generated code raise the `internal` alert, and it may change
without notice.

[discovery]: https://developers.google.com/discovery/v1/reference
[cohttp-eio]: https://github.com/mirage/ocaml-cohttp

## Install

Not on the opam repository yet.

```sh
opam pin add google-api https://github.com/lmdexpr/google-api.ml.git
opam pin add google-api-cohttp-eio https://github.com/lmdexpr/google-api.ml.git
opam pin add google-api-tasks https://github.com/lmdexpr/google-api.ml.git
```

## Usage

HTTPS needs a TLS wrapper for the cohttp-eio client; this one uses `tls-eio` and `ca-certs`.

```ocaml
let https =
  let authenticator = Ca_certs.authenticator () |> Result.get_ok in
  let config = Tls.Config.client ~authenticator () |> Result.get_ok in
  fun uri raw ->
    let host = Uri.host uri |> Option.map (fun h -> Domain_name.(host_exn (of_string_exn h))) in
    Tls_eio.client_of_flow ?host config raw

let () =
  Eio_main.run @@ fun env ->
  let client = Cohttp_eio.Client.make ~https:(Some https) env#net in
  let access_token = Sys.getenv "GOOGLE_ACCESS_TOKEN" in
  Google_api_cohttp_eio.run ~client @@ fun () ->
  match
    Google_api_tasks.Tasks.list ~tasklist:"@default" ~show_completed:false ()
    |> Google_api.Call.execute ~access_token
  with
  | Ok { items; _ } ->
    Option.value items ~default:[]
    |> List.iter (fun (task : Google_api_tasks.task) ->
      print_endline (Option.value task.title ~default:"(untitled)"))
  | Error e -> prerr_endline (Google_api.Error.to_string e)
```

### Generated packages

Each package is one module (`Google_api_calendar`, ...) containing:

- A record type per schema, e.g. `event`, with every field an `option` (Google omits fields, and
  partial responses leave out more). Inline objects get their own types (`event_creator`).
  `make_event ?summary ?start ... ()` builds one; `event_of_yojson` / `yojson_of_event` convert.
  As in Google's client libraries, `format: int64` values stay strings.
- Enums as polymorphic variants with a fallback for values added later:
  ``[ `Start_time | `Updated | `Unrecognized of string ]``.
- A module per resource, e.g. `Events`, with a function per method. Path and required parameters
  are labelled arguments, optional ones are optional arguments, a request body is `~body`. Each
  returns a `Google_api.Call.t`; nothing is sent until it is executed.
- `batch_endpoint` and `batch` for the API's batch endpoint.

The documentation of every type, field, method and parameter is copied from the Discovery
document into the `.mli`.

### Calls

```ocaml
let call =
  Google_api_calendar.Events.list ~calendar_id:"primary" ~single_events:true
    ~order_by:`Start_time ()
  |> Google_api.Call.fields "nextPageToken,items(id,summary,start,end)"

(* One request *)
let events = Google_api.Call.execute ~access_token call

(* Several requests in one HTTP round trip; each part has its own result *)
let parts = Google_api_calendar.batch ~access_token [ call; other_call ]
```

- `Call.fields` asks for a partial response; `Call.add_query` adds other standard parameters;
  `Call.add_header` adds headers such as `If-Match` or `X-Goog-User-Project`.
- `Call.map` changes the result type, e.g. to put calls of different types in one batch.
- `Page.fold` executes a list call page after page, setting `pageToken` to the previous page's
  `next_page_token` until it is absent or empty. It needs the method to take `pageToken` as a query
  parameter, as every list method of the packaged APIs does:

  ```ocaml
  let all_tasks =
    Google_api_tasks.Tasks.list ~tasklist:"@default" ()
    |> Google_api.Page.fold ~access_token
         ~next_page_token:(fun (page : Google_api_tasks.tasks) -> page.next_page_token)
         ~init:[]
         ~f:(fun acc (page : Google_api_tasks.tasks) ->
           List.rev_append (Option.value page.items ~default:[]) acc)
    |> Result.map List.rev
  ```
- Errors are `Google_api.Error.t`: `Http` (non-2xx, read the body with `Google_api.Error_body`),
  `Decode` (2xx body of an unexpected shape, with the `Yojson.Safe.Util.Type_error` message), and the
  batch-specific `Missing_batch_part` / `Malformed_batch_response`.

HTTP goes through the effect `Google_api.Http.Request`. Handle it yourself in tests:

```ocaml
let with_stub (respond : Google_api.Http.request -> Google_api.Http.response) k =
  try k () with effect Google_api.Http.Request request, k -> Effect.Deep.continue k (respond request)
```

An effect handler only sees `perform`s of its own fiber: install it in every fiber that executes
calls, or put the calls in one batch instead of forking.

### Sign-in

```ocaml
(* Once at startup, inside the HTTP handler *)
let client =
  Google_auth.initialize { client_id; client_secret; scopes = [ "openid"; "email" ] }
  |> Result.get_ok

(* Redirect the user; keep state, nonce and verifier in the session. Generate them with a
   cryptographically secure generator, e.g. Mirage_crypto_rng *)
let uri =
  Google_auth.auth_uri client ~redirect_uri ~state ~nonce ~access_type:`Offline
    ~code_challenge:(Google_auth.code_challenge ~verifier) ()

(* On the callback, after checking state *)
let signed_in =
  Google_auth.exchange_code client ~redirect_uri ~code ~nonce ~code_verifier:verifier ()
```

`exchange_code` validates the ID token (RS256 signature by Google, issuer, audience, expiry,
nonce) and returns its claims for checks of your own, such as `hd` for a Workspace domain.
`refresh` renews the access token. Errors leave out response bodies, which may carry tokens.

## Not supported

- Media upload and download (the generator refuses such methods; none of the packaged APIs has one).
- Sending an explicit `null` to clear a field in a PATCH: `None` fields are omitted.

## Development

```sh
opam switch create . 5.5.1 --no-install -y
opam install dune -y
dune build
dune runtest
dune fmt
```

The generated `apis/*/*.ml{,i}` are committed and not formatted. `dune runtest` regenerates them
from `discovery/*.json` and fails if they differ; `dune promote` accepts the new output.

- Update the Discovery documents with `scripts/update-discovery.sh` (needs `curl` and `jq`). The
  Discovery workflow does it every Monday and opens a pull request from `discovery-update`.
- Add an API with `scripts/add-api.sh <name> <discovery-file> <discovery-url> <title>`, e.g.
  `scripts/add-api.sh cloudidentity cloudidentity.v1.json
  'https://cloudidentity.googleapis.com/$discovery/rest?version=v1' 'Cloud Identity API v1'`. It
  vendors the document, adds the package to `dune-project`, `update-discovery.sh` and this README,
  and generates the bindings. Then write `test/test_<name>.ml`.
- Opam files are generated from `dune-project`: run `dune build @opam` and `dune promote`.

## License

[MIT](./LICENSE)
