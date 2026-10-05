(* Generated from the Discovery document of tasks v1 (revision 20260927). Do not edit. *)

[@@@alert "-internal"]

type assignment_info = {
  drive_resource_info : drive_resource_info option;
  link_to_task : string option;
  space_info : space_info option;
  surface_type : [ `Context_type_unspecified | `Gmail | `Document | `Space | `Unrecognized of string ] option;
}

and drive_resource_info = {
  drive_file_id : string option;
  resource_key : string option;
}

and space_info = {
  space : string option;
}

and task_links_item = {
  description : string option;
  link : string option;
  type_ : string option;
}

and task = {
  assignment_info : assignment_info option;
  completed : string option;
  deleted : bool option;
  due : string option;
  etag : string option;
  hidden : bool option;
  id : string option;
  kind : string option;
  links : task_links_item list option;
  notes : string option;
  parent : string option;
  position : string option;
  self_link : string option;
  status : string option;
  title : string option;
  updated : string option;
  web_view_link : string option;
}

and task_list = {
  etag : string option;
  id : string option;
  kind : string option;
  self_link : string option;
  title : string option;
  updated : string option;
}

and task_lists = {
  etag : string option;
  items : task_list list option;
  kind : string option;
  next_page_token : string option;
}

and tasks = {
  etag : string option;
  items : task list option;
  kind : string option;
  next_page_token : string option;
}

let rec assignment_info_of_yojson json : assignment_info =
  let open Yojson.Safe.Util in
  {
    drive_resource_info = member "driveResourceInfo" json |> to_option drive_resource_info_of_yojson;
    link_to_task = member "linkToTask" json |> to_option to_string;
    space_info = member "spaceInfo" json |> to_option space_info_of_yojson;
    surface_type = member "surfaceType" json |> to_option (fun json -> match to_string json with "CONTEXT_TYPE_UNSPECIFIED" -> `Context_type_unspecified | "GMAIL" -> `Gmail | "DOCUMENT" -> `Document | "SPACE" -> `Space | value -> `Unrecognized value);
  }

and yojson_of_assignment_info (value : assignment_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("driveResourceInfo", yojson_of_drive_resource_info field)) value.drive_resource_info;
         Option.map (fun field -> ("linkToTask", (fun value -> `String value) field)) value.link_to_task;
         Option.map (fun field -> ("spaceInfo", yojson_of_space_info field)) value.space_info;
         Option.map (fun field -> ("surfaceType", (fun value -> `String ((function `Context_type_unspecified -> "CONTEXT_TYPE_UNSPECIFIED" | `Gmail -> "GMAIL" | `Document -> "DOCUMENT" | `Space -> "SPACE" | `Unrecognized value -> value) value)) field)) value.surface_type;
       ])

and drive_resource_info_of_yojson json : drive_resource_info =
  let open Yojson.Safe.Util in
  {
    drive_file_id = member "driveFileId" json |> to_option to_string;
    resource_key = member "resourceKey" json |> to_option to_string;
  }

and yojson_of_drive_resource_info (value : drive_resource_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("driveFileId", (fun value -> `String value) field)) value.drive_file_id;
         Option.map (fun field -> ("resourceKey", (fun value -> `String value) field)) value.resource_key;
       ])

and space_info_of_yojson json : space_info =
  let open Yojson.Safe.Util in
  {
    space = member "space" json |> to_option to_string;
  }

and yojson_of_space_info (value : space_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("space", (fun value -> `String value) field)) value.space;
       ])

