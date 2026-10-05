(** The single HTTP effect every Google API call goes through.

    This library never performs I/O itself: install a handler for {!Request} (e.g.
    [Google_api_cohttp_eio.run]) around the code that executes calls. *)

type meth = [ `GET | `POST | `PUT | `PATCH | `DELETE ]
type request = { meth : meth; uri : Uri.t; headers : (string * string) list; body : string option }
type response = { status : int; headers : (string * string) list; body : string }
type _ Effect.t += Request : request -> response Effect.t

val perform : request -> response
[@@alert internal "For generated code; see Google_api."]
(** A handler answers with the response, whatever its status, and makes a transport failure raise
    here, e.g. with [Effect.Deep.discontinue]. *)

val string_of_meth : meth -> string

val header : string -> (string * string) list -> string option
(** Looks a header up case-insensitively. *)
