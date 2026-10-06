(** Follows [nextPageToken] across the pages of a list method.

    Google APIs page with a [pageToken] query parameter and a [nextPageToken] response field
    ({{:https://google.aip.dev/158} AIP-158}); the last page has no or an empty [nextPageToken]. *)

val fold :
  access_token:string ->
  next_page_token:('a -> string option) ->
  init:'acc ->
  f:('acc -> 'a -> 'acc) ->
  'a Call.t ->
  ('acc, Error.t) result
(** [fold ~access_token ~next_page_token ~init ~f call] executes [call], then the same call with
    [pageToken] set to the [next_page_token] of each page, folding [f] over the pages in order. It
    stops at the first error.

    The method must take the page token as the [pageToken] query parameter, as every list method of
    the packaged APIs does. Methods taking it in the request body would be sent the first page again
    and again. With {!Call.fields}, include [nextPageToken]: a page without it is taken as the last.
*)