and task_links_item_of_yojson json : task_links_item =
  let open Yojson.Safe.Util in
  {
    description = member "description" json |> to_option to_string;
    link = member "link" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_task_links_item (value : task_links_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("link", (fun value -> `String value) field)) value.link;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and task_of_yojson json : task =
  let open Yojson.Safe.Util in
  {
    assignment_info = member "assignmentInfo" json |> to_option assignment_info_of_yojson;
    completed = member "completed" json |> to_option to_string;
    deleted = member "deleted" json |> to_option to_bool;
    due = member "due" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    hidden = member "hidden" json |> to_option to_bool;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    links = member "links" json |> to_option (convert_each task_links_item_of_yojson);
    notes = member "notes" json |> to_option to_string;
    parent = member "parent" json |> to_option to_string;
    position = member "position" json |> to_option to_string;
    self_link = member "selfLink" json |> to_option to_string;
    status = member "status" json |> to_option to_string;
    title = member "title" json |> to_option to_string;
    updated = member "updated" json |> to_option to_string;
    web_view_link = member "webViewLink" json |> to_option to_string;
  }

and yojson_of_task (value : task) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("assignmentInfo", yojson_of_assignment_info field)) value.assignment_info;
         Option.map (fun field -> ("completed", (fun value -> `String value) field)) value.completed;
         Option.map (fun field -> ("deleted", (fun value -> `Bool value) field)) value.deleted;
         Option.map (fun field -> ("due", (fun value -> `String value) field)) value.due;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("hidden", (fun value -> `Bool value) field)) value.hidden;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("links", (fun items -> `List (List.map yojson_of_task_links_item items)) field)) value.links;
         Option.map (fun field -> ("notes", (fun value -> `String value) field)) value.notes;
         Option.map (fun field -> ("parent", (fun value -> `String value) field)) value.parent;
         Option.map (fun field -> ("position", (fun value -> `String value) field)) value.position;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("status", (fun value -> `String value) field)) value.status;
         Option.map (fun field -> ("title", (fun value -> `String value) field)) value.title;
         Option.map (fun field -> ("updated", (fun value -> `String value) field)) value.updated;
         Option.map (fun field -> ("webViewLink", (fun value -> `String value) field)) value.web_view_link;
       ])

and task_list_of_yojson json : task_list =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    self_link = member "selfLink" json |> to_option to_string;
    title = member "title" json |> to_option to_string;
    updated = member "updated" json |> to_option to_string;
  }

and yojson_of_task_list (value : task_list) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("title", (fun value -> `String value) field)) value.title;
         Option.map (fun field -> ("updated", (fun value -> `String value) field)) value.updated;
       ])

and task_lists_of_yojson json : task_lists =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each task_list_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_task_lists (value : task_lists) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_task_list items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and tasks_of_yojson json : tasks =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each task_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_tasks (value : tasks) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_task items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

let make_assignment_info ?drive_resource_info ?link_to_task ?space_info ?surface_type () : assignment_info = { drive_resource_info; link_to_task; space_info; surface_type }

let make_drive_resource_info ?drive_file_id ?resource_key () : drive_resource_info = { drive_file_id; resource_key }

let make_space_info ?space () : space_info = { space }

let make_task_links_item ?description ?link ?type_ () : task_links_item = { description; link; type_ }

let make_task ?assignment_info ?completed ?deleted ?due ?etag ?hidden ?id ?kind ?links ?notes ?parent ?position ?self_link ?status ?title ?updated ?web_view_link () : task = { assignment_info; completed; deleted; due; etag; hidden; id; kind; links; notes; parent; position; self_link; status; title; updated; web_view_link }

let make_task_list ?etag ?id ?kind ?self_link ?title ?updated () : task_list = { etag; id; kind; self_link; title; updated }

let make_task_lists ?etag ?items ?kind ?next_page_token () : task_lists = { etag; items; kind; next_page_token }

let make_tasks ?etag ?items ?kind ?next_page_token () : tasks = { etag; items; kind; next_page_token }

let base_url = "https://tasks.googleapis.com/"
let batch_endpoint = Uri.of_string "https://tasks.googleapis.com/batch"
let batch ~access_token calls = Google_api.Batch.execute ~access_token ~endpoint:batch_endpoint calls

module Tasklists = struct
  let delete ~tasklist () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "tasks/v1/users/@me/lists/" ^ Uri.pct_encode ~component:`Path tasklist))
      Google_api_runtime.Call.empty

  let get ~tasklist () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "tasks/v1/users/@me/lists/" ^ Uri.pct_encode ~component:`Path tasklist))
      (Google_api_runtime.Call.json task_list_of_yojson)

  let insert ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "tasks/v1/users/@me/lists"))
      ~body:(yojson_of_task_list body)
      (Google_api_runtime.Call.json task_list_of_yojson)

  let list ?max_results ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "tasks/v1/users/@me/lists"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json task_lists_of_yojson)

  let patch ~tasklist ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "tasks/v1/users/@me/lists/" ^ Uri.pct_encode ~component:`Path tasklist))
      ~body:(yojson_of_task_list body)
      (Google_api_runtime.Call.json task_list_of_yojson)

  let update ~tasklist ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "tasks/v1/users/@me/lists/" ^ Uri.pct_encode ~component:`Path tasklist))
      ~body:(yojson_of_task_list body)
      (Google_api_runtime.Call.json task_list_of_yojson)
end

module Tasks = struct
  let clear ~tasklist () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "tasks/v1/lists/" ^ Uri.pct_encode ~component:`Path tasklist ^ "/clear"))
      Google_api_runtime.Call.empty

  let delete ~tasklist ~task () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "tasks/v1/lists/" ^ Uri.pct_encode ~component:`Path tasklist ^ "/tasks/" ^ Uri.pct_encode ~component:`Path task))
      Google_api_runtime.Call.empty

  let get ~tasklist ~task () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "tasks/v1/lists/" ^ Uri.pct_encode ~component:`Path tasklist ^ "/tasks/" ^ Uri.pct_encode ~component:`Path task))
      (Google_api_runtime.Call.json task_of_yojson)

  let insert ~tasklist ~body ?parent ?previous () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "tasks/v1/lists/" ^ Uri.pct_encode ~component:`Path tasklist ^ "/tasks"))
           (List.concat
              [
                Google_api_runtime.Query.optional "parent" Fun.id parent;
                Google_api_runtime.Query.optional "previous" Fun.id previous;
              ]))
      ~body:(yojson_of_task body)
      (Google_api_runtime.Call.json task_of_yojson)

  let list ~tasklist ?completed_max ?completed_min ?due_max ?due_min ?max_results ?page_token ?show_assigned ?show_completed ?show_deleted ?show_hidden ?updated_min () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "tasks/v1/lists/" ^ Uri.pct_encode ~component:`Path tasklist ^ "/tasks"))
           (List.concat
              [
                Google_api_runtime.Query.optional "completedMax" Fun.id completed_max;
                Google_api_runtime.Query.optional "completedMin" Fun.id completed_min;
                Google_api_runtime.Query.optional "dueMax" Fun.id due_max;
                Google_api_runtime.Query.optional "dueMin" Fun.id due_min;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "showAssigned" string_of_bool show_assigned;
                Google_api_runtime.Query.optional "showCompleted" string_of_bool show_completed;
                Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                Google_api_runtime.Query.optional "showHidden" string_of_bool show_hidden;
                Google_api_runtime.Query.optional "updatedMin" Fun.id updated_min;
              ]))
      (Google_api_runtime.Call.json tasks_of_yojson)

  let move ~tasklist ~task ?destination_tasklist ?parent ?previous () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "tasks/v1/lists/" ^ Uri.pct_encode ~component:`Path tasklist ^ "/tasks/" ^ Uri.pct_encode ~component:`Path task ^ "/move"))
           (List.concat
              [
                Google_api_runtime.Query.optional "destinationTasklist" Fun.id destination_tasklist;
                Google_api_runtime.Query.optional "parent" Fun.id parent;
                Google_api_runtime.Query.optional "previous" Fun.id previous;
              ]))
      (Google_api_runtime.Call.json task_of_yojson)

  let patch ~tasklist ~task ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "tasks/v1/lists/" ^ Uri.pct_encode ~component:`Path tasklist ^ "/tasks/" ^ Uri.pct_encode ~component:`Path task))
      ~body:(yojson_of_task body)
      (Google_api_runtime.Call.json task_of_yojson)

  let update ~tasklist ~task ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "tasks/v1/lists/" ^ Uri.pct_encode ~component:`Path tasklist ^ "/tasks/" ^ Uri.pct_encode ~component:`Path task))
      ~body:(yojson_of_task body)
      (Google_api_runtime.Call.json task_of_yojson)
end
