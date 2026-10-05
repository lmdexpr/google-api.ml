(** Transport-independent core of the Google API clients. Generated packages return {!Call.t}
    values; execute them with {!Call.execute} or {!Batch.execute}. *)

(** The single HTTP effect every call goes through.

    This library never performs I/O itself: install a handler for {!Request} (e.g.
    [Google_api_cohttp_eio.run]) around the code that executes calls. A handler answers with the
    response, whatever its status, and makes a transport failure raise where the request was
    performed, e.g. with [Effect.Deep.discontinue]. *)
module Http : sig
  type meth = Google_api_runtime.Http.meth

  type request = Google_api_runtime.Http.request = {
    meth : meth;
    uri : Uri.t;
    headers : (string * string) list;
    body : string option;
  }

  type response = Google_api_runtime.Http.response = {
    status : int;
    headers : (string * string) list;
    body : string;
  }

  type _ Effect.t += Request : request -> response Effect.t

  val string_of_meth : meth -> string

  val header : string -> (string * string) list -> string option
  (** Looks a header up case-insensitively. *)
end

module Error = Google_api_runtime.Error
module Error_body = Google_api_runtime.Error_body

(** An API request paired with the decoder of its response. *)
module Call : sig
  type 'a t = 'a Google_api_runtime.Call.t

  val execute : access_token:string -> 'a t -> ('a, Error.t) result
  (** Performs {!Http.Request} with [Authorization: Bearer access_token]. *)

  val map : ('a -> 'b) -> 'a t -> 'b t
  (** E.g. to put calls of different types in one batch. *)

  val fields : string -> 'a t -> 'a t
  (** Asks for a partial response, e.g. [fields "nextPageToken,items(id,summary)"]. Fields left out
      decode as [None]. *)

  val add_query : (string * string list) list -> 'a t -> 'a t
  (** Adds query parameters, e.g. the standard parameters [quotaUser] or [prettyPrint]. A list of
      several values is sent comma-separated; repeat the name to send [name=a&name=b]. *)

  val add_header : string -> string -> 'a t -> 'a t
  (** [add_header name value], e.g. [add_header "if-match" etag] for a conditional update or
      [add_header "x-goog-user-project" project] to bill another project. The value must not contain
      CR or LF. *)

  val request : 'a t -> Http.request
  (** The request without credentials. *)
end

(** Several calls in one HTTP request ([multipart/mixed]).

    See {{:https://developers.google.com/workspace/calendar/api/guides/batch} the batch guide}.
    Google accepts at most 1000 calls per batch; some APIs document a lower limit (Calendar: 50).
    Each call is still counted separately against quotas. *)
module Batch : sig
  val execute :
    access_token:string ->
    endpoint:Uri.t ->
    'a Call.t list ->
    (('a, Error.t) result list, Error.t) result
  (** [execute ~access_token ~endpoint calls] answers each call in order. The outer [Error] is a
      failure of the batch request itself. An empty [calls] performs no request. Generated packages
      provide [batch], which supplies the [endpoint]. *)
end
