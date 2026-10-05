(** The part of a Discovery document (REST description) the generator understands. *)

type scalar = String | Int | Float | Bool | Any
type enum_value = { value : string; description : string option }

type schema =
  | Scalar of scalar
  | Enum of enum_value list
  | Ref of string
  | Array of schema
  | Map of schema  (** [additionalProperties] *)
  | Object of property list

and property = { name : string; description : string option; schema : schema }

type definition = { id : string; description : string option; schema : schema }
type location = Path | Query

type parameter = {
  name : string;
  description : string option;
  location : location;
  required : bool;
  repeated : bool;
  schema : schema;  (** [Scalar] or [Enum] *)
}

type meth = {
  name : string;
  description : string option;
  http_method : [ `GET | `POST | `PUT | `PATCH | `DELETE ];
  path : string;
  parameters : parameter list;  (** [parameterOrder] first *)
  request : string option;
  response : string option;
}

type resource = { name : string; methods : meth list; resources : resource list }

type t = {
  name : string;
  version : string;
  revision : string;
  title : string;
  description : string option;
  documentation_link : string option;
  root_url : string;
  service_path : string;
  batch_path : string;
  schemas : definition list;
  methods : meth list;
  resources : resource list;
}

exception Unsupported of { path : string; message : string }

val of_yojson : Yojson.Safe.t -> t
(** @raise Unsupported for constructs outside of the understood part. *)
