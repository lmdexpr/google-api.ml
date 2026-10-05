(* Generated from the Discovery document of calendar v3 (revision 20260925). Do not edit. *)

[@@@alert "-internal"]

type acl = {
  etag : string option;
  items : acl_rule list option;
  kind : string option;
  next_page_token : string option;
  next_sync_token : string option;
}

and acl_rule_scope = {
  type_ : string option;
  value : string option;
}

and acl_rule = {
  etag : string option;
  id : string option;
  kind : string option;
  role : string option;
  scope : acl_rule_scope option;
}

and calendar = {
  auto_accept_invitations : bool option;
  conference_properties : conference_properties option;
  data_owner : string option;
  description : string option;
  etag : string option;
  id : string option;
  kind : string option;
  label_properties : label_properties option;
  location : string option;
  summary : string option;
  time_zone : string option;
}

and calendar_list = {
  etag : string option;
  items : calendar_list_entry list option;
  kind : string option;
  next_page_token : string option;
  next_sync_token : string option;
}

and calendar_list_entry_notification_settings = {
  notifications : calendar_notification list option;
}

and calendar_list_entry = {
  access_role : string option;
  auto_accept_invitations : bool option;
  background_color : string option;
  color_id : string option;
  conference_properties : conference_properties option;
  data_owner : string option;
  default_reminders : event_reminder list option;
  deleted : bool option;
  description : string option;
  etag : string option;
  foreground_color : string option;
  hidden : bool option;
  id : string option;
  kind : string option;
  location : string option;
  notification_settings : calendar_list_entry_notification_settings option;
  primary : bool option;
  selected : bool option;
  summary : string option;
  summary_override : string option;
  time_zone : string option;
}

and calendar_notification = {
  method_ : string option;
  type_ : string option;
}

and channel = {
  address : string option;
  expiration : string option;
  id : string option;
  kind : string option;
  params : (string * string) list option;
  payload : bool option;
  resource_id : string option;
  resource_uri : string option;
  token : string option;
  type_ : string option;
}

and color_definition = {
  background : string option;
  foreground : string option;
}

and colors = {
  calendar : (string * color_definition) list option;
  event : (string * color_definition) list option;
  kind : string option;
  updated : string option;
}

and conference_data = {
  conference_id : string option;
  conference_solution : conference_solution option;
  create_request : create_conference_request option;
  entry_points : entry_point list option;
  notes : string option;
  parameters : conference_parameters option;
  signature : string option;
}

and conference_parameters = {
  add_on_parameters : conference_parameters_add_on_parameters option;
}

and conference_parameters_add_on_parameters = {
  parameters : (string * string) list option;
}

and conference_properties = {
  allowed_conference_solution_types : string list option;
}

and conference_request_status = {
  status_code : string option;
}

and conference_solution = {
  icon_uri : string option;
  key : conference_solution_key option;
  name : string option;
}

and conference_solution_key = {
  type_ : string option;
}

and create_conference_request = {
  conference_solution_key : conference_solution_key option;
  request_id : string option;
  status : conference_request_status option;
}

and entry_point = {
  access_code : string option;
  entry_point_features : string list option;
  entry_point_type : string option;
  label : string option;
  meeting_code : string option;
  passcode : string option;
  password : string option;
  pin : string option;
  region_code : string option;
  uri : string option;
}

and error = {
  domain : string option;
  reason : string option;
}

and event_creator = {
  display_name : string option;
  email : string option;
  id : string option;
  self : bool option;
}

and event_extended_properties = {
  private_ : (string * string) list option;
  shared : (string * string) list option;
}

and event_gadget = {
  display : string option;
  height : int option;
  icon_link : string option;
  link : string option;
  preferences : (string * string) list option;
  title : string option;
  type_ : string option;
  width : int option;
}

and event_organizer = {
  display_name : string option;
  email : string option;
  id : string option;
  self : bool option;
}

and event_reminders = {
  overrides : event_reminder list option;
  use_default : bool option;
}

and event_source = {
  title : string option;
  url : string option;
}

and event = {
  anyone_can_add_self : bool option;
  attachments : event_attachment list option;
  attendees : event_attendee list option;
  attendees_omitted : bool option;
  birthday_properties : event_birthday_properties option;
  color_id : string option;
  conference_data : conference_data option;
  created : string option;
  creator : event_creator option;
  description : string option;
  end_ : event_date_time option;
  end_time_unspecified : bool option;
  etag : string option;
  event_label_id : string option;
  event_type : string option;
  extended_properties : event_extended_properties option;
  focus_time_properties : event_focus_time_properties option;
  gadget : event_gadget option;
  guests_can_invite_others : bool option;
  guests_can_modify : bool option;
  guests_can_see_other_guests : bool option;
  hangout_link : string option;
  html_link : string option;
  i_cal_uid : string option;
  id : string option;
  kind : string option;
  location : string option;
  locked : bool option;
  organizer : event_organizer option;
  original_start_time : event_date_time option;
  out_of_office_properties : event_out_of_office_properties option;
  private_copy : bool option;
  recurrence : string list option;
  recurring_event_id : string option;
  reminders : event_reminders option;
  sequence : int option;
  source : event_source option;
  start : event_date_time option;
  status : string option;
  summary : string option;
  transparency : string option;
  updated : string option;
  visibility : string option;
  working_location_properties : event_working_location_properties option;
}

and event_attachment = {
  file_id : string option;
  file_url : string option;
  icon_link : string option;
  mime_type : string option;
  title : string option;
}

and event_attendee = {
  additional_guests : int option;
  async_operation : string option;
  comment : string option;
  display_name : string option;
  email : string option;
  id : string option;
  optional : bool option;
  organizer : bool option;
  resource : bool option;
  response_status : string option;
  self : bool option;
}

and event_birthday_properties = {
  contact : string option;
  custom_type_name : string option;
  type_ : string option;
}

and event_date_time = {
  date : string option;
  date_time : string option;
  time_zone : string option;
}

and event_focus_time_properties = {
  auto_decline_mode : string option;
  chat_status : string option;
  decline_message : string option;
}

and event_label = {
  background_color : string option;
  id : string option;
  name : string option;
}

and event_out_of_office_properties = {
  auto_decline_mode : string option;
  decline_message : string option;
}

and event_reminder = {
  method_ : string option;
  minutes : int option;
}

and event_working_location_properties_custom_location = {
  label : string option;
}

and event_working_location_properties_office_location = {
  building_id : string option;
  desk_id : string option;
  floor_id : string option;
  floor_section_id : string option;
  label : string option;
}

and event_working_location_properties = {
  custom_location : event_working_location_properties_custom_location option;
  home_office : Yojson.Safe.t option;
  office_location : event_working_location_properties_office_location option;
  type_ : string option;
}

and events = {
  access_role : string option;
  default_reminders : event_reminder list option;
  description : string option;
  etag : string option;
  items : event list option;
  kind : string option;
  next_page_token : string option;
  next_sync_token : string option;
  summary : string option;
  time_zone : string option;
  updated : string option;
}

and free_busy_calendar = {
  busy : time_period list option;
  errors : error list option;
}

and free_busy_group = {
  calendars : string list option;
  errors : error list option;
}

and free_busy_request = {
  calendar_expansion_max : int option;
  group_expansion_max : int option;
  items : free_busy_request_item list option;
  time_max : string option;
  time_min : string option;
  time_zone : string option;
}

and free_busy_request_item = {
  id : string option;
}

and free_busy_response = {
  calendars : (string * free_busy_calendar) list option;
  groups : (string * free_busy_group) list option;
  kind : string option;
  time_max : string option;
  time_min : string option;
}

and label_properties = {
  event_labels : event_label list option;
}

and setting = {
  etag : string option;
  id : string option;
  kind : string option;
  value : string option;
}

and settings = {
  etag : string option;
  items : setting list option;
  kind : string option;
  next_page_token : string option;
  next_sync_token : string option;
}

and time_period = {
  end_ : string option;
  start : string option;
}

let rec acl_of_yojson json : acl =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each acl_rule_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    next_sync_token = member "nextSyncToken" json |> to_option to_string;
  }

and yojson_of_acl (value : acl) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_acl_rule items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("nextSyncToken", (fun value -> `String value) field)) value.next_sync_token;
       ])

and acl_rule_scope_of_yojson json : acl_rule_scope =
  let open Yojson.Safe.Util in
  {
    type_ = member "type" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_acl_rule_scope (value : acl_rule_scope) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and acl_rule_of_yojson json : acl_rule =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    role = member "role" json |> to_option to_string;
    scope = member "scope" json |> to_option acl_rule_scope_of_yojson;
  }

and yojson_of_acl_rule (value : acl_rule) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("role", (fun value -> `String value) field)) value.role;
         Option.map (fun field -> ("scope", yojson_of_acl_rule_scope field)) value.scope;
       ])

