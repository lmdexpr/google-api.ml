type meth = [ `GET | `POST | `PUT | `PATCH | `DELETE ]
type request = { meth : meth; uri : Uri.t; headers : (string * string) list; body : string option }
type response = { status : int; headers : (string * string) list; body : string }
type _ Effect.t += Request : request -> response Effect.t

let perform request = Effect.perform (Request request)

let string_of_meth = function
  | `GET -> "GET"
  | `POST -> "POST"
  | `PUT -> "PUT"
  | `PATCH -> "PATCH"
  | `DELETE -> "DELETE"

let header name headers =
  let name = String.lowercase_ascii name in
  List.find_map
    (fun (key, value) -> if String.lowercase_ascii key = name then Some value else None)
    headers
