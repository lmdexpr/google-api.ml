(** Sends several calls in one HTTP request ([multipart/mixed]).

    See {{:https://developers.google.com/workspace/calendar/api/guides/batch} the batch guide}.
    Google accepts at most 1000 calls per batch; some APIs document a lower limit (Calendar: 50).
    Each call is still counted separately against quotas. *)

val execute :
  access_token:string ->
  endpoint:Uri.t ->
  'a Call.t list ->
  (('a, Error.t) result list, Error.t) result
(** [execute ~access_token ~endpoint calls] answers each call in order. The outer [Error] is a
    failure of the batch request itself. An empty [calls] performs no request. Generated packages
    provide the [endpoint] as [batch_endpoint]. *)
