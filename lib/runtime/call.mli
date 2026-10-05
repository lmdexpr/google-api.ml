(** An API request paired with the decoder of its response. Execute it on its own with {!execute} or
    together with others with {!Batch.execute}. *)

type 'a t

val make : meth:Http.meth -> uri:Uri.t -> ?body:Yojson.Safe.t -> (string -> 'a) -> 'a t
[@@alert internal "For generated code; see Google_api."]
(** [make ~meth ~uri ?body decode]. [decode] reads a 2xx response body and may raise
    [Yojson.Json_error] or [Yojson.Safe.Util.Type_error]. *)

val json : (Yojson.Safe.t -> 'a) -> string -> 'a
[@@alert internal "For generated code; see Google_api."]
(** A decoder of a JSON response body. *)

val empty : string -> unit
[@@alert internal "For generated code; see Google_api."]
(** A decoder ignoring the response body. *)

val request : 'a t -> Http.request
(** The request without credentials. *)

val map : ('a -> 'b) -> 'a t -> 'b t

val add_query : (string * string list) list -> 'a t -> 'a t
(** Adds query parameters, e.g. the standard parameters [quotaUser] or [prettyPrint]. A list of
    several values is sent comma-separated; repeat the name to send [name=a&name=b]. *)

val add_header : string -> string -> 'a t -> 'a t
(** [add_header name value], e.g. [add_header "if-match" etag] for a conditional update or
    [add_header "x-goog-user-project" project] to bill another project. The value must not contain
    CR or LF. *)

val fields : string -> 'a t -> 'a t
(** Asks for a partial response, e.g. [fields "nextPageToken,items(id,summary)"]. Fields left out
    decode as [None]. *)

val response : 'a t -> status:int -> body:string -> ('a, Error.t) result
[@@alert internal "For generated code; see Google_api."]
(** Interprets a response to the request. *)

val execute : access_token:string -> 'a t -> ('a, Error.t) result
(** Performs {!Http.Request} with [Authorization: Bearer access_token]. *)
