(** Reads the body of a Google API error response.

    Google uses two shapes:
    - legacy: [{"error":{"code":403,"message":"...","errors":[{"reason":"forbidden"}]}}]
    - google.rpc:
      [{"error":{"code":403,"status":"PERMISSION_DENIED","message":"...","details":[{"reason":"SERVICE_DISABLED"}]}}]

    Every accessor tolerates bodies of any other shape (including non-JSON) by returning nothing. *)

val reasons : string -> [ `Legacy of string | `Rpc of string ] list
(** [`Legacy] from [error.errors[].reason], e.g. ["notFound"], ["rateLimitExceeded"], then [`Rpc]
    from [error.details[].reason], e.g. ["ACCESS_TOKEN_SCOPE_INSUFFICIENT"]. *)

val status : string -> string option
(** [error.status], e.g. ["PERMISSION_DENIED"]. *)

val message : string -> string option
(** [error.message], truncated to 200 bytes. *)

val summary : string -> string
(** One line made of the status, the reasons and the message. *)
