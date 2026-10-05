(* Generated from the Discovery document of admin directory_v1 (revision 20260929). Do not edit. *)

(** Admin SDK API (admin directory_v1, revision 20260929).

    Admin SDK lets administrators of enterprise domains to view and manage resources like user, groups etc. It also provides audit and usage reports of domain.

    {{:https://developers.google.com/workspace/admin/}Documentation} *)

(** JSON template for Alias object in Directory API. *)
type alias = {
  alias : string option;
  etag : string option;
  id : string option;
  kind : string option;
  primary_email : string option;
}

(** JSON response template to list aliases in Directory API. *)
and aliases = {
  aliases : Yojson.Safe.t list option;
  etag : string option;
  kind : string option;
}

(** An application-specific password (ASP) is used with applications that do not accept a verification code when logging into the application on certain devices. The ASP access code is used instead of the login and password you commonly use when accessing an application through a browser. For more information about ASPs and how to create one, see the \[help center\](https://support.google.com/a/answer/2537800#asp). *)
and asp = {
  code_id : int option;  (** The unique ID of the ASP. *)
  creation_time : string option;  (** The time when the ASP was created. Expressed in \[Unix time\](https://en.wikipedia.org/wiki/Epoch_time) format. *)
  etag : string option;  (** ETag of the ASP. *)
  kind : string option;  (** The type of the API resource. This is always `admin#directory#asp`. *)
  last_time_used : string option;  (** The time when the ASP was last used. Expressed in \[Unix time\](https://en.wikipedia.org/wiki/Epoch_time) format. *)
  name : string option;  (** The name of the application that the user, represented by their `userId`, entered when the ASP was created. *)
  user_key : string option;  (** The unique ID of the user who issued the ASP. *)
}

and asps = {
  etag : string option;  (** ETag of the resource. *)
  items : asp list option;  (** A list of ASP resources. *)
  kind : string option;  (** The type of the API resource. This is always `admin#directory#aspList`. *)
}

(** Auxiliary message about issues with printers or settings. Example: \{message_type:AUXILIARY_MESSAGE_WARNING, field_mask:make_and_model, message:'Given printer is invalid or no longer supported.'\} *)
and auxiliary_message = {
  auxiliary_message : string option;  (** Human readable message in English. Example: 'Given printer is invalid or no longer supported.' *)
  field_mask : string option;  (** Field that this message concerns. *)
  severity : [ `Severity_unspecified | `Severity_info | `Severity_warning | `Severity_error | `Unrecognized of string ] option;  (** Message severity *)
}

(** Information about the device's backlights. *)
and backlight_info = {
  brightness : int option;  (** Output only. Current brightness of the backlight, between 0 and max_brightness. *)
  max_brightness : int option;  (** Output only. Maximum brightness for the backlight. *)
  path : string option;  (** Output only. Path to this backlight on the system. Useful if the caller needs to correlate with other information. *)
}

(** A request for changing the status of a batch of ChromeOS devices. *)
and batch_change_chrome_os_device_status_request = {
  change_chrome_os_device_status_action : [ `Change_chrome_os_device_status_action_unspecified | `Change_chrome_os_device_status_action_deprovision | `Change_chrome_os_device_status_action_disable | `Change_chrome_os_device_status_action_reenable | `Unrecognized of string ] option;  (** Required. The action to take on the ChromeOS device in order to change its status. *)
  deprovision_reason : [ `Deprovision_reason_unspecified | `Deprovision_reason_same_model_replacement | `Deprovision_reason_upgrade | `Deprovision_reason_domain_move | `Deprovision_reason_service_expiration | `Deprovision_reason_other | `Deprovision_reason_different_model_replacement | `Deprovision_reason_retiring_device | `Deprovision_reason_upgrade_transfer | `Deprovision_reason_not_required | `Deprovision_reason_repair_center | `Unrecognized of string ] option;  (** Optional. The reason behind a device deprovision. Must be provided if 'changeChromeOsDeviceStatusAction' is set to 'CHANGE_CHROME_OS_DEVICE_STATUS_ACTION_DEPROVISION'. Otherwise, omit this field. *)
  device_ids : string list option;  (** Required. List of the IDs of the ChromeOS devices to change. Maximum 50. *)
}

(** The response of changing the status of a batch of ChromeOS devices. *)
and batch_change_chrome_os_device_status_response = {
  change_chrome_os_device_status_results : change_chrome_os_device_status_result list option;  (** The results for each of the ChromeOS devices provided in the request. *)
}

(** Request to add multiple new print servers in a batch. *)
and batch_create_print_servers_request = {
  requests : create_print_server_request list option;  (** Required. A list of `PrintServer` resources to be created (max `50` per batch). *)
}

and batch_create_print_servers_response = {
  failures : print_server_failure_info list option;  (** A list of create failures. `PrintServer` IDs are not populated, as print servers were not created. *)
  print_servers : print_server list option;  (** A list of successfully created print servers with their IDs populated. *)
}

(** Request for adding new printers in batch. *)
and batch_create_printers_request = {
  requests : create_printer_request list option;  (** A list of Printers to be created. Max 50 at a time. *)
}

(** Response for adding new printers in batch. *)
and batch_create_printers_response = {
  failures : failure_info list option;  (** A list of create failures. Printer IDs are not populated, as printer were not created. *)
  printers : printer list option;  (** A list of successfully created printers with their IDs populated. *)
}

(** Request to delete multiple existing print servers in a batch. *)
and batch_delete_print_servers_request = {
  print_server_ids : string list option;  (** A list of print server IDs that should be deleted (max `100` per batch). *)
}

and batch_delete_print_servers_response = {
  failed_print_servers : print_server_failure_info list option;  (** A list of update failures. *)
  print_server_ids : string list option;  (** A list of print server IDs that were successfully deleted. *)
}

(** Request for deleting existing printers in batch. *)
and batch_delete_printers_request = {
  printer_ids : string list option;  (** A list of Printer.id that should be deleted. Max 100 at a time. *)
}

(** Response for deleting existing printers in batch. *)
and batch_delete_printers_response = {
  failed_printers : failure_info list option;  (** A list of update failures. *)
  printer_ids : string list option;  (** A list of Printer.id that were successfully deleted. *)
}

(** Information about a device's Bluetooth adapter. *)
and bluetooth_adapter_info = {
  address : string option;  (** Output only. The MAC address of the adapter. *)
  num_connected_devices : int option;  (** Output only. The number of devices connected to this adapter. *)
}

(** Public API: Resources.buildings *)
and building = {
  address : building_address option;  (** The postal address of the building. See \[`PostalAddress`\](/my-business/reference/rest/v4/PostalAddress) for details. Note that only a single address line and region code are required. *)
  building_id : string option;  (** Unique identifier for the building. The maximum length is 100 characters. *)
  building_name : string option;  (** The building name as seen by users in Calendar. Must be unique for the customer. For example, 'NYC-CHEL'. The maximum length is 100 characters. *)
  coordinates : building_coordinates option;  (** The geographic coordinates of the center of the building, expressed as latitude and longitude in decimal degrees. *)
  description : string option;  (** A brief description of the building. For example, 'Chelsea Market'. *)
  etags : string option;  (** ETag of the resource. *)
  floor_names : string list option;  (** The display names for all floors in this building. The floors are expected to be sorted in ascending order, from lowest floor to highest floor. For example, \['B2', 'B1', 'L', '1', '2', '2M', '3', 'PH'\] Must contain at least one entry. *)
  kind : string option;  (** Kind of resource this is. *)
}

(** Public API: Resources.buildings *)
and building_address = {
  address_lines : string list option;  (** Unstructured address lines describing the lower levels of an address. *)
  administrative_area : string option;  (** Optional. Highest administrative subdivision which is used for postal addresses of a country or region. *)
  language_code : string option;  (** Optional. BCP-47 language code of the contents of this address (if known). *)
  locality : string option;  (** Optional. Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines. *)
  postal_code : string option;  (** Optional. Postal code of the address. *)
  region_code : string option;  (** Required. CLDR region code of the country/region of the address. *)
  sublocality : string option;  (** Optional. Sublocality of the address. *)
}

(** Public API: Resources.buildings *)
and building_coordinates = {
  latitude : float option;  (** Latitude in decimal degrees. *)
  longitude : float option;  (** Longitude in decimal degrees. *)
}

(** Public API: Resources.buildings *)
and buildings = {
  buildings : building list option;  (** The Buildings in this page of results. *)
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** Kind of resource this is. *)
  next_page_token : string option;  (** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. *)
}

(** Represents a data capacity with some amount of current usage in bytes. *)
and byte_usage = {
  capacity_bytes : string option;  (** Output only. The total capacity value, in bytes. *)
  used_bytes : string option;  (** Output only. The current usage value, in bytes. *)
}

(** Public API: Resources.calendars *)
and calendar_resource = {
  building_id : string option;  (** Unique ID for the building a resource is located in. *)
  capacity : int option;  (** Capacity of a resource, number of seats in a room. *)
  etags : string option;  (** ETag of the resource. *)
  feature_instances : Yojson.Safe.t option;  (** Instances of features for the calendar resource. *)
  floor_name : string option;  (** Name of the floor a resource is located on. *)
  floor_section : string option;  (** Name of the section within a floor a resource is located in. *)
  generated_resource_name : string option;  (** The read-only auto-generated name of the calendar resource which includes metadata about the resource such as building name, floor, capacity, etc. For example, 'NYC-2-Training Room 1A (16)'. *)
  kind : string option;  (** The type of the resource. For calendar resources, the value is `admin#directory#resources#calendars#CalendarResource`. *)
  resource_category : string option;  (** The category of the calendar resource. Either CONFERENCE_ROOM or OTHER. Legacy data is set to CATEGORY_UNKNOWN. *)
  resource_description : string option;  (** Description of the resource, visible only to admins. *)
  resource_email : string option;  (** The read-only email for the calendar resource. Generated as part of creating a new calendar resource. *)
  resource_id : string option;  (** The unique ID for the calendar resource. *)
  resource_name : string option;  (** The name of the calendar resource. For example, 'Training Room 1A'. *)
  resource_type : string option;  (** The type of the calendar resource, intended for non-room resources. *)
  user_visible_description : string option;  (** Description of the resource, visible to users and admins. *)
}

(** Public API: Resources.calendars *)
and calendar_resources = {
  etag : string option;  (** ETag of the resource. *)
  items : calendar_resource list option;  (** The CalendarResources in this page of results. *)
  kind : string option;  (** Identifies this as a collection of CalendarResources. This is always `admin#directory#resources#calendars#calendarResourcesList`. *)
  next_page_token : string option;  (** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. *)
}

(** The result of a single ChromeOS device for a Change state operation. *)
and change_chrome_os_device_status_result = {
  device_id : string option;  (** The unique ID of the ChromeOS device. *)
  error : status option;  (** The error result of the operation in case of failure. *)
  response : change_chrome_os_device_status_succeeded option;  (** The device could change its status successfully. *)
}

(** Response for a successful ChromeOS device status change. *)
and change_chrome_os_device_status_succeeded = Yojson.Safe.t

(** An notification channel used to watch for resource changes. *)
and channel = {
  address : string option;  (** The address where notifications are delivered for this channel. *)
  expiration : string option;  (** Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional. *)
  id : string option;  (** A UUID or similar unique string that identifies this channel. *)
  kind : string option;  (** Identifies this as a notification channel used to watch for changes to a resource, which is `api#channel`. *)
  params : (string * string) list option;  (** Additional parameters controlling delivery channel behavior. Optional. For example, `params.ttl` specifies the time-to-live in seconds for the notification channel, where the default is 2 hours and the maximum TTL is 2 days. *)
  payload : bool option;  (** A Boolean value to indicate whether payload is wanted. Optional. *)
  resource_id : string option;  (** An opaque ID that identifies the resource being watched on this channel. Stable across different API versions. *)
  resource_uri : string option;  (** A version-specific identifier for the watched resource. *)
  token : string option;  (** An arbitrary string delivered to the target address with each notification delivered over this channel. Optional. *)
  type_ : string option;  (** The type of delivery mechanism used for this channel. *)
}

and chrome_os_device_active_time_ranges_item = {
  active_time : int option;  (** Duration of usage in milliseconds. *)
  date : string option;  (** Date of usage *)
}

and chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item = {
  display_name : string option;  (** Name of the state. *)
  session_duration : string option;  (** Time spent in the state since the last reboot. *)
}

and chrome_os_device_cpu_info_item_logical_cpus_item = {
  c_states : chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item list option;  (** C-States indicate the power consumption state of the CPU. For more information look at documentation published by the CPU maker. *)
  current_scaling_frequency_khz : int option;  (** Current frequency the CPU is running at. *)
  idle_duration : string option;  (** Idle time since last boot. *)
  max_scaling_frequency_khz : int option;  (** Maximum frequency the CPU is allowed to run at, by policy. *)
}

and chrome_os_device_cpu_info_item = {
  architecture : string option;  (** The CPU architecture. *)
  logical_cpus : chrome_os_device_cpu_info_item_logical_cpus_item list option;  (** Information for the Logical CPUs *)
  max_clock_speed_khz : int option;  (** The max CPU clock speed in kHz. *)
  model : string option;  (** The CPU model name. *)
}

and chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item = {
  label : string option;  (** CPU label *)
  temperature : int option;  (** Temperature in Celsius degrees. *)
}

and chrome_os_device_cpu_status_reports_item = {
  cpu_temperature_info : chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item list option;  (** A list of CPU temperature samples. *)
  cpu_utilization_percentage_info : int list option;
  report_time : string option;  (** Date and time the report was received. *)
}

and chrome_os_device_device_files_item = {
  create_time : string option;  (** Date and time the file was created *)
  download_url : string option;  (** File download URL *)
  name : string option;  (** File name *)
  type_ : string option;  (** File type *)
}

and chrome_os_device_disk_volume_reports_item_volume_info_item = {
  storage_free : string option;  (** Free disk space \[in bytes\] *)
  storage_total : string option;  (** Total disk space \[in bytes\] *)
  volume_id : string option;  (** Volume id *)
}

and chrome_os_device_disk_volume_reports_item = {
  volume_info : chrome_os_device_disk_volume_reports_item_volume_info_item list option;  (** Disk volumes *)
}

and chrome_os_device_last_known_network_item = {
  ip_address : string option;  (** The IP address. *)
  wan_ip_address : string option;  (** The WAN IP address. *)
}

and chrome_os_device_recent_users_item = {
  email : string option;  (** The user's email address. This is only present if the user type is `USER_TYPE_MANAGED`. *)
  type_ : string option;  (** The type of the user. *)
}

and chrome_os_device_screenshot_files_item = {
  create_time : string option;  (** Date and time the file was created *)
  download_url : string option;  (** File download URL *)
  name : string option;  (** File name *)
  type_ : string option;  (** File type *)
}

and chrome_os_device_system_ram_free_reports_item = {
  report_time : string option;  (** Date and time the report was received. *)
  system_ram_free_info : string list option;
}

and chrome_os_device_tpm_version_info = {
  family : string option;  (** TPM family. We use the TPM 2.0 style encoding, e.g.: TPM 1.2: '1.2' -> 312e3200 TPM 2.0: '2.0' -> 322e3000 *)
  firmware_version : string option;  (** TPM firmware version. *)
  manufacturer : string option;  (** TPM manufacturer code. *)
  spec_level : string option;  (** TPM specification level. See Library Specification for TPM 2.0 and Main Specification for TPM 1.2. *)
  tpm_model : string option;  (** TPM model number. *)
  vendor_specific : string option;  (** Vendor-specific information such as Vendor ID. *)
}

(** Google Chrome devices run on the \[Chrome OS\](https://support.google.com/chromeos). For more information about common API tasks, see the \[Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-chrome-devices). *)
and chrome_os_device = {
  active_time_ranges : chrome_os_device_active_time_ranges_item list option;  (** A list of active time ranges (Read-only). *)
  annotated_asset_id : string option;  (** The asset identifier as noted by an administrator or specified during enrollment. *)
  annotated_location : string option;  (** The address or location of the device as noted by the administrator. Maximum length is `200` characters. Empty values are allowed. *)
  annotated_user : string option;  (** The user of the device as noted by the administrator. Maximum length is 100 characters. Empty values are allowed. *)
  auto_update_expiration : string option;  (** (Read-only) The timestamp after which the device will stop receiving Chrome updates or support. Please use 'autoUpdateThrough' instead. *)
  auto_update_through : string option;  (** Output only. The timestamp after which the device will stop receiving Chrome updates or support. *)
  backlight_info : backlight_info list option;  (** Output only. Contains backlight information for the device. *)
  bluetooth_adapter_info : bluetooth_adapter_info list option;  (** Output only. Information about Bluetooth adapters of the device. *)
  boot_mode : string option;  (** The boot mode for the device. The possible values are: * `Verified`: The device is running a valid version of the Chrome OS. * `Dev`: The devices's developer hardware switch is enabled. When booted, the device has a command line shell. For an example of a developer switch, see the \[Chromebook developer information\](https://www.chromium.org/chromium-os/developer-information-for-chrome-os-devices/samsung-series-5-chromebook#TOC-Developer-switch). *)
  chrome_os_type : [ `Chrome_os_type_unspecified | `Chrome_os_flex | `Chrome_os | `Unrecognized of string ] option;  (** Output only. Chrome OS type of the device. *)
  cpu_info : chrome_os_device_cpu_info_item list option;  (** Information regarding CPU specs in the device. *)
  cpu_status_reports : chrome_os_device_cpu_status_reports_item list option;  (** Reports of CPU utilization and temperature (Read-only) *)
  deprovision_reason : [ `Deprovision_reason_unspecified | `Deprovision_reason_same_model_replacement | `Deprovision_reason_upgrade | `Deprovision_reason_domain_move | `Deprovision_reason_service_expiration | `Deprovision_reason_other | `Deprovision_reason_different_model_replacement | `Deprovision_reason_retiring_device | `Deprovision_reason_upgrade_transfer | `Deprovision_reason_not_required | `Deprovision_reason_repair_center | `Unrecognized of string ] option;  (** (Read-only) Deprovision reason. *)
  device_files : chrome_os_device_device_files_item list option;  (** A list of device files to download (Read-only) *)
  device_id : string option;  (** The unique ID of the Chrome device. *)
  device_license_type : [ `Device_license_type_unspecified | `Enterprise | `Enterprise_upgrade | `Education_upgrade | `Education | `Kiosk_upgrade | `Enterprise_upgrade_perpetual | `Enterprise_upgrade_fixed_term | `Education_upgrade_perpetual | `Education_upgrade_fixed_term | `Unrecognized of string ] option;  (** Output only. Device license type. *)
  disk_space_usage : byte_usage option;  (** Output only. How much disk space the device has available and is currently using. *)
  disk_volume_reports : chrome_os_device_disk_volume_reports_item list option;  (** Reports of disk space and other info about mounted/connected volumes. *)
  dock_mac_address : string option;  (** (Read-only) Built-in MAC address for the docking station that the device connected to. Factory sets Media access control address (MAC address) assigned for use by a dock. It is reserved specifically for MAC pass through device policy. The format is twelve (12) hexadecimal digits without any delimiter (uppercase letters). This is only relevant for some devices. *)
  etag : string option;  (** ETag of the resource. *)
  ethernet_mac_address : string option;  (** The device's MAC address on the ethernet network interface. *)
  ethernet_mac_address0 : string option;  (** (Read-only) MAC address used by the Chromebook’s internal ethernet port, and for onboard network (ethernet) interface. The format is twelve (12) hexadecimal digits without any delimiter (uppercase letters). This is only relevant for some devices. *)
  extended_support_eligible : bool option;  (** Output only. Whether or not the device requires the extended support opt in. *)
  extended_support_enabled : bool option;  (** Output only. Whether extended support policy is enabled on the device. *)
  extended_support_start : string option;  (** Output only. Date of the device when extended support policy for automatic updates starts. *)
  fan_info : fan_info list option;  (** Output only. Fan information for the device. *)
  firmware_version : string option;  (** The Chrome device's firmware version. *)
  first_enrollment_time : string option;  (** Date and time for the first time the device was enrolled. *)
  kind : string option;  (** The type of resource. For the Chromeosdevices resource, the value is `admin#directory#chromeosdevice`. *)
  last_deprovision_timestamp : string option;  (** (Read-only) Date and time for the last deprovision of the device. *)
  last_enrollment_time : string option;  (** Date and time the device was last enrolled (Read-only) *)
  last_known_network : chrome_os_device_last_known_network_item list option;  (** Contains last known network (Read-only) *)
  last_sync : string option;  (** Date and time the device was last synchronized with the policy settings in the G Suite administrator control panel (Read-only) *)
  mac_address : string option;  (** The device's wireless MAC address. If the device does not have this information, it is not included in the response. *)
  manufacture_date : string option;  (** (Read-only) The date the device was manufactured in yyyy-mm-dd format. *)
  meid : string option;  (** The Mobile Equipment Identifier (MEID) or the International Mobile Equipment Identity (IMEI) for the 3G mobile card in a mobile device. A MEID/IMEI is typically used when adding a device to a wireless carrier's post-pay service plan. If the device does not have this information, this property is not included in the response. For more information on how to export a MEID/IMEI list, see the \[Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-chrome-devices.html#export_meid). *)
  model : string option;  (** The device's model information. If the device does not have this information, this property is not included in the response. *)
  notes : string option;  (** Notes about this device added by the administrator. This property can be \[searched\](https://support.google.com/chrome/a/answer/1698333) with the \[list\](https://developers.google.com/workspace/admin/directory/v1/reference/chromeosdevices/list) method's `query` parameter. Maximum length is 500 characters. Empty values are allowed. *)
  order_number : string option;  (** The device's order number. Only devices directly purchased from Google have an order number. *)
  org_unit_id : string option;  (** The unique ID of the organizational unit. orgUnitPath is the human readable version of orgUnitId. While orgUnitPath may change by renaming an organizational unit within the path, orgUnitId is unchangeable for one organizational unit. This property can be \[updated\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-chrome-devices#move_chrome_devices_to_ou) using the API. For more information about how to create an organizational structure for your device, see the \[administration help center\](https://support.google.com/a/answer/182433). *)
  org_unit_path : string option;  (** The full parent path with the organizational unit's name associated with the device. Path names are case insensitive. If the parent organizational unit is the top-level organization, it is represented as a forward slash, `/`. This property can be \[updated\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-chrome-devices#move_chrome_devices_to_ou) using the API. For more information about how to create an organizational structure for your device, see the \[administration help center\](https://support.google.com/a/answer/182433). *)
  os_update_status : os_update_status option;  (** The status of the OS updates for the device. *)
  os_version : string option;  (** The Chrome device's operating system version. *)
  os_version_compliance : [ `Compliance_unspecified | `Compliant | `Pending | `Not_compliant | `Unrecognized of string ] option;  (** Output only. Device policy compliance status of the OS version. *)
  platform_version : string option;  (** The Chrome device's platform version. *)
  recent_users : chrome_os_device_recent_users_item list option;  (** A list of recent device users, in descending order, by last login time. *)
  screenshot_files : chrome_os_device_screenshot_files_item list option;  (** A list of screenshot files to download. Type is always 'SCREENSHOT_FILE'. (Read-only) *)
  serial_number : string option;  (** The Chrome device serial number entered when the device was enabled. This value is the same as the Admin console's *Serial Number* in the *Chrome OS Devices* tab. *)
  status : string option;  (** The status of the device. *)
  support_end_date : string option;  (** Final date the device will be supported (Read-only) *)
  system_ram_free_reports : chrome_os_device_system_ram_free_reports_item list option;  (** Reports of amounts of available RAM memory (Read-only) *)
  system_ram_total : string option;  (** Total RAM on the device \[in bytes\] (Read-only) *)
  tpm_version_info : chrome_os_device_tpm_version_info option;  (** Trusted Platform Module (TPM) (Read-only) *)
  will_auto_renew : bool option;  (** Determines if the device will auto renew its support after the support end date. This is a read-only property. *)
}

(** Data about an update to the status of a Chrome OS device. *)
and chrome_os_device_action = {
  action : string option;  (** Action to be taken on the Chrome OS device. *)
  deprovision_reason : string option;  (** Only used when the action is `deprovision`. With the `deprovision` action, this field is required. *Note*: The deprovision reason is audited because it might have implications on licenses for perpetual subscription customers. *)
}

and chrome_os_devices = {
  chromeosdevices : chrome_os_device list option;  (** A list of Chrome OS Device objects. *)
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** Kind of resource this is. *)
  next_page_token : string option;  (** Token used to access the next page of this result. To access the next page, use this token's value in the `pageToken` query string of this request. *)
}

and chrome_os_move_devices_to_ou = {
  device_ids : string list option;  (** Chrome OS devices to be moved to OU *)
}

(** A response for counting ChromeOS devices. *)
and count_chrome_os_devices_response = {
  count : string option;  (** The total number of devices matching the request. *)
}

(** Request for adding a new print server. *)
and create_print_server_request = {
  parent : string option;  (** Required. The \[unique ID\](https://developers.google.com/workspace/admin/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/\{id\}` *)
  print_server : print_server option;  (** Required. A print server to create. If you want to place the print server under a specific organizational unit (OU), then populate the `org_unit_id`. Otherwise the print server is created under the root OU. The `org_unit_id` can be retrieved using the \[Directory API\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-org-units). *)
}

(** Request for adding a new printer. *)
and create_printer_request = {
  parent : string option;  (** Required. The name of the customer. Format: customers/\{customer_id\} *)
  printer : printer option;  (** Required. A printer to create. If you want to place the printer under particular OU then populate printer.org_unit_id filed. Otherwise the printer will be placed under root OU. *)
}

and customer = {
  alternate_email : string option;  (** The customer's secondary contact email address. This email address cannot be on the same domain as the `customerDomain` *)
  customer_creation_time : string option;  (** The customer's creation time (Readonly) *)
  customer_domain : string option;  (** The customer's primary domain name string. Do not include the `www` prefix when creating a new customer. *)
  etag : string option;  (** ETag of the resource. *)
  id : string option;  (** The unique ID for the customer's Google Workspace account. (Readonly) *)
  kind : string option;  (** Identifies the resource as a customer. Value: `admin#directory#customer` *)
  language : string option;  (** The customer's ISO 639-2 language code. See the \[Language Codes\](https://developers.google.com/workspace/admin/directory/v1/languages) page for the list of supported codes. Valid language codes outside the supported set will be accepted by the API but may lead to unexpected behavior. The default value is `en`. *)
  phone_number : string option;  (** The customer's contact phone number in \[E.164\](https://en.wikipedia.org/wiki/E.164) format. *)
  postal_address : customer_postal_address option;  (** The customer's postal address information. *)
}

and customer_postal_address = {
  address_line1 : string option;  (** A customer's physical address. The address can be composed of one to three lines. *)
  address_line2 : string option;  (** Address line 2 of the address. *)
  address_line3 : string option;  (** Address line 3 of the address. *)
  contact_name : string option;  (** The customer contact's name. *)
  country_code : string option;  (** This is a required property. For `countryCode` information see the \[ISO 3166 country code elements\](https://www.iso.org/iso/country_codes.htm). *)
  locality : string option;  (** Name of the locality. An example of a locality value is the city of `San Francisco`. *)
  organization_name : string option;  (** The company or company division name. *)
  postal_code : string option;  (** The postal code. A postalCode example is a postal zip code such as `10009`. This is in accordance with - http: //portablecontacts.net/draft-spec.html#address_element. *)
  region : string option;  (** Name of the region. An example of a region value is `NY` for the state of New York. *)
}

(** Information regarding a command that was issued to a device. *)
and directory_chromeosdevices_command = {
  command_expire_time : string option;  (** The time at which the command will expire. If the device doesn't execute the command within this time the command will become expired. *)
  command_id : string option;  (** Unique ID of a device command. *)
  command_result : directory_chromeosdevices_command_result option;  (** The result of the command execution. *)
  issue_time : string option;  (** The timestamp when the command was issued by the admin. *)
  payload : string option;  (** The payload that the command specified, if any. *)
  state : [ `State_unspecified | `Pending | `Expired | `Cancelled | `Sent_to_client | `Acked_by_client | `Executed_by_client | `Unrecognized of string ] option;  (** Indicates the command state. *)
  type_ : [ `Command_type_unspecified | `Reboot | `Take_a_screenshot | `Set_volume | `Wipe_users | `Remote_powerwash | `Device_start_crd_session | `Capture_logs | `Fetch_crd_availability_info | `Fetch_support_packet | `Unrecognized of string ] option;  (** The type of the command. *)
}

(** The result of executing a command. *)
and directory_chromeosdevices_command_result = {
  command_result_payload : string option;  (** The payload for the command result. The following commands respond with a payload: * `DEVICE_START_CRD_SESSION`: Payload is a stringified JSON object in the form: \{ 'url': url \}. The provided URL links to the Chrome Remote Desktop session and requires authentication using only the `email` associated with the command's issuance. * `FETCH_CRD_AVAILABILITY_INFO`: Payload is a stringified JSON object in the form: \{ 'deviceIdleTimeInSeconds': number, 'userSessionType': string, 'remoteSupportAvailability': string, 'remoteAccessAvailability': string \}. The 'remoteSupportAvailability' field is set to 'AVAILABLE' if `shared` CRD session to the device is available. The 'remoteAccessAvailability' field is set to 'AVAILABLE' if `private` CRD session to the device is available. *)
  error_message : string option;  (** The error message with a short explanation as to why the command failed. Only present if the command failed. *)
  execute_time : string option;  (** The time at which the command was executed or failed to execute. *)
  result : [ `Command_result_type_unspecified | `Ignored | `Failure | `Success | `Unrecognized of string ] option;  (** The result of the command. *)
}

(** A request for issuing a command. *)
and directory_chromeosdevices_issue_command_request = {
  command_type : [ `Command_type_unspecified | `Reboot | `Take_a_screenshot | `Set_volume | `Wipe_users | `Remote_powerwash | `Device_start_crd_session | `Capture_logs | `Fetch_crd_availability_info | `Fetch_support_packet | `Unrecognized of string ] option;  (** The type of command. *)
  payload : string option;  (** The payload for the command, provide it only if command supports it. The following commands support adding payload: * `SET_VOLUME`: Payload is a stringified JSON object in the form: \{ 'volume': 50 \}. The volume has to be an integer in the range \[0,100\]. * `DEVICE_START_CRD_SESSION`: Payload is optionally a stringified JSON object in the form: \{ 'ackedUserPresence': true, 'crdSessionType': string \}. `ackedUserPresence` is a boolean. By default, `ackedUserPresence` is set to `false`. To start a Chrome Remote Desktop session for an active device, set `ackedUserPresence` to `true`. `crdSessionType` can only select from values `private` (which grants the remote admin exclusive control of the ChromeOS device) or `shared` (which allows the admin and the local user to share control of the ChromeOS device). If not set, `crdSessionType` defaults to `shared`. The `FETCH_CRD_AVAILABILITY_INFO` command can be used to determine available session types on the device. * `REBOOT`: Payload is a stringified JSON object in the form: \{ 'user_session_delay_seconds': 300 \}. The `user_session_delay_seconds` is the amount of seconds to wait before rebooting the device if a user is logged in. It has to be an integer in the range \[0,300\]. When payload is not present for reboot, 0 delay is the default. Note: This only applies if an actual user is logged in, including a Guest. If the device is in the login screen or in Kiosk mode the value is not respected and the device immediately reboots. * `FETCH_SUPPORT_PACKET`: Payload is optionally a stringified JSON object in the form: \{'supportPacketDetails':\{ 'issueCaseId': optional_support_case_id_string, 'issueDescription': optional_issue_description_string, 'requestedDataCollectors': \[\]\}\} The list of available `data_collector_enums` are as following: Chrome System Information (1), Crash IDs (2), Memory Details (3), UI Hierarchy (4), Additional ChromeOS Platform Logs (5), Device Event (6), Intel WiFi NICs Debug Dump (7), Touch Events (8), Lacros (9), Lacros System Information (10), ChromeOS Flex Logs (11), DBus Details (12), ChromeOS Network Routes (13), ChromeOS Shill (Connection Manager) Logs (14), Policies (15), ChromeOS System State and Logs (16), ChromeOS System Logs (17), ChromeOS Chrome User Logs (18), ChromeOS Bluetooth (19), ChromeOS Connected Input Devices (20), ChromeOS Traffic Counters (21), ChromeOS Virtual Keyboard (22), ChromeOS Network Health (23). See more details in \[help article\](https://support.google.com/chrome/a?p=remote-log). *)
}

(** A response for issuing a command. *)
and directory_chromeosdevices_issue_command_response = {
  command_id : string option;  (** The unique ID of the issued command, used to retrieve the command status. *)
}

(** Directory users guest creation request message. *)
and directory_users_create_guest_request = {
  customer : string option;  (** Optional. Immutable ID of the Google Workspace account. Only required when request is created by a service account. Defaults to the authenticated user's customer ID otherwise. *)
  primary_guest_email : string option;  (** Required. External email of the guest user being created. *)
}

and domain_alias = {
  creation_time : string option;  (** The creation time of the domain alias. (Read-only). *)
  domain_alias_name : string option;  (** The domain alias name. *)
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** Kind of resource this is. *)
  parent_domain_name : string option;  (** The parent domain name that the domain alias is associated with. This can either be a primary or secondary domain name within a customer. *)
  verified : bool option;  (** Indicates the verification state of a domain alias. (Read-only) *)
}

and domain_aliases = {
  domain_aliases : domain_alias list option;  (** A list of domain alias objects. *)
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** Kind of resource this is. *)
}

and domains = {
  creation_time : string option;  (** Creation time of the domain. Expressed in \[Unix time\](https://en.wikipedia.org/wiki/Epoch_time) format. (Read-only). *)
  domain_aliases : domain_alias list option;  (** A list of domain alias objects. (Read-only) *)
  domain_name : string option;  (** The domain name of the customer. *)
  etag : string option;  (** ETag of the resource. *)
  is_primary : bool option;  (** Indicates if the domain is a primary domain (Read-only). *)
  kind : string option;  (** Kind of resource this is. *)
  verified : bool option;  (** Indicates the verification state of a domain. (Read-only). *)
}

and domains2 = {
  domains : domains list option;  (** A list of domain objects. *)
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** Kind of resource this is. *)
}

(** A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo \{ rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); \} *)
and empty = Yojson.Safe.t

(** Details regarding the expiration of this role assignment. Used to automatically revoke access when the time limit is reached. *)
and expiration_details = {
  expire_time : string option;  (** The specific timestamp when the role assignment expires. *)
}

(** External identifier used to link and identify this group across external directory systems. *)
and external_id = {
  id : string option;  (** The unique identifier string assigned by the external provider. *)
  namespace : string option;  (** The system or identity provider managing this ID. *)
}

(** Info about failures *)
and failure_info = {
  error_code : [ `Ok | `Cancelled | `Unknown | `Invalid_argument | `Deadline_exceeded | `Not_found | `Already_exists | `Permission_denied | `Unauthenticated | `Resource_exhausted | `Failed_precondition | `Aborted | `Out_of_range | `Unimplemented | `Internal | `Unavailable | `Data_loss | `Unrecognized of string ] option;  (** Canonical code for why the update failed to apply. *)
  error_message : string option;  (** Failure reason message. *)
  printer : printer option;  (** Failed printer. *)
  printer_id : string option;  (** Id of a failed printer. *)
}

(** Information about the device's fan. *)
and fan_info = {
  speed_rpm : int option;  (** Output only. Fan speed in RPM. *)
}

(** JSON template for Feature object in Directory API. *)
and feature = {
  etags : string option;  (** ETag of the resource. *)
  kind : string option;  (** Kind of resource this is. *)
  name : string option;  (** The name of the feature. *)
}

(** JSON template for a feature instance. *)
and feature_instance = {
  feature : feature option;  (** The feature that this is an instance of. A calendar resource may have multiple instances of a feature. *)
}

and feature_rename = {
  new_name : string option;  (** New name of the feature. *)
}

(** Public API: Resources.features *)
and features = {
  etag : string option;  (** ETag of the resource. *)
  features : feature list option;  (** The Features in this page of results. *)
  kind : string option;  (** Kind of resource this is. *)
  next_page_token : string option;  (** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. *)
}

(** Google Groups provide your users the ability to send messages to groups of people using the group's email address. For more information about common tasks, see the \[Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-groups). For information about other types of groups, see the \[Cloud Identity Groups API documentation\](https://cloud.google.com/identity/docs/groups). Note: The user calling the API (or being impersonated by a service account) must have an assigned \[role\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-roles) that includes Admin API Groups permissions, such as Super Admin or Groups Admin. *)
and group = {
  admin_created : bool option;  (** Read-only. Value is `true` if this group was created by an administrator rather than a user. *)
  aliases : string list option;  (** Read-only. The list of a group's alias email addresses. To add, update, or remove a group's aliases, use the `groups.aliases` methods. If edited in a group's POST or PUT request, the edit is ignored. *)
  description : string option;  (** An extended description to help users determine the purpose of a group. For example, you can include information about who should join the group, the types of messages to send to the group, links to FAQs about the group, or related groups. Maximum length is `4,096` characters. *)
  direct_members_count : string option;  (** The number of users that are direct members of the group. If a group is a member (child) of this group (the parent), members of the child group are not counted in the `directMembersCount` property of the parent group. *)
  email : string option;  (** The group's email address. If your account has multiple domains, select the appropriate domain for the email address. The `email` must be unique. This property is required when creating a group. Group email addresses are subject to the same character usage rules as usernames, see the \[help center\](https://support.google.com/a/answer/9193374) for details. *)
  etag : string option;  (** ETag of the resource. *)
  external_ids : external_id list option;  (** Optional. The list of external IDs for the group, such as an immutable identifier from an external identity provider or directory sync client. Each entry contains a namespace and an ID value. *)
  id : string option;  (** Read-only. The unique ID of a group. A group `id` can be used as a group request URI's `groupKey`. *)
  kind : string option;  (** The type of the API resource. For Groups resources, the value is `admin#directory#group`. *)
  name : string option;  (** The group's display name. *)
  non_editable_aliases : string list option;  (** Read-only. The list of the group's non-editable alias email addresses that are outside of the account's primary domain or subdomains. These are functioning email addresses used by the group. This is a read-only property returned in the API's response for a group. If edited in a group's POST or PUT request, the edit is ignored. *)
}

(** The Directory API manages aliases, which are alternative email addresses. *)
and group_alias = {
  alias : string option;  (** The alias email address. *)
  etag : string option;  (** ETag of the resource. *)
  id : string option;  (** The unique ID of the group. *)
  kind : string option;  (** The type of the API resource. For Alias resources, the value is `admin#directory#alias`. *)
  primary_email : string option;  (** The primary email address of the group. *)
}

and groups = {
  etag : string option;  (** ETag of the resource. *)
  groups : group list option;  (** A list of group objects. *)
  kind : string option;  (** Kind of resource this is. *)
  next_page_token : string option;  (** Token used to access next page of this result. *)
}

(** Account info specific to Guest users. *)
and guest_account_info = {
  primary_guest_email : string option;  (** Immutable. The guest's external email. *)
}

and list_print_servers_response = {
  next_page_token : string option;  (** A token that can be sent as `page_token` in a request to retrieve the next page. If this field is omitted, there are no subsequent pages. *)
  print_servers : print_server list option;  (** List of print servers. *)
}

(** Response for listing allowed printer models. *)
and list_printer_models_response = {
  next_page_token : string option;  (** A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages. *)
  printer_models : printer_model list option;  (** Printer models that are currently allowed to be configured for ChromeOs. Some printers may be added or removed over time. *)
}

(** Response for listing printers. *)
and list_printers_response = {
  next_page_token : string option;  (** A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages. *)
  printers : printer list option;  (** List of printers. If `org_unit_id` was given in the request, then only printers visible for this OU will be returned. If `org_unit_id` was not given in the request, then all printers will be returned. *)
}

(** A Google Groups member can be a user or another group. This member can be inside or outside of your account's domains. For more information about common group member tasks, see the \[Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-group-members). *)
and member = {
  delivery_settings : string option;  (** Defines mail delivery preferences of member. This field is only supported by `insert`, `update`, and `get` methods. *)
  email : string option;  (** The member's email address. A member can be a user or another group. This property is required when adding a member to a group. The `email` must be unique and cannot be an alias of another group. If the email address is changed, the API automatically reflects the email address changes. *)
  etag : string option;  (** ETag of the resource. *)
  id : string option;  (** The unique ID of the group member. A member `id` can be used as a member request URI's `memberKey`. *)
  kind : string option;  (** The type of the API resource. For Members resources, the value is `admin#directory#member`. *)
  role : string option;  (** The member's role in a group. The API returns an error for cycles in group memberships. For example, if `group1` is a member of `group2`, `group2` cannot be a member of `group1`. For more information about a member's role, see the \[administration help center\](https://support.google.com/a/answer/167094). *)
  status : string option;  (** Status of member (Immutable) *)
  type_ : string option;  (** The type of group member. *)
}

and members = {
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** Kind of resource this is. *)
  members : member list option;  (** A list of member objects. *)
  next_page_token : string option;  (** Token used to access next page of this result. *)
}

(** JSON template for Has Member response in Directory API. *)
and members_has_member = {
  is_member : bool option;  (** Output only. Identifies whether the given user is a member of the group. Membership can be direct or nested. *)
}

and mobile_device_applications_item = {
  display_name : string option;  (** The application's display name. An example is `Browser`. *)
  package_name : string option;  (** The application's package name. An example is `com.android.browser`. *)
  permission : string list option;  (** The list of permissions of this application. These can be either a standard Android permission or one defined by the application, and are found in an application's \[Android manifest\](https://developer.android.com/guide/topics/manifest/uses-permission-element.html). Examples of a Calendar application's permissions are `READ_CALENDAR`, or `MANAGE_ACCOUNTS`. *)
  version_code : int option;  (** The application's version code. An example is `13`. *)
  version_name : string option;  (** The application's version name. An example is `3.2-140714`. *)
}

(** Google Workspace Mobile Management includes Android, \[Google Sync\](https://support.google.com/a/answer/135937), and iOS devices. For more information about common group mobile device API tasks, see the \[Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-mobile-devices.html). *)
and mobile_device = {
  adb_status : bool option;  (** Adb (USB debugging) enabled or disabled on device (Read-only) *)
  applications : mobile_device_applications_item list option;  (** The list of applications installed on an Android mobile device. It is not applicable to Google Sync and iOS devices. The list includes any Android applications that access Google Workspace data. When updating an applications list, it is important to note that updates replace the existing list. If the Android device has two existing applications and the API updates the list with five applications, the is now the updated list of five applications. *)
  baseband_version : string option;  (** The device's baseband version. *)
  bootloader_version : string option;  (** Mobile Device Bootloader version (Read-only) *)
  brand : string option;  (** Mobile Device Brand (Read-only) *)
  build_number : string option;  (** The device's operating system build number. *)
  default_language : string option;  (** The default locale used on the device. *)
  developer_options_status : bool option;  (** Developer options enabled or disabled on device (Read-only) *)
  device_compromised_status : string option;  (** The compromised device status. *)
  device_id : string option;  (** The serial number for a Google Sync mobile device. For Android and iOS devices, this is a software generated unique identifier. *)
  device_password_status : string option;  (** DevicePasswordStatus (Read-only) *)
  email : string list option;  (** The list of the owner's email addresses. If your application needs the current list of user emails, use the \[get\](https://developers.google.com/workspace/admin/directory/v1/reference/mobiledevices/get.html) method. For additional information, see the \[retrieve a user\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-users#get_user) method. *)
  encryption_status : string option;  (** Mobile Device Encryption Status (Read-only) *)
  etag : string option;  (** ETag of the resource. *)
  first_sync : string option;  (** Date and time the device was first synchronized with the policy settings in the G Suite administrator control panel (Read-only) *)
  hardware : string option;  (** Mobile Device Hardware (Read-only) *)
  hardware_id : string option;  (** The IMEI/MEID unique identifier for Android hardware. It is not applicable to Google Sync devices. When adding an Android mobile device, this is an optional property. When updating one of these devices, this is a read-only property. *)
  imei : string option;  (** The device's IMEI number. *)
  kernel_version : string option;  (** The device's kernel version. *)
  kind : string option;  (** The type of the API resource. For Mobiledevices resources, the value is `admin#directory#mobiledevice`. *)
  last_sync : string option;  (** Date and time the device was last synchronized with the policy settings in the G Suite administrator control panel (Read-only) *)
  managed_account_is_on_owner_profile : bool option;  (** Boolean indicating if this account is on owner/primary profile or not. *)
  manufacturer : string option;  (** Mobile Device manufacturer (Read-only) *)
  meid : string option;  (** The device's MEID number. *)
  model : string option;  (** The mobile device's model name, for example Nexus S. This property can be \[updated\](https://developers.google.com/workspace/admin/directory/v1/reference/mobiledevices/update.html). For more information, see the \[Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-mobile=devices#update_mobile_device). *)
  name : string list option;  (** The list of the owner's user names. If your application needs the current list of device owner names, use the \[get\](https://developers.google.com/workspace/admin/directory/v1/reference/mobiledevices/get.html) method. For more information about retrieving mobile device user information, see the \[Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-users#get_user). *)
  network_operator : string option;  (** Mobile Device mobile or network operator (if available) (Read-only) *)
  os : string option;  (** The mobile device's operating system, for example IOS 4.3 or Android 2.3.5. This property can be \[updated\](https://developers.google.com/workspace/admin/directory/v1/reference/mobiledevices/update.html). For more information, see the \[Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-mobile-devices#update_mobile_device). *)
  other_accounts_info : string list option;  (** The list of accounts added on device (Read-only) *)
  privilege : string option;  (** DMAgentPermission (Read-only) *)
  release_version : string option;  (** Mobile Device release version version (Read-only) *)
  resource_id : string option;  (** The unique ID the API service uses to identify the mobile device. *)
  security_patch_level : string option;  (** Mobile Device Security patch level (Read-only) *)
  serial_number : string option;  (** The device's serial number. *)
  status : string option;  (** The device's status. *)
  supports_work_profile : bool option;  (** Work profile supported on device (Read-only) *)
  type_ : string option;  (** The type of mobile device. *)
  unknown_sources_status : bool option;  (** Unknown sources enabled or disabled on device (Read-only) *)
  user_agent : string option;  (** Gives information about the device such as `os` version. This property can be \[updated\](https://developers.google.com/workspace/admin/directory/v1/reference/mobiledevices/update.html). For more information, see the \[Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-mobile-devices#update_mobile_device). *)
  wifi_mac_address : string option;  (** The device's MAC address on Wi-Fi networks. *)
}

and mobile_device_action = {
  action : string option;  (** The action to be performed on the device. *)
}

and mobile_devices = {
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** Kind of resource this is. *)
  mobiledevices : mobile_device list option;  (** A list of Mobile Device objects. *)
  next_page_token : string option;  (** Token used to access next page of this result. *)
}

(** Managing your account's organizational units allows you to configure your users' access to services and custom settings. For more information about common organizational unit tasks, see the \[Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-org-units.html). The customer's organizational unit hierarchy is limited to 35 levels of depth. *)
and org_unit = {
  block_inheritance : bool option;  (** This field is deprecated and setting its value has no effect. *)
  description : string option;  (** Description of the organizational unit. *)
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** The type of the API resource. For Orgunits resources, the value is `admin#directory#orgUnit`. *)
  name : string option;  (** The organizational unit's path name. For example, an organizational unit's name within the /corp/support/sales_support parent path is sales_support. Required. *)
  org_unit_id : string option;  (** The unique ID of the organizational unit. *)
  org_unit_path : string option;  (** The full path to the organizational unit. The `orgUnitPath` is a derived property. When listed, it is derived from `parentOrgunitPath` and organizational unit's `name`. For example, for an organizational unit named 'apps' under parent organization '/engineering', the orgUnitPath is '/engineering/apps'. In order to edit an `orgUnitPath`, either update the name of the organization or the `parentOrgunitPath`. A user's organizational unit determines which Google Workspace services the user has access to. If the user is moved to a new organization, the user's access changes. For more information about organization structures, see the \[administration help center\](https://support.google.com/a/answer/4352075). For more information about moving a user to a different organization, see \[Update a user\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-users.html#update_user). *)
  parent_org_unit_id : string option;  (** The unique ID of the parent organizational unit. Required, unless `parentOrgUnitPath` is set. *)
  parent_org_unit_path : string option;  (** The organizational unit's parent path. For example, /corp/sales is the parent path for /corp/sales/sales_support organizational unit. Required, unless `parentOrgUnitId` is set. *)
}

and org_units = {
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** The type of the API resource. For Org Unit resources, the type is `admin#directory#orgUnits`. *)
  organization_units : org_unit list option;  (** A list of organizational unit objects. *)
}

(** Contains information regarding the current OS update status. *)
and os_update_status = {
  reboot_time : string option;  (** Date and time of the last reboot. *)
  state : [ `Update_state_unspecified | `Update_state_not_started | `Update_state_download_in_progress | `Update_state_need_reboot | `Unrecognized of string ] option;  (** The update state of an OS update. *)
  target_kiosk_app_version : string option;  (** New required platform version from the pending updated kiosk app. *)
  target_os_version : string option;  (** New platform version of the OS image being downloaded and applied. It is only set when update status is UPDATE_STATUS_DOWNLOAD_IN_PROGRESS or UPDATE_STATUS_NEED_REBOOT. Note this could be a dummy '0.0.0.0' for UPDATE_STATUS_NEED_REBOOT for some edge cases, e.g. update engine is restarted without a reboot. *)
  update_check_time : string option;  (** Date and time of the last update check. *)
  update_time : string option;  (** Date and time of the last successful OS update. *)
}

(** Configuration for a print server. *)
and print_server = {
  create_time : string option;  (** Output only. Time when the print server was created. *)
  description : string option;  (** Editable. Description of the print server (as shown in the Admin console). *)
  display_name : string option;  (** Editable. Display name of the print server (as shown in the Admin console). *)
  id : string option;  (** Immutable. ID of the print server. Leave empty when creating. *)
  name : string option;  (** Identifier. Resource name of the print server. Leave empty when creating. Format: `customers/\{customer.id\}/printServers/\{print_server.id\}` *)
  org_unit_id : string option;  (** ID of the organization unit (OU) that owns this print server. This value can only be set when the print server is initially created. If it's not populated, the print server is placed under the root OU. The `org_unit_id` can be retrieved using the \[Directory API\](https://developers.google.com/workspace/admin/directory/reference/rest/v1/orgunits). *)
  uri : string option;  (** Editable. Print server URI. *)
}

(** Info about failures *)
and print_server_failure_info = {
  error_code : [ `Ok | `Cancelled | `Unknown | `Invalid_argument | `Deadline_exceeded | `Not_found | `Already_exists | `Permission_denied | `Unauthenticated | `Resource_exhausted | `Failed_precondition | `Aborted | `Out_of_range | `Unimplemented | `Internal | `Unavailable | `Data_loss | `Unrecognized of string ] option;  (** Canonical code for why the update failed to apply. *)
  error_message : string option;  (** Failure reason message. *)
  print_server : print_server option;  (** Failed print server. *)
  print_server_id : string option;  (** ID of a failed print server. *)
}

(** Printer configuration. *)
and printer = {
  auxiliary_messages : auxiliary_message list option;  (** Output only. Auxiliary messages about issues with the printer configuration if any. *)
  create_time : string option;  (** Output only. Time when printer was created. *)
  description : string option;  (** Editable. Description of printer. *)
  display_name : string option;  (** Editable. Name of printer. *)
  id : string option;  (** Id of the printer. (During printer creation leave empty) *)
  make_and_model : string option;  (** Editable. Make and model of printer. e.g. Lexmark MS610de Value must be in format as seen in ListPrinterModels response. *)
  name : string option;  (** Identifier. The resource name of the Printer object, in the format customers/\{customer-id\}/printers/\{printer-id\} (During printer creation leave empty) *)
  org_unit_id : string option;  (** Organization Unit that owns this printer (Only can be set during Printer creation) *)
  uri : string option;  (** Editable. Printer URI. *)
  use_driverless_config : bool option;  (** Editable. flag to use driverless configuration or not. If it's set to be true, make_and_model can be ignored *)
}

(** Printer manufacturer and model *)
and printer_model = {
  display_name : string option;  (** Display name. eq. 'Brother MFC-8840D' *)
  make_and_model : string option;  (** Make and model as represented in 'make_and_model' field in Printer object. eq. 'brother mfc-8840d' *)
  manufacturer : string option;  (** Manufacturer. eq. 'Brother' *)
}

and privilege = {
  child_privileges : privilege list option;  (** A list of child privileges. Privileges for a service form a tree. Each privilege can have a list of child privileges; this list is empty for a leaf privilege. *)
  etag : string option;  (** ETag of the resource. *)
  is_ou_scopable : bool option;  (** If the privilege can be restricted to an organization unit. *)
  kind : string option;  (** The type of the API resource. This is always `admin#directory#privilege`. *)
  privilege_name : string option;  (** The name of the privilege. *)
  service_id : string option;  (** The obfuscated ID of the service this privilege is for. This value is returned with \[`Privileges.list()`\](https://developers.google.com/workspace/admin/directory/v1/reference/privileges/list). *)
  service_name : string option;  (** The name of the service this privilege is for. *)
}

and privileges = {
  etag : string option;  (** ETag of the resource. *)
  items : privilege list option;  (** A list of Privilege resources. *)
  kind : string option;  (** The type of the API resource. This is always `admin#directory#privileges`. *)
}

and role_role_privileges_item = {
  privilege_name : string option;  (** The name of the privilege. *)
  service_id : string option;  (** The obfuscated ID of the service this privilege is for. This value is returned with \[`Privileges.list()`\](https://developers.google.com/workspace/admin/directory/v1/reference/privileges/list). *)
}

and role = {
  etag : string option;  (** ETag of the resource. *)
  is_super_admin_role : bool option;  (** Returns `true` if the role is a super admin role. *)
  is_system_role : bool option;  (** Returns `true` if this is a pre-defined system role. *)
  kind : string option;  (** The type of the API resource. This is always `admin#directory#role`. *)
  role_description : string option;  (** A short description of the role. *)
  role_id : string option;  (** ID of the role. *)
  role_name : string option;  (** Name of the role. *)
  role_privileges : role_role_privileges_item list option;  (** The set of privileges that are granted to this role. *)
}

(** Defines an assignment of a role. *)
and role_assignment = {
  assigned_to : string option;  (** The unique ID of the entity this role is assigned to—either the `user_id` of a user, the `group_id` of a group, or the `uniqueId` of a service account as defined in \[Identity and Access Management (IAM)\](https://cloud.google.com/iam/docs/reference/rest/v1/projects.serviceAccounts). *)
  assignee_type : [ `User | `Group | `Unrecognized of string ] option;  (** Output only. The type of the assignee (`USER` or `GROUP`). *)
  condition : string option;  (** Optional. The condition associated with this role assignment. Note: Feature is available to Enterprise Standard, Enterprise Plus, Google Workspace for Education Plus and Cloud Identity Premium customers. A `RoleAssignment` with the `condition` field set will only take effect when the resource being accessed meets the condition. If `condition` is empty, the role (`role_id`) is applied to the actor (`assigned_to`) at the scope (`scope_type`) unconditionally. Currently, the following conditions are supported: - To make the `RoleAssignment` only applicable to \[Security Groups\](https://cloud.google.com/identity/docs/groups#group_types): `api.getAttribute('cloudidentity.googleapis.com/groups.labels', \[\]).hasAny(\['groups.security'\]) && resource.type == 'cloudidentity.googleapis.com/Group'` - To make the `RoleAssignment` not applicable to \[Security Groups\](https://cloud.google.com/identity/docs/groups#group_types): `!api.getAttribute('cloudidentity.googleapis.com/groups.labels', \[\]).hasAny(\['groups.security'\]) && resource.type == 'cloudidentity.googleapis.com/Group'` Currently, the condition strings have to be verbatim and they only work with the following \[pre-built administrator roles\](https://support.google.com/a/answer/2405986): - Groups Editor - Groups Reader The condition follows \[Cloud IAM condition syntax\](https://cloud.google.com/iam/docs/conditions-overview). - To make the `RoleAssignment` not applicable to \[Locked Groups\](https://cloud.google.com/identity/docs/groups#group_types): `!api.getAttribute('cloudidentity.googleapis.com/groups.labels', \[\]).hasAny(\['groups.locked'\]) && resource.type == 'cloudidentity.googleapis.com/Group'` This condition can also be used in conjunction with a Security-related condition. *)
  etag : string option;  (** ETag of the resource. *)
  expiration_details : expiration_details option;  (** Optional. Details regarding the expiration of this role assignment. *)
  kind : string option;  (** The type of the API resource. This is always `admin#directory#roleAssignment`. *)
  org_unit_id : string option;  (** If the role is restricted to an organization unit, this contains the ID for the organization unit the exercise of this role is restricted to. *)
  role_assignment_id : string option;  (** ID of this roleAssignment. *)
  role_id : string option;  (** The ID of the role that is assigned. *)
  scope_type : string option;  (** The scope in which this role is assigned. *)
}

and role_assignments = {
  etag : string option;  (** ETag of the resource. *)
  items : role_assignment list option;  (** A list of RoleAssignment resources. *)
  kind : string option;  (** The type of the API resource. This is always `admin#directory#roleAssignments`. *)
  next_page_token : string option;
}

and roles = {
  etag : string option;  (** ETag of the resource. *)
  items : role list option;  (** A list of Role resources. *)
  kind : string option;  (** The type of the API resource. This is always `admin#directory#roles`. *)
  next_page_token : string option;
}

(** The type of API resource. For Schema resources, this is always `admin#directory#schema`. *)
and schema = {
  display_name : string option;  (** Display name for the schema. *)
  etag : string option;  (** The ETag of the resource. *)
  fields : schema_field_spec list option;  (** A list of fields in the schema. *)
  kind : string option;  (** Kind of resource this is. *)
  schema_id : string option;  (** The unique identifier of the schema (Read-only) *)
  schema_name : string option;  (** The schema's name. Each `schema_name` must be unique within a customer. Reusing a name results in a `409: Entity already exists` error. *)
}

and schema_field_spec_numeric_indexing_spec = {
  max_value : float option;  (** Maximum value of this field. This is meant to be indicative rather than enforced. Values outside this range will still be indexed, but search may not be as performant. *)
  min_value : float option;  (** Minimum value of this field. This is meant to be indicative rather than enforced. Values outside this range will still be indexed, but search may not be as performant. *)
}

(** You can use schemas to add custom fields to user profiles. You can use these fields to store information such as the projects your users work on, their physical locations, their hire dates, or whatever else fits your business needs. For more information, see \[Custom User Fields\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-schemas). *)
and schema_field_spec = {
  display_name : string option;  (** Display Name of the field. *)
  etag : string option;  (** The ETag of the field. *)
  field_id : string option;  (** The unique identifier of the field (Read-only) *)
  field_name : string option;  (** The name of the field. *)
  field_type : string option;  (** The type of the field. *)
  indexed : bool option;  (** Boolean specifying whether the field is indexed or not. Default: `true`. *)
  kind : string option;  (** The kind of resource this is. For schema fields this is always `admin#directory#schema#fieldspec`. *)
  multi_valued : bool option;  (** A boolean specifying whether this is a multi-valued field or not. Default: `false`. *)
  numeric_indexing_spec : schema_field_spec_numeric_indexing_spec option;  (** Indexing spec for a numeric field. By default, only exact match queries will be supported for numeric fields. Setting the `numericIndexingSpec` allows range queries to be supported. *)
  read_access_type : string option;  (** Specifies who can view values of this field. See \[Retrieve users as a non-administrator\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-users#retrieve_users_non_admin) for more information. Note: It may take up to 24 hours for changes to this field to be reflected. *)
}

(** JSON response template for List Schema operation in Directory API. *)
and schemas = {
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** Kind of resource this is. *)
  schemas : schema list option;  (** A list of UserSchema objects. *)
}

(** The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by \[gRPC\](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the \[API Design Guide\](https://cloud.google.com/apis/design/errors). *)
and status = {
  code : int option;  (** The status code, which should be an enum value of google.rpc.Code. *)
  details : (string * Yojson.Safe.t) list list option;  (** A list of messages that carry the error details. There is a common set of message types for APIs to use. *)
  message : string option;  (** A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client. *)
}

(** JSON template for token resource in Directory API. *)
and token = {
  anonymous : bool option;  (** Whether the application is registered with Google. The value is `true` if the application has an anonymous Client ID. *)
  client_id : string option;  (** The Client ID of the application the token is issued to. *)
  display_text : string option;  (** The displayable name of the application the token is issued to. *)
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** The type of the API resource. This is always `admin#directory#token`. *)
  native_app : bool option;  (** Whether the token is issued to an installed application. The value is `true` if the application is installed to a desktop or mobile device. *)
  scopes : string list option;  (** A list of authorization scopes the application is granted. *)
  user_key : string option;  (** The unique ID of the user that issued the token. *)
}

(** JSON response template for List tokens operation in Directory API. *)
and tokens = {
  etag : string option;  (** ETag of the resource. *)
  items : token list option;  (** A list of Token resources. *)
  kind : string option;  (** The type of the API resource. This is always `admin#directory#tokenList`. *)
}

(** The Directory API allows you to create and manage your account's users, user aliases, and user Google profile photos. For more information about common tasks, see the \[User Accounts Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-users.html) and the \[User Aliases Developer's Guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-user-aliases.html). *)
and user = {
  addresses : Yojson.Safe.t option;  (** The list of the user's addresses. The maximum allowed data size for this field is 10KB. *)
  agreed_to_terms : bool option;  (** Output only. This property is `true` if the user has completed an initial login and accepted the Terms of Service agreement. *)
  aliases : string list option;  (** Output only. The list of the user's alias email addresses. *)
  archival_time : string option;  (** Output only. User's account archival time. (Read-only) *)
  archived : bool option;  (** Indicates if user is archived. *)
  change_password_at_next_login : bool option;  (** Indicates if the user is forced to change their password at next login. This setting doesn't apply when \[the user signs in via a third-party identity provider\](https://support.google.com/a/answer/60224). *)
  creation_time : string option;  (** User's G Suite account creation time. (Read-only) *)
  custom_schemas : (string * user_custom_properties) list option;  (** Custom fields of the user. The key is a `schema_name` and its values are `'field_name': 'field_value'`. *)
  customer_id : string option;  (** Output only. The customer ID to \[retrieve all account users\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-users.html#get_all_users). You can use the alias `my_customer` to represent your account's `customerId`. As a reseller administrator, you can use the resold customer account's `customerId`. To get a `customerId`, use the account's primary domain in the `domain` parameter of a \[users.list\](https://developers.google.com/workspace/admin/directory/v1/reference/users/list) request. *)
  deletion_time : string option;
  emails : Yojson.Safe.t option;  (** The list of the user's email addresses. The maximum allowed data size for this field is 10KB. This excludes `publicKeyEncryptionCertificates`. *)
  etag : string option;  (** Output only. ETag of the resource. *)
  external_ids : Yojson.Safe.t option;  (** The list of external IDs for the user, such as an employee or network ID. The maximum allowed data size for this field is 2KB. *)
  gender : Yojson.Safe.t option;  (** The user's gender. The maximum allowed data size for this field is 1KB. *)
  guest_account_info : guest_account_info option;  (** Immutable. Additional guest-related metadata fields *)
  hash_function : string option;  (** Stores the hash format of the `password` property. The following `hashFunction` values are allowed: * `MD5` - Accepts simple hex-encoded values. * `SHA-1` - Accepts simple hex-encoded values. * `crypt` - Compliant with the \[C crypt library\](https://en.wikipedia.org/wiki/Crypt_%28C%29). Supports the DES, MD5 (hash prefix `$1$`), SHA-256 (hash prefix `$5$`), and SHA-512 (hash prefix `$6$`) hash algorithms. If rounds are specified as part of the prefix, they must be 10,000 or fewer. *)
  id : string option;  (** The unique ID for the user. A user `id` can be used as a user request URI's `userKey`. *)
  ims : Yojson.Safe.t option;  (** The list of the user's Instant Messenger (IM) accounts. A user account can have multiple ims properties. But, only one of these ims properties can be the primary IM contact. The maximum allowed data size for this field is 2KB. *)
  include_in_global_address_list : bool option;  (** Indicates if the user's profile is visible in the Google Workspace global address list when the contact sharing feature is enabled for the domain. For more information about excluding user profiles, see the \[administration help center\](https://support.google.com/a/answer/1285988). *)
  ip_whitelisted : bool option;  (** If `true`, the user's IP address is subject to a deprecated IP address \[`allowlist`\](https://support.google.com/a/answer/60752) configuration. *)
  is_admin : bool option;  (** Output only. Indicates a user with super administrator privileges. The `isAdmin` property can only be edited in the \[Make a user an administrator\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-users.html#make_admin) operation ( \[makeAdmin\](https://developers.google.com/workspace/admin/directory/v1/reference/users/makeAdmin.html) method). If edited in the user \[insert\](https://developers.google.com/workspace/admin/directory/v1/reference/users/insert.html) or \[update\](https://developers.google.com/workspace/admin/directory/v1/reference/users/update.html) methods, the edit is ignored by the API service. *)
  is_delegated_admin : bool option;  (** Output only. Indicates if the user is a delegated administrator. Delegated administrators are supported by the API but cannot create or undelete users, or make users administrators. These requests are ignored by the API service. Roles and privileges for administrators are assigned using the \[Admin console\](https://support.google.com/a/answer/33325). *)
  is_enforced_in2_sv : bool option;  (** Output only. Is 2-step verification enforced (Read-only) *)
  is_enrolled_in2_sv : bool option;  (** Output only. Is enrolled in 2-step verification (Read-only) *)
  is_guest_user : bool option;  (** Immutable. Indicates if the inserted user is a guest. *)
  is_mailbox_setup : bool option;  (** Output only. Indicates if the user's Google mailbox is created. This property is only applicable if the user has been assigned a Gmail license. *)
  keywords : Yojson.Safe.t option;  (** The list of the user's keywords. The maximum allowed data size for this field is 1KB. *)
  kind : string option;  (** Output only. The type of the API resource. For Users resources, the value is `admin#directory#user`. *)
  languages : Yojson.Safe.t option;  (** The user's languages. The maximum allowed data size for this field is 1KB. *)
  last_login_time : string option;  (** User's last login time. (Read-only) *)
  locations : Yojson.Safe.t option;  (** The user's locations. The maximum allowed data size for this field is 10KB. *)
  name : user_name option;  (** Holds the given and family names of the user, and the read-only `fullName` value. The maximum number of characters in the `givenName` and in the `familyName` values is 60. In addition, name values support unicode/UTF-8 characters, and can contain spaces, letters (a-z), numbers (0-9), dashes (-), forward slashes (/), and periods (.). For more information about character usage rules, see the \[administration help center\](https://support.google.com/a/answer/9193374). Maximum allowed data size for this field is 1KB. *)
  non_editable_aliases : string list option;  (** Output only. The list of the user's non-editable alias email addresses. These are typically outside the account's primary domain or sub-domain. *)
  notes : Yojson.Safe.t option;  (** Notes for the user. *)
  org_unit_path : string option;  (** The full path of the parent organization associated with the user. If the parent organization is the top-level, it is represented as a forward slash (`/`). *)
  organizations : Yojson.Safe.t option;  (** The list of organizations the user belongs to. The maximum allowed data size for this field is 10KB. *)
  password : string option;  (** User's password *)
  phones : Yojson.Safe.t option;  (** The list of the user's phone numbers. The maximum allowed data size for this field is 1KB. *)
  posix_accounts : Yojson.Safe.t option;  (** The list of \[POSIX\](https://www.opengroup.org/austin/papers/posix_faq.html) account information for the user. *)
  primary_email : string option;  (** The user's primary email address. This property is required in a request to create a user account. The `primaryEmail` must be unique and cannot be an alias of another user. *)
  recovery_email : string option;  (** Recovery email of the user. *)
  recovery_phone : string option;  (** Recovery phone of the user. The phone number must be in the E.164 format, starting with the plus sign (+). Example: *+16506661212*. *)
  relations : Yojson.Safe.t option;  (** The list of the user's relationships to other users. The maximum allowed data size for this field is 2KB. *)
  ssh_public_keys : Yojson.Safe.t option;  (** A list of SSH public keys. *)
  suspended : bool option;  (** Indicates if user is suspended. *)
  suspension_reason : string option;  (** Output only. Has the reason a user account is suspended either by the administrator or by Google at the time of suspension. The property is returned only if the `suspended` property is `true`. *)
  suspension_time : string option;  (** Output only. User's account suspension time. (Read-only) *)
  thumbnail_photo_etag : string option;  (** Output only. ETag of the user's photo (Read-only) *)
  thumbnail_photo_url : string option;  (** Output only. The URL of the user's profile photo. The URL might be temporary or private. *)
  websites : Yojson.Safe.t option;  (** The user's websites. The maximum allowed data size for this field is 2KB. *)
}

(** JSON template for About (notes) of a user in Directory API. *)
and user_about = {
  content_type : string option;  (** About entry can have a type which indicates the content type. It can either be plain or html. By default, notes contents are assumed to contain plain text. *)
  value : string option;  (** Actual value of notes. *)
}

(** JSON template for address. *)
and user_address = {
  country : string option;  (** Country. *)
  country_code : string option;  (** Country code. *)
  custom_type : string option;  (** Custom type. *)
  extended_address : string option;  (** Extended Address. *)
  formatted : string option;  (** Formatted address. *)
  locality : string option;  (** Locality. *)
  po_box : string option;  (** Other parts of address. *)
  postal_code : string option;  (** Postal code. *)
  primary : bool option;  (** If this is user's primary address. Only one entry could be marked as primary. *)
  region : string option;  (** Region. *)
  source_is_structured : bool option;  (** User supplied address was structured. Structured addresses are NOT supported at this time. You might be able to write structured addresses but any values will eventually be clobbered. *)
  street_address : string option;  (** Street. *)
  type_ : string option;  (** Each entry can have a type which indicates standard values of that entry. For example address could be of home work etc. In addition to the standard type an entry can have a custom type and can take any value. Such type should have the CUSTOM value as type and also have a customType value. *)
}

(** The Directory API manages aliases, which are alternative email addresses. *)
and user_alias = {
  alias : string option;  (** The alias email address. *)
  etag : string option;  (** ETag of the resource. *)
  id : string option;  (** The unique ID for the user. *)
  kind : string option;  (** The type of the API resource. For Alias resources, the value is `admin#directory#alias`. *)
  primary_email : string option;  (** The user's primary email address. *)
}

(** JSON template for a set of custom properties (i.e. all fields in a particular schema) *)
and user_custom_properties = (string * Yojson.Safe.t) list

and user_email_public_key_encryption_certificates = {
  certificate : string option;  (** X.509 encryption certificate in `PEM` format. Must only be an end-entity (leaf) certificate. *)
  is_default : bool option;  (** Whether this is the default certificate for the given email address. *)
  state : string option;  (** Denotes the certificate's state in its lifecycle. Possible values are `not_yet_validated`, `valid`, `invalid`, `expired`, and `revoked`. *)
}

(** JSON template for an email. *)
and user_email = {
  address : string option;  (** Email id of the user. *)
  custom_type : string option;  (** Custom Type. *)
  primary : bool option;  (** If this is user's primary email. Only one entry could be marked as primary. *)
  public_key_encryption_certificates : user_email_public_key_encryption_certificates option;  (** Public Key Encryption Certificates. Current limit: 1 per email address, and 5 per user. *)
  type_ : string option;  (** Each entry can have a type which indicates standard types of that entry. For example email could be of home, work etc. In addition to the standard type, an entry can have a custom type and can take any value Such types should have the CUSTOM value as type and also have a customType value. *)
}

(** JSON template for an externalId entry. *)
and user_external_id = {
  custom_type : string option;  (** Custom type. *)
  type_ : string option;  (** The type of the Id. *)
  value : string option;  (** The value of the id. *)
}

and user_gender = {
  address_me_as : string option;  (** AddressMeAs. A human-readable string containing the proper way to refer to the profile owner by humans for example he/him/his or they/them/their. *)
  custom_gender : string option;  (** Custom gender. *)
  type_ : string option;  (** Gender. *)
}

(** JSON template for instant messenger of an user. *)
and user_im = {
  custom_protocol : string option;  (** Custom protocol. *)
  custom_type : string option;  (** Custom type. *)
  im : string option;  (** Instant messenger id. *)
  primary : bool option;  (** If this is user's primary im. Only one entry could be marked as primary. *)
  protocol : string option;  (** Protocol used in the instant messenger. It should be one of the values from ImProtocolTypes map. Similar to type it can take a CUSTOM value and specify the custom name in customProtocol field. *)
  type_ : string option;  (** Each entry can have a type which indicates standard types of that entry. For example instant messengers could be of home work etc. In addition to the standard type an entry can have a custom type and can take any value. Such types should have the CUSTOM value as type and also have a customType value. *)
}

(** JSON template for a keyword entry. *)
and user_keyword = {
  custom_type : string option;  (** Custom Type. *)
  type_ : string option;  (** Each entry can have a type which indicates standard type of that entry. For example keyword could be of type occupation or outlook. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value. *)
  value : string option;  (** Keyword. *)
}

(** JSON template for a language entry. *)
and user_language = {
  custom_language : string option;  (** Other language. User can provide their own language name if there is no corresponding ISO 639 language code. If this is set, `languageCode` can't be set. *)
  language_code : string option;  (** ISO 639 string representation of a language. See \[Language Codes\](/admin-sdk/directory/v1/languages) for the list of supported codes. Valid language codes outside the supported set will be accepted by the API but may lead to unexpected behavior. Illegal values cause `SchemaException`. If this is set, `customLanguage` can't be set. *)
  preference : string option;  (** Optional. If present, controls whether the specified `languageCode` is the user's preferred language. If `customLanguage` is set, this can't be set. Allowed values are `preferred` and `not_preferred`. *)
}

(** JSON template for a location entry. *)
and user_location = {
  area : string option;  (** Required. Textual location. This is most useful for display purposes to concisely describe the location. For example 'Mountain View, CA', 'Near Seattle', 'US-NYC-9TH 9A209A.'' *)
  building_id : string option;  (** Building Identifier. *)
  custom_type : string option;  (** Custom Type. *)
  desk_code : string option;  (** Most specific textual code of individual desk location. *)
  floor_name : string option;  (** Floor name/number. *)
  floor_section : string option;  (** Floor section. More specific location within the floor. For example if a floor is divided into sections 'A', 'B' and 'C' this field would identify one of those values. *)
  type_ : string option;  (** Each entry can have a type which indicates standard types of that entry. For example location could be of types default and desk. In addition to standard type an entry can have a custom type and can give it any name. Such types should have 'custom' as type and also have a customType value. *)
}

and user_make_admin = {
  status : bool option;  (** Indicates the administrator status of the user. *)
}

and user_name = {
  display_name : string option;  (** The user's display name. Limit: 256 characters. *)
  family_name : string option;  (** The user's last name. Required when creating a user account. *)
  full_name : string option;  (** The user's full name formed by concatenating the first and last name values. *)
  given_name : string option;  (** The user's first name. Required when creating a user account. *)
}

(** JSON template for an organization entry. *)
and user_organization = {
  cost_center : string option;  (** The cost center of the users department. *)
  custom_type : string option;  (** Custom type. *)
  department : string option;  (** Department within the organization. *)
  description : string option;  (** Description of the organization. *)
  domain : string option;  (** The domain to which the organization belongs to. *)
  full_time_equivalent : int option;  (** The full-time equivalent millipercent within the organization (100000 = 100%). *)
  location : string option;  (** Location of the organization. This need not be fully qualified address. *)
  name : string option;  (** Name of the organization *)
  primary : bool option;  (** If it user's primary organization. *)
  symbol : string option;  (** Symbol of the organization. *)
  title : string option;  (** Title (designation) of the user in the organization. *)
  type_ : string option;  (** Each entry can have a type which indicates standard types of that entry. For example organization could be of school work etc. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a CustomType value. *)
}

(** JSON template for a phone entry. *)
and user_phone = {
  custom_type : string option;  (** Custom Type. *)
  primary : bool option;  (** If this is user's primary phone or not. *)
  type_ : string option;  (** Each entry can have a type which indicates standard types of that entry. For example phone could be of home_fax work mobile etc. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value. *)
  value : string option;  (** Phone number. *)
}

and user_photo = {
  etag : string option;  (** ETag of the resource. *)
  height : int option;  (** Height of the photo in pixels. *)
  id : string option;  (** The ID the API uses to uniquely identify the user. *)
  kind : string option;  (** The type of the API resource. For Photo resources, this is `admin#directory#user#photo`. *)
  mime_type : string option;  (** The MIME type of the photo. Allowed values are `JPEG`, `PNG`, `GIF`, `BMP`, `TIFF`, and web-safe base64 encoding. *)
  photo_data : string option;  (** The user photo's upload data in \[web-safe Base64\](https://en.wikipedia.org/wiki/Base64#URL_applications) format in bytes. This means: * The slash (/) character is replaced with the underscore (_) character. * The plus sign (+) character is replaced with the hyphen (-) character. * The equals sign (=) character is replaced with the asterisk ( * ). * For padding, the period (.) character is used instead of the RFC-4648 baseURL definition which uses the equals sign (=) for padding. This is done to simplify URL-parsing. * Whatever the size of the photo being uploaded, the API downsizes it to 96x96 pixels. *)
  primary_email : string option;  (** The user's primary email address. *)
  width : int option;  (** Width of the photo in pixels. *)
}

(** JSON template for a POSIX account entry. *)
and user_posix_account = {
  account_id : string option;  (** A POSIX account field identifier. *)
  gecos : string option;  (** The GECOS (user information) for this account. *)
  gid : string option;  (** The default group ID. *)
  home_directory : string option;  (** The path to the home directory for this account. *)
  operating_system_type : string option;  (** The operating system type for this account. *)
  primary : bool option;  (** If this is user's primary account within the SystemId. *)
  shell : string option;  (** The path to the login shell for this account. *)
  system_id : string option;  (** System identifier for which account Username or Uid apply to. *)
  uid : string option;  (** The POSIX compliant user ID. *)
  username : string option;  (** The username of the account. *)
}

(** JSON template for a relation entry. *)
and user_relation = {
  custom_type : string option;  (** Custom Type. *)
  type_ : string option;  (** The relation of the user. Some of the possible values are mother father sister brother manager assistant partner. *)
  value : string option;  (** The name of the relation. *)
}

(** JSON template for a POSIX account entry. *)
and user_ssh_public_key = {
  expiration_time_usec : string option;  (** An expiration time in microseconds since epoch. *)
  fingerprint : string option;  (** A SHA-256 fingerprint of the SSH public key. (Read-only) *)
  key : string option;  (** An SSH public key. *)
}

and user_undelete = {
  org_unit_path : string option;  (** OrgUnit of User *)
}

(** JSON template for a website entry. *)
and user_website = {
  custom_type : string option;  (** Custom Type. *)
  primary : bool option;  (** If this is user's primary website or not. *)
  type_ : string option;  (** Each entry can have a type which indicates standard types of that entry. For example website could be of home work blog etc. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value. *)
  value : string option;  (** Website. *)
}

and users = {
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** Kind of resource this is. *)
  next_page_token : string option;  (** Token used to access next page of this result. The page token is only valid for three days. *)
  trigger_event : string option;  (** Event that triggered this response (only used in case of Push Response) *)
  users : user list option;  (** A list of user objects. *)
}

(** The Directory API allows you to view, generate, and invalidate backup verification codes for a user. *)
and verification_code = {
  etag : string option;  (** ETag of the resource. *)
  kind : string option;  (** The type of the resource. This is always `admin#directory#verificationCode`. *)
  user_id : string option;  (** The obfuscated unique ID of the user. *)
  verification_code : string option;  (** A current verification code for the user. Invalidated or used verification codes are not returned as part of the result. *)
}

(** JSON response template for list verification codes operation in Directory API. *)
and verification_codes = {
  etag : string option;  (** ETag of the resource. *)
  items : verification_code list option;  (** A list of verification code resources. *)
  kind : string option;  (** The type of the resource. This is always `admin#directory#verificationCodesList`. *)
}

val alias_of_yojson : Yojson.Safe.t -> alias
val yojson_of_alias : alias -> Yojson.Safe.t

val make_alias :
  ?alias:string ->
  ?etag:string ->
  ?id:string ->
  ?kind:string ->
  ?primary_email:string ->
  unit ->
  alias

val aliases_of_yojson : Yojson.Safe.t -> aliases
val yojson_of_aliases : aliases -> Yojson.Safe.t

val make_aliases :
  ?aliases:Yojson.Safe.t list ->
  ?etag:string ->
  ?kind:string ->
  unit ->
  aliases

val asp_of_yojson : Yojson.Safe.t -> asp
val yojson_of_asp : asp -> Yojson.Safe.t

val make_asp :
  ?code_id:int ->
  ?creation_time:string ->
  ?etag:string ->
  ?kind:string ->
  ?last_time_used:string ->
  ?name:string ->
  ?user_key:string ->
  unit ->
  asp

val asps_of_yojson : Yojson.Safe.t -> asps
val yojson_of_asps : asps -> Yojson.Safe.t

val make_asps :
  ?etag:string ->
  ?items:asp list ->
  ?kind:string ->
  unit ->
  asps

val auxiliary_message_of_yojson : Yojson.Safe.t -> auxiliary_message
val yojson_of_auxiliary_message : auxiliary_message -> Yojson.Safe.t

val make_auxiliary_message :
  ?auxiliary_message:string ->
  ?field_mask:string ->
  ?severity:[ `Severity_unspecified | `Severity_info | `Severity_warning | `Severity_error | `Unrecognized of string ] ->
  unit ->
  auxiliary_message

val backlight_info_of_yojson : Yojson.Safe.t -> backlight_info
val yojson_of_backlight_info : backlight_info -> Yojson.Safe.t

val make_backlight_info :
  ?brightness:int ->
  ?max_brightness:int ->
  ?path:string ->
  unit ->
  backlight_info

val batch_change_chrome_os_device_status_request_of_yojson : Yojson.Safe.t -> batch_change_chrome_os_device_status_request
val yojson_of_batch_change_chrome_os_device_status_request : batch_change_chrome_os_device_status_request -> Yojson.Safe.t

val make_batch_change_chrome_os_device_status_request :
  ?change_chrome_os_device_status_action:[ `Change_chrome_os_device_status_action_unspecified | `Change_chrome_os_device_status_action_deprovision | `Change_chrome_os_device_status_action_disable | `Change_chrome_os_device_status_action_reenable | `Unrecognized of string ] ->
  ?deprovision_reason:[ `Deprovision_reason_unspecified | `Deprovision_reason_same_model_replacement | `Deprovision_reason_upgrade | `Deprovision_reason_domain_move | `Deprovision_reason_service_expiration | `Deprovision_reason_other | `Deprovision_reason_different_model_replacement | `Deprovision_reason_retiring_device | `Deprovision_reason_upgrade_transfer | `Deprovision_reason_not_required | `Deprovision_reason_repair_center | `Unrecognized of string ] ->
  ?device_ids:string list ->
  unit ->
  batch_change_chrome_os_device_status_request

val batch_change_chrome_os_device_status_response_of_yojson : Yojson.Safe.t -> batch_change_chrome_os_device_status_response
val yojson_of_batch_change_chrome_os_device_status_response : batch_change_chrome_os_device_status_response -> Yojson.Safe.t

val make_batch_change_chrome_os_device_status_response :
  ?change_chrome_os_device_status_results:change_chrome_os_device_status_result list ->
  unit ->
  batch_change_chrome_os_device_status_response

val batch_create_print_servers_request_of_yojson : Yojson.Safe.t -> batch_create_print_servers_request
val yojson_of_batch_create_print_servers_request : batch_create_print_servers_request -> Yojson.Safe.t

val make_batch_create_print_servers_request :
  ?requests:create_print_server_request list ->
  unit ->
  batch_create_print_servers_request

val batch_create_print_servers_response_of_yojson : Yojson.Safe.t -> batch_create_print_servers_response
val yojson_of_batch_create_print_servers_response : batch_create_print_servers_response -> Yojson.Safe.t

val make_batch_create_print_servers_response :
  ?failures:print_server_failure_info list ->
  ?print_servers:print_server list ->
  unit ->
  batch_create_print_servers_response

val batch_create_printers_request_of_yojson : Yojson.Safe.t -> batch_create_printers_request
val yojson_of_batch_create_printers_request : batch_create_printers_request -> Yojson.Safe.t

val make_batch_create_printers_request :
  ?requests:create_printer_request list ->
  unit ->
  batch_create_printers_request

val batch_create_printers_response_of_yojson : Yojson.Safe.t -> batch_create_printers_response
val yojson_of_batch_create_printers_response : batch_create_printers_response -> Yojson.Safe.t

val make_batch_create_printers_response :
  ?failures:failure_info list ->
  ?printers:printer list ->
  unit ->
  batch_create_printers_response

val batch_delete_print_servers_request_of_yojson : Yojson.Safe.t -> batch_delete_print_servers_request
val yojson_of_batch_delete_print_servers_request : batch_delete_print_servers_request -> Yojson.Safe.t

val make_batch_delete_print_servers_request :
  ?print_server_ids:string list ->
  unit ->
  batch_delete_print_servers_request

val batch_delete_print_servers_response_of_yojson : Yojson.Safe.t -> batch_delete_print_servers_response
val yojson_of_batch_delete_print_servers_response : batch_delete_print_servers_response -> Yojson.Safe.t

val make_batch_delete_print_servers_response :
  ?failed_print_servers:print_server_failure_info list ->
  ?print_server_ids:string list ->
  unit ->
  batch_delete_print_servers_response

val batch_delete_printers_request_of_yojson : Yojson.Safe.t -> batch_delete_printers_request
val yojson_of_batch_delete_printers_request : batch_delete_printers_request -> Yojson.Safe.t

val make_batch_delete_printers_request :
  ?printer_ids:string list ->
  unit ->
  batch_delete_printers_request

val batch_delete_printers_response_of_yojson : Yojson.Safe.t -> batch_delete_printers_response
val yojson_of_batch_delete_printers_response : batch_delete_printers_response -> Yojson.Safe.t

val make_batch_delete_printers_response :
  ?failed_printers:failure_info list ->
  ?printer_ids:string list ->
  unit ->
  batch_delete_printers_response

val bluetooth_adapter_info_of_yojson : Yojson.Safe.t -> bluetooth_adapter_info
val yojson_of_bluetooth_adapter_info : bluetooth_adapter_info -> Yojson.Safe.t

val make_bluetooth_adapter_info :
  ?address:string ->
  ?num_connected_devices:int ->
  unit ->
  bluetooth_adapter_info

val building_of_yojson : Yojson.Safe.t -> building
val yojson_of_building : building -> Yojson.Safe.t

val make_building :
  ?address:building_address ->
  ?building_id:string ->
  ?building_name:string ->
  ?coordinates:building_coordinates ->
  ?description:string ->
  ?etags:string ->
  ?floor_names:string list ->
  ?kind:string ->
  unit ->
  building

val building_address_of_yojson : Yojson.Safe.t -> building_address
val yojson_of_building_address : building_address -> Yojson.Safe.t

val make_building_address :
  ?address_lines:string list ->
  ?administrative_area:string ->
  ?language_code:string ->
  ?locality:string ->
  ?postal_code:string ->
  ?region_code:string ->
  ?sublocality:string ->
  unit ->
  building_address

val building_coordinates_of_yojson : Yojson.Safe.t -> building_coordinates
val yojson_of_building_coordinates : building_coordinates -> Yojson.Safe.t

val make_building_coordinates :
  ?latitude:float ->
  ?longitude:float ->
  unit ->
  building_coordinates

val buildings_of_yojson : Yojson.Safe.t -> buildings
val yojson_of_buildings : buildings -> Yojson.Safe.t

val make_buildings :
  ?buildings:building list ->
  ?etag:string ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  buildings

val byte_usage_of_yojson : Yojson.Safe.t -> byte_usage
val yojson_of_byte_usage : byte_usage -> Yojson.Safe.t

val make_byte_usage :
  ?capacity_bytes:string ->
  ?used_bytes:string ->
  unit ->
  byte_usage

val calendar_resource_of_yojson : Yojson.Safe.t -> calendar_resource
val yojson_of_calendar_resource : calendar_resource -> Yojson.Safe.t

val make_calendar_resource :
  ?building_id:string ->
  ?capacity:int ->
  ?etags:string ->
  ?feature_instances:Yojson.Safe.t ->
  ?floor_name:string ->
  ?floor_section:string ->
  ?generated_resource_name:string ->
  ?kind:string ->
  ?resource_category:string ->
  ?resource_description:string ->
  ?resource_email:string ->
  ?resource_id:string ->
  ?resource_name:string ->
  ?resource_type:string ->
  ?user_visible_description:string ->
  unit ->
  calendar_resource

val calendar_resources_of_yojson : Yojson.Safe.t -> calendar_resources
val yojson_of_calendar_resources : calendar_resources -> Yojson.Safe.t

val make_calendar_resources :
  ?etag:string ->
  ?items:calendar_resource list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  calendar_resources

val change_chrome_os_device_status_result_of_yojson : Yojson.Safe.t -> change_chrome_os_device_status_result
val yojson_of_change_chrome_os_device_status_result : change_chrome_os_device_status_result -> Yojson.Safe.t

val make_change_chrome_os_device_status_result :
  ?device_id:string ->
  ?error:status ->
  ?response:change_chrome_os_device_status_succeeded ->
  unit ->
  change_chrome_os_device_status_result

val change_chrome_os_device_status_succeeded_of_yojson : Yojson.Safe.t -> change_chrome_os_device_status_succeeded
val yojson_of_change_chrome_os_device_status_succeeded : change_chrome_os_device_status_succeeded -> Yojson.Safe.t

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

val chrome_os_device_active_time_ranges_item_of_yojson : Yojson.Safe.t -> chrome_os_device_active_time_ranges_item
val yojson_of_chrome_os_device_active_time_ranges_item : chrome_os_device_active_time_ranges_item -> Yojson.Safe.t

val make_chrome_os_device_active_time_ranges_item :
  ?active_time:int ->
  ?date:string ->
  unit ->
  chrome_os_device_active_time_ranges_item

val chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item_of_yojson : Yojson.Safe.t -> chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item
val yojson_of_chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item : chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item -> Yojson.Safe.t

val make_chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item :
  ?display_name:string ->
  ?session_duration:string ->
  unit ->
  chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item

val chrome_os_device_cpu_info_item_logical_cpus_item_of_yojson : Yojson.Safe.t -> chrome_os_device_cpu_info_item_logical_cpus_item
val yojson_of_chrome_os_device_cpu_info_item_logical_cpus_item : chrome_os_device_cpu_info_item_logical_cpus_item -> Yojson.Safe.t

val make_chrome_os_device_cpu_info_item_logical_cpus_item :
  ?c_states:chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item list ->
  ?current_scaling_frequency_khz:int ->
  ?idle_duration:string ->
  ?max_scaling_frequency_khz:int ->
  unit ->
  chrome_os_device_cpu_info_item_logical_cpus_item

val chrome_os_device_cpu_info_item_of_yojson : Yojson.Safe.t -> chrome_os_device_cpu_info_item
val yojson_of_chrome_os_device_cpu_info_item : chrome_os_device_cpu_info_item -> Yojson.Safe.t

val make_chrome_os_device_cpu_info_item :
  ?architecture:string ->
  ?logical_cpus:chrome_os_device_cpu_info_item_logical_cpus_item list ->
  ?max_clock_speed_khz:int ->
  ?model:string ->
  unit ->
  chrome_os_device_cpu_info_item

val chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item_of_yojson : Yojson.Safe.t -> chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item
val yojson_of_chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item : chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item -> Yojson.Safe.t

val make_chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item :
  ?label:string ->
  ?temperature:int ->
  unit ->
  chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item

val chrome_os_device_cpu_status_reports_item_of_yojson : Yojson.Safe.t -> chrome_os_device_cpu_status_reports_item
val yojson_of_chrome_os_device_cpu_status_reports_item : chrome_os_device_cpu_status_reports_item -> Yojson.Safe.t

val make_chrome_os_device_cpu_status_reports_item :
  ?cpu_temperature_info:chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item list ->
  ?cpu_utilization_percentage_info:int list ->
  ?report_time:string ->
  unit ->
  chrome_os_device_cpu_status_reports_item

val chrome_os_device_device_files_item_of_yojson : Yojson.Safe.t -> chrome_os_device_device_files_item
val yojson_of_chrome_os_device_device_files_item : chrome_os_device_device_files_item -> Yojson.Safe.t

val make_chrome_os_device_device_files_item :
  ?create_time:string ->
  ?download_url:string ->
  ?name:string ->
  ?type_:string ->
  unit ->
  chrome_os_device_device_files_item

val chrome_os_device_disk_volume_reports_item_volume_info_item_of_yojson : Yojson.Safe.t -> chrome_os_device_disk_volume_reports_item_volume_info_item
val yojson_of_chrome_os_device_disk_volume_reports_item_volume_info_item : chrome_os_device_disk_volume_reports_item_volume_info_item -> Yojson.Safe.t

val make_chrome_os_device_disk_volume_reports_item_volume_info_item :
  ?storage_free:string ->
  ?storage_total:string ->
  ?volume_id:string ->
  unit ->
  chrome_os_device_disk_volume_reports_item_volume_info_item

val chrome_os_device_disk_volume_reports_item_of_yojson : Yojson.Safe.t -> chrome_os_device_disk_volume_reports_item
val yojson_of_chrome_os_device_disk_volume_reports_item : chrome_os_device_disk_volume_reports_item -> Yojson.Safe.t

val make_chrome_os_device_disk_volume_reports_item :
  ?volume_info:chrome_os_device_disk_volume_reports_item_volume_info_item list ->
  unit ->
  chrome_os_device_disk_volume_reports_item

val chrome_os_device_last_known_network_item_of_yojson : Yojson.Safe.t -> chrome_os_device_last_known_network_item
val yojson_of_chrome_os_device_last_known_network_item : chrome_os_device_last_known_network_item -> Yojson.Safe.t

val make_chrome_os_device_last_known_network_item :
  ?ip_address:string ->
  ?wan_ip_address:string ->
  unit ->
  chrome_os_device_last_known_network_item

val chrome_os_device_recent_users_item_of_yojson : Yojson.Safe.t -> chrome_os_device_recent_users_item
val yojson_of_chrome_os_device_recent_users_item : chrome_os_device_recent_users_item -> Yojson.Safe.t

val make_chrome_os_device_recent_users_item :
  ?email:string ->
  ?type_:string ->
  unit ->
  chrome_os_device_recent_users_item

val chrome_os_device_screenshot_files_item_of_yojson : Yojson.Safe.t -> chrome_os_device_screenshot_files_item
val yojson_of_chrome_os_device_screenshot_files_item : chrome_os_device_screenshot_files_item -> Yojson.Safe.t

val make_chrome_os_device_screenshot_files_item :
  ?create_time:string ->
  ?download_url:string ->
  ?name:string ->
  ?type_:string ->
  unit ->
  chrome_os_device_screenshot_files_item

val chrome_os_device_system_ram_free_reports_item_of_yojson : Yojson.Safe.t -> chrome_os_device_system_ram_free_reports_item
val yojson_of_chrome_os_device_system_ram_free_reports_item : chrome_os_device_system_ram_free_reports_item -> Yojson.Safe.t

val make_chrome_os_device_system_ram_free_reports_item :
  ?report_time:string ->
  ?system_ram_free_info:string list ->
  unit ->
  chrome_os_device_system_ram_free_reports_item

val chrome_os_device_tpm_version_info_of_yojson : Yojson.Safe.t -> chrome_os_device_tpm_version_info
val yojson_of_chrome_os_device_tpm_version_info : chrome_os_device_tpm_version_info -> Yojson.Safe.t

val make_chrome_os_device_tpm_version_info :
  ?family:string ->
  ?firmware_version:string ->
  ?manufacturer:string ->
  ?spec_level:string ->
  ?tpm_model:string ->
  ?vendor_specific:string ->
  unit ->
  chrome_os_device_tpm_version_info

val chrome_os_device_of_yojson : Yojson.Safe.t -> chrome_os_device
val yojson_of_chrome_os_device : chrome_os_device -> Yojson.Safe.t

val make_chrome_os_device :
  ?active_time_ranges:chrome_os_device_active_time_ranges_item list ->
  ?annotated_asset_id:string ->
  ?annotated_location:string ->
  ?annotated_user:string ->
  ?auto_update_expiration:string ->
  ?auto_update_through:string ->
  ?backlight_info:backlight_info list ->
  ?bluetooth_adapter_info:bluetooth_adapter_info list ->
  ?boot_mode:string ->
  ?chrome_os_type:[ `Chrome_os_type_unspecified | `Chrome_os_flex | `Chrome_os | `Unrecognized of string ] ->
  ?cpu_info:chrome_os_device_cpu_info_item list ->
  ?cpu_status_reports:chrome_os_device_cpu_status_reports_item list ->
  ?deprovision_reason:[ `Deprovision_reason_unspecified | `Deprovision_reason_same_model_replacement | `Deprovision_reason_upgrade | `Deprovision_reason_domain_move | `Deprovision_reason_service_expiration | `Deprovision_reason_other | `Deprovision_reason_different_model_replacement | `Deprovision_reason_retiring_device | `Deprovision_reason_upgrade_transfer | `Deprovision_reason_not_required | `Deprovision_reason_repair_center | `Unrecognized of string ] ->
  ?device_files:chrome_os_device_device_files_item list ->
  ?device_id:string ->
  ?device_license_type:[ `Device_license_type_unspecified | `Enterprise | `Enterprise_upgrade | `Education_upgrade | `Education | `Kiosk_upgrade | `Enterprise_upgrade_perpetual | `Enterprise_upgrade_fixed_term | `Education_upgrade_perpetual | `Education_upgrade_fixed_term | `Unrecognized of string ] ->
  ?disk_space_usage:byte_usage ->
  ?disk_volume_reports:chrome_os_device_disk_volume_reports_item list ->
  ?dock_mac_address:string ->
  ?etag:string ->
  ?ethernet_mac_address:string ->
  ?ethernet_mac_address0:string ->
  ?extended_support_eligible:bool ->
  ?extended_support_enabled:bool ->
  ?extended_support_start:string ->
  ?fan_info:fan_info list ->
  ?firmware_version:string ->
  ?first_enrollment_time:string ->
  ?kind:string ->
  ?last_deprovision_timestamp:string ->
  ?last_enrollment_time:string ->
  ?last_known_network:chrome_os_device_last_known_network_item list ->
  ?last_sync:string ->
  ?mac_address:string ->
  ?manufacture_date:string ->
  ?meid:string ->
  ?model:string ->
  ?notes:string ->
  ?order_number:string ->
  ?org_unit_id:string ->
  ?org_unit_path:string ->
  ?os_update_status:os_update_status ->
  ?os_version:string ->
  ?os_version_compliance:[ `Compliance_unspecified | `Compliant | `Pending | `Not_compliant | `Unrecognized of string ] ->
  ?platform_version:string ->
  ?recent_users:chrome_os_device_recent_users_item list ->
  ?screenshot_files:chrome_os_device_screenshot_files_item list ->
  ?serial_number:string ->
  ?status:string ->
  ?support_end_date:string ->
  ?system_ram_free_reports:chrome_os_device_system_ram_free_reports_item list ->
  ?system_ram_total:string ->
  ?tpm_version_info:chrome_os_device_tpm_version_info ->
  ?will_auto_renew:bool ->
  unit ->
  chrome_os_device

val chrome_os_device_action_of_yojson : Yojson.Safe.t -> chrome_os_device_action
val yojson_of_chrome_os_device_action : chrome_os_device_action -> Yojson.Safe.t

val make_chrome_os_device_action :
  ?action:string ->
  ?deprovision_reason:string ->
  unit ->
  chrome_os_device_action

val chrome_os_devices_of_yojson : Yojson.Safe.t -> chrome_os_devices
val yojson_of_chrome_os_devices : chrome_os_devices -> Yojson.Safe.t

val make_chrome_os_devices :
  ?chromeosdevices:chrome_os_device list ->
  ?etag:string ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  chrome_os_devices

val chrome_os_move_devices_to_ou_of_yojson : Yojson.Safe.t -> chrome_os_move_devices_to_ou
val yojson_of_chrome_os_move_devices_to_ou : chrome_os_move_devices_to_ou -> Yojson.Safe.t

val make_chrome_os_move_devices_to_ou :
  ?device_ids:string list ->
  unit ->
  chrome_os_move_devices_to_ou

val count_chrome_os_devices_response_of_yojson : Yojson.Safe.t -> count_chrome_os_devices_response
val yojson_of_count_chrome_os_devices_response : count_chrome_os_devices_response -> Yojson.Safe.t

val make_count_chrome_os_devices_response :
  ?count:string ->
  unit ->
  count_chrome_os_devices_response

val create_print_server_request_of_yojson : Yojson.Safe.t -> create_print_server_request
val yojson_of_create_print_server_request : create_print_server_request -> Yojson.Safe.t

val make_create_print_server_request :
  ?parent:string ->
  ?print_server:print_server ->
  unit ->
  create_print_server_request

val create_printer_request_of_yojson : Yojson.Safe.t -> create_printer_request
val yojson_of_create_printer_request : create_printer_request -> Yojson.Safe.t

val make_create_printer_request :
  ?parent:string ->
  ?printer:printer ->
  unit ->
  create_printer_request

val customer_of_yojson : Yojson.Safe.t -> customer
val yojson_of_customer : customer -> Yojson.Safe.t

val make_customer :
  ?alternate_email:string ->
  ?customer_creation_time:string ->
  ?customer_domain:string ->
  ?etag:string ->
  ?id:string ->
  ?kind:string ->
  ?language:string ->
  ?phone_number:string ->
  ?postal_address:customer_postal_address ->
  unit ->
  customer

val customer_postal_address_of_yojson : Yojson.Safe.t -> customer_postal_address
val yojson_of_customer_postal_address : customer_postal_address -> Yojson.Safe.t

val make_customer_postal_address :
  ?address_line1:string ->
  ?address_line2:string ->
  ?address_line3:string ->
  ?contact_name:string ->
  ?country_code:string ->
  ?locality:string ->
  ?organization_name:string ->
  ?postal_code:string ->
  ?region:string ->
  unit ->
  customer_postal_address

val directory_chromeosdevices_command_of_yojson : Yojson.Safe.t -> directory_chromeosdevices_command
val yojson_of_directory_chromeosdevices_command : directory_chromeosdevices_command -> Yojson.Safe.t

val make_directory_chromeosdevices_command :
  ?command_expire_time:string ->
  ?command_id:string ->
  ?command_result:directory_chromeosdevices_command_result ->
  ?issue_time:string ->
  ?payload:string ->
  ?state:[ `State_unspecified | `Pending | `Expired | `Cancelled | `Sent_to_client | `Acked_by_client | `Executed_by_client | `Unrecognized of string ] ->
  ?type_:[ `Command_type_unspecified | `Reboot | `Take_a_screenshot | `Set_volume | `Wipe_users | `Remote_powerwash | `Device_start_crd_session | `Capture_logs | `Fetch_crd_availability_info | `Fetch_support_packet | `Unrecognized of string ] ->
  unit ->
  directory_chromeosdevices_command

val directory_chromeosdevices_command_result_of_yojson : Yojson.Safe.t -> directory_chromeosdevices_command_result
val yojson_of_directory_chromeosdevices_command_result : directory_chromeosdevices_command_result -> Yojson.Safe.t

val make_directory_chromeosdevices_command_result :
  ?command_result_payload:string ->
  ?error_message:string ->
  ?execute_time:string ->
  ?result:[ `Command_result_type_unspecified | `Ignored | `Failure | `Success | `Unrecognized of string ] ->
  unit ->
  directory_chromeosdevices_command_result

val directory_chromeosdevices_issue_command_request_of_yojson : Yojson.Safe.t -> directory_chromeosdevices_issue_command_request
val yojson_of_directory_chromeosdevices_issue_command_request : directory_chromeosdevices_issue_command_request -> Yojson.Safe.t

val make_directory_chromeosdevices_issue_command_request :
  ?command_type:[ `Command_type_unspecified | `Reboot | `Take_a_screenshot | `Set_volume | `Wipe_users | `Remote_powerwash | `Device_start_crd_session | `Capture_logs | `Fetch_crd_availability_info | `Fetch_support_packet | `Unrecognized of string ] ->
  ?payload:string ->
  unit ->
  directory_chromeosdevices_issue_command_request

val directory_chromeosdevices_issue_command_response_of_yojson : Yojson.Safe.t -> directory_chromeosdevices_issue_command_response
val yojson_of_directory_chromeosdevices_issue_command_response : directory_chromeosdevices_issue_command_response -> Yojson.Safe.t

val make_directory_chromeosdevices_issue_command_response :
  ?command_id:string ->
  unit ->
  directory_chromeosdevices_issue_command_response

val directory_users_create_guest_request_of_yojson : Yojson.Safe.t -> directory_users_create_guest_request
val yojson_of_directory_users_create_guest_request : directory_users_create_guest_request -> Yojson.Safe.t

val make_directory_users_create_guest_request :
  ?customer:string ->
  ?primary_guest_email:string ->
  unit ->
  directory_users_create_guest_request

val domain_alias_of_yojson : Yojson.Safe.t -> domain_alias
val yojson_of_domain_alias : domain_alias -> Yojson.Safe.t

val make_domain_alias :
  ?creation_time:string ->
  ?domain_alias_name:string ->
  ?etag:string ->
  ?kind:string ->
  ?parent_domain_name:string ->
  ?verified:bool ->
  unit ->
  domain_alias

val domain_aliases_of_yojson : Yojson.Safe.t -> domain_aliases
val yojson_of_domain_aliases : domain_aliases -> Yojson.Safe.t

val make_domain_aliases :
  ?domain_aliases:domain_alias list ->
  ?etag:string ->
  ?kind:string ->
  unit ->
  domain_aliases

val domains_of_yojson : Yojson.Safe.t -> domains
val yojson_of_domains : domains -> Yojson.Safe.t

val make_domains :
  ?creation_time:string ->
  ?domain_aliases:domain_alias list ->
  ?domain_name:string ->
  ?etag:string ->
  ?is_primary:bool ->
  ?kind:string ->
  ?verified:bool ->
  unit ->
  domains

val domains2_of_yojson : Yojson.Safe.t -> domains2
val yojson_of_domains2 : domains2 -> Yojson.Safe.t

val make_domains2 :
  ?domains:domains list ->
  ?etag:string ->
  ?kind:string ->
  unit ->
  domains2

val empty_of_yojson : Yojson.Safe.t -> empty
val yojson_of_empty : empty -> Yojson.Safe.t

val expiration_details_of_yojson : Yojson.Safe.t -> expiration_details
val yojson_of_expiration_details : expiration_details -> Yojson.Safe.t

val make_expiration_details :
  ?expire_time:string ->
  unit ->
  expiration_details

val external_id_of_yojson : Yojson.Safe.t -> external_id
val yojson_of_external_id : external_id -> Yojson.Safe.t

val make_external_id :
  ?id:string ->
  ?namespace:string ->
  unit ->
  external_id

val failure_info_of_yojson : Yojson.Safe.t -> failure_info
val yojson_of_failure_info : failure_info -> Yojson.Safe.t

val make_failure_info :
  ?error_code:[ `Ok | `Cancelled | `Unknown | `Invalid_argument | `Deadline_exceeded | `Not_found | `Already_exists | `Permission_denied | `Unauthenticated | `Resource_exhausted | `Failed_precondition | `Aborted | `Out_of_range | `Unimplemented | `Internal | `Unavailable | `Data_loss | `Unrecognized of string ] ->
  ?error_message:string ->
  ?printer:printer ->
  ?printer_id:string ->
  unit ->
  failure_info

val fan_info_of_yojson : Yojson.Safe.t -> fan_info
val yojson_of_fan_info : fan_info -> Yojson.Safe.t

val make_fan_info :
  ?speed_rpm:int ->
  unit ->
  fan_info

val feature_of_yojson : Yojson.Safe.t -> feature
val yojson_of_feature : feature -> Yojson.Safe.t

val make_feature :
  ?etags:string ->
  ?kind:string ->
  ?name:string ->
  unit ->
  feature

val feature_instance_of_yojson : Yojson.Safe.t -> feature_instance
val yojson_of_feature_instance : feature_instance -> Yojson.Safe.t

val make_feature_instance :
  ?feature:feature ->
  unit ->
  feature_instance

val feature_rename_of_yojson : Yojson.Safe.t -> feature_rename
val yojson_of_feature_rename : feature_rename -> Yojson.Safe.t

val make_feature_rename :
  ?new_name:string ->
  unit ->
  feature_rename

val features_of_yojson : Yojson.Safe.t -> features
val yojson_of_features : features -> Yojson.Safe.t

val make_features :
  ?etag:string ->
  ?features:feature list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  features

val group_of_yojson : Yojson.Safe.t -> group
val yojson_of_group : group -> Yojson.Safe.t

val make_group :
  ?admin_created:bool ->
  ?aliases:string list ->
  ?description:string ->
  ?direct_members_count:string ->
  ?email:string ->
  ?etag:string ->
  ?external_ids:external_id list ->
  ?id:string ->
  ?kind:string ->
  ?name:string ->
  ?non_editable_aliases:string list ->
  unit ->
  group

val group_alias_of_yojson : Yojson.Safe.t -> group_alias
val yojson_of_group_alias : group_alias -> Yojson.Safe.t

val make_group_alias :
  ?alias:string ->
  ?etag:string ->
  ?id:string ->
  ?kind:string ->
  ?primary_email:string ->
  unit ->
  group_alias

val groups_of_yojson : Yojson.Safe.t -> groups
val yojson_of_groups : groups -> Yojson.Safe.t

val make_groups :
  ?etag:string ->
  ?groups:group list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  groups

val guest_account_info_of_yojson : Yojson.Safe.t -> guest_account_info
val yojson_of_guest_account_info : guest_account_info -> Yojson.Safe.t

val make_guest_account_info :
  ?primary_guest_email:string ->
  unit ->
  guest_account_info

val list_print_servers_response_of_yojson : Yojson.Safe.t -> list_print_servers_response
val yojson_of_list_print_servers_response : list_print_servers_response -> Yojson.Safe.t

val make_list_print_servers_response :
  ?next_page_token:string ->
  ?print_servers:print_server list ->
  unit ->
  list_print_servers_response

val list_printer_models_response_of_yojson : Yojson.Safe.t -> list_printer_models_response
val yojson_of_list_printer_models_response : list_printer_models_response -> Yojson.Safe.t

val make_list_printer_models_response :
  ?next_page_token:string ->
  ?printer_models:printer_model list ->
  unit ->
  list_printer_models_response

val list_printers_response_of_yojson : Yojson.Safe.t -> list_printers_response
val yojson_of_list_printers_response : list_printers_response -> Yojson.Safe.t

val make_list_printers_response :
  ?next_page_token:string ->
  ?printers:printer list ->
  unit ->
  list_printers_response

val member_of_yojson : Yojson.Safe.t -> member
val yojson_of_member : member -> Yojson.Safe.t

val make_member :
  ?delivery_settings:string ->
  ?email:string ->
  ?etag:string ->
  ?id:string ->
  ?kind:string ->
  ?role:string ->
  ?status:string ->
  ?type_:string ->
  unit ->
  member

val members_of_yojson : Yojson.Safe.t -> members
val yojson_of_members : members -> Yojson.Safe.t

val make_members :
  ?etag:string ->
  ?kind:string ->
  ?members:member list ->
  ?next_page_token:string ->
  unit ->
  members

val members_has_member_of_yojson : Yojson.Safe.t -> members_has_member
val yojson_of_members_has_member : members_has_member -> Yojson.Safe.t

val make_members_has_member :
  ?is_member:bool ->
  unit ->
  members_has_member

val mobile_device_applications_item_of_yojson : Yojson.Safe.t -> mobile_device_applications_item
val yojson_of_mobile_device_applications_item : mobile_device_applications_item -> Yojson.Safe.t

val make_mobile_device_applications_item :
  ?display_name:string ->
  ?package_name:string ->
  ?permission:string list ->
  ?version_code:int ->
  ?version_name:string ->
  unit ->
  mobile_device_applications_item

val mobile_device_of_yojson : Yojson.Safe.t -> mobile_device
val yojson_of_mobile_device : mobile_device -> Yojson.Safe.t

val make_mobile_device :
  ?adb_status:bool ->
  ?applications:mobile_device_applications_item list ->
  ?baseband_version:string ->
  ?bootloader_version:string ->
  ?brand:string ->
  ?build_number:string ->
  ?default_language:string ->
  ?developer_options_status:bool ->
  ?device_compromised_status:string ->
  ?device_id:string ->
  ?device_password_status:string ->
  ?email:string list ->
  ?encryption_status:string ->
  ?etag:string ->
  ?first_sync:string ->
  ?hardware:string ->
  ?hardware_id:string ->
  ?imei:string ->
  ?kernel_version:string ->
  ?kind:string ->
  ?last_sync:string ->
  ?managed_account_is_on_owner_profile:bool ->
  ?manufacturer:string ->
  ?meid:string ->
  ?model:string ->
  ?name:string list ->
  ?network_operator:string ->
  ?os:string ->
  ?other_accounts_info:string list ->
  ?privilege:string ->
  ?release_version:string ->
  ?resource_id:string ->
  ?security_patch_level:string ->
  ?serial_number:string ->
  ?status:string ->
  ?supports_work_profile:bool ->
  ?type_:string ->
  ?unknown_sources_status:bool ->
  ?user_agent:string ->
  ?wifi_mac_address:string ->
  unit ->
  mobile_device

val mobile_device_action_of_yojson : Yojson.Safe.t -> mobile_device_action
val yojson_of_mobile_device_action : mobile_device_action -> Yojson.Safe.t

val make_mobile_device_action :
  ?action:string ->
  unit ->
  mobile_device_action

val mobile_devices_of_yojson : Yojson.Safe.t -> mobile_devices
val yojson_of_mobile_devices : mobile_devices -> Yojson.Safe.t

val make_mobile_devices :
  ?etag:string ->
  ?kind:string ->
  ?mobiledevices:mobile_device list ->
  ?next_page_token:string ->
  unit ->
  mobile_devices

val org_unit_of_yojson : Yojson.Safe.t -> org_unit
val yojson_of_org_unit : org_unit -> Yojson.Safe.t

val make_org_unit :
  ?block_inheritance:bool ->
  ?description:string ->
  ?etag:string ->
  ?kind:string ->
  ?name:string ->
  ?org_unit_id:string ->
  ?org_unit_path:string ->
  ?parent_org_unit_id:string ->
  ?parent_org_unit_path:string ->
  unit ->
  org_unit

val org_units_of_yojson : Yojson.Safe.t -> org_units
val yojson_of_org_units : org_units -> Yojson.Safe.t

val make_org_units :
  ?etag:string ->
  ?kind:string ->
  ?organization_units:org_unit list ->
  unit ->
  org_units

val os_update_status_of_yojson : Yojson.Safe.t -> os_update_status
val yojson_of_os_update_status : os_update_status -> Yojson.Safe.t

val make_os_update_status :
  ?reboot_time:string ->
  ?state:[ `Update_state_unspecified | `Update_state_not_started | `Update_state_download_in_progress | `Update_state_need_reboot | `Unrecognized of string ] ->
  ?target_kiosk_app_version:string ->
  ?target_os_version:string ->
  ?update_check_time:string ->
  ?update_time:string ->
  unit ->
  os_update_status

val print_server_of_yojson : Yojson.Safe.t -> print_server
val yojson_of_print_server : print_server -> Yojson.Safe.t

val make_print_server :
  ?create_time:string ->
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?name:string ->
  ?org_unit_id:string ->
  ?uri:string ->
  unit ->
  print_server

val print_server_failure_info_of_yojson : Yojson.Safe.t -> print_server_failure_info
val yojson_of_print_server_failure_info : print_server_failure_info -> Yojson.Safe.t

val make_print_server_failure_info :
  ?error_code:[ `Ok | `Cancelled | `Unknown | `Invalid_argument | `Deadline_exceeded | `Not_found | `Already_exists | `Permission_denied | `Unauthenticated | `Resource_exhausted | `Failed_precondition | `Aborted | `Out_of_range | `Unimplemented | `Internal | `Unavailable | `Data_loss | `Unrecognized of string ] ->
  ?error_message:string ->
  ?print_server:print_server ->
  ?print_server_id:string ->
  unit ->
  print_server_failure_info

val printer_of_yojson : Yojson.Safe.t -> printer
val yojson_of_printer : printer -> Yojson.Safe.t

val make_printer :
  ?auxiliary_messages:auxiliary_message list ->
  ?create_time:string ->
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?make_and_model:string ->
  ?name:string ->
  ?org_unit_id:string ->
  ?uri:string ->
  ?use_driverless_config:bool ->
  unit ->
  printer

val printer_model_of_yojson : Yojson.Safe.t -> printer_model
val yojson_of_printer_model : printer_model -> Yojson.Safe.t

val make_printer_model :
  ?display_name:string ->
  ?make_and_model:string ->
  ?manufacturer:string ->
  unit ->
  printer_model

val privilege_of_yojson : Yojson.Safe.t -> privilege
val yojson_of_privilege : privilege -> Yojson.Safe.t

val make_privilege :
  ?child_privileges:privilege list ->
  ?etag:string ->
  ?is_ou_scopable:bool ->
  ?kind:string ->
  ?privilege_name:string ->
  ?service_id:string ->
  ?service_name:string ->
  unit ->
  privilege

val privileges_of_yojson : Yojson.Safe.t -> privileges
val yojson_of_privileges : privileges -> Yojson.Safe.t

val make_privileges :
  ?etag:string ->
  ?items:privilege list ->
  ?kind:string ->
  unit ->
  privileges

val role_role_privileges_item_of_yojson : Yojson.Safe.t -> role_role_privileges_item
val yojson_of_role_role_privileges_item : role_role_privileges_item -> Yojson.Safe.t

val make_role_role_privileges_item :
  ?privilege_name:string ->
  ?service_id:string ->
  unit ->
  role_role_privileges_item

val role_of_yojson : Yojson.Safe.t -> role
val yojson_of_role : role -> Yojson.Safe.t

val make_role :
  ?etag:string ->
  ?is_super_admin_role:bool ->
  ?is_system_role:bool ->
  ?kind:string ->
  ?role_description:string ->
  ?role_id:string ->
  ?role_name:string ->
  ?role_privileges:role_role_privileges_item list ->
  unit ->
  role

val role_assignment_of_yojson : Yojson.Safe.t -> role_assignment
val yojson_of_role_assignment : role_assignment -> Yojson.Safe.t

val make_role_assignment :
  ?assigned_to:string ->
  ?assignee_type:[ `User | `Group | `Unrecognized of string ] ->
  ?condition:string ->
  ?etag:string ->
  ?expiration_details:expiration_details ->
  ?kind:string ->
  ?org_unit_id:string ->
  ?role_assignment_id:string ->
  ?role_id:string ->
  ?scope_type:string ->
  unit ->
  role_assignment

val role_assignments_of_yojson : Yojson.Safe.t -> role_assignments
val yojson_of_role_assignments : role_assignments -> Yojson.Safe.t

val make_role_assignments :
  ?etag:string ->
  ?items:role_assignment list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  role_assignments

val roles_of_yojson : Yojson.Safe.t -> roles
val yojson_of_roles : roles -> Yojson.Safe.t

val make_roles :
  ?etag:string ->
  ?items:role list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  roles

val schema_of_yojson : Yojson.Safe.t -> schema
val yojson_of_schema : schema -> Yojson.Safe.t

val make_schema :
  ?display_name:string ->
  ?etag:string ->
  ?fields:schema_field_spec list ->
  ?kind:string ->
  ?schema_id:string ->
  ?schema_name:string ->
  unit ->
  schema

val schema_field_spec_numeric_indexing_spec_of_yojson : Yojson.Safe.t -> schema_field_spec_numeric_indexing_spec
val yojson_of_schema_field_spec_numeric_indexing_spec : schema_field_spec_numeric_indexing_spec -> Yojson.Safe.t

val make_schema_field_spec_numeric_indexing_spec :
  ?max_value:float ->
  ?min_value:float ->
  unit ->
  schema_field_spec_numeric_indexing_spec

val schema_field_spec_of_yojson : Yojson.Safe.t -> schema_field_spec
val yojson_of_schema_field_spec : schema_field_spec -> Yojson.Safe.t

val make_schema_field_spec :
  ?display_name:string ->
  ?etag:string ->
  ?field_id:string ->
  ?field_name:string ->
  ?field_type:string ->
  ?indexed:bool ->
  ?kind:string ->
  ?multi_valued:bool ->
  ?numeric_indexing_spec:schema_field_spec_numeric_indexing_spec ->
  ?read_access_type:string ->
  unit ->
  schema_field_spec

val schemas_of_yojson : Yojson.Safe.t -> schemas
val yojson_of_schemas : schemas -> Yojson.Safe.t

val make_schemas :
  ?etag:string ->
  ?kind:string ->
  ?schemas:schema list ->
  unit ->
  schemas

val status_of_yojson : Yojson.Safe.t -> status
val yojson_of_status : status -> Yojson.Safe.t

val make_status :
  ?code:int ->
  ?details:(string * Yojson.Safe.t) list list ->
  ?message:string ->
  unit ->
  status

val token_of_yojson : Yojson.Safe.t -> token
val yojson_of_token : token -> Yojson.Safe.t

val make_token :
  ?anonymous:bool ->
  ?client_id:string ->
  ?display_text:string ->
  ?etag:string ->
  ?kind:string ->
  ?native_app:bool ->
  ?scopes:string list ->
  ?user_key:string ->
  unit ->
  token

val tokens_of_yojson : Yojson.Safe.t -> tokens
val yojson_of_tokens : tokens -> Yojson.Safe.t

val make_tokens :
  ?etag:string ->
  ?items:token list ->
  ?kind:string ->
  unit ->
  tokens

val user_of_yojson : Yojson.Safe.t -> user
val yojson_of_user : user -> Yojson.Safe.t

val make_user :
  ?addresses:Yojson.Safe.t ->
  ?agreed_to_terms:bool ->
  ?aliases:string list ->
  ?archival_time:string ->
  ?archived:bool ->
  ?change_password_at_next_login:bool ->
  ?creation_time:string ->
  ?custom_schemas:(string * user_custom_properties) list ->
  ?customer_id:string ->
  ?deletion_time:string ->
  ?emails:Yojson.Safe.t ->
  ?etag:string ->
  ?external_ids:Yojson.Safe.t ->
  ?gender:Yojson.Safe.t ->
  ?guest_account_info:guest_account_info ->
  ?hash_function:string ->
  ?id:string ->
  ?ims:Yojson.Safe.t ->
  ?include_in_global_address_list:bool ->
  ?ip_whitelisted:bool ->
  ?is_admin:bool ->
  ?is_delegated_admin:bool ->
  ?is_enforced_in2_sv:bool ->
  ?is_enrolled_in2_sv:bool ->
  ?is_guest_user:bool ->
  ?is_mailbox_setup:bool ->
  ?keywords:Yojson.Safe.t ->
  ?kind:string ->
  ?languages:Yojson.Safe.t ->
  ?last_login_time:string ->
  ?locations:Yojson.Safe.t ->
  ?name:user_name ->
  ?non_editable_aliases:string list ->
  ?notes:Yojson.Safe.t ->
  ?org_unit_path:string ->
  ?organizations:Yojson.Safe.t ->
  ?password:string ->
  ?phones:Yojson.Safe.t ->
  ?posix_accounts:Yojson.Safe.t ->
  ?primary_email:string ->
  ?recovery_email:string ->
  ?recovery_phone:string ->
  ?relations:Yojson.Safe.t ->
  ?ssh_public_keys:Yojson.Safe.t ->
  ?suspended:bool ->
  ?suspension_reason:string ->
  ?suspension_time:string ->
  ?thumbnail_photo_etag:string ->
  ?thumbnail_photo_url:string ->
  ?websites:Yojson.Safe.t ->
  unit ->
  user

val user_about_of_yojson : Yojson.Safe.t -> user_about
val yojson_of_user_about : user_about -> Yojson.Safe.t

val make_user_about :
  ?content_type:string ->
  ?value:string ->
  unit ->
  user_about

val user_address_of_yojson : Yojson.Safe.t -> user_address
val yojson_of_user_address : user_address -> Yojson.Safe.t

val make_user_address :
  ?country:string ->
  ?country_code:string ->
  ?custom_type:string ->
  ?extended_address:string ->
  ?formatted:string ->
  ?locality:string ->
  ?po_box:string ->
  ?postal_code:string ->
  ?primary:bool ->
  ?region:string ->
  ?source_is_structured:bool ->
  ?street_address:string ->
  ?type_:string ->
  unit ->
  user_address

val user_alias_of_yojson : Yojson.Safe.t -> user_alias
val yojson_of_user_alias : user_alias -> Yojson.Safe.t

val make_user_alias :
  ?alias:string ->
  ?etag:string ->
  ?id:string ->
  ?kind:string ->
  ?primary_email:string ->
  unit ->
  user_alias

val user_custom_properties_of_yojson : Yojson.Safe.t -> user_custom_properties
val yojson_of_user_custom_properties : user_custom_properties -> Yojson.Safe.t

val user_email_public_key_encryption_certificates_of_yojson : Yojson.Safe.t -> user_email_public_key_encryption_certificates
val yojson_of_user_email_public_key_encryption_certificates : user_email_public_key_encryption_certificates -> Yojson.Safe.t

val make_user_email_public_key_encryption_certificates :
  ?certificate:string ->
  ?is_default:bool ->
  ?state:string ->
  unit ->
  user_email_public_key_encryption_certificates

val user_email_of_yojson : Yojson.Safe.t -> user_email
val yojson_of_user_email : user_email -> Yojson.Safe.t

val make_user_email :
  ?address:string ->
  ?custom_type:string ->
  ?primary:bool ->
  ?public_key_encryption_certificates:user_email_public_key_encryption_certificates ->
  ?type_:string ->
  unit ->
  user_email

val user_external_id_of_yojson : Yojson.Safe.t -> user_external_id
val yojson_of_user_external_id : user_external_id -> Yojson.Safe.t

val make_user_external_id :
  ?custom_type:string ->
  ?type_:string ->
  ?value:string ->
  unit ->
  user_external_id

val user_gender_of_yojson : Yojson.Safe.t -> user_gender
val yojson_of_user_gender : user_gender -> Yojson.Safe.t

val make_user_gender :
  ?address_me_as:string ->
  ?custom_gender:string ->
  ?type_:string ->
  unit ->
  user_gender

val user_im_of_yojson : Yojson.Safe.t -> user_im
val yojson_of_user_im : user_im -> Yojson.Safe.t

val make_user_im :
  ?custom_protocol:string ->
  ?custom_type:string ->
  ?im:string ->
  ?primary:bool ->
  ?protocol:string ->
  ?type_:string ->
  unit ->
  user_im

val user_keyword_of_yojson : Yojson.Safe.t -> user_keyword
val yojson_of_user_keyword : user_keyword -> Yojson.Safe.t

val make_user_keyword :
  ?custom_type:string ->
  ?type_:string ->
  ?value:string ->
  unit ->
  user_keyword

val user_language_of_yojson : Yojson.Safe.t -> user_language
val yojson_of_user_language : user_language -> Yojson.Safe.t

val make_user_language :
  ?custom_language:string ->
  ?language_code:string ->
  ?preference:string ->
  unit ->
  user_language

val user_location_of_yojson : Yojson.Safe.t -> user_location
val yojson_of_user_location : user_location -> Yojson.Safe.t

val make_user_location :
  ?area:string ->
  ?building_id:string ->
  ?custom_type:string ->
  ?desk_code:string ->
  ?floor_name:string ->
  ?floor_section:string ->
  ?type_:string ->
  unit ->
  user_location

val user_make_admin_of_yojson : Yojson.Safe.t -> user_make_admin
val yojson_of_user_make_admin : user_make_admin -> Yojson.Safe.t

val make_user_make_admin :
  ?status:bool ->
  unit ->
  user_make_admin

val user_name_of_yojson : Yojson.Safe.t -> user_name
val yojson_of_user_name : user_name -> Yojson.Safe.t

val make_user_name :
  ?display_name:string ->
  ?family_name:string ->
  ?full_name:string ->
  ?given_name:string ->
  unit ->
  user_name

val user_organization_of_yojson : Yojson.Safe.t -> user_organization
val yojson_of_user_organization : user_organization -> Yojson.Safe.t

val make_user_organization :
  ?cost_center:string ->
  ?custom_type:string ->
  ?department:string ->
  ?description:string ->
  ?domain:string ->
  ?full_time_equivalent:int ->
  ?location:string ->
  ?name:string ->
  ?primary:bool ->
  ?symbol:string ->
  ?title:string ->
  ?type_:string ->
  unit ->
  user_organization

val user_phone_of_yojson : Yojson.Safe.t -> user_phone
val yojson_of_user_phone : user_phone -> Yojson.Safe.t

val make_user_phone :
  ?custom_type:string ->
  ?primary:bool ->
  ?type_:string ->
  ?value:string ->
  unit ->
  user_phone

val user_photo_of_yojson : Yojson.Safe.t -> user_photo
val yojson_of_user_photo : user_photo -> Yojson.Safe.t

val make_user_photo :
  ?etag:string ->
  ?height:int ->
  ?id:string ->
  ?kind:string ->
  ?mime_type:string ->
  ?photo_data:string ->
  ?primary_email:string ->
  ?width:int ->
  unit ->
  user_photo

val user_posix_account_of_yojson : Yojson.Safe.t -> user_posix_account
val yojson_of_user_posix_account : user_posix_account -> Yojson.Safe.t

val make_user_posix_account :
  ?account_id:string ->
  ?gecos:string ->
  ?gid:string ->
  ?home_directory:string ->
  ?operating_system_type:string ->
  ?primary:bool ->
  ?shell:string ->
  ?system_id:string ->
  ?uid:string ->
  ?username:string ->
  unit ->
  user_posix_account

val user_relation_of_yojson : Yojson.Safe.t -> user_relation
val yojson_of_user_relation : user_relation -> Yojson.Safe.t

val make_user_relation :
  ?custom_type:string ->
  ?type_:string ->
  ?value:string ->
  unit ->
  user_relation

val user_ssh_public_key_of_yojson : Yojson.Safe.t -> user_ssh_public_key
val yojson_of_user_ssh_public_key : user_ssh_public_key -> Yojson.Safe.t

val make_user_ssh_public_key :
  ?expiration_time_usec:string ->
  ?fingerprint:string ->
  ?key:string ->
  unit ->
  user_ssh_public_key

val user_undelete_of_yojson : Yojson.Safe.t -> user_undelete
val yojson_of_user_undelete : user_undelete -> Yojson.Safe.t

val make_user_undelete :
  ?org_unit_path:string ->
  unit ->
  user_undelete

val user_website_of_yojson : Yojson.Safe.t -> user_website
val yojson_of_user_website : user_website -> Yojson.Safe.t

val make_user_website :
  ?custom_type:string ->
  ?primary:bool ->
  ?type_:string ->
  ?value:string ->
  unit ->
  user_website

val users_of_yojson : Yojson.Safe.t -> users
val yojson_of_users : users -> Yojson.Safe.t

val make_users :
  ?etag:string ->
  ?kind:string ->
  ?next_page_token:string ->
  ?trigger_event:string ->
  ?users:user list ->
  unit ->
  users

val verification_code_of_yojson : Yojson.Safe.t -> verification_code
val yojson_of_verification_code : verification_code -> Yojson.Safe.t

val make_verification_code :
  ?etag:string ->
  ?kind:string ->
  ?user_id:string ->
  ?verification_code:string ->
  unit ->
  verification_code

val verification_codes_of_yojson : Yojson.Safe.t -> verification_codes
val yojson_of_verification_codes : verification_codes -> Yojson.Safe.t

val make_verification_codes :
  ?etag:string ->
  ?items:verification_code list ->
  ?kind:string ->
  unit ->
  verification_codes

val base_url : string
val batch_endpoint : Uri.t

val batch :
  access_token:string ->
  'a Google_api.Call.t list ->
  (('a, Google_api.Error.t) result list, Google_api.Error.t) result
(** {!Google_api.Batch.execute} on {!batch_endpoint}. *)

module Asps : sig
  val delete :
    user_key:string ->
    code_id:int ->
    unit ->
    unit Google_api.Call.t
  (** Deletes an ASP issued by a user.

      [DELETE admin/directory/v1/users/{userKey}/asps/{codeId}]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
      - [code_id]: The unique ID of the ASP to be deleted. *)

  val get :
    user_key:string ->
    code_id:int ->
    unit ->
    asp Google_api.Call.t
  (** Gets information about an ASP issued by a user.

      [GET admin/directory/v1/users/{userKey}/asps/{codeId}]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
      - [code_id]: The unique ID of the ASP. *)

  val list :
    user_key:string ->
    unit ->
    asps Google_api.Call.t
  (** Lists the ASPs issued by a user.

      [GET admin/directory/v1/users/{userKey}/asps]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)
end

module Channels : sig
  val stop :
    body:channel ->
    unit ->
    unit Google_api.Call.t
  (** Stops watching resources through this channel.

      [POST admin/directory_v1/channels/stop] *)
end

module Chromeosdevices : sig
  val action :
    customer_id:string ->
    resource_id:string ->
    body:chrome_os_device_action ->
    unit ->
    unit Google_api.Call.t
  (** Use \[BatchChangeChromeOsDeviceStatus\](https://developers.google.com/workspace/admin/directory/reference/rest/v1/customer.devices.chromeos/batchChangeStatus) instead. Takes an action that affects a Chrome OS Device. This includes deprovisioning, disabling, and re-enabling devices. *Warning:* * Deprovisioning a device will stop device policy syncing and remove device-level printers. After a device is deprovisioned, it must be wiped before it can be re-enrolled. * Lost or stolen devices should use the disable action. * Re-enabling a disabled device will consume a device license. If you do not have sufficient licenses available when completing the re-enable action, you will receive an error. For more information about deprovisioning and disabling devices, visit the \[help center\](https://support.google.com/chrome/a/answer/3523633).

      [POST admin/directory/v1/customer/{customerId}/devices/chromeos/{resourceId}/action]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [resource_id]: The unique ID of the device. The `resourceId`s are returned in the response from the \[chromeosdevices.list\](https://developers.google.com/workspace/admin/directory/v1/reference/chromeosdevices/list) method. *)

  val get :
    customer_id:string ->
    device_id:string ->
    ?projection:[ `Basic | `Full | `Unrecognized of string ] ->
    unit ->
    chrome_os_device Google_api.Call.t
  (** Retrieves a Chrome OS device's properties.

      [GET admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [device_id]: The unique ID of the device. The `deviceId`s are returned in the response from the \[chromeosdevices.list\](https://developers.google.com/workspace/admin/directory/v1/reference/chromeosdevices/list) method.
      - [projection]: Determines whether the response contains the full list of properties or only a subset. *)

  val list :
    customer_id:string ->
    ?include_child_orgunits:bool ->
    ?max_results:int ->
    ?order_by:[ `Annotated_location | `Annotated_user | `Last_sync | `Notes | `Serial_number | `Status | `Unrecognized of string ] ->
    ?org_unit_path:string ->
    ?page_token:string ->
    ?projection:[ `Basic | `Full | `Unrecognized of string ] ->
    ?query:string ->
    ?sort_order:[ `Ascending | `Descending | `Unrecognized of string ] ->
    unit ->
    chrome_os_devices Google_api.Call.t
  (** Retrieves a paginated list of Chrome OS devices within an account.

      [GET admin/directory/v1/customer/{customerId}/devices/chromeos]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [include_child_orgunits]: Return devices from all child orgunits, as well as the specified org unit. If this is set to true, 'orgUnitPath' must be provided.
      - [max_results]: Maximum number of results to return. Value should not exceed 300.
      - [order_by]: Device property to use for sorting results.
      - [org_unit_path]: The full path of the organizational unit (minus the leading `/`) or its unique ID.
      - [page_token]: The `pageToken` query parameter is used to request the next page of query results. The follow-on request's `pageToken` query parameter is the `nextPageToken` from your previous response.
      - [projection]: Determines whether the response contains the full list of properties or only a subset.
      - [query]: Search string in the format given at \[List query operators\](https://developers.google.com/workspace/admin/directory/v1/list-query-operators).
      - [sort_order]: Whether to return results in ascending or descending order. Must be used with the `orderBy` parameter. *)

  val move_devices_to_ou :
    customer_id:string ->
    org_unit_path:string ->
    body:chrome_os_move_devices_to_ou ->
    unit ->
    unit Google_api.Call.t
  (** Moves or inserts multiple Chrome OS devices to an organizational unit. You can move up to 50 devices at once.

      [POST admin/directory/v1/customer/{customerId}/devices/chromeos/moveDevicesToOu]

      - [customer_id]: Immutable. ID of the Google Workspace account
      - [org_unit_path]: Full path of the target organizational unit or its ID *)

  val patch :
    customer_id:string ->
    device_id:string ->
    body:chrome_os_device ->
    ?projection:[ `Basic | `Full | `Unrecognized of string ] ->
    unit ->
    chrome_os_device Google_api.Call.t
  (** Updates a device's updatable properties, such as `annotatedUser`, `annotatedLocation`, `notes`, `orgUnitPath`, or `annotatedAssetId`. This method supports \[patch semantics\](https://developers.google.com/workspace/admin/directory/v1/guides/performance#patch).

      [PATCH admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [device_id]: The unique ID of the device. The `deviceId`s are returned in the response from the \[chromeosdevices.list\](https://developers.google.com/workspace/admin/v1/reference/chromeosdevices/list) method.
      - [projection]: Determines whether the response contains the full list of properties or only a subset. *)

  val update :
    customer_id:string ->
    device_id:string ->
    body:chrome_os_device ->
    ?projection:[ `Basic | `Full | `Unrecognized of string ] ->
    unit ->
    chrome_os_device Google_api.Call.t
  (** Updates a device's updatable properties, such as `annotatedUser`, `annotatedLocation`, `notes`, `orgUnitPath`, or `annotatedAssetId`.

      [PUT admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [device_id]: The unique ID of the device. The `deviceId`s are returned in the response from the \[chromeosdevices.list\](https://developers.google.com/workspace/admin/v1/reference/chromeosdevices/list) method.
      - [projection]: Determines whether the response contains the full list of properties or only a subset. *)
end

module Customer : sig
  module Devices : sig
    module Chromeos : sig
      val batch_change_status :
        customer_id:string ->
        body:batch_change_chrome_os_device_status_request ->
        unit ->
        batch_change_chrome_os_device_status_response Google_api.Call.t
      (** Changes the status of a batch of ChromeOS devices. For more information about changing a ChromeOS device state \[Repair, repurpose, or retire ChromeOS devices\](https://support.google.com/chrome/a/answer/3523633).

          [POST admin/directory/v1/customer/{customerId}/devices/chromeos:batchChangeStatus]

          - [customer_id]: Required. Immutable ID of the Google Workspace account. *)

      val count_chrome_os_devices :
        customer_id:string ->
        ?filter:string ->
        ?include_child_orgunits:bool ->
        ?org_unit_path:string ->
        unit ->
        count_chrome_os_devices_response Google_api.Call.t
      (** Counts ChromeOS devices matching the request.

          [GET admin/directory/v1/customer/{customerId}/devices/chromeos:countChromeOsDevices]

          - [customer_id]: Required. Immutable ID of the Google Workspace account.
          - [filter]: Optional. Search string in the format given at \[List query operators\](https://developers.google.com/workspace/admin/directory/v1/list-query-operators).
          - [include_child_orgunits]: Optional. Return devices from all child orgunits, as well as the specified org unit. If this is set to true, 'orgUnitPath' must be provided.
          - [org_unit_path]: Optional. The full path of the organizational unit (minus the leading `/`) or its unique ID. *)

      val issue_command :
        customer_id:string ->
        device_id:string ->
        body:directory_chromeosdevices_issue_command_request ->
        unit ->
        directory_chromeosdevices_issue_command_response Google_api.Call.t
      (** Issues a command for the device to execute.

          [POST admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}:issueCommand]

          - [customer_id]: Immutable. ID of the Google Workspace account.
          - [device_id]: Immutable. ID of Chrome OS Device. *)

      module Commands : sig
        val get :
          customer_id:string ->
          device_id:string ->
          command_id:string ->
          unit ->
          directory_chromeosdevices_command Google_api.Call.t
        (** Gets command data a specific command issued to the device.

            [GET admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}/commands/{commandId}]

            - [customer_id]: Immutable. ID of the Google Workspace account.
            - [device_id]: Immutable. ID of Chrome OS Device.
            - [command_id]: Immutable. ID of Chrome OS Device Command. *)
      end
    end
  end
end

module Customers : sig
  val get :
    customer_key:string ->
    unit ->
    customer Google_api.Call.t
  (** Retrieves a customer.

      [GET admin/directory/v1/customers/{customerKey}]

      - [customer_key]: Id of the customer to be retrieved *)

  val patch :
    customer_key:string ->
    body:customer ->
    unit ->
    customer Google_api.Call.t
  (** Patches a customer.

      [PATCH admin/directory/v1/customers/{customerKey}]

      - [customer_key]: Id of the customer to be updated *)

  val update :
    customer_key:string ->
    body:customer ->
    unit ->
    customer Google_api.Call.t
  (** Updates a customer.

      [PUT admin/directory/v1/customers/{customerKey}]

      - [customer_key]: Id of the customer to be updated *)

  module Chrome : sig
    module Print_servers : sig
      val batch_create_print_servers :
        parent:string ->
        body:batch_create_print_servers_request ->
        unit ->
        batch_create_print_servers_response Google_api.Call.t
      (** Creates multiple print servers.

          [POST admin/directory/v1/{+parent}/chrome/printServers:batchCreatePrintServers]

          - [parent]: Required. The \[unique ID\](https://developers.google.com/workspace/admin/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/\{id\}` *)

      val batch_delete_print_servers :
        parent:string ->
        body:batch_delete_print_servers_request ->
        unit ->
        batch_delete_print_servers_response Google_api.Call.t
      (** Deletes multiple print servers.

          [POST admin/directory/v1/{+parent}/chrome/printServers:batchDeletePrintServers]

          - [parent]: Required. The \[unique ID\](https://developers.google.com/workspace/admin/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/\{customer.id\}` *)

      val create :
        parent:string ->
        body:print_server ->
        unit ->
        print_server Google_api.Call.t
      (** Creates a print server.

          [POST admin/directory/v1/{+parent}/chrome/printServers]

          - [parent]: Required. The \[unique ID\](https://developers.google.com/workspace/admin/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/\{id\}` *)

      val delete :
        name:string ->
        unit ->
        empty Google_api.Call.t
      (** Deletes a print server.

          [DELETE admin/directory/v1/{+name}]

          - [name]: Required. The name of the print server to be deleted. Format: `customers/\{customer.id\}/chrome/printServers/\{print_server.id\}` *)

      val get :
        name:string ->
        unit ->
        print_server Google_api.Call.t
      (** Returns a print server's configuration.

          [GET admin/directory/v1/{+name}]

          - [name]: Required. The \[unique ID\](https://developers.google.com/workspace/admin/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/\{id\}` *)

      val list :
        parent:string ->
        ?filter:string ->
        ?order_by:string ->
        ?org_unit_id:string ->
        ?page_size:int ->
        ?page_token:string ->
        unit ->
        list_print_servers_response Google_api.Call.t
      (** Lists print server configurations.

          [GET admin/directory/v1/{+parent}/chrome/printServers]

          - [parent]: Required. The \[unique ID\](https://developers.google.com/workspace/admin/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/\{id\}`
          - [filter]: Search query in \[Common Expression Language syntax\](https://github.com/google/cel-spec). Supported filters are `display_name`, `description`, and `uri`. Example: `printServer.displayName=='marketing-queue'`.
          - [order_by]: Sort order for results. Supported values are `display_name`, `description`, or `create_time`. Default order is ascending, but descending order can be returned by appending 'desc' to the `order_by` field. For instance, `orderBy=='description desc'` returns the print servers sorted by description in descending order.
          - [org_unit_id]: If `org_unit_id` is present in the request, only print servers owned or inherited by the organizational unit (OU) are returned. If the `PrintServer` resource's `org_unit_id` matches the one in the request, the OU owns the server. If `org_unit_id` is not specified in the request, all print servers are returned or filtered against.
          - [page_size]: The maximum number of objects to return (default `100`, max `100`). The service might return fewer than this value.
          - [page_token]: A generated token to paginate results (the `next_page_token` from a previous call). *)

      val patch :
        name:string ->
        body:print_server ->
        ?update_mask:string ->
        unit ->
        print_server Google_api.Call.t
      (** Updates a print server's configuration.

          [PATCH admin/directory/v1/{+name}]

          - [name]: Identifier. Resource name of the print server. Leave empty when creating. Format: `customers/\{customer.id\}/printServers/\{print_server.id\}`
          - [update_mask]: The list of fields to update. Some fields are read-only and cannot be updated. Values for unspecified fields are patched. *)
    end

    module Printers : sig
      val batch_create_printers :
        parent:string ->
        body:batch_create_printers_request ->
        unit ->
        batch_create_printers_response Google_api.Call.t
      (** Creates printers under given Organization Unit.

          [POST admin/directory/v1/{+parent}/chrome/printers:batchCreatePrinters]

          - [parent]: Required. The name of the customer. Format: customers/\{customer_id\} *)

      val batch_delete_printers :
        parent:string ->
        body:batch_delete_printers_request ->
        unit ->
        batch_delete_printers_response Google_api.Call.t
      (** Deletes printers in batch.

          [POST admin/directory/v1/{+parent}/chrome/printers:batchDeletePrinters]

          - [parent]: Required. The name of the customer. Format: customers/\{customer_id\} *)

      val create :
        parent:string ->
        body:printer ->
        unit ->
        printer Google_api.Call.t
      (** Creates a printer under given Organization Unit.

          [POST admin/directory/v1/{+parent}/chrome/printers]

          - [parent]: Required. The name of the customer. Format: customers/\{customer_id\} *)

      val delete :
        name:string ->
        unit ->
        empty Google_api.Call.t
      (** Deletes a `Printer`.

          [DELETE admin/directory/v1/{+name}]

          - [name]: Required. The name of the printer to be updated. Format: customers/\{customer_id\}/chrome/printers/\{printer_id\} *)

      val get :
        name:string ->
        unit ->
        printer Google_api.Call.t
      (** Returns a `Printer` resource (printer's config).

          [GET admin/directory/v1/{+name}]

          - [name]: Required. The name of the printer to retrieve. Format: customers/\{customer_id\}/chrome/printers/\{printer_id\} *)

      val list :
        parent:string ->
        ?filter:string ->
        ?order_by:string ->
        ?org_unit_id:string ->
        ?page_size:int ->
        ?page_token:string ->
        unit ->
        list_printers_response Google_api.Call.t
      (** List printers configs.

          [GET admin/directory/v1/{+parent}/chrome/printers]

          - [parent]: Required. The name of the customer who owns this collection of printers. Format: customers/\{customer_id\}
          - [filter]: Search query. Search syntax is shared between this api and Admin Console printers pages.
          - [order_by]: The order to sort results by. Must be one of display_name, description, make_and_model, or create_time. Default order is ascending, but descending order can be returned by appending 'desc' to the order_by field. For instance, 'description desc' will return the printers sorted by description in descending order.
          - [org_unit_id]: Organization Unit that we want to list the printers for. When org_unit is not present in the request then all printers of the customer are returned (or filtered). When org_unit is present in the request then only printers available to this OU will be returned (owned or inherited). You may see if printer is owned or inherited for this OU by looking at Printer.org_unit_id.
          - [page_size]: The maximum number of objects to return. The service may return fewer than this value.
          - [page_token]: A page token, received from a previous call. *)

      val list_printer_models :
        parent:string ->
        ?filter:string ->
        ?page_size:int ->
        ?page_token:string ->
        unit ->
        list_printer_models_response Google_api.Call.t
      (** Lists the supported printer models.

          [GET admin/directory/v1/{+parent}/chrome/printers:listPrinterModels]

          - [parent]: Required. The name of the customer who owns this collection of printers. Format: customers/\{customer_id\}
          - [filter]: Filer to list only models by a given manufacturer in format: 'manufacturer:Brother'. Search syntax is shared between this api and Admin Console printers pages.
          - [page_size]: The maximum number of objects to return. The service may return fewer than this value.
          - [page_token]: A page token, received from a previous call. *)

      val patch :
        name:string ->
        body:printer ->
        ?clear_mask:string ->
        ?update_mask:string ->
        unit ->
        printer Google_api.Call.t
      (** Updates a `Printer` resource.

          [PATCH admin/directory/v1/{+name}]

          - [name]: Identifier. The resource name of the Printer object, in the format customers/\{customer-id\}/printers/\{printer-id\} (During printer creation leave empty)
          - [clear_mask]: The list of fields to be cleared. Note, some of the fields are read only and cannot be updated. Values for not specified fields will be patched.
          - [update_mask]: The list of fields to be updated. Note, some of the fields are read only and cannot be updated. Values for not specified fields will be patched. *)
    end
  end
end

module Domain_aliases : sig
  val delete :
    customer:string ->
    domain_alias_name:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes a domain Alias of the customer.

      [DELETE admin/directory/v1/customer/{customer}/domainaliases/{domainAliasName}]

      - [customer]: Immutable ID of the Google Workspace account.
      - [domain_alias_name]: Name of domain alias to be retrieved. *)

  val get :
    customer:string ->
    domain_alias_name:string ->
    unit ->
    domain_alias Google_api.Call.t
  (** Retrieves a domain alias of the customer.

      [GET admin/directory/v1/customer/{customer}/domainaliases/{domainAliasName}]

      - [customer]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.
      - [domain_alias_name]: Name of domain alias to be retrieved. *)

  val insert :
    customer:string ->
    body:domain_alias ->
    unit ->
    domain_alias Google_api.Call.t
  (** Inserts a domain alias of the customer.

      [POST admin/directory/v1/customer/{customer}/domainaliases]

      - [customer]: Immutable ID of the Google Workspace account. *)

  val list :
    customer:string ->
    ?parent_domain_name:string ->
    unit ->
    domain_aliases Google_api.Call.t
  (** Lists the domain aliases of the customer.

      [GET admin/directory/v1/customer/{customer}/domainaliases]

      - [customer]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.
      - [parent_domain_name]: Name of the parent domain for which domain aliases are to be fetched. *)
end

module Domains : sig
  val delete :
    customer:string ->
    domain_name:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes a domain of the customer.

      [DELETE admin/directory/v1/customer/{customer}/domains/{domainName}]

      - [customer]: Immutable ID of the Google Workspace account.
      - [domain_name]: Name of domain to be deleted *)

  val get :
    customer:string ->
    domain_name:string ->
    unit ->
    domains Google_api.Call.t
  (** Retrieves a domain of the customer.

      [GET admin/directory/v1/customer/{customer}/domains/{domainName}]

      - [customer]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.
      - [domain_name]: Name of domain to be retrieved *)

  val insert :
    customer:string ->
    body:domains ->
    unit ->
    domains Google_api.Call.t
  (** Inserts a domain of the customer.

      [POST admin/directory/v1/customer/{customer}/domains]

      - [customer]: Immutable ID of the Google Workspace account. *)

  val list :
    customer:string ->
    unit ->
    domains2 Google_api.Call.t
  (** Lists the domains of the customer.

      [GET admin/directory/v1/customer/{customer}/domains]

      - [customer]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter. *)
end

module Groups : sig
  val delete :
    group_key:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes a group.

      [DELETE admin/directory/v1/groups/{groupKey}]

      - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID. *)

  val get :
    group_key:string ->
    unit ->
    group Google_api.Call.t
  (** Retrieves a group's properties.

      [GET admin/directory/v1/groups/{groupKey}]

      - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID. *)

  val insert :
    body:group ->
    unit ->
    group Google_api.Call.t
  (** Creates a group.

      [POST admin/directory/v1/groups] *)

  val list :
    ?customer:string ->
    ?domain:string ->
    ?max_results:int ->
    ?order_by:[ `Email | `Unrecognized of string ] ->
    ?page_token:string ->
    ?query:string ->
    ?sort_order:[ `Ascending | `Descending | `Unrecognized of string ] ->
    ?user_key:string ->
    unit ->
    groups Google_api.Call.t
  (** Retrieves all groups of a domain or of a user given a userKey (paginated).

      [GET admin/directory/v1/groups]

      - [customer]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.
      - [domain]: The domain name. Use this field to get groups from only one domain. To return all domains for a customer account, use the `customer` query parameter instead.
      - [max_results]: Maximum number of results to return. Max allowed value is 200.
      - [order_by]: Column to use for sorting results
      - [page_token]: Token to specify next page in the list
      - [query]: Query string search. Contains one or more search clauses, each with a field, operator, and value. For complete documentation, go to \[Search for groups\](https://developers.google.com/workspace/admin/directory/v1/guides/search-groups).
      - [sort_order]: Whether to return results in ascending or descending order. Only of use when orderBy is also used
      - [user_key]: Email or immutable ID of the user if only those groups are to be listed, the given user is a member of. If it's an ID, it should match with the ID of the user object. Cannot be used with the `customer` parameter. *)

  val patch :
    group_key:string ->
    body:group ->
    unit ->
    group Google_api.Call.t
  (** Updates a group's properties. This method supports \[patch semantics\](https://developers.google.com/workspace/admin/directory/v1/guides/performance#patch).

      [PATCH admin/directory/v1/groups/{groupKey}]

      - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID. *)

  val update :
    group_key:string ->
    body:group ->
    unit ->
    group Google_api.Call.t
  (** Updates a group's properties.

      [PUT admin/directory/v1/groups/{groupKey}]

      - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID. *)

  module Aliases : sig
    val delete :
      group_key:string ->
      alias:string ->
      unit ->
      unit Google_api.Call.t
    (** Removes an alias.

        [DELETE admin/directory/v1/groups/{groupKey}/aliases/{alias}]

        - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.
        - [alias]: The alias to be removed *)

    val insert :
      group_key:string ->
      body:alias ->
      unit ->
      alias Google_api.Call.t
    (** Adds an alias for the group.

        [POST admin/directory/v1/groups/{groupKey}/aliases]

        - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID. *)

    val list :
      group_key:string ->
      unit ->
      aliases Google_api.Call.t
    (** Lists all aliases for a group.

        [GET admin/directory/v1/groups/{groupKey}/aliases]

        - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID. *)
  end
end

module Members : sig
  val delete :
    group_key:string ->
    member_key:string ->
    unit ->
    unit Google_api.Call.t
  (** Removes a member from a group.

      [DELETE admin/directory/v1/groups/{groupKey}/members/{memberKey}]

      - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.
      - [member_key]: Identifies the group member in the API request. A group member can be a user or another group. The value can be the member's (group or user) primary email address, alias, or unique ID. *)

  val get :
    group_key:string ->
    member_key:string ->
    unit ->
    member Google_api.Call.t
  (** Retrieves a group member's properties.

      [GET admin/directory/v1/groups/{groupKey}/members/{memberKey}]

      - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.
      - [member_key]: Identifies the group member in the API request. A group member can be a user or another group. The value can be the member's (group or user) primary email address, alias, or unique ID. *)

  val has_member :
    group_key:string ->
    member_key:string ->
    unit ->
    members_has_member Google_api.Call.t
  (** Checks whether the given user is a member of the group. Membership can be direct or nested, but if nested, the `memberKey` and `groupKey` must be entities in the same domain or an `Invalid input` error is returned. To check for nested memberships that include entities outside of the group's domain, use the \[`checkTransitiveMembership()`\](https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships/checkTransitiveMembership) method in the Cloud Identity Groups API.

      [GET admin/directory/v1/groups/{groupKey}/hasMember/{memberKey}]

      - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.
      - [member_key]: Identifies the user member in the API request. The value can be the user's primary email address, alias, or unique ID. *)

  val insert :
    group_key:string ->
    body:member ->
    unit ->
    member Google_api.Call.t
  (** Adds a user to the specified group.

      [POST admin/directory/v1/groups/{groupKey}/members]

      - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID. *)

  val list :
    group_key:string ->
    ?include_derived_membership:bool ->
    ?max_results:int ->
    ?page_token:string ->
    ?roles:string ->
    unit ->
    members Google_api.Call.t
  (** Retrieves a paginated list of all members in a group. This method times out after 60 minutes. For more information, see \[Troubleshoot error codes\](https://developers.google.com/workspace/admin/directory/v1/guides/troubleshoot-error-codes).

      [GET admin/directory/v1/groups/{groupKey}/members]

      - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.
      - [include_derived_membership]: Whether to list indirect memberships. Default: false.
      - [max_results]: Maximum number of results to return. Max allowed value is 200.
      - [page_token]: Token to specify next page in the list.
      - [roles]: The `roles` query parameter allows you to retrieve group members by role. Allowed values are `OWNER`, `MANAGER`, and `MEMBER`. *)

  val patch :
    group_key:string ->
    member_key:string ->
    body:member ->
    unit ->
    member Google_api.Call.t
  (** Updates the membership properties of a user in the specified group. This method supports \[patch semantics\](https://developers.google.com/workspace/admin/directory/v1/guides/performance#patch).

      [PATCH admin/directory/v1/groups/{groupKey}/members/{memberKey}]

      - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.
      - [member_key]: Identifies the group member in the API request. A group member can be a user or another group. The value can be the member's (group or user) primary email address, alias, or unique ID. *)

  val update :
    group_key:string ->
    member_key:string ->
    body:member ->
    unit ->
    member Google_api.Call.t
  (** Updates the membership of a user in the specified group.

      [PUT admin/directory/v1/groups/{groupKey}/members/{memberKey}]

      - [group_key]: Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.
      - [member_key]: Identifies the group member in the API request. A group member can be a user or another group. The value can be the member's (group or user) primary email address, alias, or unique ID. *)
end

module Mobiledevices : sig
  val action :
    customer_id:string ->
    resource_id:string ->
    body:mobile_device_action ->
    unit ->
    unit Google_api.Call.t
  (** Takes an action that affects a mobile device. For example, remotely wiping a device.

      [POST admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}/action]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [resource_id]: The unique ID the API service uses to identify the mobile device. *)

  val delete :
    customer_id:string ->
    resource_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Removes a mobile device.

      [DELETE admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [resource_id]: The unique ID the API service uses to identify the mobile device. *)

  val get :
    customer_id:string ->
    resource_id:string ->
    ?projection:[ `Basic | `Full | `Unrecognized of string ] ->
    unit ->
    mobile_device Google_api.Call.t
  (** Retrieves a mobile device's properties.

      [GET admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [resource_id]: The unique ID the API service uses to identify the mobile device.
      - [projection]: Restrict information returned to a set of selected fields. *)

  val list :
    customer_id:string ->
    ?max_results:int ->
    ?order_by:[ `Device_id | `Email | `Last_sync | `Model | `Name | `Os | `Status | `Type | `Unrecognized of string ] ->
    ?page_token:string ->
    ?projection:[ `Basic | `Full | `Unrecognized of string ] ->
    ?query:string ->
    ?sort_order:[ `Ascending | `Descending | `Unrecognized of string ] ->
    unit ->
    mobile_devices Google_api.Call.t
  (** Retrieves a paginated list of all user-owned mobile devices for an account. To retrieve a list that includes company-owned devices, use the Cloud Identity \[Devices API\](https://cloud.google.com/identity/docs/concepts/overview-devices) instead. This method times out after 60 minutes. For more information, see \[Troubleshoot error codes\](https://developers.google.com/workspace/admin/directory/v1/guides/troubleshoot-error-codes).

      [GET admin/directory/v1/customer/{customerId}/devices/mobile]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [max_results]: Maximum number of results to return. Max allowed value is 100.
      - [order_by]: Device property to use for sorting results.
      - [page_token]: Token to specify next page in the list
      - [projection]: Restrict information returned to a set of selected fields.
      - [query]: Search string in the format given at https://developers.google.com/workspace/admin/directory/v1/search-operators
      - [sort_order]: Whether to return results in ascending or descending order. Must be used with the `orderBy` parameter. *)
end

module Orgunits : sig
  val delete :
    customer_id:string ->
    org_unit_path:string ->
    unit ->
    unit Google_api.Call.t
  (** Removes an organizational unit.

      [DELETE admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [org_unit_path]: The full path of the organizational unit (minus the leading `/`) or its unique ID. *)

  val get :
    customer_id:string ->
    org_unit_path:string ->
    unit ->
    org_unit Google_api.Call.t
  (** Retrieves an organizational unit.

      [GET admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [org_unit_path]: The full path of the organizational unit (minus the leading `/`) or its unique ID. *)

  val insert :
    customer_id:string ->
    body:org_unit ->
    unit ->
    org_unit Google_api.Call.t
  (** Adds an organizational unit.

      [POST admin/directory/v1/customer/{customerId}/orgunits]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users). *)

  val list :
    customer_id:string ->
    ?org_unit_path:string ->
    ?type_:[ `All | `Children | `All_including_parent | `Unrecognized of string ] ->
    unit ->
    org_units Google_api.Call.t
  (** Retrieves a list of all organizational units for an account.

      [GET admin/directory/v1/customer/{customerId}/orgunits]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [org_unit_path]: The full path to the organizational unit or its unique ID. Returns the children of the specified organizational unit.
      - [type_]: Whether to return all sub-organizations or just immediate children. *)

  val patch :
    customer_id:string ->
    org_unit_path:string ->
    body:org_unit ->
    unit ->
    org_unit Google_api.Call.t
  (** Updates an organizational unit. This method supports \[patch semantics\](https://developers.google.com/workspace/admin/directory/v1/guides/performance#patch)

      [PATCH admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [org_unit_path]: The full path of the organizational unit (minus the leading `/`) or its unique ID. *)

  val update :
    customer_id:string ->
    org_unit_path:string ->
    body:org_unit ->
    unit ->
    org_unit Google_api.Call.t
  (** Updates an organizational unit.

      [PUT admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}]

      - [customer_id]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users resource\](https://developers.google.com/workspace/admin/directory/v1/reference/users).
      - [org_unit_path]: The full path of the organizational unit (minus the leading `/`) or its unique ID. *)
end

module Privileges : sig
  val list :
    customer:string ->
    unit ->
    privileges Google_api.Call.t
  (** Retrieves a paginated list of all privileges for a customer.

      [GET admin/directory/v1/customer/{customer}/roles/ALL/privileges]

      - [customer]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter. *)
end

module Resources : sig
  module Buildings : sig
    val delete :
      customer:string ->
      building_id:string ->
      unit ->
      unit Google_api.Call.t
    (** Deletes a building.

        [DELETE admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [building_id]: The id of the building to delete. *)

    val get :
      customer:string ->
      building_id:string ->
      unit ->
      building Google_api.Call.t
    (** Retrieves a building.

        [GET admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [building_id]: The unique ID of the building to retrieve. *)

    val insert :
      customer:string ->
      body:building ->
      ?coordinates_source:[ `Client_specified | `Resolved_from_address | `Source_unspecified | `Unrecognized of string ] ->
      unit ->
      building Google_api.Call.t
    (** Inserts a building.

        [POST admin/directory/v1/customer/{customer}/resources/buildings]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [coordinates_source]: Source from which Building.coordinates are derived. *)

    val list :
      customer:string ->
      ?max_results:int ->
      ?page_token:string ->
      unit ->
      buildings Google_api.Call.t
    (** Retrieves a list of buildings for an account.

        [GET admin/directory/v1/customer/{customer}/resources/buildings]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [max_results]: Maximum number of results to return.
        - [page_token]: Token to specify the next page in the list. *)

    val patch :
      customer:string ->
      building_id:string ->
      body:building ->
      ?coordinates_source:[ `Client_specified | `Resolved_from_address | `Source_unspecified | `Unrecognized of string ] ->
      unit ->
      building Google_api.Call.t
    (** Patches a building.

        [PATCH admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [building_id]: The id of the building to update.
        - [coordinates_source]: Source from which Building.coordinates are derived. *)

    val update :
      customer:string ->
      building_id:string ->
      body:building ->
      ?coordinates_source:[ `Client_specified | `Resolved_from_address | `Source_unspecified | `Unrecognized of string ] ->
      unit ->
      building Google_api.Call.t
    (** Updates a building.

        [PUT admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [building_id]: The id of the building to update.
        - [coordinates_source]: Source from which Building.coordinates are derived. *)
  end

  module Calendars : sig
    val delete :
      customer:string ->
      calendar_resource_id:string ->
      unit ->
      unit Google_api.Call.t
    (** Deletes a calendar resource.

        [DELETE admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [calendar_resource_id]: The unique ID of the calendar resource to delete. *)

    val get :
      customer:string ->
      calendar_resource_id:string ->
      unit ->
      calendar_resource Google_api.Call.t
    (** Retrieves a calendar resource.

        [GET admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [calendar_resource_id]: The unique ID of the calendar resource to retrieve. *)

    val insert :
      customer:string ->
      body:calendar_resource ->
      unit ->
      calendar_resource Google_api.Call.t
    (** Inserts a calendar resource.

        [POST admin/directory/v1/customer/{customer}/resources/calendars]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID. *)

    val list :
      customer:string ->
      ?max_results:int ->
      ?order_by:string ->
      ?page_token:string ->
      ?query:string ->
      unit ->
      calendar_resources Google_api.Call.t
    (** Retrieves a list of calendar resources for an account.

        [GET admin/directory/v1/customer/{customer}/resources/calendars]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [max_results]: Maximum number of results to return.
        - [order_by]: Field(s) to sort results by in either ascending or descending order. Supported fields include `resourceId`, `resourceName`, `capacity`, `buildingId`, and `floorName`. If no order is specified, defaults to ascending. Should be of the form 'field \[asc|desc\], field \[asc|desc\], ...'. For example `buildingId, capacity desc` would return results sorted first by `buildingId` in ascending order then by `capacity` in descending order.
        - [page_token]: Token to specify the next page in the list.
        - [query]: String query used to filter results. Contains one or more search clauses, each with a field, operator, and value. A field can be any of supported fields and operators can be any of supported operations. Operators include '=' for exact match, '!=' for mismatch and ':' for prefix match or HAS match where applicable. For prefix match, the value should always be followed by a *. Logical operators NOT and AND are supported (in this order of precedence). Supported fields include `generatedResourceName`, `name`, `buildingId`, `floor_name`, `capacity`, `featureInstances.feature.name`, `resourceEmail`, `resourceCategory`. For example `buildingId=US-NYC-9TH AND featureInstances.feature.name:Phone`. *)

    val patch :
      customer:string ->
      calendar_resource_id:string ->
      body:calendar_resource ->
      unit ->
      calendar_resource Google_api.Call.t
    (** Patches a calendar resource.

        [PATCH admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [calendar_resource_id]: The unique ID of the calendar resource to update. *)

    val update :
      customer:string ->
      calendar_resource_id:string ->
      body:calendar_resource ->
      unit ->
      calendar_resource Google_api.Call.t
    (** Updates a calendar resource. This method supports patch semantics, meaning you only need to include the fields you wish to update. Fields that are not present in the request will be preserved.

        [PUT admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [calendar_resource_id]: The unique ID of the calendar resource to update. *)
  end

  module Features : sig
    val delete :
      customer:string ->
      feature_key:string ->
      unit ->
      unit Google_api.Call.t
    (** Deletes a feature.

        [DELETE admin/directory/v1/customer/{customer}/resources/features/{featureKey}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [feature_key]: The unique ID of the feature to delete. *)

    val get :
      customer:string ->
      feature_key:string ->
      unit ->
      feature Google_api.Call.t
    (** Retrieves a feature.

        [GET admin/directory/v1/customer/{customer}/resources/features/{featureKey}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [feature_key]: The unique ID of the feature to retrieve. *)

    val insert :
      customer:string ->
      body:feature ->
      unit ->
      feature Google_api.Call.t
    (** Inserts a feature.

        [POST admin/directory/v1/customer/{customer}/resources/features]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID. *)

    val list :
      customer:string ->
      ?max_results:int ->
      ?page_token:string ->
      unit ->
      features Google_api.Call.t
    (** Retrieves a list of features for an account.

        [GET admin/directory/v1/customer/{customer}/resources/features]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [max_results]: Maximum number of results to return.
        - [page_token]: Token to specify the next page in the list. *)

    val patch :
      customer:string ->
      feature_key:string ->
      body:feature ->
      unit ->
      feature Google_api.Call.t
    (** Patches a feature.

        [PATCH admin/directory/v1/customer/{customer}/resources/features/{featureKey}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [feature_key]: The unique ID of the feature to update. *)

    val rename :
      customer:string ->
      old_name:string ->
      body:feature_rename ->
      unit ->
      unit Google_api.Call.t
    (** Renames a feature.

        [POST admin/directory/v1/customer/{customer}/resources/features/{oldName}/rename]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [old_name]: The unique ID of the feature to rename. *)

    val update :
      customer:string ->
      feature_key:string ->
      body:feature ->
      unit ->
      feature Google_api.Call.t
    (** Updates a feature.

        [PUT admin/directory/v1/customer/{customer}/resources/features/{featureKey}]

        - [customer]: The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.
        - [feature_key]: The unique ID of the feature to update. *)
  end
end

module Role_assignments : sig
  val delete :
    customer:string ->
    role_assignment_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes a role assignment.

      [DELETE admin/directory/v1/customer/{customer}/roleassignments/{roleAssignmentId}]

      - [customer]: Immutable ID of the Google Workspace account.
      - [role_assignment_id]: Immutable ID of the role assignment. *)

  val get :
    customer:string ->
    role_assignment_id:string ->
    unit ->
    role_assignment Google_api.Call.t
  (** Retrieves a role assignment.

      [GET admin/directory/v1/customer/{customer}/roleassignments/{roleAssignmentId}]

      - [customer]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.
      - [role_assignment_id]: Immutable ID of the role assignment. *)

  val insert :
    customer:string ->
    body:role_assignment ->
    unit ->
    role_assignment Google_api.Call.t
  (** Creates a role assignment.

      [POST admin/directory/v1/customer/{customer}/roleassignments]

      - [customer]: Immutable ID of the Google Workspace account. *)

  val list :
    customer:string ->
    ?include_indirect_role_assignments:bool ->
    ?max_results:int ->
    ?page_token:string ->
    ?role_id:string ->
    ?user_key:string ->
    unit ->
    role_assignments Google_api.Call.t
  (** Retrieves a paginated list of all roleAssignments.

      [GET admin/directory/v1/customer/{customer}/roleassignments]

      - [customer]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.
      - [include_indirect_role_assignments]: When set to `true`, fetches indirect role assignments (i.e. role assignment via a group) as well as direct ones. Defaults to `false`. You must specify `user_key` or the indirect role assignments will not be included.
      - [max_results]: Maximum number of results to return.
      - [page_token]: Token to specify the next page in the list.
      - [role_id]: Immutable ID of a role. If included in the request, returns only role assignments containing this role ID.
      - [user_key]: The primary email address, alias email address, or unique user or group ID. If included in the request, returns role assignments only for this user or group. *)
end

module Roles : sig
  val delete :
    customer:string ->
    role_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes a role.

      [DELETE admin/directory/v1/customer/{customer}/roles/{roleId}]

      - [customer]: Immutable ID of the Google Workspace account.
      - [role_id]: Immutable ID of the role. *)

  val get :
    customer:string ->
    role_id:string ->
    unit ->
    role Google_api.Call.t
  (** Retrieves a role.

      [GET admin/directory/v1/customer/{customer}/roles/{roleId}]

      - [customer]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.
      - [role_id]: Immutable ID of the role. *)

  val insert :
    customer:string ->
    body:role ->
    unit ->
    role Google_api.Call.t
  (** Creates a role.

      [POST admin/directory/v1/customer/{customer}/roles]

      - [customer]: Immutable ID of the Google Workspace account. *)

  val list :
    customer:string ->
    ?max_results:int ->
    ?page_token:string ->
    unit ->
    roles Google_api.Call.t
  (** Retrieves a paginated list of all the roles in a domain.

      [GET admin/directory/v1/customer/{customer}/roles]

      - [customer]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.
      - [max_results]: Maximum number of results to return.
      - [page_token]: Token to specify the next page in the list. *)

  val patch :
    customer:string ->
    role_id:string ->
    body:role ->
    unit ->
    role Google_api.Call.t
  (** Patches a role.

      [PATCH admin/directory/v1/customer/{customer}/roles/{roleId}]

      - [customer]: Immutable ID of the Google Workspace account.
      - [role_id]: Immutable ID of the role. *)

  val update :
    customer:string ->
    role_id:string ->
    body:role ->
    unit ->
    role Google_api.Call.t
  (** Updates a role.

      [PUT admin/directory/v1/customer/{customer}/roles/{roleId}]

      - [customer]: Immutable ID of the Google Workspace account.
      - [role_id]: Immutable ID of the role. *)
end

module Schemas : sig
  val delete :
    customer_id:string ->
    schema_key:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes a schema.

      [DELETE admin/directory/v1/customer/{customerId}/schemas/{schemaKey}]

      - [customer_id]: Immutable ID of the Google Workspace account.
      - [schema_key]: Name or immutable ID of the schema. *)

  val get :
    customer_id:string ->
    schema_key:string ->
    unit ->
    schema Google_api.Call.t
  (** Retrieves a schema.

      [GET admin/directory/v1/customer/{customerId}/schemas/{schemaKey}]

      - [customer_id]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.
      - [schema_key]: Name or immutable ID of the schema. *)

  val insert :
    customer_id:string ->
    body:schema ->
    unit ->
    schema Google_api.Call.t
  (** Creates a schema.

      [POST admin/directory/v1/customer/{customerId}/schemas]

      - [customer_id]: Immutable ID of the Google Workspace account. *)

  val list :
    customer_id:string ->
    unit ->
    schemas Google_api.Call.t
  (** Retrieves all schemas for a customer.

      [GET admin/directory/v1/customer/{customerId}/schemas]

      - [customer_id]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter. *)

  val patch :
    customer_id:string ->
    schema_key:string ->
    body:schema ->
    unit ->
    schema Google_api.Call.t
  (** Patches a schema.

      [PATCH admin/directory/v1/customer/{customerId}/schemas/{schemaKey}]

      - [customer_id]: Immutable ID of the Google Workspace account.
      - [schema_key]: Name or immutable ID of the schema. *)

  val update :
    customer_id:string ->
    schema_key:string ->
    body:schema ->
    unit ->
    schema Google_api.Call.t
  (** Updates a schema.

      [PUT admin/directory/v1/customer/{customerId}/schemas/{schemaKey}]

      - [customer_id]: Immutable ID of the Google Workspace account.
      - [schema_key]: Name or immutable ID of the schema. *)
end

module Tokens : sig
  val delete :
    user_key:string ->
    client_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes all access tokens issued by a user for an application.

      [DELETE admin/directory/v1/users/{userKey}/tokens/{clientId}]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
      - [client_id]: The Client ID of the application the token is issued to. *)

  val get :
    user_key:string ->
    client_id:string ->
    unit ->
    token Google_api.Call.t
  (** Gets information about an access token issued by a user.

      [GET admin/directory/v1/users/{userKey}/tokens/{clientId}]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
      - [client_id]: The Client ID of the application the token is issued to. *)

  val list :
    user_key:string ->
    unit ->
    tokens Google_api.Call.t
  (** Returns the set of tokens specified user has issued to 3rd party applications.

      [GET admin/directory/v1/users/{userKey}/tokens]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)
end

module Two_step_verification : sig
  val turn_off :
    user_key:string ->
    unit ->
    unit Google_api.Call.t
  (** Turns off 2-Step Verification for user.

      [POST admin/directory/v1/users/{userKey}/twoStepVerification/turnOff]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)
end

module Users : sig
  val create_guest :
    body:directory_users_create_guest_request ->
    unit ->
    user Google_api.Call.t
  (** Create a guest user with access to a \[subset of Workspace capabilities\](https://support.google.com/a/answer/16558545). This feature is currently in Open Beta.

      [POST admin/directory/v1/users:createGuest] *)

  val delete :
    user_key:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes a user.

      [DELETE admin/directory/v1/users/{userKey}]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)

  val get :
    user_key:string ->
    ?custom_field_mask:string ->
    ?projection:[ `Basic | `Custom | `Full | `Unrecognized of string ] ->
    ?view_type:[ `Admin_view | `Domain_public | `Unrecognized of string ] ->
    unit ->
    user Google_api.Call.t
  (** Retrieves a user.

      [GET admin/directory/v1/users/{userKey}]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
      - [custom_field_mask]: A comma-separated list of schema names. All fields from these schemas are fetched. This should only be set when `projection=custom`.
      - [projection]: What subset of fields to fetch for this user.
      - [view_type]: Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see \[Retrieve a user as a non-administrator\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-users#retrieve_users_non_admin). *)

  val insert :
    body:user ->
    ?resolve_conflict_account:bool ->
    unit ->
    user Google_api.Call.t
  (** Creates a user. Mutate calls immediately following user creation might sometimes fail as the user isn't fully created due to propagation delay in our backends. Check the error details for the 'User creation is not complete' message to see if this is the case. Retrying the calls after some time can help in this case. If `resolve_conflict_account` is set to `true`, the option selected for \[Find and add unmanaged users\](https://knowledge.workspace.google.com/admin/users/find-and-add-unmanaged-users) will apply to resolve conflicting accounts: - A `200` response code indicates the user was created (or replaced an existing unmanaged personal account). - A `202` response code means that a conflicting unmanaged personal account exists and was invited to join the organization. - A `409` response code means that a conflicting account exists so the user wasn't created (e.g. based on the option selected to preserve the account, or if the email conflicts with an unmanaged work account or existing managed user). For details on resolving duplicate account errors, see \[Resolve duplicate account errors\](https://knowledge.workspace.google.com/p/duplicate-account-errors) and \[Transfer unmanaged work accounts\](https://knowledge.workspace.google.com/p/unmanaged-work-accounts).

      [POST admin/directory/v1/users]

      - [resolve_conflict_account]: Optional. Applies the option selected for \[Find and add unmanaged users\](https://knowledge.workspace.google.com/admin/users/find-and-add-unmanaged-users) to resolve conflicting accounts when set to `true`. Default: `false` *)

  val list :
    ?custom_field_mask:string ->
    ?customer:string ->
    ?domain:string ->
    ?event:[ `Add | `Delete | `Make_admin | `Undelete | `Update | `Unrecognized of string ] ->
    ?max_results:int ->
    ?order_by:[ `Email | `Family_name | `Given_name | `Unrecognized of string ] ->
    ?page_token:string ->
    ?projection:[ `Basic | `Custom | `Full | `Unrecognized of string ] ->
    ?query:string ->
    ?show_deleted:string ->
    ?sort_order:[ `Ascending | `Descending | `Unrecognized of string ] ->
    ?view_type:[ `Admin_view | `Domain_public | `Unrecognized of string ] ->
    unit ->
    users Google_api.Call.t
  (** Retrieves a paginated list of either deleted users or all users in a domain.

      [GET admin/directory/v1/users]

      - [custom_field_mask]: A comma-separated list of schema names. All fields from these schemas are fetched. This should only be set when `projection=custom`.
      - [customer]: The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all users for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the \[Users\](https://developers.google.com/workspace/admin/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.
      - [domain]: The domain name. Use this field to get users from only one domain. To return all domains for a customer account, use the `customer` query parameter instead. Either the `customer` or the `domain` parameter must be provided.
      - [event]: Event on which subscription is intended (if subscribing)
      - [max_results]: Maximum number of results to return.
      - [order_by]: Property to use for sorting results.
      - [page_token]: Token to specify next page in the list. The page token is only valid for three days.
      - [projection]: What subset of fields to fetch for this user.
      - [query]: Query string for searching user fields. For more information on constructing user queries, see \[Search for Users\](https://developers.google.com/workspace/admin/directory/v1/guides/search-users).
      - [show_deleted]: If set to `true`, retrieves the list of deleted users. (Default: `false`)
      - [sort_order]: Whether to return results in ascending or descending order, ignoring case.
      - [view_type]: Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see \[Retrieve a user as a non-administrator\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-users#retrieve_users_non_admin). *)

  val make_admin :
    user_key:string ->
    body:user_make_admin ->
    unit ->
    unit Google_api.Call.t
  (** Makes a user a super administrator.

      [POST admin/directory/v1/users/{userKey}/makeAdmin]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)

  val patch :
    user_key:string ->
    body:user ->
    unit ->
    user Google_api.Call.t
  (** Updates a user using patch semantics. The update method should be used instead, because it also supports patch semantics and has better performance. If you're mapping an external identity to a Google identity, use the \[`update`\](https://developers.google.com/workspace/admin/directory/v1/reference/users/update) method instead of the `patch` method. This method is unable to clear fields that contain repeated objects (`addresses`, `phones`, etc). Use the update method instead.

      [PATCH admin/directory/v1/users/{userKey}]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)

  val sign_out :
    user_key:string ->
    unit ->
    unit Google_api.Call.t
  (** Signs a user out of all web and device sessions and reset their sign-in cookies. User will have to sign in by authenticating again.

      [POST admin/directory/v1/users/{userKey}/signOut]

      - [user_key]: Identifies the target user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)

  val undelete :
    user_key:string ->
    body:user_undelete ->
    unit ->
    unit Google_api.Call.t
  (** Undeletes a deleted user.

      [POST admin/directory/v1/users/{userKey}/undelete]

      - [user_key]: The immutable id of the user *)

  val update :
    user_key:string ->
    body:user ->
    unit ->
    user Google_api.Call.t
  (** Updates a user. This method supports patch semantics, meaning that you only need to include the fields you wish to update. Fields that are not present in the request will be preserved, and fields set to `null` will be cleared. For repeating fields that contain arrays, individual items in the array can't be patched piecemeal; they must be supplied in the request body with the desired values for all items. See the \[user accounts guide\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-users#update_user) for more information.

      [PUT admin/directory/v1/users/{userKey}]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)

  val watch :
    body:channel ->
    ?custom_field_mask:string ->
    ?customer:string ->
    ?domain:string ->
    ?event:[ `Add | `Delete | `Make_admin | `Undelete | `Update | `Unrecognized of string ] ->
    ?max_results:int ->
    ?order_by:[ `Email | `Family_name | `Given_name | `Unrecognized of string ] ->
    ?page_token:string ->
    ?projection:[ `Basic | `Custom | `Full | `Unrecognized of string ] ->
    ?query:string ->
    ?show_deleted:string ->
    ?sort_order:[ `Ascending | `Descending | `Unrecognized of string ] ->
    ?view_type:[ `Admin_view | `Domain_public | `Unrecognized of string ] ->
    unit ->
    channel Google_api.Call.t
  (** Watches for changes in users list.

      [POST admin/directory/v1/users/watch]

      - [custom_field_mask]: Comma-separated list of schema names. All fields from these schemas are fetched. This should only be set when projection=custom.
      - [customer]: Immutable ID of the Google Workspace account. In case of multi-domain, to fetch all users for a customer, fill this field instead of domain.
      - [domain]: Name of the domain. Fill this field to get users from only this domain. To return all users in a multi-domain fill customer field instead.'
      - [event]: Events to watch for.
      - [max_results]: Maximum number of results to return.
      - [order_by]: Column to use for sorting results
      - [page_token]: Token to specify next page in the list
      - [projection]: What subset of fields to fetch for this user.
      - [query]: Query string search. Contains one or more search clauses, each with a field, operator, and value. For complete documentation, go to \[Search for users\](https://developers.google.com/workspace/admin/directory/v1/guides/search-users).
      - [show_deleted]: If set to true, retrieves the list of deleted users. (Default: false)
      - [sort_order]: Whether to return results in ascending or descending order.
      - [view_type]: Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see \[Retrieve a user as a non-administrator\](https://developers.google.com/workspace/admin/directory/v1/guides/manage-users#retrieve_users_non_admin). *)

  module Aliases : sig
    val delete :
      user_key:string ->
      alias:string ->
      unit ->
      unit Google_api.Call.t
    (** Removes an alias.

        [DELETE admin/directory/v1/users/{userKey}/aliases/{alias}]

        - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
        - [alias]: The alias to be removed. *)

    val insert :
      user_key:string ->
      body:alias ->
      unit ->
      alias Google_api.Call.t
    (** Adds an alias.

        [POST admin/directory/v1/users/{userKey}/aliases]

        - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)

    val list :
      user_key:string ->
      ?event:[ `Add | `Delete | `Unrecognized of string ] ->
      unit ->
      aliases Google_api.Call.t
    (** Lists all aliases for a user.

        [GET admin/directory/v1/users/{userKey}/aliases]

        - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
        - [event]: Events to watch for. *)

    val watch :
      user_key:string ->
      body:channel ->
      ?event:[ `Add | `Delete | `Unrecognized of string ] ->
      unit ->
      channel Google_api.Call.t
    (** Watches for changes in users list.

        [POST admin/directory/v1/users/{userKey}/aliases/watch]

        - [user_key]: Email or immutable ID of the user
        - [event]: Events to watch for. *)
  end

  module Photos : sig
    val delete :
      user_key:string ->
      unit ->
      unit Google_api.Call.t
    (** Removes the user's photo.

        [DELETE admin/directory/v1/users/{userKey}/photos/thumbnail]

        - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)

    val get :
      user_key:string ->
      unit ->
      user_photo Google_api.Call.t
    (** Retrieves the user's photo.

        [GET admin/directory/v1/users/{userKey}/photos/thumbnail]

        - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)

    val patch :
      user_key:string ->
      body:user_photo ->
      unit ->
      user_photo Google_api.Call.t
    (** Adds a photo for the user. This method supports \[patch semantics\](https://developers.google.com/workspace/admin/directory/v1/guides/performance#patch).

        [PATCH admin/directory/v1/users/{userKey}/photos/thumbnail]

        - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)

    val update :
      user_key:string ->
      body:user_photo ->
      unit ->
      user_photo Google_api.Call.t
    (** Adds a photo for the user.

        [PUT admin/directory/v1/users/{userKey}/photos/thumbnail]

        - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)
  end
end

module Verification_codes : sig
  val generate :
    user_key:string ->
    unit ->
    unit Google_api.Call.t
  (** Generates new backup verification codes for the user.

      [POST admin/directory/v1/users/{userKey}/verificationCodes/generate]

      - [user_key]: Email or immutable ID of the user *)

  val invalidate :
    user_key:string ->
    unit ->
    unit Google_api.Call.t
  (** Invalidates the current backup verification codes for the user.

      [POST admin/directory/v1/users/{userKey}/verificationCodes/invalidate]

      - [user_key]: Email or immutable ID of the user *)

  val list :
    user_key:string ->
    unit ->
    verification_codes Google_api.Call.t
  (** Returns the current set of valid backup verification codes for the specified user.

      [GET admin/directory/v1/users/{userKey}/verificationCodes]

      - [user_key]: Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID. *)
end