and calendar_of_yojson json : calendar =
  let open Yojson.Safe.Util in
  {
    auto_accept_invitations = member "autoAcceptInvitations" json |> to_option to_bool;
    conference_properties = member "conferenceProperties" json |> to_option conference_properties_of_yojson;
    data_owner = member "dataOwner" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    label_properties = member "labelProperties" json |> to_option label_properties_of_yojson;
    location = member "location" json |> to_option to_string;
    summary = member "summary" json |> to_option to_string;
    time_zone = member "timeZone" json |> to_option to_string;
  }

and yojson_of_calendar (value : calendar) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("autoAcceptInvitations", (fun value -> `Bool value) field)) value.auto_accept_invitations;
         Option.map (fun field -> ("conferenceProperties", yojson_of_conference_properties field)) value.conference_properties;
         Option.map (fun field -> ("dataOwner", (fun value -> `String value) field)) value.data_owner;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("labelProperties", yojson_of_label_properties field)) value.label_properties;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("summary", (fun value -> `String value) field)) value.summary;
         Option.map (fun field -> ("timeZone", (fun value -> `String value) field)) value.time_zone;
       ])

and calendar_list_of_yojson json : calendar_list =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each calendar_list_entry_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    next_sync_token = member "nextSyncToken" json |> to_option to_string;
  }

and yojson_of_calendar_list (value : calendar_list) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_calendar_list_entry items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("nextSyncToken", (fun value -> `String value) field)) value.next_sync_token;
       ])

and calendar_list_entry_notification_settings_of_yojson json : calendar_list_entry_notification_settings =
  let open Yojson.Safe.Util in
  {
    notifications = member "notifications" json |> to_option (convert_each calendar_notification_of_yojson);
  }

and yojson_of_calendar_list_entry_notification_settings (value : calendar_list_entry_notification_settings) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("notifications", (fun items -> `List (List.map yojson_of_calendar_notification items)) field)) value.notifications;
       ])

and calendar_list_entry_of_yojson json : calendar_list_entry =
  let open Yojson.Safe.Util in
  {
    access_role = member "accessRole" json |> to_option to_string;
    auto_accept_invitations = member "autoAcceptInvitations" json |> to_option to_bool;
    background_color = member "backgroundColor" json |> to_option to_string;
    color_id = member "colorId" json |> to_option to_string;
    conference_properties = member "conferenceProperties" json |> to_option conference_properties_of_yojson;
    data_owner = member "dataOwner" json |> to_option to_string;
    default_reminders = member "defaultReminders" json |> to_option (convert_each event_reminder_of_yojson);
    deleted = member "deleted" json |> to_option to_bool;
    description = member "description" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    foreground_color = member "foregroundColor" json |> to_option to_string;
    hidden = member "hidden" json |> to_option to_bool;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    location = member "location" json |> to_option to_string;
    notification_settings = member "notificationSettings" json |> to_option calendar_list_entry_notification_settings_of_yojson;
    primary = member "primary" json |> to_option to_bool;
    selected = member "selected" json |> to_option to_bool;
    summary = member "summary" json |> to_option to_string;
    summary_override = member "summaryOverride" json |> to_option to_string;
    time_zone = member "timeZone" json |> to_option to_string;
  }

and yojson_of_calendar_list_entry (value : calendar_list_entry) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("accessRole", (fun value -> `String value) field)) value.access_role;
         Option.map (fun field -> ("autoAcceptInvitations", (fun value -> `Bool value) field)) value.auto_accept_invitations;
         Option.map (fun field -> ("backgroundColor", (fun value -> `String value) field)) value.background_color;
         Option.map (fun field -> ("colorId", (fun value -> `String value) field)) value.color_id;
         Option.map (fun field -> ("conferenceProperties", yojson_of_conference_properties field)) value.conference_properties;
         Option.map (fun field -> ("dataOwner", (fun value -> `String value) field)) value.data_owner;
         Option.map (fun field -> ("defaultReminders", (fun items -> `List (List.map yojson_of_event_reminder items)) field)) value.default_reminders;
         Option.map (fun field -> ("deleted", (fun value -> `Bool value) field)) value.deleted;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("foregroundColor", (fun value -> `String value) field)) value.foreground_color;
         Option.map (fun field -> ("hidden", (fun value -> `Bool value) field)) value.hidden;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("notificationSettings", yojson_of_calendar_list_entry_notification_settings field)) value.notification_settings;
         Option.map (fun field -> ("primary", (fun value -> `Bool value) field)) value.primary;
         Option.map (fun field -> ("selected", (fun value -> `Bool value) field)) value.selected;
         Option.map (fun field -> ("summary", (fun value -> `String value) field)) value.summary;
         Option.map (fun field -> ("summaryOverride", (fun value -> `String value) field)) value.summary_override;
         Option.map (fun field -> ("timeZone", (fun value -> `String value) field)) value.time_zone;
       ])

and calendar_notification_of_yojson json : calendar_notification =
  let open Yojson.Safe.Util in
  {
    method_ = member "method" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_calendar_notification (value : calendar_notification) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("method", (fun value -> `String value) field)) value.method_;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and channel_of_yojson json : channel =
  let open Yojson.Safe.Util in
  {
    address = member "address" json |> to_option to_string;
    expiration = member "expiration" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    params = member "params" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    payload = member "payload" json |> to_option to_bool;
    resource_id = member "resourceId" json |> to_option to_string;
    resource_uri = member "resourceUri" json |> to_option to_string;
    token = member "token" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_channel (value : channel) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("address", (fun value -> `String value) field)) value.address;
         Option.map (fun field -> ("expiration", (fun value -> `String value) field)) value.expiration;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("params", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.params;
         Option.map (fun field -> ("payload", (fun value -> `Bool value) field)) value.payload;
         Option.map (fun field -> ("resourceId", (fun value -> `String value) field)) value.resource_id;
         Option.map (fun field -> ("resourceUri", (fun value -> `String value) field)) value.resource_uri;
         Option.map (fun field -> ("token", (fun value -> `String value) field)) value.token;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and color_definition_of_yojson json : color_definition =
  let open Yojson.Safe.Util in
  {
    background = member "background" json |> to_option to_string;
    foreground = member "foreground" json |> to_option to_string;
  }

and yojson_of_color_definition (value : color_definition) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("background", (fun value -> `String value) field)) value.background;
         Option.map (fun field -> ("foreground", (fun value -> `String value) field)) value.foreground;
       ])

and colors_of_yojson json : colors =
  let open Yojson.Safe.Util in
  {
    calendar = member "calendar" json |> to_option (fun json -> List.map (fun (key, value) -> (key, color_definition_of_yojson value)) (to_assoc json));
    event = member "event" json |> to_option (fun json -> List.map (fun (key, value) -> (key, color_definition_of_yojson value)) (to_assoc json));
    kind = member "kind" json |> to_option to_string;
    updated = member "updated" json |> to_option to_string;
  }

and yojson_of_colors (value : colors) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("calendar", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_color_definition value)) members)) field)) value.calendar;
         Option.map (fun field -> ("event", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_color_definition value)) members)) field)) value.event;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("updated", (fun value -> `String value) field)) value.updated;
       ])

and conference_data_of_yojson json : conference_data =
  let open Yojson.Safe.Util in
  {
    conference_id = member "conferenceId" json |> to_option to_string;
    conference_solution = member "conferenceSolution" json |> to_option conference_solution_of_yojson;
    create_request = member "createRequest" json |> to_option create_conference_request_of_yojson;
    entry_points = member "entryPoints" json |> to_option (convert_each entry_point_of_yojson);
    notes = member "notes" json |> to_option to_string;
    parameters = member "parameters" json |> to_option conference_parameters_of_yojson;
    signature = member "signature" json |> to_option to_string;
  }

and yojson_of_conference_data (value : conference_data) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("conferenceId", (fun value -> `String value) field)) value.conference_id;
         Option.map (fun field -> ("conferenceSolution", yojson_of_conference_solution field)) value.conference_solution;
         Option.map (fun field -> ("createRequest", yojson_of_create_conference_request field)) value.create_request;
         Option.map (fun field -> ("entryPoints", (fun items -> `List (List.map yojson_of_entry_point items)) field)) value.entry_points;
         Option.map (fun field -> ("notes", (fun value -> `String value) field)) value.notes;
         Option.map (fun field -> ("parameters", yojson_of_conference_parameters field)) value.parameters;
         Option.map (fun field -> ("signature", (fun value -> `String value) field)) value.signature;
       ])

and conference_parameters_of_yojson json : conference_parameters =
  let open Yojson.Safe.Util in
  {
    add_on_parameters = member "addOnParameters" json |> to_option conference_parameters_add_on_parameters_of_yojson;
  }

and yojson_of_conference_parameters (value : conference_parameters) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("addOnParameters", yojson_of_conference_parameters_add_on_parameters field)) value.add_on_parameters;
       ])

