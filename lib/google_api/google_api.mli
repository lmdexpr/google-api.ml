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

(** Follows [nextPageToken] across the pages of a list method.

    Google APIs page with a [pageToken] query parameter and a [nextPageToken] response field
    ({{:https://google.aip.dev/158} AIP-158}); the last page has no or an empty [nextPageToken]. *)
module Page : sig
  val fold :
    access_token:string ->
    ?max_pages:int ->
    next_page_token:('a -> string option) ->
    init:'acc ->
    f:('acc -> 'a -> 'acc) ->
    'a Call.t ->
    ('acc, Error.t) result
  (** [fold ~access_token ?max_pages ~next_page_token ~init ~f call] executes [call], then the same
      call with [pageToken] set to the [next_page_token] of each page, folding [f] over the pages in
      order. It stops at the first error. With [max_pages], a call still having a next page after
      [max_pages] pages fails with [Too_many_pages] instead of requesting more; at least one page is
      requested. E.g. all tasks of a list:

      {[
      Google_api_tasks.Tasks.list ~tasklist ()
      |> Google_api.Page.fold ~access_token
           ~next_page_token:(fun (page : Google_api_tasks.tasks) -> page.next_page_token)
           ~init:[]
           ~f:(fun acc (page : Google_api_tasks.tasks) ->
             List.rev_append (Option.value page.items ~default:[]) acc)
      |> Result.map List.rev
      ]}

      The method must take the page token as the [pageToken] query parameter, as every list method
      of the packaged APIs does. Methods taking it in the request body would be sent the first page
      again and again. With {!Call.fields}, include [nextPageToken]: a page without it is taken as
      the last. *)

  val fold_batch :
    access_token:string ->
    endpoint:Uri.t ->
    ?max_pages:int ->
    next_page_token:('a -> string option) ->
    init:'acc ->
    f:('acc -> 'a -> 'acc) ->
    'a Call.t list ->
    (('acc, Error.t) result list, Error.t) result
  (** [fold_batch ~access_token ~endpoint ?max_pages ~next_page_token ~init ~f calls] is {!fold} on
      each of [calls], each from [init], sending the pages in rounds of {!Batch.execute}: the first
      pages in one batch, then the next pages of the calls not finished yet, until every call is
      finished. It answers each call in order; a call stops at its own first error without stopping
      the others. The outer [Error] is a failure of a batch request itself, which drops every
      result. Generated packages provide the [endpoint] as [batch_endpoint]. E.g. all tasks of
      several lists:

      {[
      List.map (fun tasklist -> Google_api_tasks.Tasks.list ~tasklist ()) tasklists
      |> Google_api.Page.fold_batch ~access_token ~endpoint:Google_api_tasks.batch_endpoint
           ~next_page_token:(fun (page : Google_api_tasks.tasks) -> page.next_page_token)
           ~init:[]
           ~f:(fun acc (page : Google_api_tasks.tasks) ->
             List.rev_append (Option.value page.items ~default:[]) acc)
      |> Result.map (List.map (Result.map List.rev))
      ]}

      A round holds at most as many calls as [calls], so keep [calls] within the API's batch limit.
  *)
end
