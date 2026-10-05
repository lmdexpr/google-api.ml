type t =
  | Http of { status : int; body : string }
  | Decode of { status : int; body : string; message : string }
  | Missing_batch_part
  | Malformed_batch_response of { status : int; body : string; reason : string }

let to_string = function
  | Http { status; body } -> Printf.sprintf "HTTP %d: %s" status (Error_body.summary body)
  | Decode { status; body = _; message } ->
    Printf.sprintf "HTTP %d: cannot decode the response: %s" status message
  | Missing_batch_part -> "the batch response has no part for this call"
  | Malformed_batch_response { status; body = _; reason } ->
    Printf.sprintf "HTTP %d: malformed batch response: %s" status reason