and conference_parameters_add_on_parameters_of_yojson json : conference_parameters_add_on_parameters =
  let open Yojson.Safe.Util in
  {
    parameters = member "parameters" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
  }

and yojson_of_conference_parameters_add_on_parameters (value : conference_parameters_add_on_parameters) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("parameters", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.parameters;
       ])

and conference_properties_of_yojson json : conference_properties =
  let open Yojson.Safe.Util in
  {
    allowed_conference_solution_types = member "allowedConferenceSolutionTypes" json |> to_option (convert_each to_string);
  }

and yojson_of_conference_properties (value : conference_properties) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowedConferenceSolutionTypes", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.allowed_conference_solution_types;
       ])

and conference_request_status_of_yojson json : conference_request_status =
  let open Yojson.Safe.Util in
  {
    status_code = member "statusCode" json |> to_option to_string;
  }

and yojson_of_conference_request_status (value : conference_request_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("statusCode", (fun value -> `String value) field)) value.status_code;
       ])

and conference_solution_of_yojson json : conference_solution =
  let open Yojson.Safe.Util in
  {
    icon_uri = member "iconUri" json |> to_option to_string;
    key = member "key" json |> to_option conference_solution_key_of_yojson;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_conference_solution (value : conference_solution) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("iconUri", (fun value -> `String value) field)) value.icon_uri;
         Option.map (fun field -> ("key", yojson_of_conference_solution_key field)) value.key;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and conference_solution_key_of_yojson json : conference_solution_key =
  let open Yojson.Safe.Util in
  {
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_conference_solution_key (value : conference_solution_key) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and create_conference_request_of_yojson json : create_conference_request =
  let open Yojson.Safe.Util in
  {
    conference_solution_key = member "conferenceSolutionKey" json |> to_option conference_solution_key_of_yojson;
    request_id = member "requestId" json |> to_option to_string;
    status = member "status" json |> to_option conference_request_status_of_yojson;
  }

and yojson_of_create_conference_request (value : create_conference_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("conferenceSolutionKey", yojson_of_conference_solution_key field)) value.conference_solution_key;
         Option.map (fun field -> ("requestId", (fun value -> `String value) field)) value.request_id;
         Option.map (fun field -> ("status", yojson_of_conference_request_status field)) value.status;
       ])

and entry_point_of_yojson json : entry_point =
  let open Yojson.Safe.Util in
  {
    access_code = member "accessCode" json |> to_option to_string;
    entry_point_features = member "entryPointFeatures" json |> to_option (convert_each to_string);
    entry_point_type = member "entryPointType" json |> to_option to_string;
    label = member "label" json |> to_option to_string;
    meeting_code = member "meetingCode" json |> to_option to_string;
    passcode = member "passcode" json |> to_option to_string;
    password = member "password" json |> to_option to_string;
    pin = member "pin" json |> to_option to_string;
    region_code = member "regionCode" json |> to_option to_string;
    uri = member "uri" json |> to_option to_string;
  }

and yojson_of_entry_point (value : entry_point) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("accessCode", (fun value -> `String value) field)) value.access_code;
         Option.map (fun field -> ("entryPointFeatures", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.entry_point_features;
         Option.map (fun field -> ("entryPointType", (fun value -> `String value) field)) value.entry_point_type;
         Option.map (fun field -> ("label", (fun value -> `String value) field)) value.label;
         Option.map (fun field -> ("meetingCode", (fun value -> `String value) field)) value.meeting_code;
         Option.map (fun field -> ("passcode", (fun value -> `String value) field)) value.passcode;
         Option.map (fun field -> ("password", (fun value -> `String value) field)) value.password;
         Option.map (fun field -> ("pin", (fun value -> `String value) field)) value.pin;
         Option.map (fun field -> ("regionCode", (fun value -> `String value) field)) value.region_code;
         Option.map (fun field -> ("uri", (fun value -> `String value) field)) value.uri;
       ])

and error_of_yojson json : error =
  let open Yojson.Safe.Util in
  {
    domain = member "domain" json |> to_option to_string;
    reason = member "reason" json |> to_option to_string;
  }

and yojson_of_error (value : error) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("domain", (fun value -> `String value) field)) value.domain;
         Option.map (fun field -> ("reason", (fun value -> `String value) field)) value.reason;
       ])

and event_creator_of_yojson json : event_creator =
  let open Yojson.Safe.Util in
  {
    display_name = member "displayName" json |> to_option to_string;
    email = member "email" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    self = member "self" json |> to_option to_bool;
  }

and yojson_of_event_creator (value : event_creator) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("email", (fun value -> `String value) field)) value.email;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("self", (fun value -> `Bool value) field)) value.self;
       ])

and event_extended_properties_of_yojson json : event_extended_properties =
  let open Yojson.Safe.Util in
  {
    private_ = member "private" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    shared = member "shared" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
  }

and yojson_of_event_extended_properties (value : event_extended_properties) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("private", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.private_;
         Option.map (fun field -> ("shared", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.shared;
       ])

and event_gadget_of_yojson json : event_gadget =
  let open Yojson.Safe.Util in
  {
    display = member "display" json |> to_option to_string;
    height = member "height" json |> to_option to_int;
    icon_link = member "iconLink" json |> to_option to_string;
    link = member "link" json |> to_option to_string;
    preferences = member "preferences" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    title = member "title" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
    width = member "width" json |> to_option to_int;
  }

and yojson_of_event_gadget (value : event_gadget) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("display", (fun value -> `String value) field)) value.display;
         Option.map (fun field -> ("height", (fun value -> `Int value) field)) value.height;
         Option.map (fun field -> ("iconLink", (fun value -> `String value) field)) value.icon_link;
         Option.map (fun field -> ("link", (fun value -> `String value) field)) value.link;
         Option.map (fun field -> ("preferences", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.preferences;
         Option.map (fun field -> ("title", (fun value -> `String value) field)) value.title;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
         Option.map (fun field -> ("width", (fun value -> `Int value) field)) value.width;
       ])

and event_organizer_of_yojson json : event_organizer =
  let open Yojson.Safe.Util in
  {
    display_name = member "displayName" json |> to_option to_string;
    email = member "email" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    self = member "self" json |> to_option to_bool;
  }

and yojson_of_event_organizer (value : event_organizer) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("email", (fun value -> `String value) field)) value.email;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("self", (fun value -> `Bool value) field)) value.self;
       ])

and event_reminders_of_yojson json : event_reminders =
  let open Yojson.Safe.Util in
  {
    overrides = member "overrides" json |> to_option (convert_each event_reminder_of_yojson);
    use_default = member "useDefault" json |> to_option to_bool;
  }

and yojson_of_event_reminders (value : event_reminders) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("overrides", (fun items -> `List (List.map yojson_of_event_reminder items)) field)) value.overrides;
         Option.map (fun field -> ("useDefault", (fun value -> `Bool value) field)) value.use_default;
       ])

and event_source_of_yojson json : event_source =
  let open Yojson.Safe.Util in
  {
    title = member "title" json |> to_option to_string;
    url = member "url" json |> to_option to_string;
  }

and yojson_of_event_source (value : event_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("title", (fun value -> `String value) field)) value.title;
         Option.map (fun field -> ("url", (fun value -> `String value) field)) value.url;
       ])

and event_of_yojson json : event =
  let open Yojson.Safe.Util in
  {
    anyone_can_add_self = member "anyoneCanAddSelf" json |> to_option to_bool;
    attachments = member "attachments" json |> to_option (convert_each event_attachment_of_yojson);
    attendees = member "attendees" json |> to_option (convert_each event_attendee_of_yojson);
    attendees_omitted = member "attendeesOmitted" json |> to_option to_bool;
    birthday_properties = member "birthdayProperties" json |> to_option event_birthday_properties_of_yojson;
    color_id = member "colorId" json |> to_option to_string;
    conference_data = member "conferenceData" json |> to_option conference_data_of_yojson;
    created = member "created" json |> to_option to_string;
    creator = member "creator" json |> to_option event_creator_of_yojson;
    description = member "description" json |> to_option to_string;
    end_ = member "end" json |> to_option event_date_time_of_yojson;
    end_time_unspecified = member "endTimeUnspecified" json |> to_option to_bool;
    etag = member "etag" json |> to_option to_string;
    event_label_id = member "eventLabelId" json |> to_option to_string;
    event_type = member "eventType" json |> to_option to_string;
    extended_properties = member "extendedProperties" json |> to_option event_extended_properties_of_yojson;
    focus_time_properties = member "focusTimeProperties" json |> to_option event_focus_time_properties_of_yojson;
    gadget = member "gadget" json |> to_option event_gadget_of_yojson;
    guests_can_invite_others = member "guestsCanInviteOthers" json |> to_option to_bool;
    guests_can_modify = member "guestsCanModify" json |> to_option to_bool;
    guests_can_see_other_guests = member "guestsCanSeeOtherGuests" json |> to_option to_bool;
    hangout_link = member "hangoutLink" json |> to_option to_string;
    html_link = member "htmlLink" json |> to_option to_string;
    i_cal_uid = member "iCalUID" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    location = member "location" json |> to_option to_string;
    locked = member "locked" json |> to_option to_bool;
    organizer = member "organizer" json |> to_option event_organizer_of_yojson;
    original_start_time = member "originalStartTime" json |> to_option event_date_time_of_yojson;
    out_of_office_properties = member "outOfOfficeProperties" json |> to_option event_out_of_office_properties_of_yojson;
    private_copy = member "privateCopy" json |> to_option to_bool;
    recurrence = member "recurrence" json |> to_option (convert_each to_string);
    recurring_event_id = member "recurringEventId" json |> to_option to_string;
    reminders = member "reminders" json |> to_option event_reminders_of_yojson;
    sequence = member "sequence" json |> to_option to_int;
    source = member "source" json |> to_option event_source_of_yojson;
    start = member "start" json |> to_option event_date_time_of_yojson;
    status = member "status" json |> to_option to_string;
    summary = member "summary" json |> to_option to_string;
    transparency = member "transparency" json |> to_option to_string;
    updated = member "updated" json |> to_option to_string;
    visibility = member "visibility" json |> to_option to_string;
    working_location_properties = member "workingLocationProperties" json |> to_option event_working_location_properties_of_yojson;
  }

