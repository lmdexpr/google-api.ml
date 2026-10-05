(* Generated from the Discovery document of calendar v3 (revision 20260925). Do not edit. *)

(** Calendar API (calendar v3, revision 20260925).

    Manipulates events and other calendar data.

    {{:https://developers.google.com/workspace/calendar/firstapp}Documentation} *)

type acl = {
  etag : string option;  (** ETag of the collection. *)
  items : acl_rule list option;  (** List of rules on the access control list. *)
  kind : string option;  (** Type of the collection ('calendar#acl'). *)
  next_page_token : string option;  (** Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided. *)
  next_sync_token : string option;  (** Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided. *)
}

and acl_rule_scope = {
  type_ : string option;  (** The type of the scope. Possible values are:
    - 'default' - The public scope. This is the default value.
    - 'user' - Limits the scope to a single user.
    - 'group' - Limits the scope to a group.
    - 'domain' - Limits the scope to a domain.  Note: The permissions granted to the 'default', or public, scope apply to any user, authenticated or not. *)
  value : string option;  (** The email address of a user or group, or the name of a domain, depending on the scope type. Omitted for type 'default'. *)
}

and acl_rule = {
  etag : string option;  (** ETag of the resource. *)
  id : string option;  (** Identifier of the Access Control List (ACL) rule. See Sharing calendars. *)
  kind : string option;  (** Type of the resource ('calendar#aclRule'). *)
  role : string option;  (** The role assigned to the scope. Possible values are:
    - 'none' - Provides no access.
    - 'freeBusyReader' - Provides read access to free/busy information.
    - 'reader' - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden.
    - 'writerWithoutPrivateAccess' - Provides read and write access to the calendar. Private events will appear to users with writerWithoutPrivateAccess access, but event details will be hidden.
    - 'writer' - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. Provides read access to the calendar's ACLs.
    - 'owner' - Provides manager access to the calendar. This role has all of the permissions of the writer role with the additional ability to modify access levels of other users.
    Important: the owner role is different from the calendar's data owner. A calendar has a single data owner, but can have multiple users with owner role. *)
  scope : acl_rule_scope option;  (** The extent to which calendar access is granted by this ACL rule. *)
}

and calendar = {
  auto_accept_invitations : bool option;  (** Whether this calendar automatically accepts invitations. Only valid for resource calendars. *)
  conference_properties : conference_properties option;  (** Conferencing properties for this calendar, for example what types of conferences are allowed. *)
  data_owner : string option;  (** The email of the owner of the calendar. Set only for secondary calendars. Read-only. *)
  description : string option;  (** Description of the calendar. Optional. *)
  etag : string option;  (** ETag of the resource. *)
  id : string option;  (** Identifier of the calendar. To retrieve IDs call the calendarList.list() method. *)
  kind : string option;  (** Type of the resource ('calendar#calendar'). *)
  label_properties : label_properties option;  (** Label properties defined on this calendar. If specified, overwrites the existing label properties. If not specified, the label properties remain unchanged. *)
  location : string option;  (** Geographic location of the calendar as free-form text. Optional. *)
  summary : string option;  (** Title of the calendar. *)
  time_zone : string option;  (** The time zone of the calendar. (Formatted as an IANA Time Zone Database name, e.g. 'Europe/Zurich'.) Optional. *)
}

and calendar_list = {
  etag : string option;  (** ETag of the collection. *)
  items : calendar_list_entry list option;  (** Calendars that are present on the user's calendar list. *)
  kind : string option;  (** Type of the collection ('calendar#calendarList'). *)
  next_page_token : string option;  (** Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided. *)
  next_sync_token : string option;  (** Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided. *)
}

and calendar_list_entry_notification_settings = {
  notifications : calendar_notification list option;  (** The list of notifications set for this calendar. *)
}

and calendar_list_entry = {
  access_role : string option;  (** The effective access role that the authenticated user has on the calendar. Read-only. Possible values are:
    - 'freeBusyReader' - Provides read access to free/busy information.
    - 'reader' - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden.
    - 'writerWithoutPrivateAccess' - Provides read and write access to the calendar. Private events will appear to users with writerWithoutPrivateAccess access, but event details will be hidden.
    - 'writer' - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible.
    - 'owner' - Provides manager access to the calendar. This role has all of the permissions of the writer role with the additional ability to see and modify access levels of other users.
    Important: the owner role is different from the calendar's data owner. A calendar has a single data owner, but can have multiple users with owner role. *)
  auto_accept_invitations : bool option;  (** Whether this calendar automatically accepts invitations. Only valid for resource calendars. Read-only. *)
  background_color : string option;  (** The main color of the calendar in the hexadecimal format '#0088aa'. This property supersedes the index-based colorId property. To set or change this property, you need to specify colorRgbFormat=true in the parameters of the insert, update and patch methods. Optional. *)
  color_id : string option;  (** The color of the calendar. This is an ID referring to an entry in the calendar section of the colors definition (see the colors endpoint). This property is superseded by the backgroundColor and foregroundColor properties and can be ignored when using these properties. Optional. *)
  conference_properties : conference_properties option;  (** Conferencing properties for this calendar, for example what types of conferences are allowed. *)
  data_owner : string option;  (** The email of the owner of the calendar. Set only for secondary calendars. Read-only. *)
  default_reminders : event_reminder list option;  (** The default reminders that the authenticated user has for this calendar. *)
  deleted : bool option;  (** Whether this calendar list entry has been deleted from the calendar list. Read-only. Optional. The default is False. *)
  description : string option;  (** Description of the calendar. Optional. Read-only. *)
  etag : string option;  (** ETag of the resource. *)
  foreground_color : string option;  (** The foreground color of the calendar in the hexadecimal format '#ffffff'. This property supersedes the index-based colorId property. To set or change this property, you need to specify colorRgbFormat=true in the parameters of the insert, update and patch methods. Optional. *)
  hidden : bool option;  (** Whether the calendar has been hidden from the list. Optional. The attribute is only returned when the calendar is hidden, in which case the value is true. *)
  id : string option;  (** Identifier of the calendar. *)
  kind : string option;  (** Type of the resource ('calendar#calendarListEntry'). *)
  location : string option;  (** Geographic location of the calendar as free-form text. Optional. Read-only. *)
  notification_settings : calendar_list_entry_notification_settings option;  (** The notifications that the authenticated user is receiving for this calendar. *)
  primary : bool option;  (** Whether the calendar is the primary calendar of the authenticated user. Read-only. Optional. The default is False. *)
  selected : bool option;  (** Whether the calendar content shows up in the calendar UI. Optional. The default is False. *)
  summary : string option;  (** Title of the calendar. Read-only. *)
  summary_override : string option;  (** The summary that the authenticated user has set for this calendar. Optional. *)
  time_zone : string option;  (** The time zone of the calendar. Optional. Read-only. *)
}

and calendar_notification = {
  method_ : string option;  (** The method used to deliver the notification. The possible value is:
    - 'email' - Notifications are sent via email.
    Required when adding a notification. *)
  type_ : string option;  (** The type of notification. Possible values are:
    - 'eventCreation' - Notification sent when a new event is put on the calendar.
    - 'eventChange' - Notification sent when an event is changed.
    - 'eventCancellation' - Notification sent when an event is cancelled.
    - 'eventResponse' - Notification sent when an attendee responds to the event invitation.
    - 'agenda' - An agenda with the events of the day (sent out in the morning).
    Required when adding a notification. *)
}

and channel = {
  address : string option;  (** The address where notifications are delivered for this channel. *)
  expiration : string option;  (** Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional. *)
  id : string option;  (** A UUID or similar unique string that identifies this channel. *)
  kind : string option;  (** Identifies this as a notification channel used to watch for changes to a resource, which is 'api#channel'. *)
  params : (string * string) list option;  (** Additional parameters controlling delivery channel behavior. Optional. *)
  payload : bool option;  (** A Boolean value to indicate whether payload is wanted. Optional. *)
  resource_id : string option;  (** An opaque ID that identifies the resource being watched on this channel. Stable across different API versions. *)
  resource_uri : string option;  (** A version-specific identifier for the watched resource. *)
  token : string option;  (** An arbitrary string delivered to the target address with each notification delivered over this channel. Optional. *)
  type_ : string option;  (** The type of delivery mechanism used for this channel. Valid values are 'web_hook' (or 'webhook'). Both values refer to a channel where Http requests are used to deliver messages. *)
}

and color_definition = {
  background : string option;  (** The background color associated with this color definition. *)
  foreground : string option;  (** The foreground color that can be used to write on top of a background with 'background' color. *)
}

and colors = {
  calendar : (string * color_definition) list option;  (** A global palette of calendar colors, mapping from the color ID to its definition. A calendarListEntry resource refers to one of these color IDs in its colorId field. Read-only. *)
  event : (string * color_definition) list option;  (** A global palette of event colors, mapping from the color ID to its definition. An event resource may refer to one of these color IDs in its colorId field. Read-only. *)
  kind : string option;  (** Type of the resource ('calendar#colors'). *)
  updated : string option;  (** Last modification time of the color palette (as a RFC3339 timestamp). Read-only. *)
}

and conference_data = {
  conference_id : string option;  (** The ID of the conference.
    Can be used by developers to keep track of conferences, should not be displayed to users.
    The ID value is formed differently for each conference solution type:
    - eventHangout: ID is not set. (This conference type is deprecated.)
    - eventNamedHangout: ID is the name of the Hangout. (This conference type is deprecated.)
    - hangoutsMeet: ID is the 10-letter meeting code, for example aaa-bbbb-ccc.
    - addOn: ID is defined by the third-party provider.  Optional. *)
  conference_solution : conference_solution option;  (** The conference solution, such as Google Meet.
    Unset for a conference with a failed create request.
    Either conferenceSolution and at least one entryPoint, or createRequest is required. *)
  create_request : create_conference_request option;  (** A request to generate a new conference and attach it to the event. The data is generated asynchronously. To see whether the data is present check the status field.
    Either conferenceSolution and at least one entryPoint, or createRequest is required. *)
  entry_points : entry_point list option;  (** Information about individual conference entry points, such as URLs or phone numbers.
    All of them must belong to the same conference.
    Either conferenceSolution and at least one entryPoint, or createRequest is required. *)
  notes : string option;  (** Additional notes (such as instructions from the domain administrator, legal notices) to display to the user. Can contain HTML. The maximum length is 2048 characters. Optional. *)
  parameters : conference_parameters option;  (** Additional properties related to a conference. An example would be a solution-specific setting for enabling video streaming. *)
  signature : string option;  (** The signature of the conference data.
    Generated on server side.
    Unset for a conference with a failed create request.
    Optional for a conference with a pending create request. *)
}

and conference_parameters = {
  add_on_parameters : conference_parameters_add_on_parameters option;  (** Additional add-on specific data. *)
}

and conference_parameters_add_on_parameters = {
  parameters : (string * string) list option;
}

and conference_properties = {
  allowed_conference_solution_types : string list option;  (** The types of conference solutions that are supported for this calendar.
    The possible values are:
    - 'eventHangout'
    - 'eventNamedHangout'
    - 'hangoutsMeet'  Optional. *)
}

and conference_request_status = {
  status_code : string option;  (** The current status of the conference create request. Read-only.
    The possible values are:
    - 'pending': the conference create request is still being processed.
    - 'success': the conference create request succeeded, the entry points are populated.
    - 'failure': the conference create request failed, there are no entry points. *)
}

and conference_solution = {
  icon_uri : string option;  (** The user-visible icon for this solution. *)
  key : conference_solution_key option;  (** The key which can uniquely identify the conference solution for this event. *)
  name : string option;  (** The user-visible name of this solution. Not localized. *)
}

and conference_solution_key = {
  type_ : string option;  (** The conference solution type.
    If a client encounters an unfamiliar or empty type, it should still be able to display the entry points. However, it should disallow modifications.
    The possible values are:
    - 'eventHangout' for Hangouts for consumers (deprecated; existing events may show this conference solution type but new conferences cannot be created)
    - 'eventNamedHangout' for classic Hangouts for Google Workspace users (deprecated; existing events may show this conference solution type but new conferences cannot be created)
    - 'hangoutsMeet' for Google Meet (http://meet.google.com)
    - 'addOn' for 3P conference providers *)
}

and create_conference_request = {
  conference_solution_key : conference_solution_key option;  (** The conference solution, such as Hangouts or Google Meet. *)
  request_id : string option;  (** The client-generated unique ID for this request.
    Clients should regenerate this ID for every new request. If an ID provided is the same as for the previous request, the request is ignored. *)
  status : conference_request_status option;  (** The status of the conference create request. *)
}

and entry_point = {
  access_code : string option;  (** The access code to access the conference. The maximum length is 128 characters.
    When creating new conference data, populate only the subset of \{meetingCode, accessCode, passcode, password, pin\} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.
    Optional. *)
  entry_point_features : string list option;  (** Features of the entry point, such as being toll or toll-free. One entry point can have multiple features. However, toll and toll-free cannot be both set on the same entry point. *)
  entry_point_type : string option;  (** The type of the conference entry point.
    Possible values are:
    - 'video' - joining a conference over HTTP. A conference can have zero or one video entry point.
    - 'phone' - joining a conference by dialing a phone number. A conference can have zero or more phone entry points.
    - 'sip' - joining a conference over SIP. A conference can have zero or one sip entry point.
    - 'more' - further conference joining instructions, for example additional phone numbers. A conference can have zero or one more entry point. A conference with only a more entry point is not a valid conference. *)
  label : string option;  (** The label for the URI. Visible to end users. Not localized. The maximum length is 512 characters.
    Examples:
    - for video: meet.google.com/aaa-bbbb-ccc
    - for phone: +1 123 268 2601
    - for sip: 12345678\@altostrat.com
    - for more: should not be filled
    Optional. *)
  meeting_code : string option;  (** The meeting code to access the conference. The maximum length is 128 characters.
    When creating new conference data, populate only the subset of \{meetingCode, accessCode, passcode, password, pin\} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.
    Optional. *)
  passcode : string option;  (** The passcode to access the conference. The maximum length is 128 characters.
    When creating new conference data, populate only the subset of \{meetingCode, accessCode, passcode, password, pin\} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed. *)
  password : string option;  (** The password to access the conference. The maximum length is 128 characters.
    When creating new conference data, populate only the subset of \{meetingCode, accessCode, passcode, password, pin\} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.
    Optional. *)
  pin : string option;  (** The PIN to access the conference. The maximum length is 128 characters.
    When creating new conference data, populate only the subset of \{meetingCode, accessCode, passcode, password, pin\} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.
    Optional. *)
  region_code : string option;  (** The CLDR/ISO 3166 region code for the country associated with this phone access. Example: 'SE' for Sweden.
    Calendar backend will populate this field only for EntryPointType.PHONE. *)
  uri : string option;  (** The URI of the entry point. The maximum length is 1300 characters.
    Format:
    - for video, http: or https: schema is required.
    - for phone, tel: schema is required. The URI should include the entire dial sequence (e.g., tel:+12345678900,,,123456789;1234).
    - for sip, sip: schema is required, e.g., sip:12345678\@myprovider.com.
    - for more, http: or https: schema is required. *)
}

and error = {
  domain : string option;  (** Domain, or broad category, of the error. *)
  reason : string option;  (** Specific reason for the error. Some of the possible values are:
    - 'groupTooBig' - The group of users requested is too large for a single query.
    - 'tooManyCalendarsRequested' - The number of calendars requested is too large for a single query.
    - 'notFound' - The requested resource was not found.
    - 'internalError' - The API service has encountered an internal error.  Additional error types may be added in the future, so clients should gracefully handle additional error statuses not included in this list. *)
}

and event_creator = {
  display_name : string option;  (** The creator's name, if available. *)
  email : string option;  (** The creator's email address, if available. *)
  id : string option;  (** The creator's Profile ID, if available. *)
  self : bool option;  (** Whether the creator corresponds to the calendar on which this copy of the event appears. Read-only. The default is False. *)
}

and event_extended_properties = {
  private_ : (string * string) list option;  (** Properties that are private to the copy of the event that appears on this calendar. *)
  shared : (string * string) list option;  (** Properties that are shared between copies of the event on other attendees' calendars. *)
}

and event_gadget = {
  display : string option;  (** The gadget's display mode. Deprecated. Possible values are:
    - 'icon' - The gadget displays next to the event's title in the calendar view.
    - 'chip' - The gadget displays when the event is clicked. *)
  height : int option;  (** The gadget's height in pixels. The height must be an integer greater than 0. Optional. Deprecated. *)
  icon_link : string option;  (** The gadget's icon URL. The URL scheme must be HTTPS. Deprecated. *)
  link : string option;  (** The gadget's URL. The URL scheme must be HTTPS. Deprecated. *)
  preferences : (string * string) list option;  (** Preferences. *)
  title : string option;  (** The gadget's title. Deprecated. *)
  type_ : string option;  (** The gadget's type. Deprecated. *)
  width : int option;  (** The gadget's width in pixels. The width must be an integer greater than 0. Optional. Deprecated. *)
}

and event_organizer = {
  display_name : string option;  (** The organizer's name, if available. *)
  email : string option;  (** The organizer's email address, if available. It must be a valid email address as per RFC5322. *)
  id : string option;  (** The organizer's Profile ID, if available. *)
  self : bool option;  (** Whether the organizer corresponds to the calendar on which this copy of the event appears. Read-only. The default is False. *)
}

and event_reminders = {
  overrides : event_reminder list option;  (** If the event doesn't use the default reminders, this lists the reminders specific to the event, or, if not set, indicates that no reminders are set for this event. The maximum number of override reminders is 5. *)
  use_default : bool option;  (** Whether the default reminders of the calendar apply to the event. *)
}

and event_source = {
  title : string option;  (** Title of the source; for example a title of a web page or an email subject. *)
  url : string option;  (** URL of the source pointing to a resource. The URL scheme must be HTTP or HTTPS. *)
}

and event = {
  anyone_can_add_self : bool option;  (** Whether anyone can invite themselves to the event (deprecated). Optional. The default is False. *)
  attachments : event_attachment list option;  (** File attachments for the event.
    In order to modify attachments the supportsAttachments request parameter should be set to true.
    There can be at most 25 attachments per event, *)
  attendees : event_attendee list option;  (** The attendees of the event. See the Events with attendees guide for more information on scheduling events with other calendar users. Service accounts need to use domain-wide delegation of authority to populate the attendee list. *)
  attendees_omitted : bool option;  (** Whether attendees may have been omitted from the event's representation. When retrieving an event, this may be due to a restriction specified by the maxAttendee query parameter. When updating an event, this can be used to only update the participant's response. Optional. The default is False. *)
  birthday_properties : event_birthday_properties option;  (** Birthday or special event data. Used if eventType is 'birthday'. Immutable. *)
  color_id : string option;  (** The color of the event. This is an ID referring to an entry in the event section of the colors definition (see the  colors endpoint). Optional. *)
  conference_data : conference_data option;  (** The conference-related information, such as details of a Google Meet conference. To create new conference details use the createRequest field. To persist your changes, remember to set the conferenceDataVersion request parameter to 1 for all event modification requests. Warning: Reusing Google Meet conference data across different events can cause access issues and expose meeting details to unintended users. To help ensure meeting privacy, always generate a unique conference for each event by using the createRequest field. *)
  created : string option;  (** Creation time of the event (as a RFC3339 timestamp). Read-only. *)
  creator : event_creator option;  (** The creator of the event. Read-only. *)
  description : string option;  (** Description of the event. Can contain HTML. Optional. *)
  end_ : event_date_time option;  (** The (exclusive) end time of the event. For a recurring event, this is the end time of the first instance. *)
  end_time_unspecified : bool option;  (** Whether the end time is actually unspecified. An end time is still provided for compatibility reasons, even if this attribute is set to True. The default is False. *)
  etag : string option;  (** ETag of the resource. *)
  event_label_id : string option;  (** The ID of the event label assigned to the event. Optional. This refers to the ID of an entry in the labelProperties.eventLabels property of the calendar (see the Calendars.get endpoint.)
    This property supersedes the index-based colorId property. To set or change this property, you need to specify eventLabelVersion=1 in the parameters of the insert, import, update, and patch methods.
    Setting an empty string, or not setting this field at all, will remove the existing label from the event. *)
  event_type : string option;  (** Specific type of the event. This cannot be modified after the event is created. Possible values are:
    - 'birthday' - A special all-day event with an annual recurrence.
    - 'default' - A regular event or not further specified.
    - 'focusTime' - A focus-time event.
    - 'fromGmail' - An event from Gmail. This type of event cannot be created.
    - 'outOfOffice' - An out-of-office event.
    - 'workingLocation' - A working location event. *)
  extended_properties : event_extended_properties option;  (** Extended properties of the event. *)
  focus_time_properties : event_focus_time_properties option;  (** Focus Time event data. Used if eventType is focusTime. *)
  gadget : event_gadget option;  (** A gadget that extends this event. Gadgets are deprecated; this structure is instead only used for returning birthday calendar metadata. *)
  guests_can_invite_others : bool option;  (** Whether attendees other than the organizer can invite others to the event. Optional. The default is True. *)
  guests_can_modify : bool option;  (** Whether attendees other than the organizer can modify the event. Optional. The default is False. *)
  guests_can_see_other_guests : bool option;  (** Whether attendees other than the organizer can see who the event's attendees are. Optional. The default is True. *)
  hangout_link : string option;  (** An absolute link to the Google Hangout associated with this event. Read-only. *)
  html_link : string option;  (** An absolute link to this event in the Google Calendar Web UI. Read-only. *)
  i_cal_uid : string option;  (** Event unique identifier as defined in RFC5545. It is used to uniquely identify events accross calendaring systems and must be supplied when importing events via the import method.
    Note that the iCalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same iCalUIDs. To retrieve an event using its iCalUID, call the events.list method using the iCalUID parameter. To retrieve an event using its id, call the events.get method. *)
  id : string option;  (** Opaque identifier of the event. When creating new single or recurring events, you can specify their IDs. Provided IDs must follow these rules:
    - characters allowed in the ID are those used in base32hex encoding, i.e. lowercase letters a-v and digits 0-9, see section 3.1.2 in RFC2938
    - the length of the ID must be between 5 and 1024 characters
    - the ID must be unique per calendar  Due to the globally distributed nature of the system, we cannot guarantee that ID collisions will be detected at event creation time. To minimize the risk of collisions we recommend using an established UUID algorithm such as one described in RFC4122.
    If you do not specify an ID, it will be automatically generated by the server.
    Note that the icalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same icalUIDs. *)
  kind : string option;  (** Type of the resource ('calendar#event'). *)
  location : string option;  (** Geographic location of the event as free-form text. Optional. *)
  locked : bool option;  (** Whether this is a locked event copy where no changes can be made to the main event fields 'summary', 'description', 'location', 'start', 'end' or 'recurrence'. The default is False. Read-Only. *)
  organizer : event_organizer option;  (** The organizer of the event. If the organizer is also an attendee, this is indicated with a separate entry in attendees with the organizer field set to True. To change the organizer, use the move operation. Read-only, except when importing an event. *)
  original_start_time : event_date_time option;  (** For an instance of a recurring event, this is the time at which this event would start according to the recurrence data in the recurring event identified by recurringEventId. It uniquely identifies the instance within the recurring event series even if the instance was moved to a different time. Immutable. *)
  out_of_office_properties : event_out_of_office_properties option;  (** Out of office event data. Used if eventType is outOfOffice. *)
  private_copy : bool option;  (** If set to True, Event propagation is disabled. Note that it is not the same thing as Private event properties. Optional. Immutable. The default is False. *)
  recurrence : string list option;  (** List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event, as specified in RFC5545. Note that DTSTART and DTEND lines are not allowed in this field; event start and end times are specified in the start and end fields. This field is omitted for single events or instances of recurring events. *)
  recurring_event_id : string option;  (** For an instance of a recurring event, this is the id of the recurring event to which this instance belongs. Immutable. *)
  reminders : event_reminders option;  (** Information about the event's reminders for the authenticated user. Note that changing reminders does not also change the updated property of the enclosing event. *)
  sequence : int option;  (** Sequence number as per iCalendar. *)
  source : event_source option;  (** Source from which the event was created. For example, a web page, an email message or any document identifiable by an URL with HTTP or HTTPS scheme. Can only be seen or modified by the creator of the event. *)
  start : event_date_time option;  (** The (inclusive) start time of the event. For a recurring event, this is the start time of the first instance. *)
  status : string option;  (** Status of the event. Optional. Possible values are:
    - 'confirmed' - The event is confirmed. This is the default status.
    - 'tentative' - The event is tentatively confirmed.
    - 'cancelled' - The event is cancelled (deleted). The list method returns cancelled events only on incremental sync (when syncToken or updatedMin are specified) or if the showDeleted flag is set to true. The get method always returns them.
    A cancelled status represents two different states depending on the event type:
    - Cancelled exceptions of an uncancelled recurring event indicate that this instance should no longer be presented to the user. Clients should store these events for the lifetime of the parent recurring event.
    Cancelled exceptions are only guaranteed to have values for the id, recurringEventId and originalStartTime fields populated. The other fields might be empty.
    - All other cancelled events represent deleted events. Clients should remove their locally synced copies. Such cancelled events will eventually disappear, so do not rely on them being available indefinitely.
    Deleted events are only guaranteed to have the id field populated.   On the organizer's calendar, cancelled events continue to expose event details (summary, location, etc.) so that they can be restored (undeleted). Similarly, the events to which the user was invited and that they manually removed continue to provide details. However, incremental sync requests with showDeleted set to false will not return these details.
    If an event changes its organizer (for example via the move operation) and the original organizer is not on the attendee list, it will leave behind a cancelled event where only the id field is guaranteed to be populated. *)
  summary : string option;  (** Title of the event. *)
  transparency : string option;  (** Whether the event blocks time on the calendar. Optional. Possible values are:
    - 'opaque' - Default value. The event does block time on the calendar. This is equivalent to setting Show me as to Busy in the Calendar UI.
    - 'transparent' - The event does not block time on the calendar. This is equivalent to setting Show me as to Available in the Calendar UI. *)
  updated : string option;  (** Last modification time of the main event data (as a RFC3339 timestamp). Updating event reminders will not cause this to change. Read-only. *)
  visibility : string option;  (** Visibility of the event. Optional. Possible values are:
    - 'default' - Uses the default visibility for events on the calendar. This is the default value.
    - 'public' - The event is public and event details are visible to all readers of the calendar.
    - 'private' - The event is private and only event attendees may view event details.
    - 'confidential' - The event is private. This value is provided for compatibility reasons.
    Note on recurring events: Changing the visibility of a single instance of a recurring event can affect all instances of the series. If the new setting is more restrictive (e.g. from public to private), it is applied to all instances. If the new setting is less restrictive (e.g. from private to public), the change is ignored. To make a recurring event less restrictive, you must update the parent recurring event. *)
  working_location_properties : event_working_location_properties option;  (** Working location event data. *)
}

and event_attachment = {
  file_id : string option;  (** ID of the attached file. Read-only.
    For Google Drive files, this is the ID of the corresponding Files resource entry in the Drive API. *)
  file_url : string option;  (** URL link to the attachment.
    For adding Google Drive file attachments use the same format as in alternateLink property of the Files resource in the Drive API.
    Required when adding an attachment. *)
  icon_link : string option;  (** URL link to the attachment's icon. This field can only be modified for custom third-party attachments. *)
  mime_type : string option;  (** Internet media type (MIME type) of the attachment. *)
  title : string option;  (** Attachment title. *)
}

and event_attendee = {
  additional_guests : int option;  (** Number of additional guests. Optional. The default is 0. *)
  async_operation : string option;  (** If present, indicates the status of an asynchronous operation ongoing for this attendee (e.g. listing of members of large attendee groups). Read-only. The default is to not be present.
    Possible values are:
    - 'inProgress' - The asynchronous operation is in progress.
    - (not present) - Otherwise. *)
  comment : string option;  (** The attendee's response comment. Optional. *)
  display_name : string option;  (** The attendee's name, if available. Optional. *)
  email : string option;  (** The attendee's email address, if available. This field must be present when adding an attendee. It must be a valid email address as per RFC5322.
    Required when adding an attendee. *)
  id : string option;  (** The attendee's Profile ID, if available. *)
  optional : bool option;  (** Whether this is an optional attendee. Optional. The default is False. *)
  organizer : bool option;  (** Whether the attendee is the organizer of the event. Read-only. The default is False. *)
  resource : bool option;  (** Whether the attendee is a resource. Can only be set when the attendee is added to the event for the first time. Subsequent modifications are ignored. Optional. The default is False. *)
  response_status : string option;  (** The attendee's response status. Possible values are:
    - 'needsAction' - The attendee has not responded to the invitation (recommended for new events).
    - 'declined' - The attendee has declined the invitation.
    - 'tentative' - The attendee has tentatively accepted the invitation.
    - 'accepted' - The attendee has accepted the invitation.  Warning: If you add an event using the values declined, tentative, or accepted, attendees with the 'Add invitations to my calendar' setting set to 'When I respond to invitation in email' or 'Only if the sender is known' might have their response reset to needsAction and won't see an event in their calendar unless they change their response in the event invitation email. Furthermore, if more than 200 guests are invited to the event, response status is not propagated to the guests. *)
  self : bool option;  (** Whether this entry represents the calendar on which this copy of the event appears. Read-only. The default is False. *)
}

and event_birthday_properties = {
  contact : string option;  (** Resource name of the contact this birthday event is linked to. This can be used to fetch contact details from People API. Format: 'people/c12345'. Read-only. *)
  custom_type_name : string option;  (** Custom type label specified for this event. This is populated if birthdayProperties.type is set to 'custom'. Read-only. *)
  type_ : string option;  (** Type of birthday or special event. Possible values are:
    - 'anniversary' - An anniversary other than birthday. Always has a contact.
    - 'birthday' - A birthday event. This is the default value.
    - 'custom' - A special date whose label is further specified in the customTypeName field. Always has a contact.
    - 'other' - A special date which does not fall into the other categories, and does not have a custom label. Always has a contact.
    - 'self' - Calendar owner's own birthday. Cannot have a contact.  The Calendar API only supports creating events with the type 'birthday'. The type cannot be changed after the event is created. *)
}

and event_date_time = {
  date : string option;  (** The date, in the format 'yyyy-mm-dd', if this is an all-day event. *)
  date_time : string option;  (** The time, as a combined date-time value (formatted according to RFC3339). A time zone offset is required unless a time zone is explicitly specified in timeZone. *)
  time_zone : string option;  (** The time zone in which the time is specified. (Formatted as an IANA Time Zone Database name, e.g. 'Europe/Zurich'.) For recurring events this field is required and specifies the time zone in which the recurrence is expanded. For single events this field is optional and indicates a custom time zone for the event start/end. *)
}

and event_focus_time_properties = {
  auto_decline_mode : string option;  (** Whether to decline meeting invitations which overlap Focus Time events. Valid values are declineNone, meaning that no meeting invitations are declined; declineAllConflictingInvitations, meaning that all conflicting meeting invitations that conflict with the event are declined; and declineOnlyNewConflictingInvitations, meaning that only new conflicting meeting invitations which arrive while the Focus Time event is present are to be declined. *)
  chat_status : string option;  (** The status to mark the user in Chat and related products. This can be available or doNotDisturb. *)
  decline_message : string option;  (** Response message to set if an existing event or new invitation is automatically declined by Calendar. *)
}

and event_label = {
  background_color : string option;  (** Background color of the label in hexadecimal format, such as '#039be5'. Events with this label are displayed in this color. Required. *)
  id : string option;  (** The ID of the label. Optional when inserting a new label. If not provided, a unique ID will be generated. Required when updating a label.
    If provided, the ID must be unique within the calendar and follow UUID format. *)
  name : string option;  (** Name of the label. Optional.
    If provided this must have at most 50 characters. *)
}

and event_out_of_office_properties = {
  auto_decline_mode : string option;  (** Whether to decline meeting invitations which overlap Out of office events. Valid values are declineNone, meaning that no meeting invitations are declined; declineAllConflictingInvitations, meaning that all conflicting meeting invitations that conflict with the event are declined; and declineOnlyNewConflictingInvitations, meaning that only new conflicting meeting invitations which arrive while the Out of office event is present are to be declined. *)
  decline_message : string option;  (** Response message to set if an existing event or new invitation is automatically declined by Calendar. *)
}

and event_reminder = {
  method_ : string option;  (** The method used by this reminder. Possible values are:
    - 'email' - Reminders are sent via email.
    - 'popup' - Reminders are sent via a UI popup.
    Required when adding a reminder. *)
  minutes : int option;  (** Number of minutes before the start of the event when the reminder should trigger. Valid values are between 0 and 40320 (4 weeks in minutes).
    Required when adding a reminder. *)
}

and event_working_location_properties_custom_location = {
  label : string option;  (** An optional extra label for additional information. *)
}

and event_working_location_properties_office_location = {
  building_id : string option;  (** An optional building identifier. This should reference a building ID in the organization's Resources database. *)
  desk_id : string option;  (** An optional desk identifier. *)
  floor_id : string option;  (** An optional floor identifier. *)
  floor_section_id : string option;  (** An optional floor section identifier. *)
  label : string option;  (** The office name that's displayed in Calendar Web and Mobile clients. We recommend you reference a building name in the organization's Resources database. *)
}

and event_working_location_properties = {
  custom_location : event_working_location_properties_custom_location option;  (** If present, specifies that the user is working from a custom location. *)
  home_office : Yojson.Safe.t option;  (** If present, specifies that the user is working at home. *)
  office_location : event_working_location_properties_office_location option;  (** If present, specifies that the user is working from an office. *)
  type_ : string option;  (** Type of the working location. Possible values are:
    - 'homeOffice' - The user is working at home.
    - 'officeLocation' - The user is working from an office.
    - 'customLocation' - The user is working from a custom location.  Any details are specified in a sub-field of the specified name, but this field may be missing if empty. Any other fields are ignored.
    Required when adding working location properties. *)
}

and events = {
  access_role : string option;  (** The user's access role for this calendar. Read-only. Possible values are:
    - 'none' - The user has no access.
    - 'freeBusyReader' - The user has read access to free/busy information.
    - 'reader' - The user has read access to the calendar. Private events will appear to users with reader access, but event details will be hidden.
    - 'writerWithoutPrivateAccess' - The user has read and write access to the calendar. Private events will appear to users with writerWithoutPrivateAccess access, but event details will be hidden.
    - 'writer' - The user has read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible.
    - 'owner' - The user has manager access to the calendar. This role has all of the permissions of the writer role with the additional ability to see and modify access levels of other users.
    Important: the owner role is different from the calendar's data owner. A calendar has a single data owner, but can have multiple users with owner role. *)
  default_reminders : event_reminder list option;  (** The default reminders on the calendar for the authenticated user. These reminders apply to all events on this calendar that do not explicitly override them (i.e. do not have reminders.useDefault set to True). *)
  description : string option;  (** Description of the calendar. Read-only. *)
  etag : string option;  (** ETag of the collection. *)
  items : event list option;  (** List of events on the calendar. *)
  kind : string option;  (** Type of the collection ('calendar#events'). *)
  next_page_token : string option;  (** Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided. *)
  next_sync_token : string option;  (** Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided. *)
  summary : string option;  (** Title of the calendar. Read-only. *)
  time_zone : string option;  (** The time zone of the calendar. Read-only. *)
  updated : string option;  (** Last modification time of the calendar (as a RFC3339 timestamp). Read-only. *)
}

and free_busy_calendar = {
  busy : time_period list option;  (** List of time ranges during which this calendar should be regarded as busy. *)
  errors : error list option;  (** Optional error(s) (if computation for the calendar failed). *)
}

and free_busy_group = {
  calendars : string list option;  (** List of calendars' identifiers within a group. *)
  errors : error list option;  (** Optional error(s) (if computation for the group failed). *)
}

and free_busy_request = {
  calendar_expansion_max : int option;  (** Maximal number of calendars for which FreeBusy information is to be provided. Optional. Maximum value is 50. *)
  group_expansion_max : int option;  (** Maximal number of calendar identifiers to be provided for a single group. Optional. An error is returned for a group with more members than this value. Maximum value is 100. *)
  items : free_busy_request_item list option;  (** List of calendars and/or groups to query. *)
  time_max : string option;  (** The end of the interval for the query formatted as per RFC3339. *)
  time_min : string option;  (** The start of the interval for the query formatted as per RFC3339. *)
  time_zone : string option;  (** Time zone used in the response. Optional. The default is UTC. *)
}

and free_busy_request_item = {
  id : string option;  (** The identifier of a calendar or a group. *)
}

and free_busy_response = {
  calendars : (string * free_busy_calendar) list option;  (** List of free/busy information for calendars. *)
  groups : (string * free_busy_group) list option;  (** Expansion of groups. *)
  kind : string option;  (** Type of the resource ('calendar#freeBusy'). *)
  time_max : string option;  (** The end of the interval. *)
  time_min : string option;  (** The start of the interval. *)
}

and label_properties = {
  event_labels : event_label list option;  (** Event labels defined on this calendar. If this is present when updating the calendar, it will replace the existing event labels.
    Extend the list to add a new event label, and remove entities from the list to delete a label from calendar.
    Each calendar can have a maximum of 200 labels. *)
}

and setting = {
  etag : string option;  (** ETag of the resource. *)
  id : string option;  (** The id of the user setting. *)
  kind : string option;  (** Type of the resource ('calendar#setting'). *)
  value : string option;  (** Value of the user setting. The format of the value depends on the ID of the setting. It must always be a UTF-8 string of length up to 1024 characters. *)
}

and settings = {
  etag : string option;  (** Etag of the collection. *)
  items : setting list option;  (** List of user settings. *)
  kind : string option;  (** Type of the collection ('calendar#settings'). *)
  next_page_token : string option;  (** Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided. *)
  next_sync_token : string option;  (** Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided. *)
}

and time_period = {
  end_ : string option;  (** The (exclusive) end of the time period. *)
  start : string option;  (** The (inclusive) start of the time period. *)
}

val acl_of_yojson : Yojson.Safe.t -> acl
val yojson_of_acl : acl -> Yojson.Safe.t

val make_acl :
  ?etag:string ->
  ?items:acl_rule list ->
  ?kind:string ->
  ?next_page_token:string ->
  ?next_sync_token:string ->
  unit ->
  acl

val acl_rule_scope_of_yojson : Yojson.Safe.t -> acl_rule_scope
val yojson_of_acl_rule_scope : acl_rule_scope -> Yojson.Safe.t

val make_acl_rule_scope :
  ?type_:string ->
  ?value:string ->
  unit ->
  acl_rule_scope

val acl_rule_of_yojson : Yojson.Safe.t -> acl_rule
val yojson_of_acl_rule : acl_rule -> Yojson.Safe.t

val make_acl_rule :
  ?etag:string ->
  ?id:string ->
  ?kind:string ->
  ?role:string ->
  ?scope:acl_rule_scope ->
  unit ->
  acl_rule

val calendar_of_yojson : Yojson.Safe.t -> calendar
val yojson_of_calendar : calendar -> Yojson.Safe.t

val make_calendar :
  ?auto_accept_invitations:bool ->
  ?conference_properties:conference_properties ->
  ?data_owner:string ->
  ?description:string ->
  ?etag:string ->
  ?id:string ->
  ?kind:string ->
  ?label_properties:label_properties ->
  ?location:string ->
  ?summary:string ->
  ?time_zone:string ->
  unit ->
  calendar

val calendar_list_of_yojson : Yojson.Safe.t -> calendar_list
val yojson_of_calendar_list : calendar_list -> Yojson.Safe.t

val make_calendar_list :
  ?etag:string ->
  ?items:calendar_list_entry list ->
  ?kind:string ->
  ?next_page_token:string ->
  ?next_sync_token:string ->
  unit ->
  calendar_list

val calendar_list_entry_notification_settings_of_yojson : Yojson.Safe.t -> calendar_list_entry_notification_settings
val yojson_of_calendar_list_entry_notification_settings : calendar_list_entry_notification_settings -> Yojson.Safe.t

val make_calendar_list_entry_notification_settings :
  ?notifications:calendar_notification list ->
  unit ->
  calendar_list_entry_notification_settings

val calendar_list_entry_of_yojson : Yojson.Safe.t -> calendar_list_entry
val yojson_of_calendar_list_entry : calendar_list_entry -> Yojson.Safe.t

val make_calendar_list_entry :
  ?access_role:string ->
  ?auto_accept_invitations:bool ->
  ?background_color:string ->
  ?color_id:string ->
  ?conference_properties:conference_properties ->
  ?data_owner:string ->
  ?default_reminders:event_reminder list ->
  ?deleted:bool ->
  ?description:string ->
  ?etag:string ->
  ?foreground_color:string ->
  ?hidden:bool ->
  ?id:string ->
  ?kind:string ->
  ?location:string ->
  ?notification_settings:calendar_list_entry_notification_settings ->
  ?primary:bool ->
  ?selected:bool ->
  ?summary:string ->
  ?summary_override:string ->
  ?time_zone:string ->
  unit ->
  calendar_list_entry

val calendar_notification_of_yojson : Yojson.Safe.t -> calendar_notification
val yojson_of_calendar_notification : calendar_notification -> Yojson.Safe.t

val make_calendar_notification :
  ?method_:string ->
  ?type_:string ->
  unit ->
  calendar_notification

val channel_of_yojson : Yojson.Safe.t -> channel
val yojson_of_channel : channel -> Yojson.Safe.t

val make_channel :
  ?address:string ->
  ?expiration:string ->
  ?id:string ->
  ?kind:string ->
  ?params:(string * string) list ->
  ?payload:bool ->
  ?resource_id:string ->
  ?resource_uri:string ->
  ?token:string ->
  ?type_:string ->
  unit ->
  channel

val color_definition_of_yojson : Yojson.Safe.t -> color_definition
val yojson_of_color_definition : color_definition -> Yojson.Safe.t

val make_color_definition :
  ?background:string ->
  ?foreground:string ->
  unit ->
  color_definition

val colors_of_yojson : Yojson.Safe.t -> colors
val yojson_of_colors : colors -> Yojson.Safe.t

val make_colors :
  ?calendar:(string * color_definition) list ->
  ?event:(string * color_definition) list ->
  ?kind:string ->
  ?updated:string ->
  unit ->
  colors

val conference_data_of_yojson : Yojson.Safe.t -> conference_data
val yojson_of_conference_data : conference_data -> Yojson.Safe.t

val make_conference_data :
  ?conference_id:string ->
  ?conference_solution:conference_solution ->
  ?create_request:create_conference_request ->
  ?entry_points:entry_point list ->
  ?notes:string ->
  ?parameters:conference_parameters ->
  ?signature:string ->
  unit ->
  conference_data

val conference_parameters_of_yojson : Yojson.Safe.t -> conference_parameters
val yojson_of_conference_parameters : conference_parameters -> Yojson.Safe.t

val make_conference_parameters :
  ?add_on_parameters:conference_parameters_add_on_parameters ->
  unit ->
  conference_parameters

val conference_parameters_add_on_parameters_of_yojson : Yojson.Safe.t -> conference_parameters_add_on_parameters
val yojson_of_conference_parameters_add_on_parameters : conference_parameters_add_on_parameters -> Yojson.Safe.t

val make_conference_parameters_add_on_parameters :
  ?parameters:(string * string) list ->
  unit ->
  conference_parameters_add_on_parameters

val conference_properties_of_yojson : Yojson.Safe.t -> conference_properties
val yojson_of_conference_properties : conference_properties -> Yojson.Safe.t

val make_conference_properties :
  ?allowed_conference_solution_types:string list ->
  unit ->
  conference_properties

val conference_request_status_of_yojson : Yojson.Safe.t -> conference_request_status
val yojson_of_conference_request_status : conference_request_status -> Yojson.Safe.t

val make_conference_request_status :
  ?status_code:string ->
  unit ->
  conference_request_status

val conference_solution_of_yojson : Yojson.Safe.t -> conference_solution
val yojson_of_conference_solution : conference_solution -> Yojson.Safe.t

val make_conference_solution :
  ?icon_uri:string ->
  ?key:conference_solution_key ->
  ?name:string ->
  unit ->
  conference_solution

val conference_solution_key_of_yojson : Yojson.Safe.t -> conference_solution_key
val yojson_of_conference_solution_key : conference_solution_key -> Yojson.Safe.t

val make_conference_solution_key :
  ?type_:string ->
  unit ->
  conference_solution_key

val create_conference_request_of_yojson : Yojson.Safe.t -> create_conference_request
val yojson_of_create_conference_request : create_conference_request -> Yojson.Safe.t

val make_create_conference_request :
  ?conference_solution_key:conference_solution_key ->
  ?request_id:string ->
  ?status:conference_request_status ->
  unit ->
  create_conference_request

val entry_point_of_yojson : Yojson.Safe.t -> entry_point
val yojson_of_entry_point : entry_point -> Yojson.Safe.t

val make_entry_point :
  ?access_code:string ->
  ?entry_point_features:string list ->
  ?entry_point_type:string ->
  ?label:string ->
  ?meeting_code:string ->
  ?passcode:string ->
  ?password:string ->
  ?pin:string ->
  ?region_code:string ->
  ?uri:string ->
  unit ->
  entry_point

val error_of_yojson : Yojson.Safe.t -> error
val yojson_of_error : error -> Yojson.Safe.t

val make_error :
  ?domain:string ->
  ?reason:string ->
  unit ->
  error

val event_creator_of_yojson : Yojson.Safe.t -> event_creator
val yojson_of_event_creator : event_creator -> Yojson.Safe.t

val make_event_creator :
  ?display_name:string ->
  ?email:string ->
  ?id:string ->
  ?self:bool ->
  unit ->
  event_creator

val event_extended_properties_of_yojson : Yojson.Safe.t -> event_extended_properties
val yojson_of_event_extended_properties : event_extended_properties -> Yojson.Safe.t

val make_event_extended_properties :
  ?private_:(string * string) list ->
  ?shared:(string * string) list ->
  unit ->
  event_extended_properties

val event_gadget_of_yojson : Yojson.Safe.t -> event_gadget
val yojson_of_event_gadget : event_gadget -> Yojson.Safe.t

val make_event_gadget :
  ?display:string ->
  ?height:int ->
  ?icon_link:string ->
  ?link:string ->
  ?preferences:(string * string) list ->
  ?title:string ->
  ?type_:string ->
  ?width:int ->
  unit ->
  event_gadget

val event_organizer_of_yojson : Yojson.Safe.t -> event_organizer
val yojson_of_event_organizer : event_organizer -> Yojson.Safe.t

val make_event_organizer :
  ?display_name:string ->
  ?email:string ->
  ?id:string ->
  ?self:bool ->
  unit ->
  event_organizer

val event_reminders_of_yojson : Yojson.Safe.t -> event_reminders
val yojson_of_event_reminders : event_reminders -> Yojson.Safe.t

val make_event_reminders :
  ?overrides:event_reminder list ->
  ?use_default:bool ->
  unit ->
  event_reminders

val event_source_of_yojson : Yojson.Safe.t -> event_source
val yojson_of_event_source : event_source -> Yojson.Safe.t

val make_event_source :
  ?title:string ->
  ?url:string ->
  unit ->
  event_source

val event_of_yojson : Yojson.Safe.t -> event
val yojson_of_event : event -> Yojson.Safe.t

val make_event :
  ?anyone_can_add_self:bool ->
  ?attachments:event_attachment list ->
  ?attendees:event_attendee list ->
  ?attendees_omitted:bool ->
  ?birthday_properties:event_birthday_properties ->
  ?color_id:string ->
  ?conference_data:conference_data ->
  ?created:string ->
  ?creator:event_creator ->
  ?description:string ->
  ?end_:event_date_time ->
  ?end_time_unspecified:bool ->
  ?etag:string ->
  ?event_label_id:string ->
  ?event_type:string ->
  ?extended_properties:event_extended_properties ->
  ?focus_time_properties:event_focus_time_properties ->
  ?gadget:event_gadget ->
  ?guests_can_invite_others:bool ->
  ?guests_can_modify:bool ->
  ?guests_can_see_other_guests:bool ->
  ?hangout_link:string ->
  ?html_link:string ->
  ?i_cal_uid:string ->
  ?id:string ->
  ?kind:string ->
  ?location:string ->
  ?locked:bool ->
  ?organizer:event_organizer ->
  ?original_start_time:event_date_time ->
  ?out_of_office_properties:event_out_of_office_properties ->
  ?private_copy:bool ->
  ?recurrence:string list ->
  ?recurring_event_id:string ->
  ?reminders:event_reminders ->
  ?sequence:int ->
  ?source:event_source ->
  ?start:event_date_time ->
  ?status:string ->
  ?summary:string ->
  ?transparency:string ->
  ?updated:string ->
  ?visibility:string ->
  ?working_location_properties:event_working_location_properties ->
  unit ->
  event

val event_attachment_of_yojson : Yojson.Safe.t -> event_attachment
val yojson_of_event_attachment : event_attachment -> Yojson.Safe.t

val make_event_attachment :
  ?file_id:string ->
  ?file_url:string ->
  ?icon_link:string ->
  ?mime_type:string ->
  ?title:string ->
  unit ->
  event_attachment

val event_attendee_of_yojson : Yojson.Safe.t -> event_attendee
val yojson_of_event_attendee : event_attendee -> Yojson.Safe.t

val make_event_attendee :
  ?additional_guests:int ->
  ?async_operation:string ->
  ?comment:string ->
  ?display_name:string ->
  ?email:string ->
  ?id:string ->
  ?optional:bool ->
  ?organizer:bool ->
  ?resource:bool ->
  ?response_status:string ->
  ?self:bool ->
  unit ->
  event_attendee

val event_birthday_properties_of_yojson : Yojson.Safe.t -> event_birthday_properties
val yojson_of_event_birthday_properties : event_birthday_properties -> Yojson.Safe.t

val make_event_birthday_properties :
  ?contact:string ->
  ?custom_type_name:string ->
  ?type_:string ->
  unit ->
  event_birthday_properties

val event_date_time_of_yojson : Yojson.Safe.t -> event_date_time
val yojson_of_event_date_time : event_date_time -> Yojson.Safe.t

val make_event_date_time :
  ?date:string ->
  ?date_time:string ->
  ?time_zone:string ->
  unit ->
  event_date_time

val event_focus_time_properties_of_yojson : Yojson.Safe.t -> event_focus_time_properties
val yojson_of_event_focus_time_properties : event_focus_time_properties -> Yojson.Safe.t

val make_event_focus_time_properties :
  ?auto_decline_mode:string ->
  ?chat_status:string ->
  ?decline_message:string ->
  unit ->
  event_focus_time_properties

val event_label_of_yojson : Yojson.Safe.t -> event_label
val yojson_of_event_label : event_label -> Yojson.Safe.t

val make_event_label :
  ?background_color:string ->
  ?id:string ->
  ?name:string ->
  unit ->
  event_label

val event_out_of_office_properties_of_yojson : Yojson.Safe.t -> event_out_of_office_properties
val yojson_of_event_out_of_office_properties : event_out_of_office_properties -> Yojson.Safe.t

val make_event_out_of_office_properties :
  ?auto_decline_mode:string ->
  ?decline_message:string ->
  unit ->
  event_out_of_office_properties

val event_reminder_of_yojson : Yojson.Safe.t -> event_reminder
val yojson_of_event_reminder : event_reminder -> Yojson.Safe.t

val make_event_reminder :
  ?method_:string ->
  ?minutes:int ->
  unit ->
  event_reminder

val event_working_location_properties_custom_location_of_yojson : Yojson.Safe.t -> event_working_location_properties_custom_location
val yojson_of_event_working_location_properties_custom_location : event_working_location_properties_custom_location -> Yojson.Safe.t

val make_event_working_location_properties_custom_location :
  ?label:string ->
  unit ->
  event_working_location_properties_custom_location

val event_working_location_properties_office_location_of_yojson : Yojson.Safe.t -> event_working_location_properties_office_location
val yojson_of_event_working_location_properties_office_location : event_working_location_properties_office_location -> Yojson.Safe.t

val make_event_working_location_properties_office_location :
  ?building_id:string ->
  ?desk_id:string ->
  ?floor_id:string ->
  ?floor_section_id:string ->
  ?label:string ->
  unit ->
  event_working_location_properties_office_location

val event_working_location_properties_of_yojson : Yojson.Safe.t -> event_working_location_properties
val yojson_of_event_working_location_properties : event_working_location_properties -> Yojson.Safe.t

val make_event_working_location_properties :
  ?custom_location:event_working_location_properties_custom_location ->
  ?home_office:Yojson.Safe.t ->
  ?office_location:event_working_location_properties_office_location ->
  ?type_:string ->
  unit ->
  event_working_location_properties

val events_of_yojson : Yojson.Safe.t -> events
val yojson_of_events : events -> Yojson.Safe.t

val make_events :
  ?access_role:string ->
  ?default_reminders:event_reminder list ->
  ?description:string ->
  ?etag:string ->
  ?items:event list ->
  ?kind:string ->
  ?next_page_token:string ->
  ?next_sync_token:string ->
  ?summary:string ->
  ?time_zone:string ->
  ?updated:string ->
  unit ->
  events

val free_busy_calendar_of_yojson : Yojson.Safe.t -> free_busy_calendar
val yojson_of_free_busy_calendar : free_busy_calendar -> Yojson.Safe.t

val make_free_busy_calendar :
  ?busy:time_period list ->
  ?errors:error list ->
  unit ->
  free_busy_calendar

val free_busy_group_of_yojson : Yojson.Safe.t -> free_busy_group
val yojson_of_free_busy_group : free_busy_group -> Yojson.Safe.t

val make_free_busy_group :
  ?calendars:string list ->
  ?errors:error list ->
  unit ->
  free_busy_group

val free_busy_request_of_yojson : Yojson.Safe.t -> free_busy_request
val yojson_of_free_busy_request : free_busy_request -> Yojson.Safe.t

val make_free_busy_request :
  ?calendar_expansion_max:int ->
  ?group_expansion_max:int ->
  ?items:free_busy_request_item list ->
  ?time_max:string ->
  ?time_min:string ->
  ?time_zone:string ->
  unit ->
  free_busy_request

val free_busy_request_item_of_yojson : Yojson.Safe.t -> free_busy_request_item
val yojson_of_free_busy_request_item : free_busy_request_item -> Yojson.Safe.t

val make_free_busy_request_item :
  ?id:string ->
  unit ->
  free_busy_request_item

val free_busy_response_of_yojson : Yojson.Safe.t -> free_busy_response
val yojson_of_free_busy_response : free_busy_response -> Yojson.Safe.t

val make_free_busy_response :
  ?calendars:(string * free_busy_calendar) list ->
  ?groups:(string * free_busy_group) list ->
  ?kind:string ->
  ?time_max:string ->
  ?time_min:string ->
  unit ->
  free_busy_response

val label_properties_of_yojson : Yojson.Safe.t -> label_properties
val yojson_of_label_properties : label_properties -> Yojson.Safe.t

val make_label_properties :
  ?event_labels:event_label list ->
  unit ->
  label_properties

val setting_of_yojson : Yojson.Safe.t -> setting
val yojson_of_setting : setting -> Yojson.Safe.t

val make_setting :
  ?etag:string ->
  ?id:string ->
  ?kind:string ->
  ?value:string ->
  unit ->
  setting

val settings_of_yojson : Yojson.Safe.t -> settings
val yojson_of_settings : settings -> Yojson.Safe.t

val make_settings :
  ?etag:string ->
  ?items:setting list ->
  ?kind:string ->
  ?next_page_token:string ->
  ?next_sync_token:string ->
  unit ->
  settings

val time_period_of_yojson : Yojson.Safe.t -> time_period
val yojson_of_time_period : time_period -> Yojson.Safe.t

val make_time_period :
  ?end_:string ->
  ?start:string ->
  unit ->
  time_period

val base_url : string
val batch_endpoint : Uri.t

val batch :
  access_token:string ->
  'a Google_api.Call.t list ->
  (('a, Google_api.Error.t) result list, Google_api.Error.t) result
(** {!Google_api.Batch.execute} on {!batch_endpoint}. *)

module Acl : sig
  val delete :
    calendar_id:string ->
    rule_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes an access control rule.

      [DELETE calendars/{calendarId}/acl/{ruleId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [rule_id]: ACL rule identifier. *)

  val get :
    calendar_id:string ->
    rule_id:string ->
    unit ->
    acl_rule Google_api.Call.t
  (** Returns an access control rule.

      [GET calendars/{calendarId}/acl/{ruleId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [rule_id]: ACL rule identifier. *)

  val insert :
    calendar_id:string ->
    body:acl_rule ->
    ?send_notifications:bool ->
    unit ->
    acl_rule Google_api.Call.t
  (** Creates an access control rule.

      [POST calendars/{calendarId}/acl]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [send_notifications]: Whether to send notifications about the calendar sharing change. Optional. The default is True. *)

  val list :
    calendar_id:string ->
    ?max_results:int ->
    ?page_token:string ->
    ?show_deleted:bool ->
    ?sync_token:string ->
    unit ->
    acl Google_api.Call.t
  (** Returns the rules in the access control list for the calendar.

      [GET calendars/{calendarId}/acl]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [max_results]: Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
      - [page_token]: Token specifying which result page to return. Optional.
      - [show_deleted]: Whether to include deleted ACLs in the result. Deleted ACLs are represented by role equal to 'none'. Deleted ACLs will always be included if syncToken is provided. Optional. The default is False.
      - [sync_token]: Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All entries deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False.
      If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.
      Learn more about incremental synchronization.
      Optional. The default is to return all entries. *)

  val patch :
    calendar_id:string ->
    rule_id:string ->
    body:acl_rule ->
    ?send_notifications:bool ->
    unit ->
    acl_rule Google_api.Call.t
  (** Updates an access control rule. This method supports patch semantics.

      [PATCH calendars/{calendarId}/acl/{ruleId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [rule_id]: ACL rule identifier.
      - [send_notifications]: Whether to send notifications about the calendar sharing change. Note that there are no notifications on access removal. Optional. The default is True. *)

  val update :
    calendar_id:string ->
    rule_id:string ->
    body:acl_rule ->
    ?send_notifications:bool ->
    unit ->
    acl_rule Google_api.Call.t
  (** Updates an access control rule.

      [PUT calendars/{calendarId}/acl/{ruleId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [rule_id]: ACL rule identifier.
      - [send_notifications]: Whether to send notifications about the calendar sharing change. Note that there are no notifications on access removal. Optional. The default is True. *)

  val watch :
    calendar_id:string ->
    body:channel ->
    ?max_results:int ->
    ?page_token:string ->
    ?show_deleted:bool ->
    ?sync_token:string ->
    unit ->
    channel Google_api.Call.t
  (** Watch for changes to ACL resources.

      [POST calendars/{calendarId}/acl/watch]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [max_results]: Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
      - [page_token]: Token specifying which result page to return. Optional.
      - [show_deleted]: Whether to include deleted ACLs in the result. Deleted ACLs are represented by role equal to 'none'. Deleted ACLs will always be included if syncToken is provided. Optional. The default is False.
      - [sync_token]: Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All entries deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False.
      If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.
      Learn more about incremental synchronization.
      Optional. The default is to return all entries. *)
end

module Calendar_list : sig
  val delete :
    calendar_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Removes a calendar from the user's calendar list.

      [DELETE users/me/calendarList/{calendarId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword. *)

  val get :
    calendar_id:string ->
    unit ->
    calendar_list_entry Google_api.Call.t
  (** Returns a calendar from the user's calendar list.

      [GET users/me/calendarList/{calendarId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword. *)

  val insert :
    body:calendar_list_entry ->
    ?color_rgb_format:bool ->
    unit ->
    calendar_list_entry Google_api.Call.t
  (** Inserts an existing calendar into the user's calendar list.

      [POST users/me/calendarList]

      - [color_rgb_format]: Whether to use the foregroundColor and backgroundColor fields to write the calendar colors (RGB). If this feature is used, the index-based colorId field will be set to the best matching option automatically. Optional. The default is False. *)

  val list :
    ?max_results:int ->
    ?min_access_role:[ `Free_busy_reader | `Owner | `Reader | `Writer | `Writer_without_private_access | `Unrecognized of string ] ->
    ?page_token:string ->
    ?show_deleted:bool ->
    ?show_hidden:bool ->
    ?show_own_organization_only:bool ->
    ?sync_token:string ->
    unit ->
    calendar_list Google_api.Call.t
  (** Returns the calendars on the user's calendar list.

      [GET users/me/calendarList]

      - [max_results]: Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
      - [min_access_role]: The minimum access role for the user in the returned entries. Optional. The default is no restriction.
      - [page_token]: Token specifying which result page to return. Optional.
      - [show_deleted]: Whether to include deleted calendar list entries in the result. Optional. The default is False.
      - [show_hidden]: Whether to show hidden entries. Optional. The default is False.
      - [show_own_organization_only]: Whether to show only entries for calendars from the organization. This parameter is only applicable to Google Workspace users. Optional. The default is False.
      - [sync_token]: Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. If only read-only fields such as calendar properties or ACLs have changed, the entry won't be returned. All entries deleted and hidden since the previous list request will always be in the result set and it is not allowed to set showDeleted neither showHidden to False.
      To ensure client state consistency minAccessRole and showOwnOrganizationOnly query parameters cannot be specified together with nextSyncToken.
      If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.
      Learn more about incremental synchronization.
      Optional. The default is to return all entries. *)

  val patch :
    calendar_id:string ->
    body:calendar_list_entry ->
    ?color_rgb_format:bool ->
    unit ->
    calendar_list_entry Google_api.Call.t
  (** Updates an existing calendar on the user's calendar list. This method supports patch semantics.

      [PATCH users/me/calendarList/{calendarId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [color_rgb_format]: Whether to use the foregroundColor and backgroundColor fields to write the calendar colors (RGB). If this feature is used, the index-based colorId field will be set to the best matching option automatically. Optional. The default is False. *)

  val update :
    calendar_id:string ->
    body:calendar_list_entry ->
    ?color_rgb_format:bool ->
    unit ->
    calendar_list_entry Google_api.Call.t
  (** Updates an existing calendar on the user's calendar list.

      [PUT users/me/calendarList/{calendarId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [color_rgb_format]: Whether to use the foregroundColor and backgroundColor fields to write the calendar colors (RGB). If this feature is used, the index-based colorId field will be set to the best matching option automatically. Optional. The default is False. *)

  val watch :
    body:channel ->
    ?max_results:int ->
    ?min_access_role:[ `Free_busy_reader | `Owner | `Reader | `Writer | `Writer_without_private_access | `Unrecognized of string ] ->
    ?page_token:string ->
    ?show_deleted:bool ->
    ?show_hidden:bool ->
    ?show_own_organization_only:bool ->
    ?sync_token:string ->
    unit ->
    channel Google_api.Call.t
  (** Watch for changes to CalendarList resources.

      [POST users/me/calendarList/watch]

      - [max_results]: Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
      - [min_access_role]: The minimum access role for the user in the returned entries. Optional. The default is no restriction.
      - [page_token]: Token specifying which result page to return. Optional.
      - [show_deleted]: Whether to include deleted calendar list entries in the result. Optional. The default is False.
      - [show_hidden]: Whether to show hidden entries. Optional. The default is False.
      - [show_own_organization_only]: Whether to show only entries for calendars from the organization. This parameter is only applicable to Google Workspace users. Optional. The default is False.
      - [sync_token]: Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. If only read-only fields such as calendar properties or ACLs have changed, the entry won't be returned. All entries deleted and hidden since the previous list request will always be in the result set and it is not allowed to set showDeleted neither showHidden to False.
      To ensure client state consistency minAccessRole and showOwnOrganizationOnly query parameters cannot be specified together with nextSyncToken.
      If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.
      Learn more about incremental synchronization.
      Optional. The default is to return all entries. *)
end

module Calendars : sig
  val clear :
    calendar_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Clears a primary calendar. This operation deletes all events associated with the primary calendar of an account.

      [POST calendars/{calendarId}/clear]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword. *)

  val delete :
    calendar_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes a secondary calendar. Use calendars.clear for clearing all events on primary calendars.

      [DELETE calendars/{calendarId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword. *)

  val get :
    calendar_id:string ->
    unit ->
    calendar Google_api.Call.t
  (** Returns metadata for a calendar.

      [GET calendars/{calendarId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword. *)

  val insert :
    body:calendar ->
    unit ->
    calendar Google_api.Call.t
  (** Creates a secondary calendar.
      The authenticated user for the request is made the data owner of the new calendar.

      Note: We recommend to authenticate as the intended data owner of the calendar. You can use domain-wide delegation of authority to allow applications to act on behalf of a specific user. Don't use a service account for authentication. If you use a service account for authentication, the service account is the data owner, which can lead to unexpected behavior. For example, if a service account is the data owner, data ownership cannot be transferred.

      [POST calendars] *)

  val patch :
    calendar_id:string ->
    body:calendar ->
    unit ->
    calendar Google_api.Call.t
  (** Updates metadata for a calendar. This method supports patch semantics.

      [PATCH calendars/{calendarId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword. *)

  val transfer_ownership :
    calendar_id:string ->
    new_data_owner:string ->
    use_admin_access:bool ->
    unit ->
    unit Google_api.Call.t
  (** Transfers a secondary calendar between users within a Google Workspace organization. Requires user authentication with Manage Calendars administrator privilege, and one of the following authorization scopes:
      - https://www.googleapis.com/auth/calendar
      - https://www.googleapis.com/auth/calendar.calendars In the request, set useAdminAccess to true. The secondary calendar must be active to be transferred. Transferring disabled or deleted calendars isn't supported.

      [POST calendars/{calendarId}/transferOwnership]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs, call the calendarList.list method.
      - [new_data_owner]: The email address of a user who will become the data owner of the calendar.
      - [use_admin_access]: When true, the method runs using the user's Google Workspace administrator privileges. The calling user must be a Google Workspace administrator with the Manage Calendars privilege. This method currently only supports admin access, thus only true is accepted for this field. *)

  val update :
    calendar_id:string ->
    body:calendar ->
    unit ->
    calendar Google_api.Call.t
  (** Updates metadata for a calendar.

      [PUT calendars/{calendarId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword. *)
end

module Channels : sig
  val stop :
    body:channel ->
    unit ->
    unit Google_api.Call.t
  (** Stop watching resources through this channel

      [POST channels/stop] *)
end

module Colors : sig
  val get :
    unit ->
    colors Google_api.Call.t
  (** Returns the color definitions for calendars and events.

      [GET colors] *)
end

module Events : sig
  val delete :
    calendar_id:string ->
    event_id:string ->
    ?send_notifications:bool ->
    ?send_updates:[ `All | `External_only | `None | `Unrecognized of string ] ->
    unit ->
    unit Google_api.Call.t
  (** Deletes an event.

      [DELETE calendars/{calendarId}/events/{eventId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [event_id]: Event identifier.
      - [send_notifications]: Deprecated. Please use sendUpdates instead.

      Whether to send notifications about the deletion of the event. Note that some emails might still be sent even if you set the value to false. The default is false.
      - [send_updates]: Guests who should receive notifications about the deletion of the event. *)

  val get :
    calendar_id:string ->
    event_id:string ->
    ?always_include_email:bool ->
    ?max_attendees:int ->
    ?time_zone:string ->
    unit ->
    event Google_api.Call.t
  (** Returns an event based on its Google Calendar ID. To retrieve an event using its iCalendar ID, call the events.list method using the iCalUID parameter.

      [GET calendars/{calendarId}/events/{eventId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [event_id]: Event identifier.
      - [always_include_email]: Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).
      - [max_attendees]: The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
      - [time_zone]: Time zone used in the response. Optional. The default is the time zone of the calendar. *)

  val import :
    calendar_id:string ->
    body:event ->
    ?conference_data_version:int ->
    ?event_label_version:int ->
    ?supports_attachments:bool ->
    unit ->
    event Google_api.Call.t
  (** Imports an event. This operation is used to add a private copy of an existing event to a calendar. Only events with an eventType of default may be imported.
      Deprecated behavior: If a non-default event is imported, its type will be changed to default and any event-type-specific properties it may have will be dropped.

      [POST calendars/{calendarId}/events/import]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [conference_data_version]: Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignores conference data in the event's body. Version 1 enables support for copying of ConferenceData as well as for creating new conferences using the createRequest field of conferenceData. The default is 0.
      - [event_label_version]: Version number of the event label feature supported by the API client. Version 0 assumes no event label support and processes the colorId field for color management. Version 1 enables support for event labels, and processes the eventLabelId in the event's body. In this case, the colorId field is ignored. The default is 0.
      - [supports_attachments]: Whether API client performing operation supports event attachments. Optional. The default is False. *)

  val insert :
    calendar_id:string ->
    body:event ->
    ?conference_data_version:int ->
    ?event_label_version:int ->
    ?max_attendees:int ->
    ?send_notifications:bool ->
    ?send_updates:[ `All | `External_only | `None | `Unrecognized of string ] ->
    ?supports_attachments:bool ->
    unit ->
    event Google_api.Call.t
  (** Creates an event.

      [POST calendars/{calendarId}/events]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [conference_data_version]: Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignores conference data in the event's body. Version 1 enables support for copying of ConferenceData as well as for creating new conferences using the createRequest field of conferenceData. The default is 0.
      - [event_label_version]: Version number of the event label feature supported by the API client. Version 0 assumes no event label support and processes the colorId field for color management. Version 1 enables support for event labels, and processes the eventLabelId in the event's body. In this case, the colorId field is ignored. The default is 0.
      - [max_attendees]: The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
      - [send_notifications]: Deprecated. Please use sendUpdates instead.

      Whether to send notifications about the creation of the new event. Note that some emails might still be sent even if you set the value to false. The default is false.
      - [send_updates]: Whether to send notifications about the creation of the new event. Note that some emails might still be sent. The default is false.
      - [supports_attachments]: Whether API client performing operation supports event attachments. Optional. The default is False. *)

  val instances :
    calendar_id:string ->
    event_id:string ->
    ?always_include_email:bool ->
    ?max_attendees:int ->
    ?max_results:int ->
    ?original_start:string ->
    ?page_token:string ->
    ?show_deleted:bool ->
    ?time_max:string ->
    ?time_min:string ->
    ?time_zone:string ->
    unit ->
    events Google_api.Call.t
  (** Returns instances of the specified recurring event.

      [GET calendars/{calendarId}/events/{eventId}/instances]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [event_id]: Recurring event identifier.
      - [always_include_email]: Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).
      - [max_attendees]: The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
      - [max_results]: Maximum number of events returned on one result page. By default the value is 250 events. The page size can never be larger than 2500 events. Optional.
      - [original_start]: The original start time of the instance in the result. Optional.
      - [page_token]: Token specifying which result page to return. Optional.
      - [show_deleted]: Whether to include deleted events (with status equals 'cancelled') in the result. Cancelled instances of recurring events will still be included if singleEvents is False. Optional. The default is False.
      - [time_max]: Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time. Must be an RFC3339 timestamp with mandatory time zone offset.
      - [time_min]: Lower bound (inclusive) for an event's end time to filter by. Optional. The default is not to filter by end time. Must be an RFC3339 timestamp with mandatory time zone offset.
      - [time_zone]: Time zone used in the response. Optional. The default is the time zone of the calendar. *)

  val list :
    calendar_id:string ->
    ?always_include_email:bool ->
    ?event_types:[ `Birthday | `Default | `Focus_time | `From_gmail | `Out_of_office | `Working_location | `Unrecognized of string ] list ->
    ?i_cal_uid:string ->
    ?max_attendees:int ->
    ?max_results:int ->
    ?order_by:[ `Start_time | `Updated | `Unrecognized of string ] ->
    ?page_token:string ->
    ?private_extended_property:string list ->
    ?q:string ->
    ?shared_extended_property:string list ->
    ?show_deleted:bool ->
    ?show_hidden_invitations:bool ->
    ?single_events:bool ->
    ?sync_token:string ->
    ?time_max:string ->
    ?time_min:string ->
    ?time_zone:string ->
    ?updated_min:string ->
    unit ->
    events Google_api.Call.t
  (** Returns events on the specified calendar.

      [GET calendars/{calendarId}/events]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [always_include_email]: Deprecated and ignored.
      - [event_types]: Event types to return. Optional. This parameter can be repeated multiple times to return events of different types. If unset, returns all event types.
      - [i_cal_uid]: Specifies an event ID in the iCalendar format to be provided in the response. Optional. Use this if you want to search for an event by its iCalendar ID.
      - [max_attendees]: The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
      - [max_results]: Maximum number of events returned on one result page. The number of events in the resulting page may be less than this value, or none at all, even if there are more events matching the query. Incomplete pages can be detected by a non-empty nextPageToken field in the response. By default the value is 250 events. The page size can never be larger than 2500 events. Optional.
      - [order_by]: The order of the events returned in the result. Optional. The default is an unspecified, stable order.
      - [page_token]: Token specifying which result page to return. Optional.
      - [private_extended_property]: Extended properties constraint specified as propertyName=value. Matches only private properties. This parameter might be repeated multiple times to return events that match all given constraints.
      - [q]: Free text search terms to find events that match these terms in the following fields:

      - summary
      - description
      - location
      - attendee's displayName
      - attendee's email
      - organizer's displayName
      - organizer's email
      - workingLocationProperties.officeLocation.buildingId
      - workingLocationProperties.officeLocation.deskId
      - workingLocationProperties.officeLocation.label
      - workingLocationProperties.customLocation.label
      These search terms also match predefined keywords against all display title translations of working location, out-of-office, and focus-time events. For example, searching for 'Office' or 'Bureau' returns working location events of type officeLocation, whereas searching for 'Out of office' or 'Abwesend' returns out-of-office events. Optional.
      - [shared_extended_property]: Extended properties constraint specified as propertyName=value. Matches only shared properties. This parameter might be repeated multiple times to return events that match all given constraints.
      - [show_deleted]: Whether to include deleted events (with status equals 'cancelled') in the result. Cancelled instances of recurring events (but not the underlying recurring event) will still be included if showDeleted and singleEvents are both False. If showDeleted and singleEvents are both True, only single instances of deleted events (but not the underlying recurring events) are returned. Optional. The default is False.
      - [show_hidden_invitations]: Whether to include hidden invitations in the result. Optional. The default is False.
      - [single_events]: Whether to expand recurring events into instances and only return single one-off events and instances of recurring events, but not the underlying recurring events themselves. Optional. The default is False.
      - [sync_token]: Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All events deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False.
      There are several query parameters that cannot be specified together with nextSyncToken to ensure consistency of the client state.

      These are:
      - iCalUID
      - orderBy
      - privateExtendedProperty
      - q
      - sharedExtendedProperty
      - timeMin
      - timeMax
      - updatedMin All other query parameters should be the same as for the initial synchronization to avoid undefined behavior. If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.
      Learn more about incremental synchronization.
      Optional. The default is to return all entries.
      - [time_max]: Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time. Must be an RFC3339 timestamp with mandatory time zone offset, for example, 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be provided but are ignored. If timeMin is set, timeMax must be greater than timeMin.
      - [time_min]: Lower bound (exclusive) for an event's end time to filter by. Optional. The default is not to filter by end time. Must be an RFC3339 timestamp with mandatory time zone offset, for example, 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be provided but are ignored. If timeMax is set, timeMin must be smaller than timeMax.
      - [time_zone]: Time zone used in the response. Optional. The default is the time zone of the calendar.
      - [updated_min]: Lower bound for an event's last modification time (as a RFC3339 timestamp) to filter by. When specified, entries deleted since this time will always be included regardless of showDeleted. Optional. The default is not to filter by last modification time. *)

  val move :
    calendar_id:string ->
    event_id:string ->
    destination:string ->
    ?send_notifications:bool ->
    ?send_updates:[ `All | `External_only | `None | `Unrecognized of string ] ->
    unit ->
    event Google_api.Call.t
  (** Moves an event to another calendar, i.e. changes an event's organizer. Note that only default events can be moved; birthday, focusTime, fromGmail, outOfOffice and workingLocation events cannot be moved.

      [POST calendars/{calendarId}/events/{eventId}/move]

      - [calendar_id]: Calendar identifier of the source calendar where the event currently is on.
      - [event_id]: Event identifier.
      - [destination]: Calendar identifier of the target calendar where the event is to be moved to.
      - [send_notifications]: Deprecated. Please use sendUpdates instead.

      Whether to send notifications about the change of the event's organizer. Note that some emails might still be sent even if you set the value to false. The default is false.
      - [send_updates]: Guests who should receive notifications about the change of the event's organizer. *)

  val patch :
    calendar_id:string ->
    event_id:string ->
    body:event ->
    ?always_include_email:bool ->
    ?conference_data_version:int ->
    ?event_label_version:int ->
    ?max_attendees:int ->
    ?send_notifications:bool ->
    ?send_updates:[ `All | `External_only | `None | `Unrecognized of string ] ->
    ?supports_attachments:bool ->
    unit ->
    event Google_api.Call.t
  (** Updates an event. This method supports patch semantics.

      [PATCH calendars/{calendarId}/events/{eventId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [event_id]: Event identifier.
      - [always_include_email]: Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).
      - [conference_data_version]: Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignores conference data in the event's body. Version 1 enables support for copying of ConferenceData as well as for creating new conferences using the createRequest field of conferenceData. The default is 0.
      - [event_label_version]: Version number of the event label feature supported by the API client. Version 0 assumes no event label support and processes the colorId field for color management. Version 1 enables support for event labels, and processes the eventLabelId in the event's body. In this case, the colorId field is ignored. The default is 0.
      - [max_attendees]: The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
      - [send_notifications]: Deprecated. Please use sendUpdates instead.

      Whether to send notifications about the event update (for example, description changes, etc.). Note that some emails might still be sent even if you set the value to false. The default is false.
      - [send_updates]: Guests who should receive notifications about the event update (for example, title changes, etc.).
      - [supports_attachments]: Whether API client performing operation supports event attachments. Optional. The default is False. *)

  val quick_add :
    calendar_id:string ->
    text:string ->
    ?send_notifications:bool ->
    ?send_updates:[ `All | `External_only | `None | `Unrecognized of string ] ->
    unit ->
    event Google_api.Call.t
  (** Creates an event based on a simple text string.

      [POST calendars/{calendarId}/events/quickAdd]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [text]: The text describing the event to be created.
      - [send_notifications]: Deprecated. Please use sendUpdates instead.

      Whether to send notifications about the creation of the event. Note that some emails might still be sent even if you set the value to false. The default is false.
      - [send_updates]: Guests who should receive notifications about the creation of the new event. *)

  val update :
    calendar_id:string ->
    event_id:string ->
    body:event ->
    ?always_include_email:bool ->
    ?conference_data_version:int ->
    ?event_label_version:int ->
    ?max_attendees:int ->
    ?send_notifications:bool ->
    ?send_updates:[ `All | `External_only | `None | `Unrecognized of string ] ->
    ?supports_attachments:bool ->
    unit ->
    event Google_api.Call.t
  (** Updates an event.

      [PUT calendars/{calendarId}/events/{eventId}]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [event_id]: Event identifier.
      - [always_include_email]: Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).
      - [conference_data_version]: Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignores conference data in the event's body. Version 1 enables support for copying of ConferenceData as well as for creating new conferences using the createRequest field of conferenceData. The default is 0.
      - [event_label_version]: Version number of the event label feature supported by the API client. Version 0 assumes no event label support and processes the colorId field for color management. Version 1 enables support for event labels, and processes the eventLabelId in the event's body. In this case, the colorId field is ignored. The default is 0.
      - [max_attendees]: The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
      - [send_notifications]: Deprecated. Please use sendUpdates instead.

      Whether to send notifications about the event update (for example, description changes, etc.). Note that some emails might still be sent even if you set the value to false. The default is false.
      - [send_updates]: Guests who should receive notifications about the event update (for example, title changes, etc.).
      - [supports_attachments]: Whether API client performing operation supports event attachments. Optional. The default is False. *)

  val watch :
    calendar_id:string ->
    body:channel ->
    ?always_include_email:bool ->
    ?event_types:[ `Birthday | `Default | `Focus_time | `From_gmail | `Out_of_office | `Working_location | `Unrecognized of string ] list ->
    ?i_cal_uid:string ->
    ?max_attendees:int ->
    ?max_results:int ->
    ?order_by:[ `Start_time | `Updated | `Unrecognized of string ] ->
    ?page_token:string ->
    ?private_extended_property:string list ->
    ?q:string ->
    ?shared_extended_property:string list ->
    ?show_deleted:bool ->
    ?show_hidden_invitations:bool ->
    ?single_events:bool ->
    ?sync_token:string ->
    ?time_max:string ->
    ?time_min:string ->
    ?time_zone:string ->
    ?updated_min:string ->
    unit ->
    channel Google_api.Call.t
  (** Watch for changes to Events resources.

      [POST calendars/{calendarId}/events/watch]

      - [calendar_id]: Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the 'primary' keyword.
      - [always_include_email]: Deprecated and ignored.
      - [event_types]: Event types to return. Optional. This parameter can be repeated multiple times to return events of different types. If unset, returns all event types.
      - [i_cal_uid]: Specifies an event ID in the iCalendar format to be provided in the response. Optional. Use this if you want to search for an event by its iCalendar ID.
      - [max_attendees]: The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
      - [max_results]: Maximum number of events returned on one result page. The number of events in the resulting page may be less than this value, or none at all, even if there are more events matching the query. Incomplete pages can be detected by a non-empty nextPageToken field in the response. By default the value is 250 events. The page size can never be larger than 2500 events. Optional.
      - [order_by]: The order of the events returned in the result. Optional. The default is an unspecified, stable order.
      - [page_token]: Token specifying which result page to return. Optional.
      - [private_extended_property]: Extended properties constraint specified as propertyName=value. Matches only private properties. This parameter might be repeated multiple times to return events that match all given constraints.
      - [q]: Free text search terms to find events that match these terms in the following fields:

      - summary
      - description
      - location
      - attendee's displayName
      - attendee's email
      - organizer's displayName
      - organizer's email
      - workingLocationProperties.officeLocation.buildingId
      - workingLocationProperties.officeLocation.deskId
      - workingLocationProperties.officeLocation.label
      - workingLocationProperties.customLocation.label
      These search terms also match predefined keywords against all display title translations of working location, out-of-office, and focus-time events. For example, searching for 'Office' or 'Bureau' returns working location events of type officeLocation, whereas searching for 'Out of office' or 'Abwesend' returns out-of-office events. Optional.
      - [shared_extended_property]: Extended properties constraint specified as propertyName=value. Matches only shared properties. This parameter might be repeated multiple times to return events that match all given constraints.
      - [show_deleted]: Whether to include deleted events (with status equals 'cancelled') in the result. Cancelled instances of recurring events (but not the underlying recurring event) will still be included if showDeleted and singleEvents are both False. If showDeleted and singleEvents are both True, only single instances of deleted events (but not the underlying recurring events) are returned. Optional. The default is False.
      - [show_hidden_invitations]: Whether to include hidden invitations in the result. Optional. The default is False.
      - [single_events]: Whether to expand recurring events into instances and only return single one-off events and instances of recurring events, but not the underlying recurring events themselves. Optional. The default is False.
      - [sync_token]: Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All events deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False.
      There are several query parameters that cannot be specified together with nextSyncToken to ensure consistency of the client state.

      These are:
      - iCalUID
      - orderBy
      - privateExtendedProperty
      - q
      - sharedExtendedProperty
      - timeMin
      - timeMax
      - updatedMin All other query parameters should be the same as for the initial synchronization to avoid undefined behavior. If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.
      Learn more about incremental synchronization.
      Optional. The default is to return all entries.
      - [time_max]: Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time. Must be an RFC3339 timestamp with mandatory time zone offset, for example, 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be provided but are ignored. If timeMin is set, timeMax must be greater than timeMin.
      - [time_min]: Lower bound (exclusive) for an event's end time to filter by. Optional. The default is not to filter by end time. Must be an RFC3339 timestamp with mandatory time zone offset, for example, 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be provided but are ignored. If timeMax is set, timeMin must be smaller than timeMax.
      - [time_zone]: Time zone used in the response. Optional. The default is the time zone of the calendar.
      - [updated_min]: Lower bound for an event's last modification time (as a RFC3339 timestamp) to filter by. When specified, entries deleted since this time will always be included regardless of showDeleted. Optional. The default is not to filter by last modification time. *)
end

module Freebusy : sig
  val query :
    body:free_busy_request ->
    unit ->
    free_busy_response Google_api.Call.t
  (** Returns free/busy information for a set of calendars.

      [POST freeBusy] *)
end

module Settings : sig
  val get :
    setting:string ->
    unit ->
    setting Google_api.Call.t
  (** Returns a single user setting.

      [GET users/me/settings/{setting}]

      - [setting]: The id of the user setting. *)

  val list :
    ?max_results:int ->
    ?page_token:string ->
    ?sync_token:string ->
    unit ->
    settings Google_api.Call.t
  (** Returns all user settings for the authenticated user.

      [GET users/me/settings]

      - [max_results]: Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
      - [page_token]: Token specifying which result page to return. Optional.
      - [sync_token]: Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then.
      If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.
      Learn more about incremental synchronization.
      Optional. The default is to return all entries. *)

  val watch :
    body:channel ->
    ?max_results:int ->
    ?page_token:string ->
    ?sync_token:string ->
    unit ->
    channel Google_api.Call.t
  (** Watch for changes to Settings resources.

      [POST users/me/settings/watch]

      - [max_results]: Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
      - [page_token]: Token specifying which result page to return. Optional.
      - [sync_token]: Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then.
      If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.
      Learn more about incremental synchronization.
      Optional. The default is to return all entries. *)
end
