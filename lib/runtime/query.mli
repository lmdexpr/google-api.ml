(** Query parameters of generated calls, for [Uri.add_query_params]. *)

type t = (string * string list) list

val required : string -> ('a -> string) -> 'a -> t
[@@alert internal "For generated code; see Google_api."]

val optional : string -> ('a -> string) -> 'a option -> t
[@@alert internal "For generated code; see Google_api."]

val repeated : string -> ('a -> string) -> 'a list option -> t
[@@alert internal "For generated code; see Google_api."]
(** One value per element: [name=a&name=b]. *)
