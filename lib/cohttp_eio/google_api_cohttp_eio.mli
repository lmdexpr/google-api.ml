(** Handles [Google_api.Http.Request] with a cohttp-eio client. *)

val run : client:Cohttp_eio.Client.t -> (unit -> 'a) -> 'a
(** [run ~client k] performs every request made by [k] with [client], reading the response body
    fully. Google APIs are HTTPS only, so make [client] with [~https]. A transport exception is
    raised where the request was performed. *)
