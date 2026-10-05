(** OCaml identifiers for Discovery names. *)

val snake : string -> string
(** [snake "iCalUID" = "i_cal_uid"], [snake "PERMISSION_DENIED" = "permission_denied"]. *)

val value : string -> string
(** A value, label or field name: keywords get a trailing ['_']. *)

val type_ : string -> string
(** A type name: keywords and predefined type names get a trailing ['_']. *)

val module_ : string -> string
(** [module_ "calendarList" = "Calendar_list"]. *)

val tag : string -> string
(** A polymorphic variant tag without the backquote:
    [tag "allIncludingParent" = "All_including_parent"], [tag "1" = "V1"]. *)

val fresh : string list -> string -> string
(** Appends ['_'] to the name until it is not taken. *)

val dedupe : string list -> string list
(** Appends ['_'] to later duplicates until every name is unique. *)