and yojson_of_event (value : event) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("anyoneCanAddSelf", (fun value -> `Bool value) field)) value.anyone_can_add_self;
         Option.map (fun field -> ("attachments", (fun items -> `List (List.map yojson_of_event_attachment items)) field)) value.attachments;
         Option.map (fun field -> ("attendees", (fun items -> `List (List.map yojson_of_event_attendee items)) field)) value.attendees;
         Option.map (fun field -> ("attendeesOmitted", (fun value -> `Bool value) field)) value.attendees_omitted;
         Option.map (fun field -> ("birthdayProperties", yojson_of_event_birthday_properties field)) value.birthday_properties;
         Option.map (fun field -> ("colorId", (fun value -> `String value) field)) value.color_id;
         Option.map (fun field -> ("conferenceData", yojson_of_conference_data field)) value.conference_data;
         Option.map (fun field -> ("created", (fun value -> `String value) field)) value.created;
         Option.map (fun field -> ("creator", yojson_of_event_creator field)) value.creator;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("end", yojson_of_event_date_time field)) value.end_;
         Option.map (fun field -> ("endTimeUnspecified", (fun value -> `Bool value) field)) value.end_time_unspecified;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("eventLabelId", (fun value -> `String value) field)) value.event_label_id;
         Option.map (fun field -> ("eventType", (fun value -> `String value) field)) value.event_type;
         Option.map (fun field -> ("extendedProperties", yojson_of_event_extended_properties field)) value.extended_properties;
         Option.map (fun field -> ("focusTimeProperties", yojson_of_event_focus_time_properties field)) value.focus_time_properties;
         Option.map (fun field -> ("gadget", yojson_of_event_gadget field)) value.gadget;
         Option.map (fun field -> ("guestsCanInviteOthers", (fun value -> `Bool value) field)) value.guests_can_invite_others;
         Option.map (fun field -> ("guestsCanModify", (fun value -> `Bool value) field)) value.guests_can_modify;
         Option.map (fun field -> ("guestsCanSeeOtherGuests", (fun value -> `Bool value) field)) value.guests_can_see_other_guests;
         Option.map (fun field -> ("hangoutLink", (fun value -> `String value) field)) value.hangout_link;
         Option.map (fun field -> ("htmlLink", (fun value -> `String value) field)) value.html_link;
         Option.map (fun field -> ("iCalUID", (fun value -> `String value) field)) value.i_cal_uid;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("locked", (fun value -> `Bool value) field)) value.locked;
         Option.map (fun field -> ("organizer", yojson_of_event_organizer field)) value.organizer;
         Option.map (fun field -> ("originalStartTime", yojson_of_event_date_time field)) value.original_start_time;
         Option.map (fun field -> ("outOfOfficeProperties", yojson_of_event_out_of_office_properties field)) value.out_of_office_properties;
         Option.map (fun field -> ("privateCopy", (fun value -> `Bool value) field)) value.private_copy;
         Option.map (fun field -> ("recurrence", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.recurrence;
         Option.map (fun field -> ("recurringEventId", (fun value -> `String value) field)) value.recurring_event_id;
         Option.map (fun field -> ("reminders", yojson_of_event_reminders field)) value.reminders;
         Option.map (fun field -> ("sequence", (fun value -> `Int value) field)) value.sequence;
         Option.map (fun field -> ("source", yojson_of_event_source field)) value.source;
         Option.map (fun field -> ("start", yojson_of_event_date_time field)) value.start;
         Option.map (fun field -> ("status", (fun value -> `String value) field)) value.status;
         Option.map (fun field -> ("summary", (fun value -> `String value) field)) value.summary;
         Option.map (fun field -> ("transparency", (fun value -> `String value) field)) value.transparency;
         Option.map (fun field -> ("updated", (fun value -> `String value) field)) value.updated;
         Option.map (fun field -> ("visibility", (fun value -> `String value) field)) value.visibility;
         Option.map (fun field -> ("workingLocationProperties", yojson_of_event_working_location_properties field)) value.working_location_properties;
       ])

and event_attachment_of_yojson json : event_attachment =
  let open Yojson.Safe.Util in
  {
    file_id = member "fileId" json |> to_option to_string;
    file_url = member "fileUrl" json |> to_option to_string;
    icon_link = member "iconLink" json |> to_option to_string;
    mime_type = member "mimeType" json |> to_option to_string;
    title = member "title" json |> to_option to_string;
  }

and yojson_of_event_attachment (value : event_attachment) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("fileId", (fun value -> `String value) field)) value.file_id;
         Option.map (fun field -> ("fileUrl", (fun value -> `String value) field)) value.file_url;
         Option.map (fun field -> ("iconLink", (fun value -> `String value) field)) value.icon_link;
         Option.map (fun field -> ("mimeType", (fun value -> `String value) field)) value.mime_type;
         Option.map (fun field -> ("title", (fun value -> `String value) field)) value.title;
       ])

and event_attendee_of_yojson json : event_attendee =
  let open Yojson.Safe.Util in
  {
    additional_guests = member "additionalGuests" json |> to_option to_int;
    async_operation = member "asyncOperation" json |> to_option to_string;
    comment = member "comment" json |> to_option to_string;
    display_name = member "displayName" json |> to_option to_string;
    email = member "email" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    optional = member "optional" json |> to_option to_bool;
    organizer = member "organizer" json |> to_option to_bool;
    resource = member "resource" json |> to_option to_bool;
    response_status = member "responseStatus" json |> to_option to_string;
    self = member "self" json |> to_option to_bool;
  }

and yojson_of_event_attendee (value : event_attendee) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("additionalGuests", (fun value -> `Int value) field)) value.additional_guests;
         Option.map (fun field -> ("asyncOperation", (fun value -> `String value) field)) value.async_operation;
         Option.map (fun field -> ("comment", (fun value -> `String value) field)) value.comment;
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("email", (fun value -> `String value) field)) value.email;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("optional", (fun value -> `Bool value) field)) value.optional;
         Option.map (fun field -> ("organizer", (fun value -> `Bool value) field)) value.organizer;
         Option.map (fun field -> ("resource", (fun value -> `Bool value) field)) value.resource;
         Option.map (fun field -> ("responseStatus", (fun value -> `String value) field)) value.response_status;
         Option.map (fun field -> ("self", (fun value -> `Bool value) field)) value.self;
       ])

and event_birthday_properties_of_yojson json : event_birthday_properties =
  let open Yojson.Safe.Util in
  {
    contact = member "contact" json |> to_option to_string;
    custom_type_name = member "customTypeName" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_event_birthday_properties (value : event_birthday_properties) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("contact", (fun value -> `String value) field)) value.contact;
         Option.map (fun field -> ("customTypeName", (fun value -> `String value) field)) value.custom_type_name;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and event_date_time_of_yojson json : event_date_time =
  let open Yojson.Safe.Util in
  {
    date = member "date" json |> to_option to_string;
    date_time = member "dateTime" json |> to_option to_string;
    time_zone = member "timeZone" json |> to_option to_string;
  }

