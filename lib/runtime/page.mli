(** Follows [nextPageToken] across the pages of a list method.

    Google APIs page with a [pageToken] query parameter and a [nextPageToken] response field
    ({{:https://google.aip.dev/158} AIP-158}); the last page has no or an empty [nextPageToken]. *)

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
    requested.

    The method must take the page token as the [pageToken] query parameter, as every list method of
    the packaged APIs does. Methods taking it in the request body would be sent the first page again
    and again. With {!Call.fields}, include [nextPageToken]: a page without it is taken as the last.
*)

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
    the others. The outer [Error] is a failure of a batch request itself, which drops every result.

    A round holds at most as many calls as [calls], so keep [calls] within the API's batch limit. *)
