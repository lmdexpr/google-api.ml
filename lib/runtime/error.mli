(** Why a call did not produce a value. *)

type t =
  | Http of { status : int; body : string }
    (** Non-2xx response. Read [body] with {!Error_body}. *)
  | Decode of { status : int; body : string; message : string }
    (** 2xx response whose body does not match the expected type. A write request has already taken
        effect on the server. *)
  | Missing_batch_part  (** The batch response has no part for this call. *)
  | Malformed_batch_response of { status : int; body : string; reason : string }
    (** The batch response itself cannot be split into parts. *)
  | Too_many_pages of { max_pages : int }
    (** A list call still had a next page after [max_pages] pages; see {!Page}. *)

val to_string : t -> string