and yojson_of_event_date_time (value : event_date_time) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("date", (fun value -> `String value) field)) value.date;
         Option.map (fun field -> ("dateTime", (fun value -> `String value) field)) value.date_time;
         Option.map (fun field -> ("timeZone", (fun value -> `String value) field)) value.time_zone;
       ])

and event_focus_time_properties_of_yojson json : event_focus_time_properties =
  let open Yojson.Safe.Util in
  {
    auto_decline_mode = member "autoDeclineMode" json |> to_option to_string;
    chat_status = member "chatStatus" json |> to_option to_string;
    decline_message = member "declineMessage" json |> to_option to_string;
  }

and yojson_of_event_focus_time_properties (value : event_focus_time_properties) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("autoDeclineMode", (fun value -> `String value) field)) value.auto_decline_mode;
         Option.map (fun field -> ("chatStatus", (fun value -> `String value) field)) value.chat_status;
         Option.map (fun field -> ("declineMessage", (fun value -> `String value) field)) value.decline_message;
       ])

and event_label_of_yojson json : event_label =
  let open Yojson.Safe.Util in
  {
    background_color = member "backgroundColor" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_event_label (value : event_label) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("backgroundColor", (fun value -> `String value) field)) value.background_color;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and event_out_of_office_properties_of_yojson json : event_out_of_office_properties =
  let open Yojson.Safe.Util in
  {
    auto_decline_mode = member "autoDeclineMode" json |> to_option to_string;
    decline_message = member "declineMessage" json |> to_option to_string;
  }

and yojson_of_event_out_of_office_properties (value : event_out_of_office_properties) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("autoDeclineMode", (fun value -> `String value) field)) value.auto_decline_mode;
         Option.map (fun field -> ("declineMessage", (fun value -> `String value) field)) value.decline_message;
       ])

and event_reminder_of_yojson json : event_reminder =
  let open Yojson.Safe.Util in
  {
    method_ = member "method" json |> to_option to_string;
    minutes = member "minutes" json |> to_option to_int;
  }

and yojson_of_event_reminder (value : event_reminder) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("method", (fun value -> `String value) field)) value.method_;
         Option.map (fun field -> ("minutes", (fun value -> `Int value) field)) value.minutes;
       ])

and event_working_location_properties_custom_location_of_yojson json : event_working_location_properties_custom_location =
  let open Yojson.Safe.Util in
  {
    label = member "label" json |> to_option to_string;
  }

and yojson_of_event_working_location_properties_custom_location (value : event_working_location_properties_custom_location) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("label", (fun value -> `String value) field)) value.label;
       ])

and event_working_location_properties_office_location_of_yojson json : event_working_location_properties_office_location =
  let open Yojson.Safe.Util in
  {
    building_id = member "buildingId" json |> to_option to_string;
    desk_id = member "deskId" json |> to_option to_string;
    floor_id = member "floorId" json |> to_option to_string;
    floor_section_id = member "floorSectionId" json |> to_option to_string;
    label = member "label" json |> to_option to_string;
  }

and yojson_of_event_working_location_properties_office_location (value : event_working_location_properties_office_location) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("buildingId", (fun value -> `String value) field)) value.building_id;
         Option.map (fun field -> ("deskId", (fun value -> `String value) field)) value.desk_id;
         Option.map (fun field -> ("floorId", (fun value -> `String value) field)) value.floor_id;
         Option.map (fun field -> ("floorSectionId", (fun value -> `String value) field)) value.floor_section_id;
         Option.map (fun field -> ("label", (fun value -> `String value) field)) value.label;
       ])

and event_working_location_properties_of_yojson json : event_working_location_properties =
  let open Yojson.Safe.Util in
  {
    custom_location = member "customLocation" json |> to_option event_working_location_properties_custom_location_of_yojson;
    home_office = member "homeOffice" json |> to_option Fun.id;
    office_location = member "officeLocation" json |> to_option event_working_location_properties_office_location_of_yojson;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_event_working_location_properties (value : event_working_location_properties) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customLocation", yojson_of_event_working_location_properties_custom_location field)) value.custom_location;
         Option.map (fun field -> ("homeOffice", Fun.id field)) value.home_office;
         Option.map (fun field -> ("officeLocation", yojson_of_event_working_location_properties_office_location field)) value.office_location;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and events_of_yojson json : events =
  let open Yojson.Safe.Util in
  {
    access_role = member "accessRole" json |> to_option to_string;
    default_reminders = member "defaultReminders" json |> to_option (convert_each event_reminder_of_yojson);
    description = member "description" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each event_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    next_sync_token = member "nextSyncToken" json |> to_option to_string;
    summary = member "summary" json |> to_option to_string;
    time_zone = member "timeZone" json |> to_option to_string;
    updated = member "updated" json |> to_option to_string;
  }

and yojson_of_events (value : events) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("accessRole", (fun value -> `String value) field)) value.access_role;
         Option.map (fun field -> ("defaultReminders", (fun items -> `List (List.map yojson_of_event_reminder items)) field)) value.default_reminders;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_event items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("nextSyncToken", (fun value -> `String value) field)) value.next_sync_token;
         Option.map (fun field -> ("summary", (fun value -> `String value) field)) value.summary;
         Option.map (fun field -> ("timeZone", (fun value -> `String value) field)) value.time_zone;
         Option.map (fun field -> ("updated", (fun value -> `String value) field)) value.updated;
       ])

and free_busy_calendar_of_yojson json : free_busy_calendar =
  let open Yojson.Safe.Util in
  {
    busy = member "busy" json |> to_option (convert_each time_period_of_yojson);
    errors = member "errors" json |> to_option (convert_each error_of_yojson);
  }

and yojson_of_free_busy_calendar (value : free_busy_calendar) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("busy", (fun items -> `List (List.map yojson_of_time_period items)) field)) value.busy;
         Option.map (fun field -> ("errors", (fun items -> `List (List.map yojson_of_error items)) field)) value.errors;
       ])

and free_busy_group_of_yojson json : free_busy_group =
  let open Yojson.Safe.Util in
  {
    calendars = member "calendars" json |> to_option (convert_each to_string);
    errors = member "errors" json |> to_option (convert_each error_of_yojson);
  }

and yojson_of_free_busy_group (value : free_busy_group) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("calendars", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.calendars;
         Option.map (fun field -> ("errors", (fun items -> `List (List.map yojson_of_error items)) field)) value.errors;
       ])

and free_busy_request_of_yojson json : free_busy_request =
  let open Yojson.Safe.Util in
  {
    calendar_expansion_max = member "calendarExpansionMax" json |> to_option to_int;
    group_expansion_max = member "groupExpansionMax" json |> to_option to_int;
    items = member "items" json |> to_option (convert_each free_busy_request_item_of_yojson);
    time_max = member "timeMax" json |> to_option to_string;
    time_min = member "timeMin" json |> to_option to_string;
    time_zone = member "timeZone" json |> to_option to_string;
  }

and yojson_of_free_busy_request (value : free_busy_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("calendarExpansionMax", (fun value -> `Int value) field)) value.calendar_expansion_max;
         Option.map (fun field -> ("groupExpansionMax", (fun value -> `Int value) field)) value.group_expansion_max;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_free_busy_request_item items)) field)) value.items;
         Option.map (fun field -> ("timeMax", (fun value -> `String value) field)) value.time_max;
         Option.map (fun field -> ("timeMin", (fun value -> `String value) field)) value.time_min;
         Option.map (fun field -> ("timeZone", (fun value -> `String value) field)) value.time_zone;
       ])

and free_busy_request_item_of_yojson json : free_busy_request_item =
  let open Yojson.Safe.Util in
  {
    id = member "id" json |> to_option to_string;
  }

and yojson_of_free_busy_request_item (value : free_busy_request_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
       ])

and free_busy_response_of_yojson json : free_busy_response =
  let open Yojson.Safe.Util in
  {
    calendars = member "calendars" json |> to_option (fun json -> List.map (fun (key, value) -> (key, free_busy_calendar_of_yojson value)) (to_assoc json));
    groups = member "groups" json |> to_option (fun json -> List.map (fun (key, value) -> (key, free_busy_group_of_yojson value)) (to_assoc json));
    kind = member "kind" json |> to_option to_string;
    time_max = member "timeMax" json |> to_option to_string;
    time_min = member "timeMin" json |> to_option to_string;
  }

and yojson_of_free_busy_response (value : free_busy_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("calendars", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_free_busy_calendar value)) members)) field)) value.calendars;
         Option.map (fun field -> ("groups", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_free_busy_group value)) members)) field)) value.groups;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("timeMax", (fun value -> `String value) field)) value.time_max;
         Option.map (fun field -> ("timeMin", (fun value -> `String value) field)) value.time_min;
       ])

and label_properties_of_yojson json : label_properties =
  let open Yojson.Safe.Util in
  {
    event_labels = member "eventLabels" json |> to_option (convert_each event_label_of_yojson);
  }

and yojson_of_label_properties (value : label_properties) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("eventLabels", (fun items -> `List (List.map yojson_of_event_label items)) field)) value.event_labels;
       ])

