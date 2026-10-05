(** OCaml source for a Discovery document. *)

exception Invalid of string
(** The document cannot be turned into valid OCaml, e.g. a [$ref] to an unknown schema. *)

val doc : string -> string
(** Escapes text for a doc comment. *)

val generate : Discovery.t -> string * string
(** The implementation and the interface.

    @raise Invalid *)
