(* Generated from the Discovery document of tasks v1 (revision 20260927). Do not edit. *)

(** Google Tasks API (tasks v1, revision 20260927).

    The Google Tasks API lets you manage your tasks and task lists.

    {{:https://developers.google.com/workspace/tasks/}Documentation} *)

(** Information about the source of the task assignment (Document, Chat Space). *)
type assignment_info = {
  drive_resource_info : drive_resource_info option;  (** Output only. Information about the Drive file where this task originates from. Currently, the Drive file can only be a document. This field is read-only. *)
  link_to_task : string option;  (** Output only. An absolute link to the original task in the surface of assignment (Docs, Chat spaces, etc.). *)
  space_info : space_info option;  (** Output only. Information about the Chat Space where this task originates from. This field is read-only. *)
  surface_type : [ `Context_type_unspecified | `Gmail | `Document | `Space | `Unrecognized of string ] option;  (** Output only. The type of surface this assigned task originates from. Currently limited to DOCUMENT or SPACE. *)
}

(** Information about the Drive resource where a task was assigned from (the document, sheet, etc.). *)
and drive_resource_info = {
  drive_file_id : string option;  (** Output only. Identifier of the file in the Drive API. *)
  resource_key : string option;  (** Output only. Resource key required to access files shared via a shared link. Not required for all files. See also developers.google.com/drive/api/guides/resource-keys. *)
}

(** Information about the Chat Space where a task was assigned from. *)
and space_info = {
  space : string option;  (** Output only. The Chat space where this task originates from. The format is 'spaces/\{space\}'. *)
}

and task_links_item = {
  description : string option;  (** The description (might be empty). *)
  link : string option;  (** The URL. *)
  type_ : string option;  (** Type of the link, e.g. 'email', 'generic', 'chat_message', 'keep_note'. *)
}

and task = {
  assignment_info : assignment_info option;  (** Output only. Context information for assigned tasks. A task can be assigned to a user, currently possible from surfaces like Docs and Chat Spaces. This field is populated for tasks assigned to the current user and identifies where the task was assigned from. This field is read-only. *)
  completed : string option;  (** Completion date of the task (as a RFC 3339 timestamp). This field is omitted if the task has not been completed. *)
  deleted : bool option;  (** Flag indicating whether the task has been deleted. For assigned tasks this field is read-only. They can only be deleted by calling tasks.delete, in which case both the assigned task and the original task (in Docs or Chat Spaces) are deleted. To delete the assigned task only, navigate to the assignment surface and unassign the task from there. The default is False. *)
  due : string option;  (** Scheduled date for the task (as an RFC 3339 timestamp). Optional. This represents the day that the task should be done, or that the task is visible on the calendar grid. It doesn't represent the deadline of the task. Only date information is recorded; the time portion of the timestamp is discarded when setting this field. It isn't possible to read or write the time that a task is scheduled for using the API. *)
  etag : string option;  (** ETag of the resource. *)
  hidden : bool option;  (** Flag indicating whether the task is hidden. This is the case if the task had been marked completed when the task list was last cleared. The default is False. This field is read-only. *)
  id : string option;  (** Task identifier. *)
  kind : string option;  (** Output only. Type of the resource. This is always 'tasks#task'. *)
  links : task_links_item list option;  (** Output only. Collection of links. This collection is read-only. *)
  notes : string option;  (** Notes describing the task. Tasks assigned from Google Docs cannot have notes. Optional. Maximum length allowed: 8192 characters. *)
  parent : string option;  (** Output only. Parent task identifier. This field is omitted if it is a top-level task. Use the 'move' method to move the task under a different parent or to the top level. A parent task can never be an assigned task (from Chat Spaces, Docs). This field is read-only. *)
  position : string option;  (** Output only. String indicating the position of the task among its sibling tasks under the same parent task or at the top level. If this string is greater than another task's corresponding position string according to lexicographical ordering, the task is positioned after the other task under the same parent task (or at the top level). Use the 'move' method to move the task to another position. *)
  self_link : string option;  (** Output only. URL pointing to this task. Used to retrieve, update, or delete this task. *)
  status : string option;  (** Status of the task. This is either 'needsAction' or 'completed'. *)
  title : string option;  (** Title of the task. Maximum length allowed: 1024 characters. *)
  updated : string option;  (** Output only. Last modification time of the task (as a RFC 3339 timestamp). *)
  web_view_link : string option;  (** Output only. An absolute link to the task in the Google Tasks Web UI. *)
}

and task_list = {
  etag : string option;  (** ETag of the resource. *)
  id : string option;  (** Task list identifier. *)
  kind : string option;  (** Output only. Type of the resource. This is always 'tasks#taskList'. *)
  self_link : string option;  (** Output only. URL pointing to this task list. Used to retrieve, update, or delete this task list. *)
  title : string option;  (** Title of the task list. Maximum length allowed: 1024 characters. *)
  updated : string option;  (** Output only. Last modification time of the task list (as a RFC 3339 timestamp). *)
}

and task_lists = {
  etag : string option;  (** ETag of the resource. *)
  items : task_list list option;  (** Collection of task lists. *)
  kind : string option;  (** Type of the resource. This is always 'tasks#taskLists'. *)
  next_page_token : string option;  (** Token that can be used to request the next page of this result. *)
}

and tasks = {
  etag : string option;  (** ETag of the resource. *)
  items : task list option;  (** Collection of tasks. *)
  kind : string option;  (** Type of the resource. This is always 'tasks#tasks'. *)
  next_page_token : string option;  (** Token used to access the next page of this result. *)
}

val assignment_info_of_yojson : Yojson.Safe.t -> assignment_info
val yojson_of_assignment_info : assignment_info -> Yojson.Safe.t

val make_assignment_info :
  ?drive_resource_info:drive_resource_info ->
  ?link_to_task:string ->
  ?space_info:space_info ->
  ?surface_type:[ `Context_type_unspecified | `Gmail | `Document | `Space | `Unrecognized of string ] ->
  unit ->
  assignment_info

val drive_resource_info_of_yojson : Yojson.Safe.t -> drive_resource_info
val yojson_of_drive_resource_info : drive_resource_info -> Yojson.Safe.t

val make_drive_resource_info :
  ?drive_file_id:string ->
  ?resource_key:string ->
  unit ->
  drive_resource_info

val space_info_of_yojson : Yojson.Safe.t -> space_info
val yojson_of_space_info : space_info -> Yojson.Safe.t

val make_space_info :
  ?space:string ->
  unit ->
  space_info

val task_links_item_of_yojson : Yojson.Safe.t -> task_links_item
val yojson_of_task_links_item : task_links_item -> Yojson.Safe.t

val make_task_links_item :
  ?description:string ->
  ?link:string ->
  ?type_:string ->
  unit ->
  task_links_item

val task_of_yojson : Yojson.Safe.t -> task
val yojson_of_task : task -> Yojson.Safe.t

val make_task :
  ?assignment_info:assignment_info ->
  ?completed:string ->
  ?deleted:bool ->
  ?due:string ->
  ?etag:string ->
  ?hidden:bool ->
  ?id:string ->
  ?kind:string ->
  ?links:task_links_item list ->
  ?notes:string ->
  ?parent:string ->
  ?position:string ->
  ?self_link:string ->
  ?status:string ->
  ?title:string ->
  ?updated:string ->
  ?web_view_link:string ->
  unit ->
  task

val task_list_of_yojson : Yojson.Safe.t -> task_list
val yojson_of_task_list : task_list -> Yojson.Safe.t

val make_task_list :
  ?etag:string ->
  ?id:string ->
  ?kind:string ->
  ?self_link:string ->
  ?title:string ->
  ?updated:string ->
  unit ->
  task_list

val task_lists_of_yojson : Yojson.Safe.t -> task_lists
val yojson_of_task_lists : task_lists -> Yojson.Safe.t

val make_task_lists :
  ?etag:string ->
  ?items:task_list list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  task_lists

val tasks_of_yojson : Yojson.Safe.t -> tasks
val yojson_of_tasks : tasks -> Yojson.Safe.t

val make_tasks :
  ?etag:string ->
  ?items:task list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  tasks

val base_url : string
val batch_endpoint : Uri.t

val batch :
  access_token:string ->
  'a Google_api.Call.t list ->
  (('a, Google_api.Error.t) result list, Google_api.Error.t) result
(** {!Google_api.Batch.execute} on {!batch_endpoint}. *)

module Tasklists : sig
  val delete :
    tasklist:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes the authenticated user's specified task list. If the list contains assigned tasks, both the assigned tasks and the original tasks in the assignment surface (Docs, Chat Spaces) are deleted.

      [DELETE tasks/v1/users/@me/lists/{tasklist}]

      - [tasklist]: Task list identifier. *)

  val get :
    tasklist:string ->
    unit ->
    task_list Google_api.Call.t
  (** Returns the authenticated user's specified task list.

      [GET tasks/v1/users/@me/lists/{tasklist}]

      - [tasklist]: Task list identifier. *)

  val insert :
    body:task_list ->
    unit ->
    task_list Google_api.Call.t
  (** Creates a new task list and adds it to the authenticated user's task lists. A user can have up to 2000 lists at a time.

      [POST tasks/v1/users/@me/lists] *)

  val list :
    ?max_results:int ->
    ?page_token:string ->
    unit ->
    task_lists Google_api.Call.t
  (** Returns all the authenticated user's task lists. A user can have up to 2000 lists at a time.

      [GET tasks/v1/users/@me/lists]

      - [max_results]: Maximum number of task lists returned on one page. Optional. The default is 1000 (max allowed: 1000).
      - [page_token]: Token specifying the result page to return. Optional. *)

  val patch :
    tasklist:string ->
    body:task_list ->
    unit ->
    task_list Google_api.Call.t
  (** Updates the authenticated user's specified task list. This method supports patch semantics.

      [PATCH tasks/v1/users/@me/lists/{tasklist}]

      - [tasklist]: Task list identifier. *)

  val update :
    tasklist:string ->
    body:task_list ->
    unit ->
    task_list Google_api.Call.t
  (** Updates the authenticated user's specified task list.

      [PUT tasks/v1/users/@me/lists/{tasklist}]

      - [tasklist]: Task list identifier. *)
end

module Tasks : sig
  val clear :
    tasklist:string ->
    unit ->
    unit Google_api.Call.t
  (** Clears all completed tasks from the specified task list. The affected tasks will be marked as 'hidden' and no longer be returned by default when retrieving all tasks for a task list.

      [POST tasks/v1/lists/{tasklist}/clear]

      - [tasklist]: Task list identifier. *)

  val delete :
    tasklist:string ->
    task:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes the specified task from the task list. If the task is assigned, both the assigned task and the original task (in Docs, Chat Spaces) are deleted. To delete the assigned task only, navigate to the assignment surface and unassign the task from there.

      [DELETE tasks/v1/lists/{tasklist}/tasks/{task}]

      - [tasklist]: Task list identifier.
      - [task]: Task identifier. *)

  val get :
    tasklist:string ->
    task:string ->
    unit ->
    task Google_api.Call.t
  (** Returns the specified task.

      [GET tasks/v1/lists/{tasklist}/tasks/{task}]

      - [tasklist]: Task list identifier.
      - [task]: Task identifier. *)

  val insert :
    tasklist:string ->
    body:task ->
    ?parent:string ->
    ?previous:string ->
    unit ->
    task Google_api.Call.t
  (** Creates a new task on the specified task list. Tasks assigned from Docs or Chat Spaces cannot be inserted from Tasks Public API; they can only be created by assigning them from Docs or Chat Spaces. A user can have up to 20,000 non-hidden tasks per list and up to 100,000 tasks in total at a time.

      [POST tasks/v1/lists/{tasklist}/tasks]

      - [tasklist]: Task list identifier.
      - [parent]: Parent task identifier. If the task is created at the top level, this parameter is omitted. An assigned task cannot be a parent task, nor can it have a parent. Setting the parent to an assigned task results in failure of the request. Optional.
      - [previous]: Previous sibling task identifier. If the task is created at the first position among its siblings, this parameter is omitted. Optional. *)

  val list :
    tasklist:string ->
    ?completed_max:string ->
    ?completed_min:string ->
    ?due_max:string ->
    ?due_min:string ->
    ?max_results:int ->
    ?page_token:string ->
    ?show_assigned:bool ->
    ?show_completed:bool ->
    ?show_deleted:bool ->
    ?show_hidden:bool ->
    ?updated_min:string ->
    unit ->
    tasks Google_api.Call.t
  (** Returns all tasks in the specified task list. Doesn't return assigned tasks by default (from Docs, Chat Spaces). A user can have up to 20,000 non-hidden tasks per list and up to 100,000 tasks in total at a time.

      [GET tasks/v1/lists/{tasklist}/tasks]

      - [tasklist]: Task list identifier.
      - [completed_max]: Upper bound for a task's completion date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by completion date.
      - [completed_min]: Lower bound for a task's completion date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by completion date.
      - [due_max]: Upper bound for a task's due date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by due date.
      - [due_min]: Lower bound for a task's due date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by due date.
      - [max_results]: Maximum number of tasks returned on one page. Optional. The default is 20 (max allowed: 100).
      - [page_token]: Token specifying the result page to return. Optional.
      - [show_assigned]: Optional. Flag indicating whether tasks assigned to the current user are returned in the result. Optional. The default is False.
      - [show_completed]: Flag indicating whether completed tasks are returned in the result. Note that showHidden must also be True to show tasks completed in first party clients, such as the web UI and Google's mobile apps. Optional. The default is True.
      - [show_deleted]: Flag indicating whether deleted tasks are returned in the result. Optional. The default is False.
      - [show_hidden]: Flag indicating whether hidden tasks are returned in the result. Optional. The default is False.
      - [updated_min]: Lower bound for a task's last modification time (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by last modification time. *)

  val move :
    tasklist:string ->
    task:string ->
    ?destination_tasklist:string ->
    ?parent:string ->
    ?previous:string ->
    unit ->
    task Google_api.Call.t
  (** Moves the specified task to another position in the destination task list. If the destination list is not specified, the task is moved within its current list. This can include putting it as a child task under a new parent and/or move it to a different position among its sibling tasks. A user can have up to 2,000 subtasks per task.

      [POST tasks/v1/lists/{tasklist}/tasks/{task}/move]

      - [tasklist]: Task list identifier.
      - [task]: Task identifier.
      - [destination_tasklist]: Optional. Destination task list identifier. If set, the task is moved from tasklist to the destinationTasklist list. Otherwise the task is moved within its current list. Recurrent tasks cannot currently be moved between lists.
      - [parent]: Optional. New parent task identifier. If the task is moved to the top level, this parameter is omitted. The task set as parent must exist in the task list and can not be hidden. Exceptions: 1. Assigned and repeating tasks cannot be set as parent tasks (have subtasks), or be moved under a parent task (become subtasks). 2. Tasks that are both completed and hidden cannot be nested, so the parent field must be empty.
      - [previous]: Optional. New previous sibling task identifier. If the task is moved to the first position among its siblings, this parameter is omitted. The task set as previous must exist in the task list and can not be hidden. Exceptions: 1. Tasks that are both completed and hidden can only be moved to position 0, so the previous field must be empty. *)

  val patch :
    tasklist:string ->
    task:string ->
    body:task ->
    unit ->
    task Google_api.Call.t
  (** Updates the specified task. This method supports patch semantics.

      [PATCH tasks/v1/lists/{tasklist}/tasks/{task}]

      - [tasklist]: Task list identifier.
      - [task]: Task identifier. *)

  val update :
    tasklist:string ->
    task:string ->
    body:task ->
    unit ->
    task Google_api.Call.t
  (** Updates the specified task.

      [PUT tasks/v1/lists/{tasklist}/tasks/{task}]

      - [tasklist]: Task list identifier.
      - [task]: Task identifier. *)
end