and setting_of_yojson json : setting =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_setting (value : setting) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and settings_of_yojson json : settings =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each setting_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    next_sync_token = member "nextSyncToken" json |> to_option to_string;
  }

and yojson_of_settings (value : settings) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_setting items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("nextSyncToken", (fun value -> `String value) field)) value.next_sync_token;
       ])

and time_period_of_yojson json : time_period =
  let open Yojson.Safe.Util in
  {
    end_ = member "end" json |> to_option to_string;
    start = member "start" json |> to_option to_string;
  }

and yojson_of_time_period (value : time_period) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("end", (fun value -> `String value) field)) value.end_;
         Option.map (fun field -> ("start", (fun value -> `String value) field)) value.start;
       ])

let make_acl ?etag ?items ?kind ?next_page_token ?next_sync_token () : acl = { etag; items; kind; next_page_token; next_sync_token }

let make_acl_rule_scope ?type_ ?value () : acl_rule_scope = { type_; value }

let make_acl_rule ?etag ?id ?kind ?role ?scope () : acl_rule = { etag; id; kind; role; scope }

let make_calendar ?auto_accept_invitations ?conference_properties ?data_owner ?description ?etag ?id ?kind ?label_properties ?location ?summary ?time_zone () : calendar = { auto_accept_invitations; conference_properties; data_owner; description; etag; id; kind; label_properties; location; summary; time_zone }

let make_calendar_list ?etag ?items ?kind ?next_page_token ?next_sync_token () : calendar_list = { etag; items; kind; next_page_token; next_sync_token }

let make_calendar_list_entry_notification_settings ?notifications () : calendar_list_entry_notification_settings = { notifications }

let make_calendar_list_entry ?access_role ?auto_accept_invitations ?background_color ?color_id ?conference_properties ?data_owner ?default_reminders ?deleted ?description ?etag ?foreground_color ?hidden ?id ?kind ?location ?notification_settings ?primary ?selected ?summary ?summary_override ?time_zone () : calendar_list_entry = { access_role; auto_accept_invitations; background_color; color_id; conference_properties; data_owner; default_reminders; deleted; description; etag; foreground_color; hidden; id; kind; location; notification_settings; primary; selected; summary; summary_override; time_zone }

let make_calendar_notification ?method_ ?type_ () : calendar_notification = { method_; type_ }

let make_channel ?address ?expiration ?id ?kind ?params ?payload ?resource_id ?resource_uri ?token ?type_ () : channel = { address; expiration; id; kind; params; payload; resource_id; resource_uri; token; type_ }

let make_color_definition ?background ?foreground () : color_definition = { background; foreground }

let make_colors ?calendar ?event ?kind ?updated () : colors = { calendar; event; kind; updated }

let make_conference_data ?conference_id ?conference_solution ?create_request ?entry_points ?notes ?parameters ?signature () : conference_data = { conference_id; conference_solution; create_request; entry_points; notes; parameters; signature }

let make_conference_parameters ?add_on_parameters () : conference_parameters = { add_on_parameters }

let make_conference_parameters_add_on_parameters ?parameters () : conference_parameters_add_on_parameters = { parameters }

let make_conference_properties ?allowed_conference_solution_types () : conference_properties = { allowed_conference_solution_types }

let make_conference_request_status ?status_code () : conference_request_status = { status_code }

let make_conference_solution ?icon_uri ?key ?name () : conference_solution = { icon_uri; key; name }

let make_conference_solution_key ?type_ () : conference_solution_key = { type_ }

let make_create_conference_request ?conference_solution_key ?request_id ?status () : create_conference_request = { conference_solution_key; request_id; status }

let make_entry_point ?access_code ?entry_point_features ?entry_point_type ?label ?meeting_code ?passcode ?password ?pin ?region_code ?uri () : entry_point = { access_code; entry_point_features; entry_point_type; label; meeting_code; passcode; password; pin; region_code; uri }

let make_error ?domain ?reason () : error = { domain; reason }

let make_event_creator ?display_name ?email ?id ?self () : event_creator = { display_name; email; id; self }

let make_event_extended_properties ?private_ ?shared () : event_extended_properties = { private_; shared }

let make_event_gadget ?display ?height ?icon_link ?link ?preferences ?title ?type_ ?width () : event_gadget = { display; height; icon_link; link; preferences; title; type_; width }

let make_event_organizer ?display_name ?email ?id ?self () : event_organizer = { display_name; email; id; self }

let make_event_reminders ?overrides ?use_default () : event_reminders = { overrides; use_default }

let make_event_source ?title ?url () : event_source = { title; url }

let make_event ?anyone_can_add_self ?attachments ?attendees ?attendees_omitted ?birthday_properties ?color_id ?conference_data ?created ?creator ?description ?end_ ?end_time_unspecified ?etag ?event_label_id ?event_type ?extended_properties ?focus_time_properties ?gadget ?guests_can_invite_others ?guests_can_modify ?guests_can_see_other_guests ?hangout_link ?html_link ?i_cal_uid ?id ?kind ?location ?locked ?organizer ?original_start_time ?out_of_office_properties ?private_copy ?recurrence ?recurring_event_id ?reminders ?sequence ?source ?start ?status ?summary ?transparency ?updated ?visibility ?working_location_properties () : event = { anyone_can_add_self; attachments; attendees; attendees_omitted; birthday_properties; color_id; conference_data; created; creator; description; end_; end_time_unspecified; etag; event_label_id; event_type; extended_properties; focus_time_properties; gadget; guests_can_invite_others; guests_can_modify; guests_can_see_other_guests; hangout_link; html_link; i_cal_uid; id; kind; location; locked; organizer; original_start_time; out_of_office_properties; private_copy; recurrence; recurring_event_id; reminders; sequence; source; start; status; summary; transparency; updated; visibility; working_location_properties }

let make_event_attachment ?file_id ?file_url ?icon_link ?mime_type ?title () : event_attachment = { file_id; file_url; icon_link; mime_type; title }

let make_event_attendee ?additional_guests ?async_operation ?comment ?display_name ?email ?id ?optional ?organizer ?resource ?response_status ?self () : event_attendee = { additional_guests; async_operation; comment; display_name; email; id; optional; organizer; resource; response_status; self }

let make_event_birthday_properties ?contact ?custom_type_name ?type_ () : event_birthday_properties = { contact; custom_type_name; type_ }

let make_event_date_time ?date ?date_time ?time_zone () : event_date_time = { date; date_time; time_zone }

let make_event_focus_time_properties ?auto_decline_mode ?chat_status ?decline_message () : event_focus_time_properties = { auto_decline_mode; chat_status; decline_message }

let make_event_label ?background_color ?id ?name () : event_label = { background_color; id; name }

let make_event_out_of_office_properties ?auto_decline_mode ?decline_message () : event_out_of_office_properties = { auto_decline_mode; decline_message }

let make_event_reminder ?method_ ?minutes () : event_reminder = { method_; minutes }

let make_event_working_location_properties_custom_location ?label () : event_working_location_properties_custom_location = { label }

let make_event_working_location_properties_office_location ?building_id ?desk_id ?floor_id ?floor_section_id ?label () : event_working_location_properties_office_location = { building_id; desk_id; floor_id; floor_section_id; label }

let make_event_working_location_properties ?custom_location ?home_office ?office_location ?type_ () : event_working_location_properties = { custom_location; home_office; office_location; type_ }

let make_events ?access_role ?default_reminders ?description ?etag ?items ?kind ?next_page_token ?next_sync_token ?summary ?time_zone ?updated () : events = { access_role; default_reminders; description; etag; items; kind; next_page_token; next_sync_token; summary; time_zone; updated }

let make_free_busy_calendar ?busy ?errors () : free_busy_calendar = { busy; errors }

let make_free_busy_group ?calendars ?errors () : free_busy_group = { calendars; errors }

let make_free_busy_request ?calendar_expansion_max ?group_expansion_max ?items ?time_max ?time_min ?time_zone () : free_busy_request = { calendar_expansion_max; group_expansion_max; items; time_max; time_min; time_zone }

let make_free_busy_request_item ?id () : free_busy_request_item = { id }

let make_free_busy_response ?calendars ?groups ?kind ?time_max ?time_min () : free_busy_response = { calendars; groups; kind; time_max; time_min }

let make_label_properties ?event_labels () : label_properties = { event_labels }

let make_setting ?etag ?id ?kind ?value () : setting = { etag; id; kind; value }

let make_settings ?etag ?items ?kind ?next_page_token ?next_sync_token () : settings = { etag; items; kind; next_page_token; next_sync_token }

let make_time_period ?end_ ?start () : time_period = { end_; start }

let base_url = "https://www.googleapis.com/calendar/v3/"
let batch_endpoint = Uri.of_string "https://www.googleapis.com/batch/calendar/v3"
let batch ~access_token calls = Google_api.Batch.execute ~access_token ~endpoint:batch_endpoint calls

module Acl = struct
  let delete ~calendar_id ~rule_id () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/acl/" ^ Uri.pct_encode ~component:`Path rule_id))
      Google_api_runtime.Call.empty

  let get ~calendar_id ~rule_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/acl/" ^ Uri.pct_encode ~component:`Path rule_id))
      (Google_api_runtime.Call.json acl_rule_of_yojson)

  let insert ~calendar_id ~body ?send_notifications () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/acl"))
           (List.concat
              [
                Google_api_runtime.Query.optional "sendNotifications" string_of_bool send_notifications;
              ]))
      ~body:(yojson_of_acl_rule body)
      (Google_api_runtime.Call.json acl_rule_of_yojson)

  let list ~calendar_id ?max_results ?page_token ?show_deleted ?sync_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/acl"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                Google_api_runtime.Query.optional "syncToken" Fun.id sync_token;
              ]))
      (Google_api_runtime.Call.json acl_of_yojson)

  let patch ~calendar_id ~rule_id ~body ?send_notifications () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/acl/" ^ Uri.pct_encode ~component:`Path rule_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "sendNotifications" string_of_bool send_notifications;
              ]))
      ~body:(yojson_of_acl_rule body)
      (Google_api_runtime.Call.json acl_rule_of_yojson)

  let update ~calendar_id ~rule_id ~body ?send_notifications () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/acl/" ^ Uri.pct_encode ~component:`Path rule_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "sendNotifications" string_of_bool send_notifications;
              ]))
      ~body:(yojson_of_acl_rule body)
      (Google_api_runtime.Call.json acl_rule_of_yojson)

  let watch ~calendar_id ~body ?max_results ?page_token ?show_deleted ?sync_token () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/acl/watch"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                Google_api_runtime.Query.optional "syncToken" Fun.id sync_token;
              ]))
      ~body:(yojson_of_channel body)
      (Google_api_runtime.Call.json channel_of_yojson)
end

module Calendar_list = struct
  let delete ~calendar_id () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "users/me/calendarList/" ^ Uri.pct_encode ~component:`Path calendar_id))
      Google_api_runtime.Call.empty

  let get ~calendar_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "users/me/calendarList/" ^ Uri.pct_encode ~component:`Path calendar_id))
      (Google_api_runtime.Call.json calendar_list_entry_of_yojson)

  let insert ~body ?color_rgb_format () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "users/me/calendarList"))
           (List.concat
              [
                Google_api_runtime.Query.optional "colorRgbFormat" string_of_bool color_rgb_format;
              ]))
      ~body:(yojson_of_calendar_list_entry body)
      (Google_api_runtime.Call.json calendar_list_entry_of_yojson)

  let list ?max_results ?min_access_role ?page_token ?show_deleted ?show_hidden ?show_own_organization_only ?sync_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "users/me/calendarList"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "minAccessRole" (function `Free_busy_reader -> "freeBusyReader" | `Owner -> "owner" | `Reader -> "reader" | `Writer -> "writer" | `Writer_without_private_access -> "writerWithoutPrivateAccess" | `Unrecognized value -> value) min_access_role;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                Google_api_runtime.Query.optional "showHidden" string_of_bool show_hidden;
                Google_api_runtime.Query.optional "showOwnOrganizationOnly" string_of_bool show_own_organization_only;
                Google_api_runtime.Query.optional "syncToken" Fun.id sync_token;
              ]))
      (Google_api_runtime.Call.json calendar_list_of_yojson)

  let patch ~calendar_id ~body ?color_rgb_format () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "users/me/calendarList/" ^ Uri.pct_encode ~component:`Path calendar_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "colorRgbFormat" string_of_bool color_rgb_format;
              ]))
      ~body:(yojson_of_calendar_list_entry body)
      (Google_api_runtime.Call.json calendar_list_entry_of_yojson)

  let update ~calendar_id ~body ?color_rgb_format () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "users/me/calendarList/" ^ Uri.pct_encode ~component:`Path calendar_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "colorRgbFormat" string_of_bool color_rgb_format;
              ]))
      ~body:(yojson_of_calendar_list_entry body)
      (Google_api_runtime.Call.json calendar_list_entry_of_yojson)

  let watch ~body ?max_results ?min_access_role ?page_token ?show_deleted ?show_hidden ?show_own_organization_only ?sync_token () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "users/me/calendarList/watch"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "minAccessRole" (function `Free_busy_reader -> "freeBusyReader" | `Owner -> "owner" | `Reader -> "reader" | `Writer -> "writer" | `Writer_without_private_access -> "writerWithoutPrivateAccess" | `Unrecognized value -> value) min_access_role;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                Google_api_runtime.Query.optional "showHidden" string_of_bool show_hidden;
                Google_api_runtime.Query.optional "showOwnOrganizationOnly" string_of_bool show_own_organization_only;
                Google_api_runtime.Query.optional "syncToken" Fun.id sync_token;
              ]))
      ~body:(yojson_of_channel body)
      (Google_api_runtime.Call.json channel_of_yojson)
end

module Calendars = struct
  let clear ~calendar_id () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/clear"))
      Google_api_runtime.Call.empty

  let delete ~calendar_id () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id))
      Google_api_runtime.Call.empty

  let get ~calendar_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id))
      (Google_api_runtime.Call.json calendar_of_yojson)

  let insert ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "calendars"))
      ~body:(yojson_of_calendar body)
      (Google_api_runtime.Call.json calendar_of_yojson)

  let patch ~calendar_id ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id))
      ~body:(yojson_of_calendar body)
      (Google_api_runtime.Call.json calendar_of_yojson)

  let transfer_ownership ~calendar_id ~new_data_owner ~use_admin_access () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/transferOwnership"))
           (List.concat
              [
                Google_api_runtime.Query.required "newDataOwner" Fun.id new_data_owner;
                Google_api_runtime.Query.required "useAdminAccess" string_of_bool use_admin_access;
              ]))
      Google_api_runtime.Call.empty

  let update ~calendar_id ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id))
      ~body:(yojson_of_calendar body)
      (Google_api_runtime.Call.json calendar_of_yojson)
end

module Channels = struct
  let stop ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "channels/stop"))
      ~body:(yojson_of_channel body)
      Google_api_runtime.Call.empty
end

module Colors = struct
  let get () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "colors"))
      (Google_api_runtime.Call.json colors_of_yojson)
end

module Events = struct
  let delete ~calendar_id ~event_id ?send_notifications ?send_updates () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/events/" ^ Uri.pct_encode ~component:`Path event_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "sendNotifications" string_of_bool send_notifications;
                Google_api_runtime.Query.optional "sendUpdates" (function `All -> "all" | `External_only -> "externalOnly" | `None -> "none" | `Unrecognized value -> value) send_updates;
              ]))
      Google_api_runtime.Call.empty

  let get ~calendar_id ~event_id ?always_include_email ?max_attendees ?time_zone () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/events/" ^ Uri.pct_encode ~component:`Path event_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "alwaysIncludeEmail" string_of_bool always_include_email;
                Google_api_runtime.Query.optional "maxAttendees" string_of_int max_attendees;
                Google_api_runtime.Query.optional "timeZone" Fun.id time_zone;
              ]))
      (Google_api_runtime.Call.json event_of_yojson)

  let import ~calendar_id ~body ?conference_data_version ?event_label_version ?supports_attachments () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/events/import"))
           (List.concat
              [
                Google_api_runtime.Query.optional "conferenceDataVersion" string_of_int conference_data_version;
                Google_api_runtime.Query.optional "eventLabelVersion" string_of_int event_label_version;
                Google_api_runtime.Query.optional "supportsAttachments" string_of_bool supports_attachments;
              ]))
      ~body:(yojson_of_event body)
      (Google_api_runtime.Call.json event_of_yojson)

  let insert ~calendar_id ~body ?conference_data_version ?event_label_version ?max_attendees ?send_notifications ?send_updates ?supports_attachments () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/events"))
           (List.concat
              [
                Google_api_runtime.Query.optional "conferenceDataVersion" string_of_int conference_data_version;
                Google_api_runtime.Query.optional "eventLabelVersion" string_of_int event_label_version;
                Google_api_runtime.Query.optional "maxAttendees" string_of_int max_attendees;
                Google_api_runtime.Query.optional "sendNotifications" string_of_bool send_notifications;
                Google_api_runtime.Query.optional "sendUpdates" (function `All -> "all" | `External_only -> "externalOnly" | `None -> "none" | `Unrecognized value -> value) send_updates;
                Google_api_runtime.Query.optional "supportsAttachments" string_of_bool supports_attachments;
              ]))
      ~body:(yojson_of_event body)
      (Google_api_runtime.Call.json event_of_yojson)

  let instances ~calendar_id ~event_id ?always_include_email ?max_attendees ?max_results ?original_start ?page_token ?show_deleted ?time_max ?time_min ?time_zone () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/events/" ^ Uri.pct_encode ~component:`Path event_id ^ "/instances"))
           (List.concat
              [
                Google_api_runtime.Query.optional "alwaysIncludeEmail" string_of_bool always_include_email;
                Google_api_runtime.Query.optional "maxAttendees" string_of_int max_attendees;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "originalStart" Fun.id original_start;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                Google_api_runtime.Query.optional "timeMax" Fun.id time_max;
                Google_api_runtime.Query.optional "timeMin" Fun.id time_min;
                Google_api_runtime.Query.optional "timeZone" Fun.id time_zone;
              ]))
      (Google_api_runtime.Call.json events_of_yojson)

  let list ~calendar_id ?always_include_email ?event_types ?i_cal_uid ?max_attendees ?max_results ?order_by ?page_token ?private_extended_property ?q ?shared_extended_property ?show_deleted ?show_hidden_invitations ?single_events ?sync_token ?time_max ?time_min ?time_zone ?updated_min () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/events"))
           (List.concat
              [
                Google_api_runtime.Query.optional "alwaysIncludeEmail" string_of_bool always_include_email;
                Google_api_runtime.Query.repeated "eventTypes" (function `Birthday -> "birthday" | `Default -> "default" | `Focus_time -> "focusTime" | `From_gmail -> "fromGmail" | `Out_of_office -> "outOfOffice" | `Working_location -> "workingLocation" | `Unrecognized value -> value) event_types;
                Google_api_runtime.Query.optional "iCalUID" Fun.id i_cal_uid;
                Google_api_runtime.Query.optional "maxAttendees" string_of_int max_attendees;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "orderBy" (function `Start_time -> "startTime" | `Updated -> "updated" | `Unrecognized value -> value) order_by;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.repeated "privateExtendedProperty" Fun.id private_extended_property;
                Google_api_runtime.Query.optional "q" Fun.id q;
                Google_api_runtime.Query.repeated "sharedExtendedProperty" Fun.id shared_extended_property;
                Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                Google_api_runtime.Query.optional "showHiddenInvitations" string_of_bool show_hidden_invitations;
                Google_api_runtime.Query.optional "singleEvents" string_of_bool single_events;
                Google_api_runtime.Query.optional "syncToken" Fun.id sync_token;
                Google_api_runtime.Query.optional "timeMax" Fun.id time_max;
                Google_api_runtime.Query.optional "timeMin" Fun.id time_min;
                Google_api_runtime.Query.optional "timeZone" Fun.id time_zone;
                Google_api_runtime.Query.optional "updatedMin" Fun.id updated_min;
              ]))
      (Google_api_runtime.Call.json events_of_yojson)

  let move ~calendar_id ~event_id ~destination ?send_notifications ?send_updates () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/events/" ^ Uri.pct_encode ~component:`Path event_id ^ "/move"))
           (List.concat
              [
                Google_api_runtime.Query.required "destination" Fun.id destination;
                Google_api_runtime.Query.optional "sendNotifications" string_of_bool send_notifications;
                Google_api_runtime.Query.optional "sendUpdates" (function `All -> "all" | `External_only -> "externalOnly" | `None -> "none" | `Unrecognized value -> value) send_updates;
              ]))
      (Google_api_runtime.Call.json event_of_yojson)

  let patch ~calendar_id ~event_id ~body ?always_include_email ?conference_data_version ?event_label_version ?max_attendees ?send_notifications ?send_updates ?supports_attachments () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/events/" ^ Uri.pct_encode ~component:`Path event_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "alwaysIncludeEmail" string_of_bool always_include_email;
                Google_api_runtime.Query.optional "conferenceDataVersion" string_of_int conference_data_version;
                Google_api_runtime.Query.optional "eventLabelVersion" string_of_int event_label_version;
                Google_api_runtime.Query.optional "maxAttendees" string_of_int max_attendees;
                Google_api_runtime.Query.optional "sendNotifications" string_of_bool send_notifications;
                Google_api_runtime.Query.optional "sendUpdates" (function `All -> "all" | `External_only -> "externalOnly" | `None -> "none" | `Unrecognized value -> value) send_updates;
                Google_api_runtime.Query.optional "supportsAttachments" string_of_bool supports_attachments;
              ]))
      ~body:(yojson_of_event body)
      (Google_api_runtime.Call.json event_of_yojson)

  let quick_add ~calendar_id ~text ?send_notifications ?send_updates () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/events/quickAdd"))
           (List.concat
              [
                Google_api_runtime.Query.required "text" Fun.id text;
                Google_api_runtime.Query.optional "sendNotifications" string_of_bool send_notifications;
                Google_api_runtime.Query.optional "sendUpdates" (function `All -> "all" | `External_only -> "externalOnly" | `None -> "none" | `Unrecognized value -> value) send_updates;
              ]))
      (Google_api_runtime.Call.json event_of_yojson)

  let update ~calendar_id ~event_id ~body ?always_include_email ?conference_data_version ?event_label_version ?max_attendees ?send_notifications ?send_updates ?supports_attachments () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/events/" ^ Uri.pct_encode ~component:`Path event_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "alwaysIncludeEmail" string_of_bool always_include_email;
                Google_api_runtime.Query.optional "conferenceDataVersion" string_of_int conference_data_version;
                Google_api_runtime.Query.optional "eventLabelVersion" string_of_int event_label_version;
                Google_api_runtime.Query.optional "maxAttendees" string_of_int max_attendees;
                Google_api_runtime.Query.optional "sendNotifications" string_of_bool send_notifications;
                Google_api_runtime.Query.optional "sendUpdates" (function `All -> "all" | `External_only -> "externalOnly" | `None -> "none" | `Unrecognized value -> value) send_updates;
                Google_api_runtime.Query.optional "supportsAttachments" string_of_bool supports_attachments;
              ]))
      ~body:(yojson_of_event body)
      (Google_api_runtime.Call.json event_of_yojson)

  let watch ~calendar_id ~body ?always_include_email ?event_types ?i_cal_uid ?max_attendees ?max_results ?order_by ?page_token ?private_extended_property ?q ?shared_extended_property ?show_deleted ?show_hidden_invitations ?single_events ?sync_token ?time_max ?time_min ?time_zone ?updated_min () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "calendars/" ^ Uri.pct_encode ~component:`Path calendar_id ^ "/events/watch"))
           (List.concat
              [
                Google_api_runtime.Query.optional "alwaysIncludeEmail" string_of_bool always_include_email;
                Google_api_runtime.Query.repeated "eventTypes" (function `Birthday -> "birthday" | `Default -> "default" | `Focus_time -> "focusTime" | `From_gmail -> "fromGmail" | `Out_of_office -> "outOfOffice" | `Working_location -> "workingLocation" | `Unrecognized value -> value) event_types;
                Google_api_runtime.Query.optional "iCalUID" Fun.id i_cal_uid;
                Google_api_runtime.Query.optional "maxAttendees" string_of_int max_attendees;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "orderBy" (function `Start_time -> "startTime" | `Updated -> "updated" | `Unrecognized value -> value) order_by;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.repeated "privateExtendedProperty" Fun.id private_extended_property;
                Google_api_runtime.Query.optional "q" Fun.id q;
                Google_api_runtime.Query.repeated "sharedExtendedProperty" Fun.id shared_extended_property;
                Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                Google_api_runtime.Query.optional "showHiddenInvitations" string_of_bool show_hidden_invitations;
                Google_api_runtime.Query.optional "singleEvents" string_of_bool single_events;
                Google_api_runtime.Query.optional "syncToken" Fun.id sync_token;
                Google_api_runtime.Query.optional "timeMax" Fun.id time_max;
                Google_api_runtime.Query.optional "timeMin" Fun.id time_min;
                Google_api_runtime.Query.optional "timeZone" Fun.id time_zone;
                Google_api_runtime.Query.optional "updatedMin" Fun.id updated_min;
              ]))
      ~body:(yojson_of_channel body)
      (Google_api_runtime.Call.json channel_of_yojson)
end

module Freebusy = struct
  let query ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "freeBusy"))
      ~body:(yojson_of_free_busy_request body)
      (Google_api_runtime.Call.json free_busy_response_of_yojson)
end

module Settings = struct
  let get ~setting () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "users/me/settings/" ^ Uri.pct_encode ~component:`Path setting))
      (Google_api_runtime.Call.json setting_of_yojson)

  let list ?max_results ?page_token ?sync_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "users/me/settings"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "syncToken" Fun.id sync_token;
              ]))
      (Google_api_runtime.Call.json settings_of_yojson)

  let watch ~body ?max_results ?page_token ?sync_token () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "users/me/settings/watch"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "syncToken" Fun.id sync_token;
              ]))
      ~body:(yojson_of_channel body)
      (Google_api_runtime.Call.json channel_of_yojson)
end
