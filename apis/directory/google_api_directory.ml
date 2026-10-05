(* Generated from the Discovery document of admin directory_v1 (revision 20260929). Do not edit. *)

[@@@alert "-internal"]

type alias = {
  alias : string option;
  etag : string option;
  id : string option;
  kind : string option;
  primary_email : string option;
}

and aliases = {
  aliases : Yojson.Safe.t list option;
  etag : string option;
  kind : string option;
}

and asp = {
  code_id : int option;
  creation_time : string option;
  etag : string option;
  kind : string option;
  last_time_used : string option;
  name : string option;
  user_key : string option;
}

and asps = {
  etag : string option;
  items : asp list option;
  kind : string option;
}

and auxiliary_message = {
  auxiliary_message : string option;
  field_mask : string option;
  severity : [ `Severity_unspecified | `Severity_info | `Severity_warning | `Severity_error | `Unrecognized of string ] option;
}

and backlight_info = {
  brightness : int option;
  max_brightness : int option;
  path : string option;
}

and batch_change_chrome_os_device_status_request = {
  change_chrome_os_device_status_action : [ `Change_chrome_os_device_status_action_unspecified | `Change_chrome_os_device_status_action_deprovision | `Change_chrome_os_device_status_action_disable | `Change_chrome_os_device_status_action_reenable | `Unrecognized of string ] option;
  deprovision_reason : [ `Deprovision_reason_unspecified | `Deprovision_reason_same_model_replacement | `Deprovision_reason_upgrade | `Deprovision_reason_domain_move | `Deprovision_reason_service_expiration | `Deprovision_reason_other | `Deprovision_reason_different_model_replacement | `Deprovision_reason_retiring_device | `Deprovision_reason_upgrade_transfer | `Deprovision_reason_not_required | `Deprovision_reason_repair_center | `Unrecognized of string ] option;
  device_ids : string list option;
}

and batch_change_chrome_os_device_status_response = {
  change_chrome_os_device_status_results : change_chrome_os_device_status_result list option;
}

and batch_create_print_servers_request = {
  requests : create_print_server_request list option;
}

and batch_create_print_servers_response = {
  failures : print_server_failure_info list option;
  print_servers : print_server list option;
}

and batch_create_printers_request = {
  requests : create_printer_request list option;
}

and batch_create_printers_response = {
  failures : failure_info list option;
  printers : printer list option;
}

and batch_delete_print_servers_request = {
  print_server_ids : string list option;
}

and batch_delete_print_servers_response = {
  failed_print_servers : print_server_failure_info list option;
  print_server_ids : string list option;
}

and batch_delete_printers_request = {
  printer_ids : string list option;
}

and batch_delete_printers_response = {
  failed_printers : failure_info list option;
  printer_ids : string list option;
}

and bluetooth_adapter_info = {
  address : string option;
  num_connected_devices : int option;
}

and building = {
  address : building_address option;
  building_id : string option;
  building_name : string option;
  coordinates : building_coordinates option;
  description : string option;
  etags : string option;
  floor_names : string list option;
  kind : string option;
}

and building_address = {
  address_lines : string list option;
  administrative_area : string option;
  language_code : string option;
  locality : string option;
  postal_code : string option;
  region_code : string option;
  sublocality : string option;
}

and building_coordinates = {
  latitude : float option;
  longitude : float option;
}

and buildings = {
  buildings : building list option;
  etag : string option;
  kind : string option;
  next_page_token : string option;
}

and byte_usage = {
  capacity_bytes : string option;
  used_bytes : string option;
}

and calendar_resource = {
  building_id : string option;
  capacity : int option;
  etags : string option;
  feature_instances : Yojson.Safe.t option;
  floor_name : string option;
  floor_section : string option;
  generated_resource_name : string option;
  kind : string option;
  resource_category : string option;
  resource_description : string option;
  resource_email : string option;
  resource_id : string option;
  resource_name : string option;
  resource_type : string option;
  user_visible_description : string option;
}

and calendar_resources = {
  etag : string option;
  items : calendar_resource list option;
  kind : string option;
  next_page_token : string option;
}

and change_chrome_os_device_status_result = {
  device_id : string option;
  error : status option;
  response : change_chrome_os_device_status_succeeded option;
}

and change_chrome_os_device_status_succeeded = Yojson.Safe.t

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

and chrome_os_device_active_time_ranges_item = {
  active_time : int option;
  date : string option;
}

and chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item = {
  display_name : string option;
  session_duration : string option;
}

and chrome_os_device_cpu_info_item_logical_cpus_item = {
  c_states : chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item list option;
  current_scaling_frequency_khz : int option;
  idle_duration : string option;
  max_scaling_frequency_khz : int option;
}

and chrome_os_device_cpu_info_item = {
  architecture : string option;
  logical_cpus : chrome_os_device_cpu_info_item_logical_cpus_item list option;
  max_clock_speed_khz : int option;
  model : string option;
}

and chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item = {
  label : string option;
  temperature : int option;
}

and chrome_os_device_cpu_status_reports_item = {
  cpu_temperature_info : chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item list option;
  cpu_utilization_percentage_info : int list option;
  report_time : string option;
}

and chrome_os_device_device_files_item = {
  create_time : string option;
  download_url : string option;
  name : string option;
  type_ : string option;
}

and chrome_os_device_disk_volume_reports_item_volume_info_item = {
  storage_free : string option;
  storage_total : string option;
  volume_id : string option;
}

and chrome_os_device_disk_volume_reports_item = {
  volume_info : chrome_os_device_disk_volume_reports_item_volume_info_item list option;
}

and chrome_os_device_last_known_network_item = {
  ip_address : string option;
  wan_ip_address : string option;
}

and chrome_os_device_recent_users_item = {
  email : string option;
  type_ : string option;
}

and chrome_os_device_screenshot_files_item = {
  create_time : string option;
  download_url : string option;
  name : string option;
  type_ : string option;
}

and chrome_os_device_system_ram_free_reports_item = {
  report_time : string option;
  system_ram_free_info : string list option;
}

and chrome_os_device_tpm_version_info = {
  family : string option;
  firmware_version : string option;
  manufacturer : string option;
  spec_level : string option;
  tpm_model : string option;
  vendor_specific : string option;
}

and chrome_os_device = {
  active_time_ranges : chrome_os_device_active_time_ranges_item list option;
  annotated_asset_id : string option;
  annotated_location : string option;
  annotated_user : string option;
  auto_update_expiration : string option;
  auto_update_through : string option;
  backlight_info : backlight_info list option;
  bluetooth_adapter_info : bluetooth_adapter_info list option;
  boot_mode : string option;
  chrome_os_type : [ `Chrome_os_type_unspecified | `Chrome_os_flex | `Chrome_os | `Unrecognized of string ] option;
  cpu_info : chrome_os_device_cpu_info_item list option;
  cpu_status_reports : chrome_os_device_cpu_status_reports_item list option;
  deprovision_reason : [ `Deprovision_reason_unspecified | `Deprovision_reason_same_model_replacement | `Deprovision_reason_upgrade | `Deprovision_reason_domain_move | `Deprovision_reason_service_expiration | `Deprovision_reason_other | `Deprovision_reason_different_model_replacement | `Deprovision_reason_retiring_device | `Deprovision_reason_upgrade_transfer | `Deprovision_reason_not_required | `Deprovision_reason_repair_center | `Unrecognized of string ] option;
  device_files : chrome_os_device_device_files_item list option;
  device_id : string option;
  device_license_type : [ `Device_license_type_unspecified | `Enterprise | `Enterprise_upgrade | `Education_upgrade | `Education | `Kiosk_upgrade | `Enterprise_upgrade_perpetual | `Enterprise_upgrade_fixed_term | `Education_upgrade_perpetual | `Education_upgrade_fixed_term | `Unrecognized of string ] option;
  disk_space_usage : byte_usage option;
  disk_volume_reports : chrome_os_device_disk_volume_reports_item list option;
  dock_mac_address : string option;
  etag : string option;
  ethernet_mac_address : string option;
  ethernet_mac_address0 : string option;
  extended_support_eligible : bool option;
  extended_support_enabled : bool option;
  extended_support_start : string option;
  fan_info : fan_info list option;
  firmware_version : string option;
  first_enrollment_time : string option;
  kind : string option;
  last_deprovision_timestamp : string option;
  last_enrollment_time : string option;
  last_known_network : chrome_os_device_last_known_network_item list option;
  last_sync : string option;
  mac_address : string option;
  manufacture_date : string option;
  meid : string option;
  model : string option;
  notes : string option;
  order_number : string option;
  org_unit_id : string option;
  org_unit_path : string option;
  os_update_status : os_update_status option;
  os_version : string option;
  os_version_compliance : [ `Compliance_unspecified | `Compliant | `Pending | `Not_compliant | `Unrecognized of string ] option;
  platform_version : string option;
  recent_users : chrome_os_device_recent_users_item list option;
  screenshot_files : chrome_os_device_screenshot_files_item list option;
  serial_number : string option;
  status : string option;
  support_end_date : string option;
  system_ram_free_reports : chrome_os_device_system_ram_free_reports_item list option;
  system_ram_total : string option;
  tpm_version_info : chrome_os_device_tpm_version_info option;
  will_auto_renew : bool option;
}

and chrome_os_device_action = {
  action : string option;
  deprovision_reason : string option;
}

and chrome_os_devices = {
  chromeosdevices : chrome_os_device list option;
  etag : string option;
  kind : string option;
  next_page_token : string option;
}

and chrome_os_move_devices_to_ou = {
  device_ids : string list option;
}

and count_chrome_os_devices_response = {
  count : string option;
}

and create_print_server_request = {
  parent : string option;
  print_server : print_server option;
}

and create_printer_request = {
  parent : string option;
  printer : printer option;
}

and customer = {
  alternate_email : string option;
  customer_creation_time : string option;
  customer_domain : string option;
  etag : string option;
  id : string option;
  kind : string option;
  language : string option;
  phone_number : string option;
  postal_address : customer_postal_address option;
}

and customer_postal_address = {
  address_line1 : string option;
  address_line2 : string option;
  address_line3 : string option;
  contact_name : string option;
  country_code : string option;
  locality : string option;
  organization_name : string option;
  postal_code : string option;
  region : string option;
}

and directory_chromeosdevices_command = {
  command_expire_time : string option;
  command_id : string option;
  command_result : directory_chromeosdevices_command_result option;
  issue_time : string option;
  payload : string option;
  state : [ `State_unspecified | `Pending | `Expired | `Cancelled | `Sent_to_client | `Acked_by_client | `Executed_by_client | `Unrecognized of string ] option;
  type_ : [ `Command_type_unspecified | `Reboot | `Take_a_screenshot | `Set_volume | `Wipe_users | `Remote_powerwash | `Device_start_crd_session | `Capture_logs | `Fetch_crd_availability_info | `Fetch_support_packet | `Unrecognized of string ] option;
}

and directory_chromeosdevices_command_result = {
  command_result_payload : string option;
  error_message : string option;
  execute_time : string option;
  result : [ `Command_result_type_unspecified | `Ignored | `Failure | `Success | `Unrecognized of string ] option;
}

and directory_chromeosdevices_issue_command_request = {
  command_type : [ `Command_type_unspecified | `Reboot | `Take_a_screenshot | `Set_volume | `Wipe_users | `Remote_powerwash | `Device_start_crd_session | `Capture_logs | `Fetch_crd_availability_info | `Fetch_support_packet | `Unrecognized of string ] option;
  payload : string option;
}

and directory_chromeosdevices_issue_command_response = {
  command_id : string option;
}

and directory_users_create_guest_request = {
  customer : string option;
  primary_guest_email : string option;
}

and domain_alias = {
  creation_time : string option;
  domain_alias_name : string option;
  etag : string option;
  kind : string option;
  parent_domain_name : string option;
  verified : bool option;
}

and domain_aliases = {
  domain_aliases : domain_alias list option;
  etag : string option;
  kind : string option;
}

and domains = {
  creation_time : string option;
  domain_aliases : domain_alias list option;
  domain_name : string option;
  etag : string option;
  is_primary : bool option;
  kind : string option;
  verified : bool option;
}

and domains2 = {
  domains : domains list option;
  etag : string option;
  kind : string option;
}

and empty = Yojson.Safe.t

and expiration_details = {
  expire_time : string option;
}

and external_id = {
  id : string option;
  namespace : string option;
}

and failure_info = {
  error_code : [ `Ok | `Cancelled | `Unknown | `Invalid_argument | `Deadline_exceeded | `Not_found | `Already_exists | `Permission_denied | `Unauthenticated | `Resource_exhausted | `Failed_precondition | `Aborted | `Out_of_range | `Unimplemented | `Internal | `Unavailable | `Data_loss | `Unrecognized of string ] option;
  error_message : string option;
  printer : printer option;
  printer_id : string option;
}

and fan_info = {
  speed_rpm : int option;
}

and feature = {
  etags : string option;
  kind : string option;
  name : string option;
}

and feature_instance = {
  feature : feature option;
}

and feature_rename = {
  new_name : string option;
}

and features = {
  etag : string option;
  features : feature list option;
  kind : string option;
  next_page_token : string option;
}

and group = {
  admin_created : bool option;
  aliases : string list option;
  description : string option;
  direct_members_count : string option;
  email : string option;
  etag : string option;
  external_ids : external_id list option;
  id : string option;
  kind : string option;
  name : string option;
  non_editable_aliases : string list option;
}

and group_alias = {
  alias : string option;
  etag : string option;
  id : string option;
  kind : string option;
  primary_email : string option;
}

and groups = {
  etag : string option;
  groups : group list option;
  kind : string option;
  next_page_token : string option;
}

and guest_account_info = {
  primary_guest_email : string option;
}

and list_print_servers_response = {
  next_page_token : string option;
  print_servers : print_server list option;
}

and list_printer_models_response = {
  next_page_token : string option;
  printer_models : printer_model list option;
}

and list_printers_response = {
  next_page_token : string option;
  printers : printer list option;
}

and member = {
  delivery_settings : string option;
  email : string option;
  etag : string option;
  id : string option;
  kind : string option;
  role : string option;
  status : string option;
  type_ : string option;
}

and members = {
  etag : string option;
  kind : string option;
  members : member list option;
  next_page_token : string option;
}

and members_has_member = {
  is_member : bool option;
}

and mobile_device_applications_item = {
  display_name : string option;
  package_name : string option;
  permission : string list option;
  version_code : int option;
  version_name : string option;
}

and mobile_device = {
  adb_status : bool option;
  applications : mobile_device_applications_item list option;
  baseband_version : string option;
  bootloader_version : string option;
  brand : string option;
  build_number : string option;
  default_language : string option;
  developer_options_status : bool option;
  device_compromised_status : string option;
  device_id : string option;
  device_password_status : string option;
  email : string list option;
  encryption_status : string option;
  etag : string option;
  first_sync : string option;
  hardware : string option;
  hardware_id : string option;
  imei : string option;
  kernel_version : string option;
  kind : string option;
  last_sync : string option;
  managed_account_is_on_owner_profile : bool option;
  manufacturer : string option;
  meid : string option;
  model : string option;
  name : string list option;
  network_operator : string option;
  os : string option;
  other_accounts_info : string list option;
  privilege : string option;
  release_version : string option;
  resource_id : string option;
  security_patch_level : string option;
  serial_number : string option;
  status : string option;
  supports_work_profile : bool option;
  type_ : string option;
  unknown_sources_status : bool option;
  user_agent : string option;
  wifi_mac_address : string option;
}

and mobile_device_action = {
  action : string option;
}

and mobile_devices = {
  etag : string option;
  kind : string option;
  mobiledevices : mobile_device list option;
  next_page_token : string option;
}

and org_unit = {
  block_inheritance : bool option;
  description : string option;
  etag : string option;
  kind : string option;
  name : string option;
  org_unit_id : string option;
  org_unit_path : string option;
  parent_org_unit_id : string option;
  parent_org_unit_path : string option;
}

and org_units = {
  etag : string option;
  kind : string option;
  organization_units : org_unit list option;
}

and os_update_status = {
  reboot_time : string option;
  state : [ `Update_state_unspecified | `Update_state_not_started | `Update_state_download_in_progress | `Update_state_need_reboot | `Unrecognized of string ] option;
  target_kiosk_app_version : string option;
  target_os_version : string option;
  update_check_time : string option;
  update_time : string option;
}

and print_server = {
  create_time : string option;
  description : string option;
  display_name : string option;
  id : string option;
  name : string option;
  org_unit_id : string option;
  uri : string option;
}

and print_server_failure_info = {
  error_code : [ `Ok | `Cancelled | `Unknown | `Invalid_argument | `Deadline_exceeded | `Not_found | `Already_exists | `Permission_denied | `Unauthenticated | `Resource_exhausted | `Failed_precondition | `Aborted | `Out_of_range | `Unimplemented | `Internal | `Unavailable | `Data_loss | `Unrecognized of string ] option;
  error_message : string option;
  print_server : print_server option;
  print_server_id : string option;
}

and printer = {
  auxiliary_messages : auxiliary_message list option;
  create_time : string option;
  description : string option;
  display_name : string option;
  id : string option;
  make_and_model : string option;
  name : string option;
  org_unit_id : string option;
  uri : string option;
  use_driverless_config : bool option;
}

and printer_model = {
  display_name : string option;
  make_and_model : string option;
  manufacturer : string option;
}

and privilege = {
  child_privileges : privilege list option;
  etag : string option;
  is_ou_scopable : bool option;
  kind : string option;
  privilege_name : string option;
  service_id : string option;
  service_name : string option;
}

and privileges = {
  etag : string option;
  items : privilege list option;
  kind : string option;
}

and role_role_privileges_item = {
  privilege_name : string option;
  service_id : string option;
}

and role = {
  etag : string option;
  is_super_admin_role : bool option;
  is_system_role : bool option;
  kind : string option;
  role_description : string option;
  role_id : string option;
  role_name : string option;
  role_privileges : role_role_privileges_item list option;
}

and role_assignment = {
  assigned_to : string option;
  assignee_type : [ `User | `Group | `Unrecognized of string ] option;
  condition : string option;
  etag : string option;
  expiration_details : expiration_details option;
  kind : string option;
  org_unit_id : string option;
  role_assignment_id : string option;
  role_id : string option;
  scope_type : string option;
}

and role_assignments = {
  etag : string option;
  items : role_assignment list option;
  kind : string option;
  next_page_token : string option;
}

and roles = {
  etag : string option;
  items : role list option;
  kind : string option;
  next_page_token : string option;
}

and schema = {
  display_name : string option;
  etag : string option;
  fields : schema_field_spec list option;
  kind : string option;
  schema_id : string option;
  schema_name : string option;
}

and schema_field_spec_numeric_indexing_spec = {
  max_value : float option;
  min_value : float option;
}

and schema_field_spec = {
  display_name : string option;
  etag : string option;
  field_id : string option;
  field_name : string option;
  field_type : string option;
  indexed : bool option;
  kind : string option;
  multi_valued : bool option;
  numeric_indexing_spec : schema_field_spec_numeric_indexing_spec option;
  read_access_type : string option;
}

and schemas = {
  etag : string option;
  kind : string option;
  schemas : schema list option;
}

and status = {
  code : int option;
  details : (string * Yojson.Safe.t) list list option;
  message : string option;
}

and token = {
  anonymous : bool option;
  client_id : string option;
  display_text : string option;
  etag : string option;
  kind : string option;
  native_app : bool option;
  scopes : string list option;
  user_key : string option;
}

and tokens = {
  etag : string option;
  items : token list option;
  kind : string option;
}

and user = {
  addresses : Yojson.Safe.t option;
  agreed_to_terms : bool option;
  aliases : string list option;
  archival_time : string option;
  archived : bool option;
  change_password_at_next_login : bool option;
  creation_time : string option;
  custom_schemas : (string * user_custom_properties) list option;
  customer_id : string option;
  deletion_time : string option;
  emails : Yojson.Safe.t option;
  etag : string option;
  external_ids : Yojson.Safe.t option;
  gender : Yojson.Safe.t option;
  guest_account_info : guest_account_info option;
  hash_function : string option;
  id : string option;
  ims : Yojson.Safe.t option;
  include_in_global_address_list : bool option;
  ip_whitelisted : bool option;
  is_admin : bool option;
  is_delegated_admin : bool option;
  is_enforced_in2_sv : bool option;
  is_enrolled_in2_sv : bool option;
  is_guest_user : bool option;
  is_mailbox_setup : bool option;
  keywords : Yojson.Safe.t option;
  kind : string option;
  languages : Yojson.Safe.t option;
  last_login_time : string option;
  locations : Yojson.Safe.t option;
  name : user_name option;
  non_editable_aliases : string list option;
  notes : Yojson.Safe.t option;
  org_unit_path : string option;
  organizations : Yojson.Safe.t option;
  password : string option;
  phones : Yojson.Safe.t option;
  posix_accounts : Yojson.Safe.t option;
  primary_email : string option;
  recovery_email : string option;
  recovery_phone : string option;
  relations : Yojson.Safe.t option;
  ssh_public_keys : Yojson.Safe.t option;
  suspended : bool option;
  suspension_reason : string option;
  suspension_time : string option;
  thumbnail_photo_etag : string option;
  thumbnail_photo_url : string option;
  websites : Yojson.Safe.t option;
}

and user_about = {
  content_type : string option;
  value : string option;
}

and user_address = {
  country : string option;
  country_code : string option;
  custom_type : string option;
  extended_address : string option;
  formatted : string option;
  locality : string option;
  po_box : string option;
  postal_code : string option;
  primary : bool option;
  region : string option;
  source_is_structured : bool option;
  street_address : string option;
  type_ : string option;
}

and user_alias = {
  alias : string option;
  etag : string option;
  id : string option;
  kind : string option;
  primary_email : string option;
}

and user_custom_properties = (string * Yojson.Safe.t) list

and user_email_public_key_encryption_certificates = {
  certificate : string option;
  is_default : bool option;
  state : string option;
}

and user_email = {
  address : string option;
  custom_type : string option;
  primary : bool option;
  public_key_encryption_certificates : user_email_public_key_encryption_certificates option;
  type_ : string option;
}

and user_external_id = {
  custom_type : string option;
  type_ : string option;
  value : string option;
}

and user_gender = {
  address_me_as : string option;
  custom_gender : string option;
  type_ : string option;
}

and user_im = {
  custom_protocol : string option;
  custom_type : string option;
  im : string option;
  primary : bool option;
  protocol : string option;
  type_ : string option;
}

and user_keyword = {
  custom_type : string option;
  type_ : string option;
  value : string option;
}

and user_language = {
  custom_language : string option;
  language_code : string option;
  preference : string option;
}

and user_location = {
  area : string option;
  building_id : string option;
  custom_type : string option;
  desk_code : string option;
  floor_name : string option;
  floor_section : string option;
  type_ : string option;
}

and user_make_admin = {
  status : bool option;
}

and user_name = {
  display_name : string option;
  family_name : string option;
  full_name : string option;
  given_name : string option;
}

and user_organization = {
  cost_center : string option;
  custom_type : string option;
  department : string option;
  description : string option;
  domain : string option;
  full_time_equivalent : int option;
  location : string option;
  name : string option;
  primary : bool option;
  symbol : string option;
  title : string option;
  type_ : string option;
}

and user_phone = {
  custom_type : string option;
  primary : bool option;
  type_ : string option;
  value : string option;
}

and user_photo = {
  etag : string option;
  height : int option;
  id : string option;
  kind : string option;
  mime_type : string option;
  photo_data : string option;
  primary_email : string option;
  width : int option;
}

and user_posix_account = {
  account_id : string option;
  gecos : string option;
  gid : string option;
  home_directory : string option;
  operating_system_type : string option;
  primary : bool option;
  shell : string option;
  system_id : string option;
  uid : string option;
  username : string option;
}

and user_relation = {
  custom_type : string option;
  type_ : string option;
  value : string option;
}

and user_ssh_public_key = {
  expiration_time_usec : string option;
  fingerprint : string option;
  key : string option;
}

and user_undelete = {
  org_unit_path : string option;
}

and user_website = {
  custom_type : string option;
  primary : bool option;
  type_ : string option;
  value : string option;
}

and users = {
  etag : string option;
  kind : string option;
  next_page_token : string option;
  trigger_event : string option;
  users : user list option;
}

and verification_code = {
  etag : string option;
  kind : string option;
  user_id : string option;
  verification_code : string option;
}

and verification_codes = {
  etag : string option;
  items : verification_code list option;
  kind : string option;
}

let rec alias_of_yojson json : alias =
  let open Yojson.Safe.Util in
  {
    alias = member "alias" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    primary_email = member "primaryEmail" json |> to_option to_string;
  }

and yojson_of_alias (value : alias) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("alias", (fun value -> `String value) field)) value.alias;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("primaryEmail", (fun value -> `String value) field)) value.primary_email;
       ])

and aliases_of_yojson json : aliases =
  let open Yojson.Safe.Util in
  {
    aliases = member "aliases" json |> to_option (convert_each Fun.id);
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_aliases (value : aliases) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("aliases", (fun items -> `List (List.map Fun.id items)) field)) value.aliases;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and asp_of_yojson json : asp =
  let open Yojson.Safe.Util in
  {
    code_id = member "codeId" json |> to_option to_int;
    creation_time = member "creationTime" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    last_time_used = member "lastTimeUsed" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    user_key = member "userKey" json |> to_option to_string;
  }

and yojson_of_asp (value : asp) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("codeId", (fun value -> `Int value) field)) value.code_id;
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("lastTimeUsed", (fun value -> `String value) field)) value.last_time_used;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("userKey", (fun value -> `String value) field)) value.user_key;
       ])

and asps_of_yojson json : asps =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each asp_of_yojson);
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_asps (value : asps) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_asp items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and auxiliary_message_of_yojson json : auxiliary_message =
  let open Yojson.Safe.Util in
  {
    auxiliary_message = member "auxiliaryMessage" json |> to_option to_string;
    field_mask = member "fieldMask" json |> to_option to_string;
    severity = member "severity" json |> to_option (fun json -> match to_string json with "SEVERITY_UNSPECIFIED" -> `Severity_unspecified | "SEVERITY_INFO" -> `Severity_info | "SEVERITY_WARNING" -> `Severity_warning | "SEVERITY_ERROR" -> `Severity_error | value -> `Unrecognized value);
  }

and yojson_of_auxiliary_message (value : auxiliary_message) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("auxiliaryMessage", (fun value -> `String value) field)) value.auxiliary_message;
         Option.map (fun field -> ("fieldMask", (fun value -> `String value) field)) value.field_mask;
         Option.map (fun field -> ("severity", (fun value -> `String ((function `Severity_unspecified -> "SEVERITY_UNSPECIFIED" | `Severity_info -> "SEVERITY_INFO" | `Severity_warning -> "SEVERITY_WARNING" | `Severity_error -> "SEVERITY_ERROR" | `Unrecognized value -> value) value)) field)) value.severity;
       ])

and backlight_info_of_yojson json : backlight_info =
  let open Yojson.Safe.Util in
  {
    brightness = member "brightness" json |> to_option to_int;
    max_brightness = member "maxBrightness" json |> to_option to_int;
    path = member "path" json |> to_option to_string;
  }

and yojson_of_backlight_info (value : backlight_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("brightness", (fun value -> `Int value) field)) value.brightness;
         Option.map (fun field -> ("maxBrightness", (fun value -> `Int value) field)) value.max_brightness;
         Option.map (fun field -> ("path", (fun value -> `String value) field)) value.path;
       ])

and batch_change_chrome_os_device_status_request_of_yojson json : batch_change_chrome_os_device_status_request =
  let open Yojson.Safe.Util in
  {
    change_chrome_os_device_status_action = member "changeChromeOsDeviceStatusAction" json |> to_option (fun json -> match to_string json with "CHANGE_CHROME_OS_DEVICE_STATUS_ACTION_UNSPECIFIED" -> `Change_chrome_os_device_status_action_unspecified | "CHANGE_CHROME_OS_DEVICE_STATUS_ACTION_DEPROVISION" -> `Change_chrome_os_device_status_action_deprovision | "CHANGE_CHROME_OS_DEVICE_STATUS_ACTION_DISABLE" -> `Change_chrome_os_device_status_action_disable | "CHANGE_CHROME_OS_DEVICE_STATUS_ACTION_REENABLE" -> `Change_chrome_os_device_status_action_reenable | value -> `Unrecognized value);
    deprovision_reason = member "deprovisionReason" json |> to_option (fun json -> match to_string json with "DEPROVISION_REASON_UNSPECIFIED" -> `Deprovision_reason_unspecified | "DEPROVISION_REASON_SAME_MODEL_REPLACEMENT" -> `Deprovision_reason_same_model_replacement | "DEPROVISION_REASON_UPGRADE" -> `Deprovision_reason_upgrade | "DEPROVISION_REASON_DOMAIN_MOVE" -> `Deprovision_reason_domain_move | "DEPROVISION_REASON_SERVICE_EXPIRATION" -> `Deprovision_reason_service_expiration | "DEPROVISION_REASON_OTHER" -> `Deprovision_reason_other | "DEPROVISION_REASON_DIFFERENT_MODEL_REPLACEMENT" -> `Deprovision_reason_different_model_replacement | "DEPROVISION_REASON_RETIRING_DEVICE" -> `Deprovision_reason_retiring_device | "DEPROVISION_REASON_UPGRADE_TRANSFER" -> `Deprovision_reason_upgrade_transfer | "DEPROVISION_REASON_NOT_REQUIRED" -> `Deprovision_reason_not_required | "DEPROVISION_REASON_REPAIR_CENTER" -> `Deprovision_reason_repair_center | value -> `Unrecognized value);
    device_ids = member "deviceIds" json |> to_option (convert_each to_string);
  }

and yojson_of_batch_change_chrome_os_device_status_request (value : batch_change_chrome_os_device_status_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("changeChromeOsDeviceStatusAction", (fun value -> `String ((function `Change_chrome_os_device_status_action_unspecified -> "CHANGE_CHROME_OS_DEVICE_STATUS_ACTION_UNSPECIFIED" | `Change_chrome_os_device_status_action_deprovision -> "CHANGE_CHROME_OS_DEVICE_STATUS_ACTION_DEPROVISION" | `Change_chrome_os_device_status_action_disable -> "CHANGE_CHROME_OS_DEVICE_STATUS_ACTION_DISABLE" | `Change_chrome_os_device_status_action_reenable -> "CHANGE_CHROME_OS_DEVICE_STATUS_ACTION_REENABLE" | `Unrecognized value -> value) value)) field)) value.change_chrome_os_device_status_action;
         Option.map (fun field -> ("deprovisionReason", (fun value -> `String ((function `Deprovision_reason_unspecified -> "DEPROVISION_REASON_UNSPECIFIED" | `Deprovision_reason_same_model_replacement -> "DEPROVISION_REASON_SAME_MODEL_REPLACEMENT" | `Deprovision_reason_upgrade -> "DEPROVISION_REASON_UPGRADE" | `Deprovision_reason_domain_move -> "DEPROVISION_REASON_DOMAIN_MOVE" | `Deprovision_reason_service_expiration -> "DEPROVISION_REASON_SERVICE_EXPIRATION" | `Deprovision_reason_other -> "DEPROVISION_REASON_OTHER" | `Deprovision_reason_different_model_replacement -> "DEPROVISION_REASON_DIFFERENT_MODEL_REPLACEMENT" | `Deprovision_reason_retiring_device -> "DEPROVISION_REASON_RETIRING_DEVICE" | `Deprovision_reason_upgrade_transfer -> "DEPROVISION_REASON_UPGRADE_TRANSFER" | `Deprovision_reason_not_required -> "DEPROVISION_REASON_NOT_REQUIRED" | `Deprovision_reason_repair_center -> "DEPROVISION_REASON_REPAIR_CENTER" | `Unrecognized value -> value) value)) field)) value.deprovision_reason;
         Option.map (fun field -> ("deviceIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.device_ids;
       ])

and batch_change_chrome_os_device_status_response_of_yojson json : batch_change_chrome_os_device_status_response =
  let open Yojson.Safe.Util in
  {
    change_chrome_os_device_status_results = member "changeChromeOsDeviceStatusResults" json |> to_option (convert_each change_chrome_os_device_status_result_of_yojson);
  }

and yojson_of_batch_change_chrome_os_device_status_response (value : batch_change_chrome_os_device_status_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("changeChromeOsDeviceStatusResults", (fun items -> `List (List.map yojson_of_change_chrome_os_device_status_result items)) field)) value.change_chrome_os_device_status_results;
       ])

and batch_create_print_servers_request_of_yojson json : batch_create_print_servers_request =
  let open Yojson.Safe.Util in
  {
    requests = member "requests" json |> to_option (convert_each create_print_server_request_of_yojson);
  }

and yojson_of_batch_create_print_servers_request (value : batch_create_print_servers_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("requests", (fun items -> `List (List.map yojson_of_create_print_server_request items)) field)) value.requests;
       ])

and batch_create_print_servers_response_of_yojson json : batch_create_print_servers_response =
  let open Yojson.Safe.Util in
  {
    failures = member "failures" json |> to_option (convert_each print_server_failure_info_of_yojson);
    print_servers = member "printServers" json |> to_option (convert_each print_server_of_yojson);
  }

and yojson_of_batch_create_print_servers_response (value : batch_create_print_servers_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("failures", (fun items -> `List (List.map yojson_of_print_server_failure_info items)) field)) value.failures;
         Option.map (fun field -> ("printServers", (fun items -> `List (List.map yojson_of_print_server items)) field)) value.print_servers;
       ])

and batch_create_printers_request_of_yojson json : batch_create_printers_request =
  let open Yojson.Safe.Util in
  {
    requests = member "requests" json |> to_option (convert_each create_printer_request_of_yojson);
  }

and yojson_of_batch_create_printers_request (value : batch_create_printers_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("requests", (fun items -> `List (List.map yojson_of_create_printer_request items)) field)) value.requests;
       ])

and batch_create_printers_response_of_yojson json : batch_create_printers_response =
  let open Yojson.Safe.Util in
  {
    failures = member "failures" json |> to_option (convert_each failure_info_of_yojson);
    printers = member "printers" json |> to_option (convert_each printer_of_yojson);
  }

and yojson_of_batch_create_printers_response (value : batch_create_printers_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("failures", (fun items -> `List (List.map yojson_of_failure_info items)) field)) value.failures;
         Option.map (fun field -> ("printers", (fun items -> `List (List.map yojson_of_printer items)) field)) value.printers;
       ])

and batch_delete_print_servers_request_of_yojson json : batch_delete_print_servers_request =
  let open Yojson.Safe.Util in
  {
    print_server_ids = member "printServerIds" json |> to_option (convert_each to_string);
  }

and yojson_of_batch_delete_print_servers_request (value : batch_delete_print_servers_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("printServerIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.print_server_ids;
       ])

and batch_delete_print_servers_response_of_yojson json : batch_delete_print_servers_response =
  let open Yojson.Safe.Util in
  {
    failed_print_servers = member "failedPrintServers" json |> to_option (convert_each print_server_failure_info_of_yojson);
    print_server_ids = member "printServerIds" json |> to_option (convert_each to_string);
  }

and yojson_of_batch_delete_print_servers_response (value : batch_delete_print_servers_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("failedPrintServers", (fun items -> `List (List.map yojson_of_print_server_failure_info items)) field)) value.failed_print_servers;
         Option.map (fun field -> ("printServerIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.print_server_ids;
       ])

and batch_delete_printers_request_of_yojson json : batch_delete_printers_request =
  let open Yojson.Safe.Util in
  {
    printer_ids = member "printerIds" json |> to_option (convert_each to_string);
  }

and yojson_of_batch_delete_printers_request (value : batch_delete_printers_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("printerIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.printer_ids;
       ])

and batch_delete_printers_response_of_yojson json : batch_delete_printers_response =
  let open Yojson.Safe.Util in
  {
    failed_printers = member "failedPrinters" json |> to_option (convert_each failure_info_of_yojson);
    printer_ids = member "printerIds" json |> to_option (convert_each to_string);
  }

and yojson_of_batch_delete_printers_response (value : batch_delete_printers_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("failedPrinters", (fun items -> `List (List.map yojson_of_failure_info items)) field)) value.failed_printers;
         Option.map (fun field -> ("printerIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.printer_ids;
       ])

and bluetooth_adapter_info_of_yojson json : bluetooth_adapter_info =
  let open Yojson.Safe.Util in
  {
    address = member "address" json |> to_option to_string;
    num_connected_devices = member "numConnectedDevices" json |> to_option to_int;
  }

and yojson_of_bluetooth_adapter_info (value : bluetooth_adapter_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("address", (fun value -> `String value) field)) value.address;
         Option.map (fun field -> ("numConnectedDevices", (fun value -> `Int value) field)) value.num_connected_devices;
       ])

and building_of_yojson json : building =
  let open Yojson.Safe.Util in
  {
    address = member "address" json |> to_option building_address_of_yojson;
    building_id = member "buildingId" json |> to_option to_string;
    building_name = member "buildingName" json |> to_option to_string;
    coordinates = member "coordinates" json |> to_option building_coordinates_of_yojson;
    description = member "description" json |> to_option to_string;
    etags = member "etags" json |> to_option to_string;
    floor_names = member "floorNames" json |> to_option (convert_each to_string);
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_building (value : building) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("address", yojson_of_building_address field)) value.address;
         Option.map (fun field -> ("buildingId", (fun value -> `String value) field)) value.building_id;
         Option.map (fun field -> ("buildingName", (fun value -> `String value) field)) value.building_name;
         Option.map (fun field -> ("coordinates", yojson_of_building_coordinates field)) value.coordinates;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("etags", (fun value -> `String value) field)) value.etags;
         Option.map (fun field -> ("floorNames", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.floor_names;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and building_address_of_yojson json : building_address =
  let open Yojson.Safe.Util in
  {
    address_lines = member "addressLines" json |> to_option (convert_each to_string);
    administrative_area = member "administrativeArea" json |> to_option to_string;
    language_code = member "languageCode" json |> to_option to_string;
    locality = member "locality" json |> to_option to_string;
    postal_code = member "postalCode" json |> to_option to_string;
    region_code = member "regionCode" json |> to_option to_string;
    sublocality = member "sublocality" json |> to_option to_string;
  }

and yojson_of_building_address (value : building_address) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("addressLines", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.address_lines;
         Option.map (fun field -> ("administrativeArea", (fun value -> `String value) field)) value.administrative_area;
         Option.map (fun field -> ("languageCode", (fun value -> `String value) field)) value.language_code;
         Option.map (fun field -> ("locality", (fun value -> `String value) field)) value.locality;
         Option.map (fun field -> ("postalCode", (fun value -> `String value) field)) value.postal_code;
         Option.map (fun field -> ("regionCode", (fun value -> `String value) field)) value.region_code;
         Option.map (fun field -> ("sublocality", (fun value -> `String value) field)) value.sublocality;
       ])

and building_coordinates_of_yojson json : building_coordinates =
  let open Yojson.Safe.Util in
  {
    latitude = member "latitude" json |> to_option to_number;
    longitude = member "longitude" json |> to_option to_number;
  }

and yojson_of_building_coordinates (value : building_coordinates) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("latitude", (fun value -> `Float value) field)) value.latitude;
         Option.map (fun field -> ("longitude", (fun value -> `Float value) field)) value.longitude;
       ])

and buildings_of_yojson json : buildings =
  let open Yojson.Safe.Util in
  {
    buildings = member "buildings" json |> to_option (convert_each building_of_yojson);
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_buildings (value : buildings) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("buildings", (fun items -> `List (List.map yojson_of_building items)) field)) value.buildings;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and byte_usage_of_yojson json : byte_usage =
  let open Yojson.Safe.Util in
  {
    capacity_bytes = member "capacityBytes" json |> to_option to_string;
    used_bytes = member "usedBytes" json |> to_option to_string;
  }

and yojson_of_byte_usage (value : byte_usage) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("capacityBytes", (fun value -> `String value) field)) value.capacity_bytes;
         Option.map (fun field -> ("usedBytes", (fun value -> `String value) field)) value.used_bytes;
       ])

and calendar_resource_of_yojson json : calendar_resource =
  let open Yojson.Safe.Util in
  {
    building_id = member "buildingId" json |> to_option to_string;
    capacity = member "capacity" json |> to_option to_int;
    etags = member "etags" json |> to_option to_string;
    feature_instances = member "featureInstances" json |> to_option Fun.id;
    floor_name = member "floorName" json |> to_option to_string;
    floor_section = member "floorSection" json |> to_option to_string;
    generated_resource_name = member "generatedResourceName" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    resource_category = member "resourceCategory" json |> to_option to_string;
    resource_description = member "resourceDescription" json |> to_option to_string;
    resource_email = member "resourceEmail" json |> to_option to_string;
    resource_id = member "resourceId" json |> to_option to_string;
    resource_name = member "resourceName" json |> to_option to_string;
    resource_type = member "resourceType" json |> to_option to_string;
    user_visible_description = member "userVisibleDescription" json |> to_option to_string;
  }

and yojson_of_calendar_resource (value : calendar_resource) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("buildingId", (fun value -> `String value) field)) value.building_id;
         Option.map (fun field -> ("capacity", (fun value -> `Int value) field)) value.capacity;
         Option.map (fun field -> ("etags", (fun value -> `String value) field)) value.etags;
         Option.map (fun field -> ("featureInstances", Fun.id field)) value.feature_instances;
         Option.map (fun field -> ("floorName", (fun value -> `String value) field)) value.floor_name;
         Option.map (fun field -> ("floorSection", (fun value -> `String value) field)) value.floor_section;
         Option.map (fun field -> ("generatedResourceName", (fun value -> `String value) field)) value.generated_resource_name;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("resourceCategory", (fun value -> `String value) field)) value.resource_category;
         Option.map (fun field -> ("resourceDescription", (fun value -> `String value) field)) value.resource_description;
         Option.map (fun field -> ("resourceEmail", (fun value -> `String value) field)) value.resource_email;
         Option.map (fun field -> ("resourceId", (fun value -> `String value) field)) value.resource_id;
         Option.map (fun field -> ("resourceName", (fun value -> `String value) field)) value.resource_name;
         Option.map (fun field -> ("resourceType", (fun value -> `String value) field)) value.resource_type;
         Option.map (fun field -> ("userVisibleDescription", (fun value -> `String value) field)) value.user_visible_description;
       ])

and calendar_resources_of_yojson json : calendar_resources =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each calendar_resource_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_calendar_resources (value : calendar_resources) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_calendar_resource items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and change_chrome_os_device_status_result_of_yojson json : change_chrome_os_device_status_result =
  let open Yojson.Safe.Util in
  {
    device_id = member "deviceId" json |> to_option to_string;
    error = member "error" json |> to_option status_of_yojson;
    response = member "response" json |> to_option change_chrome_os_device_status_succeeded_of_yojson;
  }

and yojson_of_change_chrome_os_device_status_result (value : change_chrome_os_device_status_result) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deviceId", (fun value -> `String value) field)) value.device_id;
         Option.map (fun field -> ("error", yojson_of_status field)) value.error;
         Option.map (fun field -> ("response", yojson_of_change_chrome_os_device_status_succeeded field)) value.response;
       ])

and change_chrome_os_device_status_succeeded_of_yojson json : change_chrome_os_device_status_succeeded =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_change_chrome_os_device_status_succeeded (value : change_chrome_os_device_status_succeeded) : Yojson.Safe.t = Fun.id value

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

and chrome_os_device_active_time_ranges_item_of_yojson json : chrome_os_device_active_time_ranges_item =
  let open Yojson.Safe.Util in
  {
    active_time = member "activeTime" json |> to_option to_int;
    date = member "date" json |> to_option to_string;
  }

and yojson_of_chrome_os_device_active_time_ranges_item (value : chrome_os_device_active_time_ranges_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("activeTime", (fun value -> `Int value) field)) value.active_time;
         Option.map (fun field -> ("date", (fun value -> `String value) field)) value.date;
       ])

and chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item_of_yojson json : chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item =
  let open Yojson.Safe.Util in
  {
    display_name = member "displayName" json |> to_option to_string;
    session_duration = member "sessionDuration" json |> to_option to_string;
  }

and yojson_of_chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item (value : chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("sessionDuration", (fun value -> `String value) field)) value.session_duration;
       ])

and chrome_os_device_cpu_info_item_logical_cpus_item_of_yojson json : chrome_os_device_cpu_info_item_logical_cpus_item =
  let open Yojson.Safe.Util in
  {
    c_states = member "cStates" json |> to_option (convert_each chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item_of_yojson);
    current_scaling_frequency_khz = member "currentScalingFrequencyKhz" json |> to_option to_int;
    idle_duration = member "idleDuration" json |> to_option to_string;
    max_scaling_frequency_khz = member "maxScalingFrequencyKhz" json |> to_option to_int;
  }

and yojson_of_chrome_os_device_cpu_info_item_logical_cpus_item (value : chrome_os_device_cpu_info_item_logical_cpus_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cStates", (fun items -> `List (List.map yojson_of_chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item items)) field)) value.c_states;
         Option.map (fun field -> ("currentScalingFrequencyKhz", (fun value -> `Int value) field)) value.current_scaling_frequency_khz;
         Option.map (fun field -> ("idleDuration", (fun value -> `String value) field)) value.idle_duration;
         Option.map (fun field -> ("maxScalingFrequencyKhz", (fun value -> `Int value) field)) value.max_scaling_frequency_khz;
       ])

and chrome_os_device_cpu_info_item_of_yojson json : chrome_os_device_cpu_info_item =
  let open Yojson.Safe.Util in
  {
    architecture = member "architecture" json |> to_option to_string;
    logical_cpus = member "logicalCpus" json |> to_option (convert_each chrome_os_device_cpu_info_item_logical_cpus_item_of_yojson);
    max_clock_speed_khz = member "maxClockSpeedKhz" json |> to_option to_int;
    model = member "model" json |> to_option to_string;
  }

and yojson_of_chrome_os_device_cpu_info_item (value : chrome_os_device_cpu_info_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("architecture", (fun value -> `String value) field)) value.architecture;
         Option.map (fun field -> ("logicalCpus", (fun items -> `List (List.map yojson_of_chrome_os_device_cpu_info_item_logical_cpus_item items)) field)) value.logical_cpus;
         Option.map (fun field -> ("maxClockSpeedKhz", (fun value -> `Int value) field)) value.max_clock_speed_khz;
         Option.map (fun field -> ("model", (fun value -> `String value) field)) value.model;
       ])

and chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item_of_yojson json : chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item =
  let open Yojson.Safe.Util in
  {
    label = member "label" json |> to_option to_string;
    temperature = member "temperature" json |> to_option to_int;
  }

and yojson_of_chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item (value : chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("label", (fun value -> `String value) field)) value.label;
         Option.map (fun field -> ("temperature", (fun value -> `Int value) field)) value.temperature;
       ])

and chrome_os_device_cpu_status_reports_item_of_yojson json : chrome_os_device_cpu_status_reports_item =
  let open Yojson.Safe.Util in
  {
    cpu_temperature_info = member "cpuTemperatureInfo" json |> to_option (convert_each chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item_of_yojson);
    cpu_utilization_percentage_info = member "cpuUtilizationPercentageInfo" json |> to_option (convert_each to_int);
    report_time = member "reportTime" json |> to_option to_string;
  }

and yojson_of_chrome_os_device_cpu_status_reports_item (value : chrome_os_device_cpu_status_reports_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cpuTemperatureInfo", (fun items -> `List (List.map yojson_of_chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item items)) field)) value.cpu_temperature_info;
         Option.map (fun field -> ("cpuUtilizationPercentageInfo", (fun items -> `List (List.map (fun value -> `Int value) items)) field)) value.cpu_utilization_percentage_info;
         Option.map (fun field -> ("reportTime", (fun value -> `String value) field)) value.report_time;
       ])

and chrome_os_device_device_files_item_of_yojson json : chrome_os_device_device_files_item =
  let open Yojson.Safe.Util in
  {
    create_time = member "createTime" json |> to_option to_string;
    download_url = member "downloadUrl" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_chrome_os_device_device_files_item (value : chrome_os_device_device_files_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("downloadUrl", (fun value -> `String value) field)) value.download_url;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and chrome_os_device_disk_volume_reports_item_volume_info_item_of_yojson json : chrome_os_device_disk_volume_reports_item_volume_info_item =
  let open Yojson.Safe.Util in
  {
    storage_free = member "storageFree" json |> to_option to_string;
    storage_total = member "storageTotal" json |> to_option to_string;
    volume_id = member "volumeId" json |> to_option to_string;
  }

and yojson_of_chrome_os_device_disk_volume_reports_item_volume_info_item (value : chrome_os_device_disk_volume_reports_item_volume_info_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("storageFree", (fun value -> `String value) field)) value.storage_free;
         Option.map (fun field -> ("storageTotal", (fun value -> `String value) field)) value.storage_total;
         Option.map (fun field -> ("volumeId", (fun value -> `String value) field)) value.volume_id;
       ])

and chrome_os_device_disk_volume_reports_item_of_yojson json : chrome_os_device_disk_volume_reports_item =
  let open Yojson.Safe.Util in
  {
    volume_info = member "volumeInfo" json |> to_option (convert_each chrome_os_device_disk_volume_reports_item_volume_info_item_of_yojson);
  }

and yojson_of_chrome_os_device_disk_volume_reports_item (value : chrome_os_device_disk_volume_reports_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("volumeInfo", (fun items -> `List (List.map yojson_of_chrome_os_device_disk_volume_reports_item_volume_info_item items)) field)) value.volume_info;
       ])

and chrome_os_device_last_known_network_item_of_yojson json : chrome_os_device_last_known_network_item =
  let open Yojson.Safe.Util in
  {
    ip_address = member "ipAddress" json |> to_option to_string;
    wan_ip_address = member "wanIpAddress" json |> to_option to_string;
  }

and yojson_of_chrome_os_device_last_known_network_item (value : chrome_os_device_last_known_network_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ipAddress", (fun value -> `String value) field)) value.ip_address;
         Option.map (fun field -> ("wanIpAddress", (fun value -> `String value) field)) value.wan_ip_address;
       ])

and chrome_os_device_recent_users_item_of_yojson json : chrome_os_device_recent_users_item =
  let open Yojson.Safe.Util in
  {
    email = member "email" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_chrome_os_device_recent_users_item (value : chrome_os_device_recent_users_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("email", (fun value -> `String value) field)) value.email;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and chrome_os_device_screenshot_files_item_of_yojson json : chrome_os_device_screenshot_files_item =
  let open Yojson.Safe.Util in
  {
    create_time = member "createTime" json |> to_option to_string;
    download_url = member "downloadUrl" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_chrome_os_device_screenshot_files_item (value : chrome_os_device_screenshot_files_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("downloadUrl", (fun value -> `String value) field)) value.download_url;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and chrome_os_device_system_ram_free_reports_item_of_yojson json : chrome_os_device_system_ram_free_reports_item =
  let open Yojson.Safe.Util in
  {
    report_time = member "reportTime" json |> to_option to_string;
    system_ram_free_info = member "systemRamFreeInfo" json |> to_option (convert_each to_string);
  }

and yojson_of_chrome_os_device_system_ram_free_reports_item (value : chrome_os_device_system_ram_free_reports_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("reportTime", (fun value -> `String value) field)) value.report_time;
         Option.map (fun field -> ("systemRamFreeInfo", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.system_ram_free_info;
       ])

and chrome_os_device_tpm_version_info_of_yojson json : chrome_os_device_tpm_version_info =
  let open Yojson.Safe.Util in
  {
    family = member "family" json |> to_option to_string;
    firmware_version = member "firmwareVersion" json |> to_option to_string;
    manufacturer = member "manufacturer" json |> to_option to_string;
    spec_level = member "specLevel" json |> to_option to_string;
    tpm_model = member "tpmModel" json |> to_option to_string;
    vendor_specific = member "vendorSpecific" json |> to_option to_string;
  }

and yojson_of_chrome_os_device_tpm_version_info (value : chrome_os_device_tpm_version_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("family", (fun value -> `String value) field)) value.family;
         Option.map (fun field -> ("firmwareVersion", (fun value -> `String value) field)) value.firmware_version;
         Option.map (fun field -> ("manufacturer", (fun value -> `String value) field)) value.manufacturer;
         Option.map (fun field -> ("specLevel", (fun value -> `String value) field)) value.spec_level;
         Option.map (fun field -> ("tpmModel", (fun value -> `String value) field)) value.tpm_model;
         Option.map (fun field -> ("vendorSpecific", (fun value -> `String value) field)) value.vendor_specific;
       ])

and chrome_os_device_of_yojson json : chrome_os_device =
  let open Yojson.Safe.Util in
  {
    active_time_ranges = member "activeTimeRanges" json |> to_option (convert_each chrome_os_device_active_time_ranges_item_of_yojson);
    annotated_asset_id = member "annotatedAssetId" json |> to_option to_string;
    annotated_location = member "annotatedLocation" json |> to_option to_string;
    annotated_user = member "annotatedUser" json |> to_option to_string;
    auto_update_expiration = member "autoUpdateExpiration" json |> to_option to_string;
    auto_update_through = member "autoUpdateThrough" json |> to_option to_string;
    backlight_info = member "backlightInfo" json |> to_option (convert_each backlight_info_of_yojson);
    bluetooth_adapter_info = member "bluetoothAdapterInfo" json |> to_option (convert_each bluetooth_adapter_info_of_yojson);
    boot_mode = member "bootMode" json |> to_option to_string;
    chrome_os_type = member "chromeOsType" json |> to_option (fun json -> match to_string json with "chromeOsTypeUnspecified" -> `Chrome_os_type_unspecified | "chromeOsFlex" -> `Chrome_os_flex | "chromeOs" -> `Chrome_os | value -> `Unrecognized value);
    cpu_info = member "cpuInfo" json |> to_option (convert_each chrome_os_device_cpu_info_item_of_yojson);
    cpu_status_reports = member "cpuStatusReports" json |> to_option (convert_each chrome_os_device_cpu_status_reports_item_of_yojson);
    deprovision_reason = member "deprovisionReason" json |> to_option (fun json -> match to_string json with "DEPROVISION_REASON_UNSPECIFIED" -> `Deprovision_reason_unspecified | "DEPROVISION_REASON_SAME_MODEL_REPLACEMENT" -> `Deprovision_reason_same_model_replacement | "DEPROVISION_REASON_UPGRADE" -> `Deprovision_reason_upgrade | "DEPROVISION_REASON_DOMAIN_MOVE" -> `Deprovision_reason_domain_move | "DEPROVISION_REASON_SERVICE_EXPIRATION" -> `Deprovision_reason_service_expiration | "DEPROVISION_REASON_OTHER" -> `Deprovision_reason_other | "DEPROVISION_REASON_DIFFERENT_MODEL_REPLACEMENT" -> `Deprovision_reason_different_model_replacement | "DEPROVISION_REASON_RETIRING_DEVICE" -> `Deprovision_reason_retiring_device | "DEPROVISION_REASON_UPGRADE_TRANSFER" -> `Deprovision_reason_upgrade_transfer | "DEPROVISION_REASON_NOT_REQUIRED" -> `Deprovision_reason_not_required | "DEPROVISION_REASON_REPAIR_CENTER" -> `Deprovision_reason_repair_center | value -> `Unrecognized value);
    device_files = member "deviceFiles" json |> to_option (convert_each chrome_os_device_device_files_item_of_yojson);
    device_id = member "deviceId" json |> to_option to_string;
    device_license_type = member "deviceLicenseType" json |> to_option (fun json -> match to_string json with "deviceLicenseTypeUnspecified" -> `Device_license_type_unspecified | "enterprise" -> `Enterprise | "enterpriseUpgrade" -> `Enterprise_upgrade | "educationUpgrade" -> `Education_upgrade | "education" -> `Education | "kioskUpgrade" -> `Kiosk_upgrade | "enterpriseUpgradePerpetual" -> `Enterprise_upgrade_perpetual | "enterpriseUpgradeFixedTerm" -> `Enterprise_upgrade_fixed_term | "educationUpgradePerpetual" -> `Education_upgrade_perpetual | "educationUpgradeFixedTerm" -> `Education_upgrade_fixed_term | value -> `Unrecognized value);
    disk_space_usage = member "diskSpaceUsage" json |> to_option byte_usage_of_yojson;
    disk_volume_reports = member "diskVolumeReports" json |> to_option (convert_each chrome_os_device_disk_volume_reports_item_of_yojson);
    dock_mac_address = member "dockMacAddress" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    ethernet_mac_address = member "ethernetMacAddress" json |> to_option to_string;
    ethernet_mac_address0 = member "ethernetMacAddress0" json |> to_option to_string;
    extended_support_eligible = member "extendedSupportEligible" json |> to_option to_bool;
    extended_support_enabled = member "extendedSupportEnabled" json |> to_option to_bool;
    extended_support_start = member "extendedSupportStart" json |> to_option to_string;
    fan_info = member "fanInfo" json |> to_option (convert_each fan_info_of_yojson);
    firmware_version = member "firmwareVersion" json |> to_option to_string;
    first_enrollment_time = member "firstEnrollmentTime" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    last_deprovision_timestamp = member "lastDeprovisionTimestamp" json |> to_option to_string;
    last_enrollment_time = member "lastEnrollmentTime" json |> to_option to_string;
    last_known_network = member "lastKnownNetwork" json |> to_option (convert_each chrome_os_device_last_known_network_item_of_yojson);
    last_sync = member "lastSync" json |> to_option to_string;
    mac_address = member "macAddress" json |> to_option to_string;
    manufacture_date = member "manufactureDate" json |> to_option to_string;
    meid = member "meid" json |> to_option to_string;
    model = member "model" json |> to_option to_string;
    notes = member "notes" json |> to_option to_string;
    order_number = member "orderNumber" json |> to_option to_string;
    org_unit_id = member "orgUnitId" json |> to_option to_string;
    org_unit_path = member "orgUnitPath" json |> to_option to_string;
    os_update_status = member "osUpdateStatus" json |> to_option os_update_status_of_yojson;
    os_version = member "osVersion" json |> to_option to_string;
    os_version_compliance = member "osVersionCompliance" json |> to_option (fun json -> match to_string json with "complianceUnspecified" -> `Compliance_unspecified | "compliant" -> `Compliant | "pending" -> `Pending | "notCompliant" -> `Not_compliant | value -> `Unrecognized value);
    platform_version = member "platformVersion" json |> to_option to_string;
    recent_users = member "recentUsers" json |> to_option (convert_each chrome_os_device_recent_users_item_of_yojson);
    screenshot_files = member "screenshotFiles" json |> to_option (convert_each chrome_os_device_screenshot_files_item_of_yojson);
    serial_number = member "serialNumber" json |> to_option to_string;
    status = member "status" json |> to_option to_string;
    support_end_date = member "supportEndDate" json |> to_option to_string;
    system_ram_free_reports = member "systemRamFreeReports" json |> to_option (convert_each chrome_os_device_system_ram_free_reports_item_of_yojson);
    system_ram_total = member "systemRamTotal" json |> to_option to_string;
    tpm_version_info = member "tpmVersionInfo" json |> to_option chrome_os_device_tpm_version_info_of_yojson;
    will_auto_renew = member "willAutoRenew" json |> to_option to_bool;
  }

and yojson_of_chrome_os_device (value : chrome_os_device) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("activeTimeRanges", (fun items -> `List (List.map yojson_of_chrome_os_device_active_time_ranges_item items)) field)) value.active_time_ranges;
         Option.map (fun field -> ("annotatedAssetId", (fun value -> `String value) field)) value.annotated_asset_id;
         Option.map (fun field -> ("annotatedLocation", (fun value -> `String value) field)) value.annotated_location;
         Option.map (fun field -> ("annotatedUser", (fun value -> `String value) field)) value.annotated_user;
         Option.map (fun field -> ("autoUpdateExpiration", (fun value -> `String value) field)) value.auto_update_expiration;
         Option.map (fun field -> ("autoUpdateThrough", (fun value -> `String value) field)) value.auto_update_through;
         Option.map (fun field -> ("backlightInfo", (fun items -> `List (List.map yojson_of_backlight_info items)) field)) value.backlight_info;
         Option.map (fun field -> ("bluetoothAdapterInfo", (fun items -> `List (List.map yojson_of_bluetooth_adapter_info items)) field)) value.bluetooth_adapter_info;
         Option.map (fun field -> ("bootMode", (fun value -> `String value) field)) value.boot_mode;
         Option.map (fun field -> ("chromeOsType", (fun value -> `String ((function `Chrome_os_type_unspecified -> "chromeOsTypeUnspecified" | `Chrome_os_flex -> "chromeOsFlex" | `Chrome_os -> "chromeOs" | `Unrecognized value -> value) value)) field)) value.chrome_os_type;
         Option.map (fun field -> ("cpuInfo", (fun items -> `List (List.map yojson_of_chrome_os_device_cpu_info_item items)) field)) value.cpu_info;
         Option.map (fun field -> ("cpuStatusReports", (fun items -> `List (List.map yojson_of_chrome_os_device_cpu_status_reports_item items)) field)) value.cpu_status_reports;
         Option.map (fun field -> ("deprovisionReason", (fun value -> `String ((function `Deprovision_reason_unspecified -> "DEPROVISION_REASON_UNSPECIFIED" | `Deprovision_reason_same_model_replacement -> "DEPROVISION_REASON_SAME_MODEL_REPLACEMENT" | `Deprovision_reason_upgrade -> "DEPROVISION_REASON_UPGRADE" | `Deprovision_reason_domain_move -> "DEPROVISION_REASON_DOMAIN_MOVE" | `Deprovision_reason_service_expiration -> "DEPROVISION_REASON_SERVICE_EXPIRATION" | `Deprovision_reason_other -> "DEPROVISION_REASON_OTHER" | `Deprovision_reason_different_model_replacement -> "DEPROVISION_REASON_DIFFERENT_MODEL_REPLACEMENT" | `Deprovision_reason_retiring_device -> "DEPROVISION_REASON_RETIRING_DEVICE" | `Deprovision_reason_upgrade_transfer -> "DEPROVISION_REASON_UPGRADE_TRANSFER" | `Deprovision_reason_not_required -> "DEPROVISION_REASON_NOT_REQUIRED" | `Deprovision_reason_repair_center -> "DEPROVISION_REASON_REPAIR_CENTER" | `Unrecognized value -> value) value)) field)) value.deprovision_reason;
         Option.map (fun field -> ("deviceFiles", (fun items -> `List (List.map yojson_of_chrome_os_device_device_files_item items)) field)) value.device_files;
         Option.map (fun field -> ("deviceId", (fun value -> `String value) field)) value.device_id;
         Option.map (fun field -> ("deviceLicenseType", (fun value -> `String ((function `Device_license_type_unspecified -> "deviceLicenseTypeUnspecified" | `Enterprise -> "enterprise" | `Enterprise_upgrade -> "enterpriseUpgrade" | `Education_upgrade -> "educationUpgrade" | `Education -> "education" | `Kiosk_upgrade -> "kioskUpgrade" | `Enterprise_upgrade_perpetual -> "enterpriseUpgradePerpetual" | `Enterprise_upgrade_fixed_term -> "enterpriseUpgradeFixedTerm" | `Education_upgrade_perpetual -> "educationUpgradePerpetual" | `Education_upgrade_fixed_term -> "educationUpgradeFixedTerm" | `Unrecognized value -> value) value)) field)) value.device_license_type;
         Option.map (fun field -> ("diskSpaceUsage", yojson_of_byte_usage field)) value.disk_space_usage;
         Option.map (fun field -> ("diskVolumeReports", (fun items -> `List (List.map yojson_of_chrome_os_device_disk_volume_reports_item items)) field)) value.disk_volume_reports;
         Option.map (fun field -> ("dockMacAddress", (fun value -> `String value) field)) value.dock_mac_address;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("ethernetMacAddress", (fun value -> `String value) field)) value.ethernet_mac_address;
         Option.map (fun field -> ("ethernetMacAddress0", (fun value -> `String value) field)) value.ethernet_mac_address0;
         Option.map (fun field -> ("extendedSupportEligible", (fun value -> `Bool value) field)) value.extended_support_eligible;
         Option.map (fun field -> ("extendedSupportEnabled", (fun value -> `Bool value) field)) value.extended_support_enabled;
         Option.map (fun field -> ("extendedSupportStart", (fun value -> `String value) field)) value.extended_support_start;
         Option.map (fun field -> ("fanInfo", (fun items -> `List (List.map yojson_of_fan_info items)) field)) value.fan_info;
         Option.map (fun field -> ("firmwareVersion", (fun value -> `String value) field)) value.firmware_version;
         Option.map (fun field -> ("firstEnrollmentTime", (fun value -> `String value) field)) value.first_enrollment_time;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("lastDeprovisionTimestamp", (fun value -> `String value) field)) value.last_deprovision_timestamp;
         Option.map (fun field -> ("lastEnrollmentTime", (fun value -> `String value) field)) value.last_enrollment_time;
         Option.map (fun field -> ("lastKnownNetwork", (fun items -> `List (List.map yojson_of_chrome_os_device_last_known_network_item items)) field)) value.last_known_network;
         Option.map (fun field -> ("lastSync", (fun value -> `String value) field)) value.last_sync;
         Option.map (fun field -> ("macAddress", (fun value -> `String value) field)) value.mac_address;
         Option.map (fun field -> ("manufactureDate", (fun value -> `String value) field)) value.manufacture_date;
         Option.map (fun field -> ("meid", (fun value -> `String value) field)) value.meid;
         Option.map (fun field -> ("model", (fun value -> `String value) field)) value.model;
         Option.map (fun field -> ("notes", (fun value -> `String value) field)) value.notes;
         Option.map (fun field -> ("orderNumber", (fun value -> `String value) field)) value.order_number;
         Option.map (fun field -> ("orgUnitId", (fun value -> `String value) field)) value.org_unit_id;
         Option.map (fun field -> ("orgUnitPath", (fun value -> `String value) field)) value.org_unit_path;
         Option.map (fun field -> ("osUpdateStatus", yojson_of_os_update_status field)) value.os_update_status;
         Option.map (fun field -> ("osVersion", (fun value -> `String value) field)) value.os_version;
         Option.map (fun field -> ("osVersionCompliance", (fun value -> `String ((function `Compliance_unspecified -> "complianceUnspecified" | `Compliant -> "compliant" | `Pending -> "pending" | `Not_compliant -> "notCompliant" | `Unrecognized value -> value) value)) field)) value.os_version_compliance;
         Option.map (fun field -> ("platformVersion", (fun value -> `String value) field)) value.platform_version;
         Option.map (fun field -> ("recentUsers", (fun items -> `List (List.map yojson_of_chrome_os_device_recent_users_item items)) field)) value.recent_users;
         Option.map (fun field -> ("screenshotFiles", (fun items -> `List (List.map yojson_of_chrome_os_device_screenshot_files_item items)) field)) value.screenshot_files;
         Option.map (fun field -> ("serialNumber", (fun value -> `String value) field)) value.serial_number;
         Option.map (fun field -> ("status", (fun value -> `String value) field)) value.status;
         Option.map (fun field -> ("supportEndDate", (fun value -> `String value) field)) value.support_end_date;
         Option.map (fun field -> ("systemRamFreeReports", (fun items -> `List (List.map yojson_of_chrome_os_device_system_ram_free_reports_item items)) field)) value.system_ram_free_reports;
         Option.map (fun field -> ("systemRamTotal", (fun value -> `String value) field)) value.system_ram_total;
         Option.map (fun field -> ("tpmVersionInfo", yojson_of_chrome_os_device_tpm_version_info field)) value.tpm_version_info;
         Option.map (fun field -> ("willAutoRenew", (fun value -> `Bool value) field)) value.will_auto_renew;
       ])

and chrome_os_device_action_of_yojson json : chrome_os_device_action =
  let open Yojson.Safe.Util in
  {
    action = member "action" json |> to_option to_string;
    deprovision_reason = member "deprovisionReason" json |> to_option to_string;
  }

and yojson_of_chrome_os_device_action (value : chrome_os_device_action) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("action", (fun value -> `String value) field)) value.action;
         Option.map (fun field -> ("deprovisionReason", (fun value -> `String value) field)) value.deprovision_reason;
       ])

and chrome_os_devices_of_yojson json : chrome_os_devices =
  let open Yojson.Safe.Util in
  {
    chromeosdevices = member "chromeosdevices" json |> to_option (convert_each chrome_os_device_of_yojson);
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_chrome_os_devices (value : chrome_os_devices) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("chromeosdevices", (fun items -> `List (List.map yojson_of_chrome_os_device items)) field)) value.chromeosdevices;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and chrome_os_move_devices_to_ou_of_yojson json : chrome_os_move_devices_to_ou =
  let open Yojson.Safe.Util in
  {
    device_ids = member "deviceIds" json |> to_option (convert_each to_string);
  }

and yojson_of_chrome_os_move_devices_to_ou (value : chrome_os_move_devices_to_ou) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deviceIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.device_ids;
       ])

and count_chrome_os_devices_response_of_yojson json : count_chrome_os_devices_response =
  let open Yojson.Safe.Util in
  {
    count = member "count" json |> to_option to_string;
  }

and yojson_of_count_chrome_os_devices_response (value : count_chrome_os_devices_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("count", (fun value -> `String value) field)) value.count;
       ])

and create_print_server_request_of_yojson json : create_print_server_request =
  let open Yojson.Safe.Util in
  {
    parent = member "parent" json |> to_option to_string;
    print_server = member "printServer" json |> to_option print_server_of_yojson;
  }

and yojson_of_create_print_server_request (value : create_print_server_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("parent", (fun value -> `String value) field)) value.parent;
         Option.map (fun field -> ("printServer", yojson_of_print_server field)) value.print_server;
       ])

and create_printer_request_of_yojson json : create_printer_request =
  let open Yojson.Safe.Util in
  {
    parent = member "parent" json |> to_option to_string;
    printer = member "printer" json |> to_option printer_of_yojson;
  }

and yojson_of_create_printer_request (value : create_printer_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("parent", (fun value -> `String value) field)) value.parent;
         Option.map (fun field -> ("printer", yojson_of_printer field)) value.printer;
       ])

and customer_of_yojson json : customer =
  let open Yojson.Safe.Util in
  {
    alternate_email = member "alternateEmail" json |> to_option to_string;
    customer_creation_time = member "customerCreationTime" json |> to_option to_string;
    customer_domain = member "customerDomain" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    language = member "language" json |> to_option to_string;
    phone_number = member "phoneNumber" json |> to_option to_string;
    postal_address = member "postalAddress" json |> to_option customer_postal_address_of_yojson;
  }

and yojson_of_customer (value : customer) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("alternateEmail", (fun value -> `String value) field)) value.alternate_email;
         Option.map (fun field -> ("customerCreationTime", (fun value -> `String value) field)) value.customer_creation_time;
         Option.map (fun field -> ("customerDomain", (fun value -> `String value) field)) value.customer_domain;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("language", (fun value -> `String value) field)) value.language;
         Option.map (fun field -> ("phoneNumber", (fun value -> `String value) field)) value.phone_number;
         Option.map (fun field -> ("postalAddress", yojson_of_customer_postal_address field)) value.postal_address;
       ])

and customer_postal_address_of_yojson json : customer_postal_address =
  let open Yojson.Safe.Util in
  {
    address_line1 = member "addressLine1" json |> to_option to_string;
    address_line2 = member "addressLine2" json |> to_option to_string;
    address_line3 = member "addressLine3" json |> to_option to_string;
    contact_name = member "contactName" json |> to_option to_string;
    country_code = member "countryCode" json |> to_option to_string;
    locality = member "locality" json |> to_option to_string;
    organization_name = member "organizationName" json |> to_option to_string;
    postal_code = member "postalCode" json |> to_option to_string;
    region = member "region" json |> to_option to_string;
  }

and yojson_of_customer_postal_address (value : customer_postal_address) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("addressLine1", (fun value -> `String value) field)) value.address_line1;
         Option.map (fun field -> ("addressLine2", (fun value -> `String value) field)) value.address_line2;
         Option.map (fun field -> ("addressLine3", (fun value -> `String value) field)) value.address_line3;
         Option.map (fun field -> ("contactName", (fun value -> `String value) field)) value.contact_name;
         Option.map (fun field -> ("countryCode", (fun value -> `String value) field)) value.country_code;
         Option.map (fun field -> ("locality", (fun value -> `String value) field)) value.locality;
         Option.map (fun field -> ("organizationName", (fun value -> `String value) field)) value.organization_name;
         Option.map (fun field -> ("postalCode", (fun value -> `String value) field)) value.postal_code;
         Option.map (fun field -> ("region", (fun value -> `String value) field)) value.region;
       ])

and directory_chromeosdevices_command_of_yojson json : directory_chromeosdevices_command =
  let open Yojson.Safe.Util in
  {
    command_expire_time = member "commandExpireTime" json |> to_option to_string;
    command_id = member "commandId" json |> to_option to_string;
    command_result = member "commandResult" json |> to_option directory_chromeosdevices_command_result_of_yojson;
    issue_time = member "issueTime" json |> to_option to_string;
    payload = member "payload" json |> to_option to_string;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "PENDING" -> `Pending | "EXPIRED" -> `Expired | "CANCELLED" -> `Cancelled | "SENT_TO_CLIENT" -> `Sent_to_client | "ACKED_BY_CLIENT" -> `Acked_by_client | "EXECUTED_BY_CLIENT" -> `Executed_by_client | value -> `Unrecognized value);
    type_ = member "type" json |> to_option (fun json -> match to_string json with "COMMAND_TYPE_UNSPECIFIED" -> `Command_type_unspecified | "REBOOT" -> `Reboot | "TAKE_A_SCREENSHOT" -> `Take_a_screenshot | "SET_VOLUME" -> `Set_volume | "WIPE_USERS" -> `Wipe_users | "REMOTE_POWERWASH" -> `Remote_powerwash | "DEVICE_START_CRD_SESSION" -> `Device_start_crd_session | "CAPTURE_LOGS" -> `Capture_logs | "FETCH_CRD_AVAILABILITY_INFO" -> `Fetch_crd_availability_info | "FETCH_SUPPORT_PACKET" -> `Fetch_support_packet | value -> `Unrecognized value);
  }

and yojson_of_directory_chromeosdevices_command (value : directory_chromeosdevices_command) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("commandExpireTime", (fun value -> `String value) field)) value.command_expire_time;
         Option.map (fun field -> ("commandId", (fun value -> `String value) field)) value.command_id;
         Option.map (fun field -> ("commandResult", yojson_of_directory_chromeosdevices_command_result field)) value.command_result;
         Option.map (fun field -> ("issueTime", (fun value -> `String value) field)) value.issue_time;
         Option.map (fun field -> ("payload", (fun value -> `String value) field)) value.payload;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Pending -> "PENDING" | `Expired -> "EXPIRED" | `Cancelled -> "CANCELLED" | `Sent_to_client -> "SENT_TO_CLIENT" | `Acked_by_client -> "ACKED_BY_CLIENT" | `Executed_by_client -> "EXECUTED_BY_CLIENT" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("type", (fun value -> `String ((function `Command_type_unspecified -> "COMMAND_TYPE_UNSPECIFIED" | `Reboot -> "REBOOT" | `Take_a_screenshot -> "TAKE_A_SCREENSHOT" | `Set_volume -> "SET_VOLUME" | `Wipe_users -> "WIPE_USERS" | `Remote_powerwash -> "REMOTE_POWERWASH" | `Device_start_crd_session -> "DEVICE_START_CRD_SESSION" | `Capture_logs -> "CAPTURE_LOGS" | `Fetch_crd_availability_info -> "FETCH_CRD_AVAILABILITY_INFO" | `Fetch_support_packet -> "FETCH_SUPPORT_PACKET" | `Unrecognized value -> value) value)) field)) value.type_;
       ])

and directory_chromeosdevices_command_result_of_yojson json : directory_chromeosdevices_command_result =
  let open Yojson.Safe.Util in
  {
    command_result_payload = member "commandResultPayload" json |> to_option to_string;
    error_message = member "errorMessage" json |> to_option to_string;
    execute_time = member "executeTime" json |> to_option to_string;
    result = member "result" json |> to_option (fun json -> match to_string json with "COMMAND_RESULT_TYPE_UNSPECIFIED" -> `Command_result_type_unspecified | "IGNORED" -> `Ignored | "FAILURE" -> `Failure | "SUCCESS" -> `Success | value -> `Unrecognized value);
  }

and yojson_of_directory_chromeosdevices_command_result (value : directory_chromeosdevices_command_result) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("commandResultPayload", (fun value -> `String value) field)) value.command_result_payload;
         Option.map (fun field -> ("errorMessage", (fun value -> `String value) field)) value.error_message;
         Option.map (fun field -> ("executeTime", (fun value -> `String value) field)) value.execute_time;
         Option.map (fun field -> ("result", (fun value -> `String ((function `Command_result_type_unspecified -> "COMMAND_RESULT_TYPE_UNSPECIFIED" | `Ignored -> "IGNORED" | `Failure -> "FAILURE" | `Success -> "SUCCESS" | `Unrecognized value -> value) value)) field)) value.result;
       ])

and directory_chromeosdevices_issue_command_request_of_yojson json : directory_chromeosdevices_issue_command_request =
  let open Yojson.Safe.Util in
  {
    command_type = member "commandType" json |> to_option (fun json -> match to_string json with "COMMAND_TYPE_UNSPECIFIED" -> `Command_type_unspecified | "REBOOT" -> `Reboot | "TAKE_A_SCREENSHOT" -> `Take_a_screenshot | "SET_VOLUME" -> `Set_volume | "WIPE_USERS" -> `Wipe_users | "REMOTE_POWERWASH" -> `Remote_powerwash | "DEVICE_START_CRD_SESSION" -> `Device_start_crd_session | "CAPTURE_LOGS" -> `Capture_logs | "FETCH_CRD_AVAILABILITY_INFO" -> `Fetch_crd_availability_info | "FETCH_SUPPORT_PACKET" -> `Fetch_support_packet | value -> `Unrecognized value);
    payload = member "payload" json |> to_option to_string;
  }

and yojson_of_directory_chromeosdevices_issue_command_request (value : directory_chromeosdevices_issue_command_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("commandType", (fun value -> `String ((function `Command_type_unspecified -> "COMMAND_TYPE_UNSPECIFIED" | `Reboot -> "REBOOT" | `Take_a_screenshot -> "TAKE_A_SCREENSHOT" | `Set_volume -> "SET_VOLUME" | `Wipe_users -> "WIPE_USERS" | `Remote_powerwash -> "REMOTE_POWERWASH" | `Device_start_crd_session -> "DEVICE_START_CRD_SESSION" | `Capture_logs -> "CAPTURE_LOGS" | `Fetch_crd_availability_info -> "FETCH_CRD_AVAILABILITY_INFO" | `Fetch_support_packet -> "FETCH_SUPPORT_PACKET" | `Unrecognized value -> value) value)) field)) value.command_type;
         Option.map (fun field -> ("payload", (fun value -> `String value) field)) value.payload;
       ])

and directory_chromeosdevices_issue_command_response_of_yojson json : directory_chromeosdevices_issue_command_response =
  let open Yojson.Safe.Util in
  {
    command_id = member "commandId" json |> to_option to_string;
  }

and yojson_of_directory_chromeosdevices_issue_command_response (value : directory_chromeosdevices_issue_command_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("commandId", (fun value -> `String value) field)) value.command_id;
       ])

and directory_users_create_guest_request_of_yojson json : directory_users_create_guest_request =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
    primary_guest_email = member "primaryGuestEmail" json |> to_option to_string;
  }

and yojson_of_directory_users_create_guest_request (value : directory_users_create_guest_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
         Option.map (fun field -> ("primaryGuestEmail", (fun value -> `String value) field)) value.primary_guest_email;
       ])

and domain_alias_of_yojson json : domain_alias =
  let open Yojson.Safe.Util in
  {
    creation_time = member "creationTime" json |> to_option to_string;
    domain_alias_name = member "domainAliasName" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    parent_domain_name = member "parentDomainName" json |> to_option to_string;
    verified = member "verified" json |> to_option to_bool;
  }

and yojson_of_domain_alias (value : domain_alias) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("domainAliasName", (fun value -> `String value) field)) value.domain_alias_name;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("parentDomainName", (fun value -> `String value) field)) value.parent_domain_name;
         Option.map (fun field -> ("verified", (fun value -> `Bool value) field)) value.verified;
       ])

and domain_aliases_of_yojson json : domain_aliases =
  let open Yojson.Safe.Util in
  {
    domain_aliases = member "domainAliases" json |> to_option (convert_each domain_alias_of_yojson);
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_domain_aliases (value : domain_aliases) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("domainAliases", (fun items -> `List (List.map yojson_of_domain_alias items)) field)) value.domain_aliases;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and domains_of_yojson json : domains =
  let open Yojson.Safe.Util in
  {
    creation_time = member "creationTime" json |> to_option to_string;
    domain_aliases = member "domainAliases" json |> to_option (convert_each domain_alias_of_yojson);
    domain_name = member "domainName" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    is_primary = member "isPrimary" json |> to_option to_bool;
    kind = member "kind" json |> to_option to_string;
    verified = member "verified" json |> to_option to_bool;
  }

and yojson_of_domains (value : domains) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("domainAliases", (fun items -> `List (List.map yojson_of_domain_alias items)) field)) value.domain_aliases;
         Option.map (fun field -> ("domainName", (fun value -> `String value) field)) value.domain_name;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("isPrimary", (fun value -> `Bool value) field)) value.is_primary;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("verified", (fun value -> `Bool value) field)) value.verified;
       ])

and domains2_of_yojson json : domains2 =
  let open Yojson.Safe.Util in
  {
    domains = member "domains" json |> to_option (convert_each domains_of_yojson);
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_domains2 (value : domains2) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("domains", (fun items -> `List (List.map yojson_of_domains items)) field)) value.domains;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and empty_of_yojson json : empty =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_empty (value : empty) : Yojson.Safe.t = Fun.id value

and expiration_details_of_yojson json : expiration_details =
  let open Yojson.Safe.Util in
  {
    expire_time = member "expireTime" json |> to_option to_string;
  }

and yojson_of_expiration_details (value : expiration_details) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
       ])

and external_id_of_yojson json : external_id =
  let open Yojson.Safe.Util in
  {
    id = member "id" json |> to_option to_string;
    namespace = member "namespace" json |> to_option to_string;
  }

and yojson_of_external_id (value : external_id) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("namespace", (fun value -> `String value) field)) value.namespace;
       ])

and failure_info_of_yojson json : failure_info =
  let open Yojson.Safe.Util in
  {
    error_code = member "errorCode" json |> to_option (fun json -> match to_string json with "OK" -> `Ok | "CANCELLED" -> `Cancelled | "UNKNOWN" -> `Unknown | "INVALID_ARGUMENT" -> `Invalid_argument | "DEADLINE_EXCEEDED" -> `Deadline_exceeded | "NOT_FOUND" -> `Not_found | "ALREADY_EXISTS" -> `Already_exists | "PERMISSION_DENIED" -> `Permission_denied | "UNAUTHENTICATED" -> `Unauthenticated | "RESOURCE_EXHAUSTED" -> `Resource_exhausted | "FAILED_PRECONDITION" -> `Failed_precondition | "ABORTED" -> `Aborted | "OUT_OF_RANGE" -> `Out_of_range | "UNIMPLEMENTED" -> `Unimplemented | "INTERNAL" -> `Internal | "UNAVAILABLE" -> `Unavailable | "DATA_LOSS" -> `Data_loss | value -> `Unrecognized value);
    error_message = member "errorMessage" json |> to_option to_string;
    printer = member "printer" json |> to_option printer_of_yojson;
    printer_id = member "printerId" json |> to_option to_string;
  }

and yojson_of_failure_info (value : failure_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("errorCode", (fun value -> `String ((function `Ok -> "OK" | `Cancelled -> "CANCELLED" | `Unknown -> "UNKNOWN" | `Invalid_argument -> "INVALID_ARGUMENT" | `Deadline_exceeded -> "DEADLINE_EXCEEDED" | `Not_found -> "NOT_FOUND" | `Already_exists -> "ALREADY_EXISTS" | `Permission_denied -> "PERMISSION_DENIED" | `Unauthenticated -> "UNAUTHENTICATED" | `Resource_exhausted -> "RESOURCE_EXHAUSTED" | `Failed_precondition -> "FAILED_PRECONDITION" | `Aborted -> "ABORTED" | `Out_of_range -> "OUT_OF_RANGE" | `Unimplemented -> "UNIMPLEMENTED" | `Internal -> "INTERNAL" | `Unavailable -> "UNAVAILABLE" | `Data_loss -> "DATA_LOSS" | `Unrecognized value -> value) value)) field)) value.error_code;
         Option.map (fun field -> ("errorMessage", (fun value -> `String value) field)) value.error_message;
         Option.map (fun field -> ("printer", yojson_of_printer field)) value.printer;
         Option.map (fun field -> ("printerId", (fun value -> `String value) field)) value.printer_id;
       ])

and fan_info_of_yojson json : fan_info =
  let open Yojson.Safe.Util in
  {
    speed_rpm = member "speedRpm" json |> to_option to_int;
  }

and yojson_of_fan_info (value : fan_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("speedRpm", (fun value -> `Int value) field)) value.speed_rpm;
       ])

and feature_of_yojson json : feature =
  let open Yojson.Safe.Util in
  {
    etags = member "etags" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_feature (value : feature) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etags", (fun value -> `String value) field)) value.etags;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and feature_instance_of_yojson json : feature_instance =
  let open Yojson.Safe.Util in
  {
    feature = member "feature" json |> to_option feature_of_yojson;
  }

and yojson_of_feature_instance (value : feature_instance) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("feature", yojson_of_feature field)) value.feature;
       ])

and feature_rename_of_yojson json : feature_rename =
  let open Yojson.Safe.Util in
  {
    new_name = member "newName" json |> to_option to_string;
  }

and yojson_of_feature_rename (value : feature_rename) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("newName", (fun value -> `String value) field)) value.new_name;
       ])

and features_of_yojson json : features =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    features = member "features" json |> to_option (convert_each feature_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_features (value : features) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("features", (fun items -> `List (List.map yojson_of_feature items)) field)) value.features;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and group_of_yojson json : group =
  let open Yojson.Safe.Util in
  {
    admin_created = member "adminCreated" json |> to_option to_bool;
    aliases = member "aliases" json |> to_option (convert_each to_string);
    description = member "description" json |> to_option to_string;
    direct_members_count = member "directMembersCount" json |> to_option to_string;
    email = member "email" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    external_ids = member "externalIds" json |> to_option (convert_each external_id_of_yojson);
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    non_editable_aliases = member "nonEditableAliases" json |> to_option (convert_each to_string);
  }

and yojson_of_group (value : group) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("adminCreated", (fun value -> `Bool value) field)) value.admin_created;
         Option.map (fun field -> ("aliases", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.aliases;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("directMembersCount", (fun value -> `String value) field)) value.direct_members_count;
         Option.map (fun field -> ("email", (fun value -> `String value) field)) value.email;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("externalIds", (fun items -> `List (List.map yojson_of_external_id items)) field)) value.external_ids;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("nonEditableAliases", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.non_editable_aliases;
       ])

and group_alias_of_yojson json : group_alias =
  let open Yojson.Safe.Util in
  {
    alias = member "alias" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    primary_email = member "primaryEmail" json |> to_option to_string;
  }

and yojson_of_group_alias (value : group_alias) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("alias", (fun value -> `String value) field)) value.alias;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("primaryEmail", (fun value -> `String value) field)) value.primary_email;
       ])

and groups_of_yojson json : groups =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    groups = member "groups" json |> to_option (convert_each group_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_groups (value : groups) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("groups", (fun items -> `List (List.map yojson_of_group items)) field)) value.groups;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and guest_account_info_of_yojson json : guest_account_info =
  let open Yojson.Safe.Util in
  {
    primary_guest_email = member "primaryGuestEmail" json |> to_option to_string;
  }

and yojson_of_guest_account_info (value : guest_account_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("primaryGuestEmail", (fun value -> `String value) field)) value.primary_guest_email;
       ])

and list_print_servers_response_of_yojson json : list_print_servers_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    print_servers = member "printServers" json |> to_option (convert_each print_server_of_yojson);
  }

and yojson_of_list_print_servers_response (value : list_print_servers_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("printServers", (fun items -> `List (List.map yojson_of_print_server items)) field)) value.print_servers;
       ])

and list_printer_models_response_of_yojson json : list_printer_models_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    printer_models = member "printerModels" json |> to_option (convert_each printer_model_of_yojson);
  }

and yojson_of_list_printer_models_response (value : list_printer_models_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("printerModels", (fun items -> `List (List.map yojson_of_printer_model items)) field)) value.printer_models;
       ])

and list_printers_response_of_yojson json : list_printers_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    printers = member "printers" json |> to_option (convert_each printer_of_yojson);
  }

and yojson_of_list_printers_response (value : list_printers_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("printers", (fun items -> `List (List.map yojson_of_printer items)) field)) value.printers;
       ])

and member_of_yojson json : member =
  let open Yojson.Safe.Util in
  {
    delivery_settings = member "delivery_settings" json |> to_option to_string;
    email = member "email" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    role = member "role" json |> to_option to_string;
    status = member "status" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_member (value : member) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("delivery_settings", (fun value -> `String value) field)) value.delivery_settings;
         Option.map (fun field -> ("email", (fun value -> `String value) field)) value.email;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("role", (fun value -> `String value) field)) value.role;
         Option.map (fun field -> ("status", (fun value -> `String value) field)) value.status;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and members_of_yojson json : members =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    members = member "members" json |> to_option (convert_each member_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_members (value : members) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("members", (fun items -> `List (List.map yojson_of_member items)) field)) value.members;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and members_has_member_of_yojson json : members_has_member =
  let open Yojson.Safe.Util in
  {
    is_member = member "isMember" json |> to_option to_bool;
  }

and yojson_of_members_has_member (value : members_has_member) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("isMember", (fun value -> `Bool value) field)) value.is_member;
       ])

and mobile_device_applications_item_of_yojson json : mobile_device_applications_item =
  let open Yojson.Safe.Util in
  {
    display_name = member "displayName" json |> to_option to_string;
    package_name = member "packageName" json |> to_option to_string;
    permission = member "permission" json |> to_option (convert_each to_string);
    version_code = member "versionCode" json |> to_option to_int;
    version_name = member "versionName" json |> to_option to_string;
  }

and yojson_of_mobile_device_applications_item (value : mobile_device_applications_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("packageName", (fun value -> `String value) field)) value.package_name;
         Option.map (fun field -> ("permission", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.permission;
         Option.map (fun field -> ("versionCode", (fun value -> `Int value) field)) value.version_code;
         Option.map (fun field -> ("versionName", (fun value -> `String value) field)) value.version_name;
       ])

and mobile_device_of_yojson json : mobile_device =
  let open Yojson.Safe.Util in
  {
    adb_status = member "adbStatus" json |> to_option to_bool;
    applications = member "applications" json |> to_option (convert_each mobile_device_applications_item_of_yojson);
    baseband_version = member "basebandVersion" json |> to_option to_string;
    bootloader_version = member "bootloaderVersion" json |> to_option to_string;
    brand = member "brand" json |> to_option to_string;
    build_number = member "buildNumber" json |> to_option to_string;
    default_language = member "defaultLanguage" json |> to_option to_string;
    developer_options_status = member "developerOptionsStatus" json |> to_option to_bool;
    device_compromised_status = member "deviceCompromisedStatus" json |> to_option to_string;
    device_id = member "deviceId" json |> to_option to_string;
    device_password_status = member "devicePasswordStatus" json |> to_option to_string;
    email = member "email" json |> to_option (convert_each to_string);
    encryption_status = member "encryptionStatus" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    first_sync = member "firstSync" json |> to_option to_string;
    hardware = member "hardware" json |> to_option to_string;
    hardware_id = member "hardwareId" json |> to_option to_string;
    imei = member "imei" json |> to_option to_string;
    kernel_version = member "kernelVersion" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    last_sync = member "lastSync" json |> to_option to_string;
    managed_account_is_on_owner_profile = member "managedAccountIsOnOwnerProfile" json |> to_option to_bool;
    manufacturer = member "manufacturer" json |> to_option to_string;
    meid = member "meid" json |> to_option to_string;
    model = member "model" json |> to_option to_string;
    name = member "name" json |> to_option (convert_each to_string);
    network_operator = member "networkOperator" json |> to_option to_string;
    os = member "os" json |> to_option to_string;
    other_accounts_info = member "otherAccountsInfo" json |> to_option (convert_each to_string);
    privilege = member "privilege" json |> to_option to_string;
    release_version = member "releaseVersion" json |> to_option to_string;
    resource_id = member "resourceId" json |> to_option to_string;
    security_patch_level = member "securityPatchLevel" json |> to_option to_string;
    serial_number = member "serialNumber" json |> to_option to_string;
    status = member "status" json |> to_option to_string;
    supports_work_profile = member "supportsWorkProfile" json |> to_option to_bool;
    type_ = member "type" json |> to_option to_string;
    unknown_sources_status = member "unknownSourcesStatus" json |> to_option to_bool;
    user_agent = member "userAgent" json |> to_option to_string;
    wifi_mac_address = member "wifiMacAddress" json |> to_option to_string;
  }

and yojson_of_mobile_device (value : mobile_device) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("adbStatus", (fun value -> `Bool value) field)) value.adb_status;
         Option.map (fun field -> ("applications", (fun items -> `List (List.map yojson_of_mobile_device_applications_item items)) field)) value.applications;
         Option.map (fun field -> ("basebandVersion", (fun value -> `String value) field)) value.baseband_version;
         Option.map (fun field -> ("bootloaderVersion", (fun value -> `String value) field)) value.bootloader_version;
         Option.map (fun field -> ("brand", (fun value -> `String value) field)) value.brand;
         Option.map (fun field -> ("buildNumber", (fun value -> `String value) field)) value.build_number;
         Option.map (fun field -> ("defaultLanguage", (fun value -> `String value) field)) value.default_language;
         Option.map (fun field -> ("developerOptionsStatus", (fun value -> `Bool value) field)) value.developer_options_status;
         Option.map (fun field -> ("deviceCompromisedStatus", (fun value -> `String value) field)) value.device_compromised_status;
         Option.map (fun field -> ("deviceId", (fun value -> `String value) field)) value.device_id;
         Option.map (fun field -> ("devicePasswordStatus", (fun value -> `String value) field)) value.device_password_status;
         Option.map (fun field -> ("email", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.email;
         Option.map (fun field -> ("encryptionStatus", (fun value -> `String value) field)) value.encryption_status;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("firstSync", (fun value -> `String value) field)) value.first_sync;
         Option.map (fun field -> ("hardware", (fun value -> `String value) field)) value.hardware;
         Option.map (fun field -> ("hardwareId", (fun value -> `String value) field)) value.hardware_id;
         Option.map (fun field -> ("imei", (fun value -> `String value) field)) value.imei;
         Option.map (fun field -> ("kernelVersion", (fun value -> `String value) field)) value.kernel_version;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("lastSync", (fun value -> `String value) field)) value.last_sync;
         Option.map (fun field -> ("managedAccountIsOnOwnerProfile", (fun value -> `Bool value) field)) value.managed_account_is_on_owner_profile;
         Option.map (fun field -> ("manufacturer", (fun value -> `String value) field)) value.manufacturer;
         Option.map (fun field -> ("meid", (fun value -> `String value) field)) value.meid;
         Option.map (fun field -> ("model", (fun value -> `String value) field)) value.model;
         Option.map (fun field -> ("name", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.name;
         Option.map (fun field -> ("networkOperator", (fun value -> `String value) field)) value.network_operator;
         Option.map (fun field -> ("os", (fun value -> `String value) field)) value.os;
         Option.map (fun field -> ("otherAccountsInfo", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.other_accounts_info;
         Option.map (fun field -> ("privilege", (fun value -> `String value) field)) value.privilege;
         Option.map (fun field -> ("releaseVersion", (fun value -> `String value) field)) value.release_version;
         Option.map (fun field -> ("resourceId", (fun value -> `String value) field)) value.resource_id;
         Option.map (fun field -> ("securityPatchLevel", (fun value -> `String value) field)) value.security_patch_level;
         Option.map (fun field -> ("serialNumber", (fun value -> `String value) field)) value.serial_number;
         Option.map (fun field -> ("status", (fun value -> `String value) field)) value.status;
         Option.map (fun field -> ("supportsWorkProfile", (fun value -> `Bool value) field)) value.supports_work_profile;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
         Option.map (fun field -> ("unknownSourcesStatus", (fun value -> `Bool value) field)) value.unknown_sources_status;
         Option.map (fun field -> ("userAgent", (fun value -> `String value) field)) value.user_agent;
         Option.map (fun field -> ("wifiMacAddress", (fun value -> `String value) field)) value.wifi_mac_address;
       ])

and mobile_device_action_of_yojson json : mobile_device_action =
  let open Yojson.Safe.Util in
  {
    action = member "action" json |> to_option to_string;
  }

and yojson_of_mobile_device_action (value : mobile_device_action) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("action", (fun value -> `String value) field)) value.action;
       ])

and mobile_devices_of_yojson json : mobile_devices =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    mobiledevices = member "mobiledevices" json |> to_option (convert_each mobile_device_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_mobile_devices (value : mobile_devices) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("mobiledevices", (fun items -> `List (List.map yojson_of_mobile_device items)) field)) value.mobiledevices;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and org_unit_of_yojson json : org_unit =
  let open Yojson.Safe.Util in
  {
    block_inheritance = member "blockInheritance" json |> to_option to_bool;
    description = member "description" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    org_unit_id = member "orgUnitId" json |> to_option to_string;
    org_unit_path = member "orgUnitPath" json |> to_option to_string;
    parent_org_unit_id = member "parentOrgUnitId" json |> to_option to_string;
    parent_org_unit_path = member "parentOrgUnitPath" json |> to_option to_string;
  }

and yojson_of_org_unit (value : org_unit) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("blockInheritance", (fun value -> `Bool value) field)) value.block_inheritance;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("orgUnitId", (fun value -> `String value) field)) value.org_unit_id;
         Option.map (fun field -> ("orgUnitPath", (fun value -> `String value) field)) value.org_unit_path;
         Option.map (fun field -> ("parentOrgUnitId", (fun value -> `String value) field)) value.parent_org_unit_id;
         Option.map (fun field -> ("parentOrgUnitPath", (fun value -> `String value) field)) value.parent_org_unit_path;
       ])

and org_units_of_yojson json : org_units =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    organization_units = member "organizationUnits" json |> to_option (convert_each org_unit_of_yojson);
  }

and yojson_of_org_units (value : org_units) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("organizationUnits", (fun items -> `List (List.map yojson_of_org_unit items)) field)) value.organization_units;
       ])

and os_update_status_of_yojson json : os_update_status =
  let open Yojson.Safe.Util in
  {
    reboot_time = member "rebootTime" json |> to_option to_string;
    state = member "state" json |> to_option (fun json -> match to_string json with "updateStateUnspecified" -> `Update_state_unspecified | "updateStateNotStarted" -> `Update_state_not_started | "updateStateDownloadInProgress" -> `Update_state_download_in_progress | "updateStateNeedReboot" -> `Update_state_need_reboot | value -> `Unrecognized value);
    target_kiosk_app_version = member "targetKioskAppVersion" json |> to_option to_string;
    target_os_version = member "targetOsVersion" json |> to_option to_string;
    update_check_time = member "updateCheckTime" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
  }

and yojson_of_os_update_status (value : os_update_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("rebootTime", (fun value -> `String value) field)) value.reboot_time;
         Option.map (fun field -> ("state", (fun value -> `String ((function `Update_state_unspecified -> "updateStateUnspecified" | `Update_state_not_started -> "updateStateNotStarted" | `Update_state_download_in_progress -> "updateStateDownloadInProgress" | `Update_state_need_reboot -> "updateStateNeedReboot" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("targetKioskAppVersion", (fun value -> `String value) field)) value.target_kiosk_app_version;
         Option.map (fun field -> ("targetOsVersion", (fun value -> `String value) field)) value.target_os_version;
         Option.map (fun field -> ("updateCheckTime", (fun value -> `String value) field)) value.update_check_time;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
       ])

and print_server_of_yojson json : print_server =
  let open Yojson.Safe.Util in
  {
    create_time = member "createTime" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    display_name = member "displayName" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    org_unit_id = member "orgUnitId" json |> to_option to_string;
    uri = member "uri" json |> to_option to_string;
  }

and yojson_of_print_server (value : print_server) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("orgUnitId", (fun value -> `String value) field)) value.org_unit_id;
         Option.map (fun field -> ("uri", (fun value -> `String value) field)) value.uri;
       ])

and print_server_failure_info_of_yojson json : print_server_failure_info =
  let open Yojson.Safe.Util in
  {
    error_code = member "errorCode" json |> to_option (fun json -> match to_string json with "OK" -> `Ok | "CANCELLED" -> `Cancelled | "UNKNOWN" -> `Unknown | "INVALID_ARGUMENT" -> `Invalid_argument | "DEADLINE_EXCEEDED" -> `Deadline_exceeded | "NOT_FOUND" -> `Not_found | "ALREADY_EXISTS" -> `Already_exists | "PERMISSION_DENIED" -> `Permission_denied | "UNAUTHENTICATED" -> `Unauthenticated | "RESOURCE_EXHAUSTED" -> `Resource_exhausted | "FAILED_PRECONDITION" -> `Failed_precondition | "ABORTED" -> `Aborted | "OUT_OF_RANGE" -> `Out_of_range | "UNIMPLEMENTED" -> `Unimplemented | "INTERNAL" -> `Internal | "UNAVAILABLE" -> `Unavailable | "DATA_LOSS" -> `Data_loss | value -> `Unrecognized value);
    error_message = member "errorMessage" json |> to_option to_string;
    print_server = member "printServer" json |> to_option print_server_of_yojson;
    print_server_id = member "printServerId" json |> to_option to_string;
  }

and yojson_of_print_server_failure_info (value : print_server_failure_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("errorCode", (fun value -> `String ((function `Ok -> "OK" | `Cancelled -> "CANCELLED" | `Unknown -> "UNKNOWN" | `Invalid_argument -> "INVALID_ARGUMENT" | `Deadline_exceeded -> "DEADLINE_EXCEEDED" | `Not_found -> "NOT_FOUND" | `Already_exists -> "ALREADY_EXISTS" | `Permission_denied -> "PERMISSION_DENIED" | `Unauthenticated -> "UNAUTHENTICATED" | `Resource_exhausted -> "RESOURCE_EXHAUSTED" | `Failed_precondition -> "FAILED_PRECONDITION" | `Aborted -> "ABORTED" | `Out_of_range -> "OUT_OF_RANGE" | `Unimplemented -> "UNIMPLEMENTED" | `Internal -> "INTERNAL" | `Unavailable -> "UNAVAILABLE" | `Data_loss -> "DATA_LOSS" | `Unrecognized value -> value) value)) field)) value.error_code;
         Option.map (fun field -> ("errorMessage", (fun value -> `String value) field)) value.error_message;
         Option.map (fun field -> ("printServer", yojson_of_print_server field)) value.print_server;
         Option.map (fun field -> ("printServerId", (fun value -> `String value) field)) value.print_server_id;
       ])

and printer_of_yojson json : printer =
  let open Yojson.Safe.Util in
  {
    auxiliary_messages = member "auxiliaryMessages" json |> to_option (convert_each auxiliary_message_of_yojson);
    create_time = member "createTime" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    display_name = member "displayName" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    make_and_model = member "makeAndModel" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    org_unit_id = member "orgUnitId" json |> to_option to_string;
    uri = member "uri" json |> to_option to_string;
    use_driverless_config = member "useDriverlessConfig" json |> to_option to_bool;
  }

and yojson_of_printer (value : printer) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("auxiliaryMessages", (fun items -> `List (List.map yojson_of_auxiliary_message items)) field)) value.auxiliary_messages;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("makeAndModel", (fun value -> `String value) field)) value.make_and_model;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("orgUnitId", (fun value -> `String value) field)) value.org_unit_id;
         Option.map (fun field -> ("uri", (fun value -> `String value) field)) value.uri;
         Option.map (fun field -> ("useDriverlessConfig", (fun value -> `Bool value) field)) value.use_driverless_config;
       ])

and printer_model_of_yojson json : printer_model =
  let open Yojson.Safe.Util in
  {
    display_name = member "displayName" json |> to_option to_string;
    make_and_model = member "makeAndModel" json |> to_option to_string;
    manufacturer = member "manufacturer" json |> to_option to_string;
  }

and yojson_of_printer_model (value : printer_model) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("makeAndModel", (fun value -> `String value) field)) value.make_and_model;
         Option.map (fun field -> ("manufacturer", (fun value -> `String value) field)) value.manufacturer;
       ])

and privilege_of_yojson json : privilege =
  let open Yojson.Safe.Util in
  {
    child_privileges = member "childPrivileges" json |> to_option (convert_each privilege_of_yojson);
    etag = member "etag" json |> to_option to_string;
    is_ou_scopable = member "isOuScopable" json |> to_option to_bool;
    kind = member "kind" json |> to_option to_string;
    privilege_name = member "privilegeName" json |> to_option to_string;
    service_id = member "serviceId" json |> to_option to_string;
    service_name = member "serviceName" json |> to_option to_string;
  }

and yojson_of_privilege (value : privilege) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("childPrivileges", (fun items -> `List (List.map yojson_of_privilege items)) field)) value.child_privileges;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("isOuScopable", (fun value -> `Bool value) field)) value.is_ou_scopable;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("privilegeName", (fun value -> `String value) field)) value.privilege_name;
         Option.map (fun field -> ("serviceId", (fun value -> `String value) field)) value.service_id;
         Option.map (fun field -> ("serviceName", (fun value -> `String value) field)) value.service_name;
       ])

and privileges_of_yojson json : privileges =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each privilege_of_yojson);
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_privileges (value : privileges) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_privilege items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and role_role_privileges_item_of_yojson json : role_role_privileges_item =
  let open Yojson.Safe.Util in
  {
    privilege_name = member "privilegeName" json |> to_option to_string;
    service_id = member "serviceId" json |> to_option to_string;
  }

and yojson_of_role_role_privileges_item (value : role_role_privileges_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("privilegeName", (fun value -> `String value) field)) value.privilege_name;
         Option.map (fun field -> ("serviceId", (fun value -> `String value) field)) value.service_id;
       ])

and role_of_yojson json : role =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    is_super_admin_role = member "isSuperAdminRole" json |> to_option to_bool;
    is_system_role = member "isSystemRole" json |> to_option to_bool;
    kind = member "kind" json |> to_option to_string;
    role_description = member "roleDescription" json |> to_option to_string;
    role_id = member "roleId" json |> to_option to_string;
    role_name = member "roleName" json |> to_option to_string;
    role_privileges = member "rolePrivileges" json |> to_option (convert_each role_role_privileges_item_of_yojson);
  }

and yojson_of_role (value : role) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("isSuperAdminRole", (fun value -> `Bool value) field)) value.is_super_admin_role;
         Option.map (fun field -> ("isSystemRole", (fun value -> `Bool value) field)) value.is_system_role;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("roleDescription", (fun value -> `String value) field)) value.role_description;
         Option.map (fun field -> ("roleId", (fun value -> `String value) field)) value.role_id;
         Option.map (fun field -> ("roleName", (fun value -> `String value) field)) value.role_name;
         Option.map (fun field -> ("rolePrivileges", (fun items -> `List (List.map yojson_of_role_role_privileges_item items)) field)) value.role_privileges;
       ])

and role_assignment_of_yojson json : role_assignment =
  let open Yojson.Safe.Util in
  {
    assigned_to = member "assignedTo" json |> to_option to_string;
    assignee_type = member "assigneeType" json |> to_option (fun json -> match to_string json with "user" -> `User | "group" -> `Group | value -> `Unrecognized value);
    condition = member "condition" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    expiration_details = member "expirationDetails" json |> to_option expiration_details_of_yojson;
    kind = member "kind" json |> to_option to_string;
    org_unit_id = member "orgUnitId" json |> to_option to_string;
    role_assignment_id = member "roleAssignmentId" json |> to_option to_string;
    role_id = member "roleId" json |> to_option to_string;
    scope_type = member "scopeType" json |> to_option to_string;
  }

and yojson_of_role_assignment (value : role_assignment) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("assignedTo", (fun value -> `String value) field)) value.assigned_to;
         Option.map (fun field -> ("assigneeType", (fun value -> `String ((function `User -> "user" | `Group -> "group" | `Unrecognized value -> value) value)) field)) value.assignee_type;
         Option.map (fun field -> ("condition", (fun value -> `String value) field)) value.condition;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("expirationDetails", yojson_of_expiration_details field)) value.expiration_details;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("orgUnitId", (fun value -> `String value) field)) value.org_unit_id;
         Option.map (fun field -> ("roleAssignmentId", (fun value -> `String value) field)) value.role_assignment_id;
         Option.map (fun field -> ("roleId", (fun value -> `String value) field)) value.role_id;
         Option.map (fun field -> ("scopeType", (fun value -> `String value) field)) value.scope_type;
       ])

and role_assignments_of_yojson json : role_assignments =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each role_assignment_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_role_assignments (value : role_assignments) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_role_assignment items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and roles_of_yojson json : roles =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each role_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_roles (value : roles) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_role items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and schema_of_yojson json : schema =
  let open Yojson.Safe.Util in
  {
    display_name = member "displayName" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    fields = member "fields" json |> to_option (convert_each schema_field_spec_of_yojson);
    kind = member "kind" json |> to_option to_string;
    schema_id = member "schemaId" json |> to_option to_string;
    schema_name = member "schemaName" json |> to_option to_string;
  }

and yojson_of_schema (value : schema) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("fields", (fun items -> `List (List.map yojson_of_schema_field_spec items)) field)) value.fields;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("schemaId", (fun value -> `String value) field)) value.schema_id;
         Option.map (fun field -> ("schemaName", (fun value -> `String value) field)) value.schema_name;
       ])

and schema_field_spec_numeric_indexing_spec_of_yojson json : schema_field_spec_numeric_indexing_spec =
  let open Yojson.Safe.Util in
  {
    max_value = member "maxValue" json |> to_option to_number;
    min_value = member "minValue" json |> to_option to_number;
  }

and yojson_of_schema_field_spec_numeric_indexing_spec (value : schema_field_spec_numeric_indexing_spec) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("maxValue", (fun value -> `Float value) field)) value.max_value;
         Option.map (fun field -> ("minValue", (fun value -> `Float value) field)) value.min_value;
       ])

and schema_field_spec_of_yojson json : schema_field_spec =
  let open Yojson.Safe.Util in
  {
    display_name = member "displayName" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    field_id = member "fieldId" json |> to_option to_string;
    field_name = member "fieldName" json |> to_option to_string;
    field_type = member "fieldType" json |> to_option to_string;
    indexed = member "indexed" json |> to_option to_bool;
    kind = member "kind" json |> to_option to_string;
    multi_valued = member "multiValued" json |> to_option to_bool;
    numeric_indexing_spec = member "numericIndexingSpec" json |> to_option schema_field_spec_numeric_indexing_spec_of_yojson;
    read_access_type = member "readAccessType" json |> to_option to_string;
  }

and yojson_of_schema_field_spec (value : schema_field_spec) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("fieldId", (fun value -> `String value) field)) value.field_id;
         Option.map (fun field -> ("fieldName", (fun value -> `String value) field)) value.field_name;
         Option.map (fun field -> ("fieldType", (fun value -> `String value) field)) value.field_type;
         Option.map (fun field -> ("indexed", (fun value -> `Bool value) field)) value.indexed;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("multiValued", (fun value -> `Bool value) field)) value.multi_valued;
         Option.map (fun field -> ("numericIndexingSpec", yojson_of_schema_field_spec_numeric_indexing_spec field)) value.numeric_indexing_spec;
         Option.map (fun field -> ("readAccessType", (fun value -> `String value) field)) value.read_access_type;
       ])

and schemas_of_yojson json : schemas =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    schemas = member "schemas" json |> to_option (convert_each schema_of_yojson);
  }

and yojson_of_schemas (value : schemas) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("schemas", (fun items -> `List (List.map yojson_of_schema items)) field)) value.schemas;
       ])

and status_of_yojson json : status =
  let open Yojson.Safe.Util in
  {
    code = member "code" json |> to_option to_int;
    details = member "details" json |> to_option (convert_each (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json)));
    message = member "message" json |> to_option to_string;
  }

and yojson_of_status (value : status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("code", (fun value -> `Int value) field)) value.code;
         Option.map (fun field -> ("details", (fun items -> `List (List.map (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) items)) field)) value.details;
         Option.map (fun field -> ("message", (fun value -> `String value) field)) value.message;
       ])

and token_of_yojson json : token =
  let open Yojson.Safe.Util in
  {
    anonymous = member "anonymous" json |> to_option to_bool;
    client_id = member "clientId" json |> to_option to_string;
    display_text = member "displayText" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    native_app = member "nativeApp" json |> to_option to_bool;
    scopes = member "scopes" json |> to_option (convert_each to_string);
    user_key = member "userKey" json |> to_option to_string;
  }

and yojson_of_token (value : token) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("anonymous", (fun value -> `Bool value) field)) value.anonymous;
         Option.map (fun field -> ("clientId", (fun value -> `String value) field)) value.client_id;
         Option.map (fun field -> ("displayText", (fun value -> `String value) field)) value.display_text;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nativeApp", (fun value -> `Bool value) field)) value.native_app;
         Option.map (fun field -> ("scopes", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.scopes;
         Option.map (fun field -> ("userKey", (fun value -> `String value) field)) value.user_key;
       ])

and tokens_of_yojson json : tokens =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each token_of_yojson);
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_tokens (value : tokens) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_token items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and user_of_yojson json : user =
  let open Yojson.Safe.Util in
  {
    addresses = member "addresses" json |> to_option Fun.id;
    agreed_to_terms = member "agreedToTerms" json |> to_option to_bool;
    aliases = member "aliases" json |> to_option (convert_each to_string);
    archival_time = member "archivalTime" json |> to_option to_string;
    archived = member "archived" json |> to_option to_bool;
    change_password_at_next_login = member "changePasswordAtNextLogin" json |> to_option to_bool;
    creation_time = member "creationTime" json |> to_option to_string;
    custom_schemas = member "customSchemas" json |> to_option (fun json -> List.map (fun (key, value) -> (key, user_custom_properties_of_yojson value)) (to_assoc json));
    customer_id = member "customerId" json |> to_option to_string;
    deletion_time = member "deletionTime" json |> to_option to_string;
    emails = member "emails" json |> to_option Fun.id;
    etag = member "etag" json |> to_option to_string;
    external_ids = member "externalIds" json |> to_option Fun.id;
    gender = member "gender" json |> to_option Fun.id;
    guest_account_info = member "guestAccountInfo" json |> to_option guest_account_info_of_yojson;
    hash_function = member "hashFunction" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    ims = member "ims" json |> to_option Fun.id;
    include_in_global_address_list = member "includeInGlobalAddressList" json |> to_option to_bool;
    ip_whitelisted = member "ipWhitelisted" json |> to_option to_bool;
    is_admin = member "isAdmin" json |> to_option to_bool;
    is_delegated_admin = member "isDelegatedAdmin" json |> to_option to_bool;
    is_enforced_in2_sv = member "isEnforcedIn2Sv" json |> to_option to_bool;
    is_enrolled_in2_sv = member "isEnrolledIn2Sv" json |> to_option to_bool;
    is_guest_user = member "isGuestUser" json |> to_option to_bool;
    is_mailbox_setup = member "isMailboxSetup" json |> to_option to_bool;
    keywords = member "keywords" json |> to_option Fun.id;
    kind = member "kind" json |> to_option to_string;
    languages = member "languages" json |> to_option Fun.id;
    last_login_time = member "lastLoginTime" json |> to_option to_string;
    locations = member "locations" json |> to_option Fun.id;
    name = member "name" json |> to_option user_name_of_yojson;
    non_editable_aliases = member "nonEditableAliases" json |> to_option (convert_each to_string);
    notes = member "notes" json |> to_option Fun.id;
    org_unit_path = member "orgUnitPath" json |> to_option to_string;
    organizations = member "organizations" json |> to_option Fun.id;
    password = member "password" json |> to_option to_string;
    phones = member "phones" json |> to_option Fun.id;
    posix_accounts = member "posixAccounts" json |> to_option Fun.id;
    primary_email = member "primaryEmail" json |> to_option to_string;
    recovery_email = member "recoveryEmail" json |> to_option to_string;
    recovery_phone = member "recoveryPhone" json |> to_option to_string;
    relations = member "relations" json |> to_option Fun.id;
    ssh_public_keys = member "sshPublicKeys" json |> to_option Fun.id;
    suspended = member "suspended" json |> to_option to_bool;
    suspension_reason = member "suspensionReason" json |> to_option to_string;
    suspension_time = member "suspensionTime" json |> to_option to_string;
    thumbnail_photo_etag = member "thumbnailPhotoEtag" json |> to_option to_string;
    thumbnail_photo_url = member "thumbnailPhotoUrl" json |> to_option to_string;
    websites = member "websites" json |> to_option Fun.id;
  }

and yojson_of_user (value : user) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("addresses", Fun.id field)) value.addresses;
         Option.map (fun field -> ("agreedToTerms", (fun value -> `Bool value) field)) value.agreed_to_terms;
         Option.map (fun field -> ("aliases", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.aliases;
         Option.map (fun field -> ("archivalTime", (fun value -> `String value) field)) value.archival_time;
         Option.map (fun field -> ("archived", (fun value -> `Bool value) field)) value.archived;
         Option.map (fun field -> ("changePasswordAtNextLogin", (fun value -> `Bool value) field)) value.change_password_at_next_login;
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("customSchemas", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_user_custom_properties value)) members)) field)) value.custom_schemas;
         Option.map (fun field -> ("customerId", (fun value -> `String value) field)) value.customer_id;
         Option.map (fun field -> ("deletionTime", (fun value -> `String value) field)) value.deletion_time;
         Option.map (fun field -> ("emails", Fun.id field)) value.emails;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("externalIds", Fun.id field)) value.external_ids;
         Option.map (fun field -> ("gender", Fun.id field)) value.gender;
         Option.map (fun field -> ("guestAccountInfo", yojson_of_guest_account_info field)) value.guest_account_info;
         Option.map (fun field -> ("hashFunction", (fun value -> `String value) field)) value.hash_function;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("ims", Fun.id field)) value.ims;
         Option.map (fun field -> ("includeInGlobalAddressList", (fun value -> `Bool value) field)) value.include_in_global_address_list;
         Option.map (fun field -> ("ipWhitelisted", (fun value -> `Bool value) field)) value.ip_whitelisted;
         Option.map (fun field -> ("isAdmin", (fun value -> `Bool value) field)) value.is_admin;
         Option.map (fun field -> ("isDelegatedAdmin", (fun value -> `Bool value) field)) value.is_delegated_admin;
         Option.map (fun field -> ("isEnforcedIn2Sv", (fun value -> `Bool value) field)) value.is_enforced_in2_sv;
         Option.map (fun field -> ("isEnrolledIn2Sv", (fun value -> `Bool value) field)) value.is_enrolled_in2_sv;
         Option.map (fun field -> ("isGuestUser", (fun value -> `Bool value) field)) value.is_guest_user;
         Option.map (fun field -> ("isMailboxSetup", (fun value -> `Bool value) field)) value.is_mailbox_setup;
         Option.map (fun field -> ("keywords", Fun.id field)) value.keywords;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("languages", Fun.id field)) value.languages;
         Option.map (fun field -> ("lastLoginTime", (fun value -> `String value) field)) value.last_login_time;
         Option.map (fun field -> ("locations", Fun.id field)) value.locations;
         Option.map (fun field -> ("name", yojson_of_user_name field)) value.name;
         Option.map (fun field -> ("nonEditableAliases", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.non_editable_aliases;
         Option.map (fun field -> ("notes", Fun.id field)) value.notes;
         Option.map (fun field -> ("orgUnitPath", (fun value -> `String value) field)) value.org_unit_path;
         Option.map (fun field -> ("organizations", Fun.id field)) value.organizations;
         Option.map (fun field -> ("password", (fun value -> `String value) field)) value.password;
         Option.map (fun field -> ("phones", Fun.id field)) value.phones;
         Option.map (fun field -> ("posixAccounts", Fun.id field)) value.posix_accounts;
         Option.map (fun field -> ("primaryEmail", (fun value -> `String value) field)) value.primary_email;
         Option.map (fun field -> ("recoveryEmail", (fun value -> `String value) field)) value.recovery_email;
         Option.map (fun field -> ("recoveryPhone", (fun value -> `String value) field)) value.recovery_phone;
         Option.map (fun field -> ("relations", Fun.id field)) value.relations;
         Option.map (fun field -> ("sshPublicKeys", Fun.id field)) value.ssh_public_keys;
         Option.map (fun field -> ("suspended", (fun value -> `Bool value) field)) value.suspended;
         Option.map (fun field -> ("suspensionReason", (fun value -> `String value) field)) value.suspension_reason;
         Option.map (fun field -> ("suspensionTime", (fun value -> `String value) field)) value.suspension_time;
         Option.map (fun field -> ("thumbnailPhotoEtag", (fun value -> `String value) field)) value.thumbnail_photo_etag;
         Option.map (fun field -> ("thumbnailPhotoUrl", (fun value -> `String value) field)) value.thumbnail_photo_url;
         Option.map (fun field -> ("websites", Fun.id field)) value.websites;
       ])

and user_about_of_yojson json : user_about =
  let open Yojson.Safe.Util in
  {
    content_type = member "contentType" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_user_about (value : user_about) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("contentType", (fun value -> `String value) field)) value.content_type;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and user_address_of_yojson json : user_address =
  let open Yojson.Safe.Util in
  {
    country = member "country" json |> to_option to_string;
    country_code = member "countryCode" json |> to_option to_string;
    custom_type = member "customType" json |> to_option to_string;
    extended_address = member "extendedAddress" json |> to_option to_string;
    formatted = member "formatted" json |> to_option to_string;
    locality = member "locality" json |> to_option to_string;
    po_box = member "poBox" json |> to_option to_string;
    postal_code = member "postalCode" json |> to_option to_string;
    primary = member "primary" json |> to_option to_bool;
    region = member "region" json |> to_option to_string;
    source_is_structured = member "sourceIsStructured" json |> to_option to_bool;
    street_address = member "streetAddress" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_user_address (value : user_address) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("country", (fun value -> `String value) field)) value.country;
         Option.map (fun field -> ("countryCode", (fun value -> `String value) field)) value.country_code;
         Option.map (fun field -> ("customType", (fun value -> `String value) field)) value.custom_type;
         Option.map (fun field -> ("extendedAddress", (fun value -> `String value) field)) value.extended_address;
         Option.map (fun field -> ("formatted", (fun value -> `String value) field)) value.formatted;
         Option.map (fun field -> ("locality", (fun value -> `String value) field)) value.locality;
         Option.map (fun field -> ("poBox", (fun value -> `String value) field)) value.po_box;
         Option.map (fun field -> ("postalCode", (fun value -> `String value) field)) value.postal_code;
         Option.map (fun field -> ("primary", (fun value -> `Bool value) field)) value.primary;
         Option.map (fun field -> ("region", (fun value -> `String value) field)) value.region;
         Option.map (fun field -> ("sourceIsStructured", (fun value -> `Bool value) field)) value.source_is_structured;
         Option.map (fun field -> ("streetAddress", (fun value -> `String value) field)) value.street_address;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and user_alias_of_yojson json : user_alias =
  let open Yojson.Safe.Util in
  {
    alias = member "alias" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    primary_email = member "primaryEmail" json |> to_option to_string;
  }

and yojson_of_user_alias (value : user_alias) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("alias", (fun value -> `String value) field)) value.alias;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("primaryEmail", (fun value -> `String value) field)) value.primary_email;
       ])

and user_custom_properties_of_yojson json : user_custom_properties =
  let open Yojson.Safe.Util in
  (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json)) json

and yojson_of_user_custom_properties (value : user_custom_properties) : Yojson.Safe.t = (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) value

and user_email_public_key_encryption_certificates_of_yojson json : user_email_public_key_encryption_certificates =
  let open Yojson.Safe.Util in
  {
    certificate = member "certificate" json |> to_option to_string;
    is_default = member "is_default" json |> to_option to_bool;
    state = member "state" json |> to_option to_string;
  }

and yojson_of_user_email_public_key_encryption_certificates (value : user_email_public_key_encryption_certificates) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("certificate", (fun value -> `String value) field)) value.certificate;
         Option.map (fun field -> ("is_default", (fun value -> `Bool value) field)) value.is_default;
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
       ])

and user_email_of_yojson json : user_email =
  let open Yojson.Safe.Util in
  {
    address = member "address" json |> to_option to_string;
    custom_type = member "customType" json |> to_option to_string;
    primary = member "primary" json |> to_option to_bool;
    public_key_encryption_certificates = member "public_key_encryption_certificates" json |> to_option user_email_public_key_encryption_certificates_of_yojson;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_user_email (value : user_email) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("address", (fun value -> `String value) field)) value.address;
         Option.map (fun field -> ("customType", (fun value -> `String value) field)) value.custom_type;
         Option.map (fun field -> ("primary", (fun value -> `Bool value) field)) value.primary;
         Option.map (fun field -> ("public_key_encryption_certificates", yojson_of_user_email_public_key_encryption_certificates field)) value.public_key_encryption_certificates;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and user_external_id_of_yojson json : user_external_id =
  let open Yojson.Safe.Util in
  {
    custom_type = member "customType" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_user_external_id (value : user_external_id) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customType", (fun value -> `String value) field)) value.custom_type;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and user_gender_of_yojson json : user_gender =
  let open Yojson.Safe.Util in
  {
    address_me_as = member "addressMeAs" json |> to_option to_string;
    custom_gender = member "customGender" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_user_gender (value : user_gender) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("addressMeAs", (fun value -> `String value) field)) value.address_me_as;
         Option.map (fun field -> ("customGender", (fun value -> `String value) field)) value.custom_gender;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and user_im_of_yojson json : user_im =
  let open Yojson.Safe.Util in
  {
    custom_protocol = member "customProtocol" json |> to_option to_string;
    custom_type = member "customType" json |> to_option to_string;
    im = member "im" json |> to_option to_string;
    primary = member "primary" json |> to_option to_bool;
    protocol = member "protocol" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_user_im (value : user_im) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customProtocol", (fun value -> `String value) field)) value.custom_protocol;
         Option.map (fun field -> ("customType", (fun value -> `String value) field)) value.custom_type;
         Option.map (fun field -> ("im", (fun value -> `String value) field)) value.im;
         Option.map (fun field -> ("primary", (fun value -> `Bool value) field)) value.primary;
         Option.map (fun field -> ("protocol", (fun value -> `String value) field)) value.protocol;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and user_keyword_of_yojson json : user_keyword =
  let open Yojson.Safe.Util in
  {
    custom_type = member "customType" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_user_keyword (value : user_keyword) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customType", (fun value -> `String value) field)) value.custom_type;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and user_language_of_yojson json : user_language =
  let open Yojson.Safe.Util in
  {
    custom_language = member "customLanguage" json |> to_option to_string;
    language_code = member "languageCode" json |> to_option to_string;
    preference = member "preference" json |> to_option to_string;
  }

and yojson_of_user_language (value : user_language) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customLanguage", (fun value -> `String value) field)) value.custom_language;
         Option.map (fun field -> ("languageCode", (fun value -> `String value) field)) value.language_code;
         Option.map (fun field -> ("preference", (fun value -> `String value) field)) value.preference;
       ])

and user_location_of_yojson json : user_location =
  let open Yojson.Safe.Util in
  {
    area = member "area" json |> to_option to_string;
    building_id = member "buildingId" json |> to_option to_string;
    custom_type = member "customType" json |> to_option to_string;
    desk_code = member "deskCode" json |> to_option to_string;
    floor_name = member "floorName" json |> to_option to_string;
    floor_section = member "floorSection" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_user_location (value : user_location) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("area", (fun value -> `String value) field)) value.area;
         Option.map (fun field -> ("buildingId", (fun value -> `String value) field)) value.building_id;
         Option.map (fun field -> ("customType", (fun value -> `String value) field)) value.custom_type;
         Option.map (fun field -> ("deskCode", (fun value -> `String value) field)) value.desk_code;
         Option.map (fun field -> ("floorName", (fun value -> `String value) field)) value.floor_name;
         Option.map (fun field -> ("floorSection", (fun value -> `String value) field)) value.floor_section;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and user_make_admin_of_yojson json : user_make_admin =
  let open Yojson.Safe.Util in
  {
    status = member "status" json |> to_option to_bool;
  }

and yojson_of_user_make_admin (value : user_make_admin) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("status", (fun value -> `Bool value) field)) value.status;
       ])

and user_name_of_yojson json : user_name =
  let open Yojson.Safe.Util in
  {
    display_name = member "displayName" json |> to_option to_string;
    family_name = member "familyName" json |> to_option to_string;
    full_name = member "fullName" json |> to_option to_string;
    given_name = member "givenName" json |> to_option to_string;
  }

and yojson_of_user_name (value : user_name) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("familyName", (fun value -> `String value) field)) value.family_name;
         Option.map (fun field -> ("fullName", (fun value -> `String value) field)) value.full_name;
         Option.map (fun field -> ("givenName", (fun value -> `String value) field)) value.given_name;
       ])

and user_organization_of_yojson json : user_organization =
  let open Yojson.Safe.Util in
  {
    cost_center = member "costCenter" json |> to_option to_string;
    custom_type = member "customType" json |> to_option to_string;
    department = member "department" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    domain = member "domain" json |> to_option to_string;
    full_time_equivalent = member "fullTimeEquivalent" json |> to_option to_int;
    location = member "location" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    primary = member "primary" json |> to_option to_bool;
    symbol = member "symbol" json |> to_option to_string;
    title = member "title" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_user_organization (value : user_organization) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("costCenter", (fun value -> `String value) field)) value.cost_center;
         Option.map (fun field -> ("customType", (fun value -> `String value) field)) value.custom_type;
         Option.map (fun field -> ("department", (fun value -> `String value) field)) value.department;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("domain", (fun value -> `String value) field)) value.domain;
         Option.map (fun field -> ("fullTimeEquivalent", (fun value -> `Int value) field)) value.full_time_equivalent;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("primary", (fun value -> `Bool value) field)) value.primary;
         Option.map (fun field -> ("symbol", (fun value -> `String value) field)) value.symbol;
         Option.map (fun field -> ("title", (fun value -> `String value) field)) value.title;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and user_phone_of_yojson json : user_phone =
  let open Yojson.Safe.Util in
  {
    custom_type = member "customType" json |> to_option to_string;
    primary = member "primary" json |> to_option to_bool;
    type_ = member "type" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_user_phone (value : user_phone) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customType", (fun value -> `String value) field)) value.custom_type;
         Option.map (fun field -> ("primary", (fun value -> `Bool value) field)) value.primary;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and user_photo_of_yojson json : user_photo =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    height = member "height" json |> to_option to_int;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    mime_type = member "mimeType" json |> to_option to_string;
    photo_data = member "photoData" json |> to_option to_string;
    primary_email = member "primaryEmail" json |> to_option to_string;
    width = member "width" json |> to_option to_int;
  }

and yojson_of_user_photo (value : user_photo) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("height", (fun value -> `Int value) field)) value.height;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("mimeType", (fun value -> `String value) field)) value.mime_type;
         Option.map (fun field -> ("photoData", (fun value -> `String value) field)) value.photo_data;
         Option.map (fun field -> ("primaryEmail", (fun value -> `String value) field)) value.primary_email;
         Option.map (fun field -> ("width", (fun value -> `Int value) field)) value.width;
       ])

and user_posix_account_of_yojson json : user_posix_account =
  let open Yojson.Safe.Util in
  {
    account_id = member "accountId" json |> to_option to_string;
    gecos = member "gecos" json |> to_option to_string;
    gid = member "gid" json |> to_option to_string;
    home_directory = member "homeDirectory" json |> to_option to_string;
    operating_system_type = member "operatingSystemType" json |> to_option to_string;
    primary = member "primary" json |> to_option to_bool;
    shell = member "shell" json |> to_option to_string;
    system_id = member "systemId" json |> to_option to_string;
    uid = member "uid" json |> to_option to_string;
    username = member "username" json |> to_option to_string;
  }

and yojson_of_user_posix_account (value : user_posix_account) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("accountId", (fun value -> `String value) field)) value.account_id;
         Option.map (fun field -> ("gecos", (fun value -> `String value) field)) value.gecos;
         Option.map (fun field -> ("gid", (fun value -> `String value) field)) value.gid;
         Option.map (fun field -> ("homeDirectory", (fun value -> `String value) field)) value.home_directory;
         Option.map (fun field -> ("operatingSystemType", (fun value -> `String value) field)) value.operating_system_type;
         Option.map (fun field -> ("primary", (fun value -> `Bool value) field)) value.primary;
         Option.map (fun field -> ("shell", (fun value -> `String value) field)) value.shell;
         Option.map (fun field -> ("systemId", (fun value -> `String value) field)) value.system_id;
         Option.map (fun field -> ("uid", (fun value -> `String value) field)) value.uid;
         Option.map (fun field -> ("username", (fun value -> `String value) field)) value.username;
       ])

and user_relation_of_yojson json : user_relation =
  let open Yojson.Safe.Util in
  {
    custom_type = member "customType" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_user_relation (value : user_relation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customType", (fun value -> `String value) field)) value.custom_type;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and user_ssh_public_key_of_yojson json : user_ssh_public_key =
  let open Yojson.Safe.Util in
  {
    expiration_time_usec = member "expirationTimeUsec" json |> to_option to_string;
    fingerprint = member "fingerprint" json |> to_option to_string;
    key = member "key" json |> to_option to_string;
  }

and yojson_of_user_ssh_public_key (value : user_ssh_public_key) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("expirationTimeUsec", (fun value -> `String value) field)) value.expiration_time_usec;
         Option.map (fun field -> ("fingerprint", (fun value -> `String value) field)) value.fingerprint;
         Option.map (fun field -> ("key", (fun value -> `String value) field)) value.key;
       ])

and user_undelete_of_yojson json : user_undelete =
  let open Yojson.Safe.Util in
  {
    org_unit_path = member "orgUnitPath" json |> to_option to_string;
  }

and yojson_of_user_undelete (value : user_undelete) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("orgUnitPath", (fun value -> `String value) field)) value.org_unit_path;
       ])

and user_website_of_yojson json : user_website =
  let open Yojson.Safe.Util in
  {
    custom_type = member "customType" json |> to_option to_string;
    primary = member "primary" json |> to_option to_bool;
    type_ = member "type" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_user_website (value : user_website) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customType", (fun value -> `String value) field)) value.custom_type;
         Option.map (fun field -> ("primary", (fun value -> `Bool value) field)) value.primary;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and users_of_yojson json : users =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    trigger_event = member "trigger_event" json |> to_option to_string;
    users = member "users" json |> to_option (convert_each user_of_yojson);
  }

and yojson_of_users (value : users) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("trigger_event", (fun value -> `String value) field)) value.trigger_event;
         Option.map (fun field -> ("users", (fun items -> `List (List.map yojson_of_user items)) field)) value.users;
       ])

and verification_code_of_yojson json : verification_code =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    user_id = member "userId" json |> to_option to_string;
    verification_code = member "verificationCode" json |> to_option to_string;
  }

and yojson_of_verification_code (value : verification_code) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("userId", (fun value -> `String value) field)) value.user_id;
         Option.map (fun field -> ("verificationCode", (fun value -> `String value) field)) value.verification_code;
       ])

and verification_codes_of_yojson json : verification_codes =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    items = member "items" json |> to_option (convert_each verification_code_of_yojson);
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_verification_codes (value : verification_codes) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_verification_code items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

let make_alias ?alias ?etag ?id ?kind ?primary_email () : alias = { alias; etag; id; kind; primary_email }

let make_aliases ?aliases ?etag ?kind () : aliases = { aliases; etag; kind }

let make_asp ?code_id ?creation_time ?etag ?kind ?last_time_used ?name ?user_key () : asp = { code_id; creation_time; etag; kind; last_time_used; name; user_key }

let make_asps ?etag ?items ?kind () : asps = { etag; items; kind }

let make_auxiliary_message ?auxiliary_message ?field_mask ?severity () : auxiliary_message = { auxiliary_message; field_mask; severity }

let make_backlight_info ?brightness ?max_brightness ?path () : backlight_info = { brightness; max_brightness; path }

let make_batch_change_chrome_os_device_status_request ?change_chrome_os_device_status_action ?deprovision_reason ?device_ids () : batch_change_chrome_os_device_status_request = { change_chrome_os_device_status_action; deprovision_reason; device_ids }

let make_batch_change_chrome_os_device_status_response ?change_chrome_os_device_status_results () : batch_change_chrome_os_device_status_response = { change_chrome_os_device_status_results }

let make_batch_create_print_servers_request ?requests () : batch_create_print_servers_request = { requests }

let make_batch_create_print_servers_response ?failures ?print_servers () : batch_create_print_servers_response = { failures; print_servers }

let make_batch_create_printers_request ?requests () : batch_create_printers_request = { requests }

let make_batch_create_printers_response ?failures ?printers () : batch_create_printers_response = { failures; printers }

let make_batch_delete_print_servers_request ?print_server_ids () : batch_delete_print_servers_request = { print_server_ids }

let make_batch_delete_print_servers_response ?failed_print_servers ?print_server_ids () : batch_delete_print_servers_response = { failed_print_servers; print_server_ids }

let make_batch_delete_printers_request ?printer_ids () : batch_delete_printers_request = { printer_ids }

let make_batch_delete_printers_response ?failed_printers ?printer_ids () : batch_delete_printers_response = { failed_printers; printer_ids }

let make_bluetooth_adapter_info ?address ?num_connected_devices () : bluetooth_adapter_info = { address; num_connected_devices }

let make_building ?address ?building_id ?building_name ?coordinates ?description ?etags ?floor_names ?kind () : building = { address; building_id; building_name; coordinates; description; etags; floor_names; kind }

let make_building_address ?address_lines ?administrative_area ?language_code ?locality ?postal_code ?region_code ?sublocality () : building_address = { address_lines; administrative_area; language_code; locality; postal_code; region_code; sublocality }

let make_building_coordinates ?latitude ?longitude () : building_coordinates = { latitude; longitude }

let make_buildings ?buildings ?etag ?kind ?next_page_token () : buildings = { buildings; etag; kind; next_page_token }

let make_byte_usage ?capacity_bytes ?used_bytes () : byte_usage = { capacity_bytes; used_bytes }

let make_calendar_resource ?building_id ?capacity ?etags ?feature_instances ?floor_name ?floor_section ?generated_resource_name ?kind ?resource_category ?resource_description ?resource_email ?resource_id ?resource_name ?resource_type ?user_visible_description () : calendar_resource = { building_id; capacity; etags; feature_instances; floor_name; floor_section; generated_resource_name; kind; resource_category; resource_description; resource_email; resource_id; resource_name; resource_type; user_visible_description }

let make_calendar_resources ?etag ?items ?kind ?next_page_token () : calendar_resources = { etag; items; kind; next_page_token }

let make_change_chrome_os_device_status_result ?device_id ?error ?response () : change_chrome_os_device_status_result = { device_id; error; response }

let make_channel ?address ?expiration ?id ?kind ?params ?payload ?resource_id ?resource_uri ?token ?type_ () : channel = { address; expiration; id; kind; params; payload; resource_id; resource_uri; token; type_ }

let make_chrome_os_device_active_time_ranges_item ?active_time ?date () : chrome_os_device_active_time_ranges_item = { active_time; date }

let make_chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item ?display_name ?session_duration () : chrome_os_device_cpu_info_item_logical_cpus_item_c_states_item = { display_name; session_duration }

let make_chrome_os_device_cpu_info_item_logical_cpus_item ?c_states ?current_scaling_frequency_khz ?idle_duration ?max_scaling_frequency_khz () : chrome_os_device_cpu_info_item_logical_cpus_item = { c_states; current_scaling_frequency_khz; idle_duration; max_scaling_frequency_khz }

let make_chrome_os_device_cpu_info_item ?architecture ?logical_cpus ?max_clock_speed_khz ?model () : chrome_os_device_cpu_info_item = { architecture; logical_cpus; max_clock_speed_khz; model }

let make_chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item ?label ?temperature () : chrome_os_device_cpu_status_reports_item_cpu_temperature_info_item = { label; temperature }

let make_chrome_os_device_cpu_status_reports_item ?cpu_temperature_info ?cpu_utilization_percentage_info ?report_time () : chrome_os_device_cpu_status_reports_item = { cpu_temperature_info; cpu_utilization_percentage_info; report_time }

let make_chrome_os_device_device_files_item ?create_time ?download_url ?name ?type_ () : chrome_os_device_device_files_item = { create_time; download_url; name; type_ }

let make_chrome_os_device_disk_volume_reports_item_volume_info_item ?storage_free ?storage_total ?volume_id () : chrome_os_device_disk_volume_reports_item_volume_info_item = { storage_free; storage_total; volume_id }

let make_chrome_os_device_disk_volume_reports_item ?volume_info () : chrome_os_device_disk_volume_reports_item = { volume_info }

let make_chrome_os_device_last_known_network_item ?ip_address ?wan_ip_address () : chrome_os_device_last_known_network_item = { ip_address; wan_ip_address }

let make_chrome_os_device_recent_users_item ?email ?type_ () : chrome_os_device_recent_users_item = { email; type_ }

let make_chrome_os_device_screenshot_files_item ?create_time ?download_url ?name ?type_ () : chrome_os_device_screenshot_files_item = { create_time; download_url; name; type_ }

let make_chrome_os_device_system_ram_free_reports_item ?report_time ?system_ram_free_info () : chrome_os_device_system_ram_free_reports_item = { report_time; system_ram_free_info }

let make_chrome_os_device_tpm_version_info ?family ?firmware_version ?manufacturer ?spec_level ?tpm_model ?vendor_specific () : chrome_os_device_tpm_version_info = { family; firmware_version; manufacturer; spec_level; tpm_model; vendor_specific }

let make_chrome_os_device ?active_time_ranges ?annotated_asset_id ?annotated_location ?annotated_user ?auto_update_expiration ?auto_update_through ?backlight_info ?bluetooth_adapter_info ?boot_mode ?chrome_os_type ?cpu_info ?cpu_status_reports ?deprovision_reason ?device_files ?device_id ?device_license_type ?disk_space_usage ?disk_volume_reports ?dock_mac_address ?etag ?ethernet_mac_address ?ethernet_mac_address0 ?extended_support_eligible ?extended_support_enabled ?extended_support_start ?fan_info ?firmware_version ?first_enrollment_time ?kind ?last_deprovision_timestamp ?last_enrollment_time ?last_known_network ?last_sync ?mac_address ?manufacture_date ?meid ?model ?notes ?order_number ?org_unit_id ?org_unit_path ?os_update_status ?os_version ?os_version_compliance ?platform_version ?recent_users ?screenshot_files ?serial_number ?status ?support_end_date ?system_ram_free_reports ?system_ram_total ?tpm_version_info ?will_auto_renew () : chrome_os_device = { active_time_ranges; annotated_asset_id; annotated_location; annotated_user; auto_update_expiration; auto_update_through; backlight_info; bluetooth_adapter_info; boot_mode; chrome_os_type; cpu_info; cpu_status_reports; deprovision_reason; device_files; device_id; device_license_type; disk_space_usage; disk_volume_reports; dock_mac_address; etag; ethernet_mac_address; ethernet_mac_address0; extended_support_eligible; extended_support_enabled; extended_support_start; fan_info; firmware_version; first_enrollment_time; kind; last_deprovision_timestamp; last_enrollment_time; last_known_network; last_sync; mac_address; manufacture_date; meid; model; notes; order_number; org_unit_id; org_unit_path; os_update_status; os_version; os_version_compliance; platform_version; recent_users; screenshot_files; serial_number; status; support_end_date; system_ram_free_reports; system_ram_total; tpm_version_info; will_auto_renew }

let make_chrome_os_device_action ?action ?deprovision_reason () : chrome_os_device_action = { action; deprovision_reason }

let make_chrome_os_devices ?chromeosdevices ?etag ?kind ?next_page_token () : chrome_os_devices = { chromeosdevices; etag; kind; next_page_token }

let make_chrome_os_move_devices_to_ou ?device_ids () : chrome_os_move_devices_to_ou = { device_ids }

let make_count_chrome_os_devices_response ?count () : count_chrome_os_devices_response = { count }

let make_create_print_server_request ?parent ?print_server () : create_print_server_request = { parent; print_server }

let make_create_printer_request ?parent ?printer () : create_printer_request = { parent; printer }

let make_customer ?alternate_email ?customer_creation_time ?customer_domain ?etag ?id ?kind ?language ?phone_number ?postal_address () : customer = { alternate_email; customer_creation_time; customer_domain; etag; id; kind; language; phone_number; postal_address }

let make_customer_postal_address ?address_line1 ?address_line2 ?address_line3 ?contact_name ?country_code ?locality ?organization_name ?postal_code ?region () : customer_postal_address = { address_line1; address_line2; address_line3; contact_name; country_code; locality; organization_name; postal_code; region }

let make_directory_chromeosdevices_command ?command_expire_time ?command_id ?command_result ?issue_time ?payload ?state ?type_ () : directory_chromeosdevices_command = { command_expire_time; command_id; command_result; issue_time; payload; state; type_ }

let make_directory_chromeosdevices_command_result ?command_result_payload ?error_message ?execute_time ?result () : directory_chromeosdevices_command_result = { command_result_payload; error_message; execute_time; result }

let make_directory_chromeosdevices_issue_command_request ?command_type ?payload () : directory_chromeosdevices_issue_command_request = { command_type; payload }

let make_directory_chromeosdevices_issue_command_response ?command_id () : directory_chromeosdevices_issue_command_response = { command_id }

let make_directory_users_create_guest_request ?customer ?primary_guest_email () : directory_users_create_guest_request = { customer; primary_guest_email }

let make_domain_alias ?creation_time ?domain_alias_name ?etag ?kind ?parent_domain_name ?verified () : domain_alias = { creation_time; domain_alias_name; etag; kind; parent_domain_name; verified }

let make_domain_aliases ?domain_aliases ?etag ?kind () : domain_aliases = { domain_aliases; etag; kind }

let make_domains ?creation_time ?domain_aliases ?domain_name ?etag ?is_primary ?kind ?verified () : domains = { creation_time; domain_aliases; domain_name; etag; is_primary; kind; verified }

let make_domains2 ?domains ?etag ?kind () : domains2 = { domains; etag; kind }

let make_expiration_details ?expire_time () : expiration_details = { expire_time }

let make_external_id ?id ?namespace () : external_id = { id; namespace }

let make_failure_info ?error_code ?error_message ?printer ?printer_id () : failure_info = { error_code; error_message; printer; printer_id }

let make_fan_info ?speed_rpm () : fan_info = { speed_rpm }

let make_feature ?etags ?kind ?name () : feature = { etags; kind; name }

let make_feature_instance ?feature () : feature_instance = { feature }

let make_feature_rename ?new_name () : feature_rename = { new_name }

let make_features ?etag ?features ?kind ?next_page_token () : features = { etag; features; kind; next_page_token }

let make_group ?admin_created ?aliases ?description ?direct_members_count ?email ?etag ?external_ids ?id ?kind ?name ?non_editable_aliases () : group = { admin_created; aliases; description; direct_members_count; email; etag; external_ids; id; kind; name; non_editable_aliases }

let make_group_alias ?alias ?etag ?id ?kind ?primary_email () : group_alias = { alias; etag; id; kind; primary_email }

let make_groups ?etag ?groups ?kind ?next_page_token () : groups = { etag; groups; kind; next_page_token }

let make_guest_account_info ?primary_guest_email () : guest_account_info = { primary_guest_email }

let make_list_print_servers_response ?next_page_token ?print_servers () : list_print_servers_response = { next_page_token; print_servers }

let make_list_printer_models_response ?next_page_token ?printer_models () : list_printer_models_response = { next_page_token; printer_models }

let make_list_printers_response ?next_page_token ?printers () : list_printers_response = { next_page_token; printers }

let make_member ?delivery_settings ?email ?etag ?id ?kind ?role ?status ?type_ () : member = { delivery_settings; email; etag; id; kind; role; status; type_ }

let make_members ?etag ?kind ?members ?next_page_token () : members = { etag; kind; members; next_page_token }

let make_members_has_member ?is_member () : members_has_member = { is_member }

let make_mobile_device_applications_item ?display_name ?package_name ?permission ?version_code ?version_name () : mobile_device_applications_item = { display_name; package_name; permission; version_code; version_name }

let make_mobile_device ?adb_status ?applications ?baseband_version ?bootloader_version ?brand ?build_number ?default_language ?developer_options_status ?device_compromised_status ?device_id ?device_password_status ?email ?encryption_status ?etag ?first_sync ?hardware ?hardware_id ?imei ?kernel_version ?kind ?last_sync ?managed_account_is_on_owner_profile ?manufacturer ?meid ?model ?name ?network_operator ?os ?other_accounts_info ?privilege ?release_version ?resource_id ?security_patch_level ?serial_number ?status ?supports_work_profile ?type_ ?unknown_sources_status ?user_agent ?wifi_mac_address () : mobile_device = { adb_status; applications; baseband_version; bootloader_version; brand; build_number; default_language; developer_options_status; device_compromised_status; device_id; device_password_status; email; encryption_status; etag; first_sync; hardware; hardware_id; imei; kernel_version; kind; last_sync; managed_account_is_on_owner_profile; manufacturer; meid; model; name; network_operator; os; other_accounts_info; privilege; release_version; resource_id; security_patch_level; serial_number; status; supports_work_profile; type_; unknown_sources_status; user_agent; wifi_mac_address }

let make_mobile_device_action ?action () : mobile_device_action = { action }

let make_mobile_devices ?etag ?kind ?mobiledevices ?next_page_token () : mobile_devices = { etag; kind; mobiledevices; next_page_token }

let make_org_unit ?block_inheritance ?description ?etag ?kind ?name ?org_unit_id ?org_unit_path ?parent_org_unit_id ?parent_org_unit_path () : org_unit = { block_inheritance; description; etag; kind; name; org_unit_id; org_unit_path; parent_org_unit_id; parent_org_unit_path }

let make_org_units ?etag ?kind ?organization_units () : org_units = { etag; kind; organization_units }

let make_os_update_status ?reboot_time ?state ?target_kiosk_app_version ?target_os_version ?update_check_time ?update_time () : os_update_status = { reboot_time; state; target_kiosk_app_version; target_os_version; update_check_time; update_time }

let make_print_server ?create_time ?description ?display_name ?id ?name ?org_unit_id ?uri () : print_server = { create_time; description; display_name; id; name; org_unit_id; uri }

let make_print_server_failure_info ?error_code ?error_message ?print_server ?print_server_id () : print_server_failure_info = { error_code; error_message; print_server; print_server_id }

let make_printer ?auxiliary_messages ?create_time ?description ?display_name ?id ?make_and_model ?name ?org_unit_id ?uri ?use_driverless_config () : printer = { auxiliary_messages; create_time; description; display_name; id; make_and_model; name; org_unit_id; uri; use_driverless_config }

let make_printer_model ?display_name ?make_and_model ?manufacturer () : printer_model = { display_name; make_and_model; manufacturer }

let make_privilege ?child_privileges ?etag ?is_ou_scopable ?kind ?privilege_name ?service_id ?service_name () : privilege = { child_privileges; etag; is_ou_scopable; kind; privilege_name; service_id; service_name }

let make_privileges ?etag ?items ?kind () : privileges = { etag; items; kind }

let make_role_role_privileges_item ?privilege_name ?service_id () : role_role_privileges_item = { privilege_name; service_id }

let make_role ?etag ?is_super_admin_role ?is_system_role ?kind ?role_description ?role_id ?role_name ?role_privileges () : role = { etag; is_super_admin_role; is_system_role; kind; role_description; role_id; role_name; role_privileges }

let make_role_assignment ?assigned_to ?assignee_type ?condition ?etag ?expiration_details ?kind ?org_unit_id ?role_assignment_id ?role_id ?scope_type () : role_assignment = { assigned_to; assignee_type; condition; etag; expiration_details; kind; org_unit_id; role_assignment_id; role_id; scope_type }

let make_role_assignments ?etag ?items ?kind ?next_page_token () : role_assignments = { etag; items; kind; next_page_token }

let make_roles ?etag ?items ?kind ?next_page_token () : roles = { etag; items; kind; next_page_token }

let make_schema ?display_name ?etag ?fields ?kind ?schema_id ?schema_name () : schema = { display_name; etag; fields; kind; schema_id; schema_name }

let make_schema_field_spec_numeric_indexing_spec ?max_value ?min_value () : schema_field_spec_numeric_indexing_spec = { max_value; min_value }

let make_schema_field_spec ?display_name ?etag ?field_id ?field_name ?field_type ?indexed ?kind ?multi_valued ?numeric_indexing_spec ?read_access_type () : schema_field_spec = { display_name; etag; field_id; field_name; field_type; indexed; kind; multi_valued; numeric_indexing_spec; read_access_type }

let make_schemas ?etag ?kind ?schemas () : schemas = { etag; kind; schemas }

let make_status ?code ?details ?message () : status = { code; details; message }

let make_token ?anonymous ?client_id ?display_text ?etag ?kind ?native_app ?scopes ?user_key () : token = { anonymous; client_id; display_text; etag; kind; native_app; scopes; user_key }

let make_tokens ?etag ?items ?kind () : tokens = { etag; items; kind }

let make_user ?addresses ?agreed_to_terms ?aliases ?archival_time ?archived ?change_password_at_next_login ?creation_time ?custom_schemas ?customer_id ?deletion_time ?emails ?etag ?external_ids ?gender ?guest_account_info ?hash_function ?id ?ims ?include_in_global_address_list ?ip_whitelisted ?is_admin ?is_delegated_admin ?is_enforced_in2_sv ?is_enrolled_in2_sv ?is_guest_user ?is_mailbox_setup ?keywords ?kind ?languages ?last_login_time ?locations ?name ?non_editable_aliases ?notes ?org_unit_path ?organizations ?password ?phones ?posix_accounts ?primary_email ?recovery_email ?recovery_phone ?relations ?ssh_public_keys ?suspended ?suspension_reason ?suspension_time ?thumbnail_photo_etag ?thumbnail_photo_url ?websites () : user = { addresses; agreed_to_terms; aliases; archival_time; archived; change_password_at_next_login; creation_time; custom_schemas; customer_id; deletion_time; emails; etag; external_ids; gender; guest_account_info; hash_function; id; ims; include_in_global_address_list; ip_whitelisted; is_admin; is_delegated_admin; is_enforced_in2_sv; is_enrolled_in2_sv; is_guest_user; is_mailbox_setup; keywords; kind; languages; last_login_time; locations; name; non_editable_aliases; notes; org_unit_path; organizations; password; phones; posix_accounts; primary_email; recovery_email; recovery_phone; relations; ssh_public_keys; suspended; suspension_reason; suspension_time; thumbnail_photo_etag; thumbnail_photo_url; websites }

let make_user_about ?content_type ?value () : user_about = { content_type; value }

let make_user_address ?country ?country_code ?custom_type ?extended_address ?formatted ?locality ?po_box ?postal_code ?primary ?region ?source_is_structured ?street_address ?type_ () : user_address = { country; country_code; custom_type; extended_address; formatted; locality; po_box; postal_code; primary; region; source_is_structured; street_address; type_ }

let make_user_alias ?alias ?etag ?id ?kind ?primary_email () : user_alias = { alias; etag; id; kind; primary_email }

let make_user_email_public_key_encryption_certificates ?certificate ?is_default ?state () : user_email_public_key_encryption_certificates = { certificate; is_default; state }

let make_user_email ?address ?custom_type ?primary ?public_key_encryption_certificates ?type_ () : user_email = { address; custom_type; primary; public_key_encryption_certificates; type_ }

let make_user_external_id ?custom_type ?type_ ?value () : user_external_id = { custom_type; type_; value }

let make_user_gender ?address_me_as ?custom_gender ?type_ () : user_gender = { address_me_as; custom_gender; type_ }

let make_user_im ?custom_protocol ?custom_type ?im ?primary ?protocol ?type_ () : user_im = { custom_protocol; custom_type; im; primary; protocol; type_ }

let make_user_keyword ?custom_type ?type_ ?value () : user_keyword = { custom_type; type_; value }

let make_user_language ?custom_language ?language_code ?preference () : user_language = { custom_language; language_code; preference }

let make_user_location ?area ?building_id ?custom_type ?desk_code ?floor_name ?floor_section ?type_ () : user_location = { area; building_id; custom_type; desk_code; floor_name; floor_section; type_ }

let make_user_make_admin ?status () : user_make_admin = { status }

let make_user_name ?display_name ?family_name ?full_name ?given_name () : user_name = { display_name; family_name; full_name; given_name }

let make_user_organization ?cost_center ?custom_type ?department ?description ?domain ?full_time_equivalent ?location ?name ?primary ?symbol ?title ?type_ () : user_organization = { cost_center; custom_type; department; description; domain; full_time_equivalent; location; name; primary; symbol; title; type_ }

let make_user_phone ?custom_type ?primary ?type_ ?value () : user_phone = { custom_type; primary; type_; value }

let make_user_photo ?etag ?height ?id ?kind ?mime_type ?photo_data ?primary_email ?width () : user_photo = { etag; height; id; kind; mime_type; photo_data; primary_email; width }

let make_user_posix_account ?account_id ?gecos ?gid ?home_directory ?operating_system_type ?primary ?shell ?system_id ?uid ?username () : user_posix_account = { account_id; gecos; gid; home_directory; operating_system_type; primary; shell; system_id; uid; username }

let make_user_relation ?custom_type ?type_ ?value () : user_relation = { custom_type; type_; value }

let make_user_ssh_public_key ?expiration_time_usec ?fingerprint ?key () : user_ssh_public_key = { expiration_time_usec; fingerprint; key }

let make_user_undelete ?org_unit_path () : user_undelete = { org_unit_path }

let make_user_website ?custom_type ?primary ?type_ ?value () : user_website = { custom_type; primary; type_; value }

let make_users ?etag ?kind ?next_page_token ?trigger_event ?users () : users = { etag; kind; next_page_token; trigger_event; users }

let make_verification_code ?etag ?kind ?user_id ?verification_code () : verification_code = { etag; kind; user_id; verification_code }

let make_verification_codes ?etag ?items ?kind () : verification_codes = { etag; items; kind }

let base_url = "https://admin.googleapis.com/"
let batch_endpoint = Uri.of_string "https://admin.googleapis.com/batch"
let batch ~access_token calls = Google_api.Batch.execute ~access_token ~endpoint:batch_endpoint calls

module Asps = struct
  let delete ~user_key ~code_id () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/asps/" ^ Uri.pct_encode ~component:`Path (string_of_int code_id)))
      Google_api_runtime.Call.empty

  let get ~user_key ~code_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/asps/" ^ Uri.pct_encode ~component:`Path (string_of_int code_id)))
      (Google_api_runtime.Call.json asp_of_yojson)

  let list ~user_key () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/asps"))
      (Google_api_runtime.Call.json asps_of_yojson)
end

module Channels = struct
  let stop ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory_v1/channels/stop"))
      ~body:(yojson_of_channel body)
      Google_api_runtime.Call.empty
end

module Chromeosdevices = struct
  let action ~customer_id ~resource_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/chromeos/" ^ Uri.pct_encode ~component:`Path resource_id ^ "/action"))
      ~body:(yojson_of_chrome_os_device_action body)
      Google_api_runtime.Call.empty

  let get ~customer_id ~device_id ?projection () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/chromeos/" ^ Uri.pct_encode ~component:`Path device_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "projection" (function `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) projection;
              ]))
      (Google_api_runtime.Call.json chrome_os_device_of_yojson)

  let list ~customer_id ?include_child_orgunits ?max_results ?order_by ?org_unit_path ?page_token ?projection ?query ?sort_order () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/chromeos"))
           (List.concat
              [
                Google_api_runtime.Query.optional "includeChildOrgunits" string_of_bool include_child_orgunits;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "orderBy" (function `Annotated_location -> "annotatedLocation" | `Annotated_user -> "annotatedUser" | `Last_sync -> "lastSync" | `Notes -> "notes" | `Serial_number -> "serialNumber" | `Status -> "status" | `Unrecognized value -> value) order_by;
                Google_api_runtime.Query.optional "orgUnitPath" Fun.id org_unit_path;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "projection" (function `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "query" Fun.id query;
                Google_api_runtime.Query.optional "sortOrder" (function `Ascending -> "ASCENDING" | `Descending -> "DESCENDING" | `Unrecognized value -> value) sort_order;
              ]))
      (Google_api_runtime.Call.json chrome_os_devices_of_yojson)

  let move_devices_to_ou ~customer_id ~org_unit_path ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/chromeos/moveDevicesToOu"))
           (List.concat
              [
                Google_api_runtime.Query.required "orgUnitPath" Fun.id org_unit_path;
              ]))
      ~body:(yojson_of_chrome_os_move_devices_to_ou body)
      Google_api_runtime.Call.empty

  let patch ~customer_id ~device_id ~body ?projection () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/chromeos/" ^ Uri.pct_encode ~component:`Path device_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "projection" (function `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) projection;
              ]))
      ~body:(yojson_of_chrome_os_device body)
      (Google_api_runtime.Call.json chrome_os_device_of_yojson)

  let update ~customer_id ~device_id ~body ?projection () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/chromeos/" ^ Uri.pct_encode ~component:`Path device_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "projection" (function `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) projection;
              ]))
      ~body:(yojson_of_chrome_os_device body)
      (Google_api_runtime.Call.json chrome_os_device_of_yojson)
end

module Customer = struct
  module Devices = struct
    module Chromeos = struct
      let batch_change_status ~customer_id ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/chromeos:batchChangeStatus"))
          ~body:(yojson_of_batch_change_chrome_os_device_status_request body)
          (Google_api_runtime.Call.json batch_change_chrome_os_device_status_response_of_yojson)

      let count_chrome_os_devices ~customer_id ?filter ?include_child_orgunits ?org_unit_path () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/chromeos:countChromeOsDevices"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "filter" Fun.id filter;
                    Google_api_runtime.Query.optional "includeChildOrgunits" string_of_bool include_child_orgunits;
                    Google_api_runtime.Query.optional "orgUnitPath" Fun.id org_unit_path;
                  ]))
          (Google_api_runtime.Call.json count_chrome_os_devices_response_of_yojson)

      let issue_command ~customer_id ~device_id ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/chromeos/" ^ Uri.pct_encode ~component:`Path device_id ^ ":issueCommand"))
          ~body:(yojson_of_directory_chromeosdevices_issue_command_request body)
          (Google_api_runtime.Call.json directory_chromeosdevices_issue_command_response_of_yojson)

      module Commands = struct
        let get ~customer_id ~device_id ~command_id () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/chromeos/" ^ Uri.pct_encode ~component:`Path device_id ^ "/commands/" ^ Uri.pct_encode ~component:`Path command_id))
            (Google_api_runtime.Call.json directory_chromeosdevices_command_of_yojson)
      end
    end
  end
end

module Customers = struct
  let get ~customer_key () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customers/" ^ Uri.pct_encode ~component:`Path customer_key))
      (Google_api_runtime.Call.json customer_of_yojson)

  let patch ~customer_key ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customers/" ^ Uri.pct_encode ~component:`Path customer_key))
      ~body:(yojson_of_customer body)
      (Google_api_runtime.Call.json customer_of_yojson)

  let update ~customer_key ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customers/" ^ Uri.pct_encode ~component:`Path customer_key))
      ~body:(yojson_of_customer body)
      (Google_api_runtime.Call.json customer_of_yojson)

  module Chrome = struct
    module Print_servers = struct
      let batch_create_print_servers ~parent ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/chrome/printServers:batchCreatePrintServers"))
          ~body:(yojson_of_batch_create_print_servers_request body)
          (Google_api_runtime.Call.json batch_create_print_servers_response_of_yojson)

      let batch_delete_print_servers ~parent ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/chrome/printServers:batchDeletePrintServers"))
          ~body:(yojson_of_batch_delete_print_servers_request body)
          (Google_api_runtime.Call.json batch_delete_print_servers_response_of_yojson)

      let create ~parent ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/chrome/printServers"))
          ~body:(yojson_of_print_server body)
          (Google_api_runtime.Call.json print_server_of_yojson)

      let delete ~name () =
        Google_api_runtime.Call.make ~meth:`DELETE
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json empty_of_yojson)

      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json print_server_of_yojson)

      let list ~parent ?filter ?order_by ?org_unit_id ?page_size ?page_token () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/chrome/printServers"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "filter" Fun.id filter;
                    Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                    Google_api_runtime.Query.optional "orgUnitId" Fun.id org_unit_id;
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  ]))
          (Google_api_runtime.Call.json list_print_servers_response_of_yojson)

      let patch ~name ~body ?update_mask () =
        Google_api_runtime.Call.make ~meth:`PATCH
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
                  ]))
          ~body:(yojson_of_print_server body)
          (Google_api_runtime.Call.json print_server_of_yojson)
    end

    module Printers = struct
      let batch_create_printers ~parent ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/chrome/printers:batchCreatePrinters"))
          ~body:(yojson_of_batch_create_printers_request body)
          (Google_api_runtime.Call.json batch_create_printers_response_of_yojson)

      let batch_delete_printers ~parent ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/chrome/printers:batchDeletePrinters"))
          ~body:(yojson_of_batch_delete_printers_request body)
          (Google_api_runtime.Call.json batch_delete_printers_response_of_yojson)

      let create ~parent ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/chrome/printers"))
          ~body:(yojson_of_printer body)
          (Google_api_runtime.Call.json printer_of_yojson)

      let delete ~name () =
        Google_api_runtime.Call.make ~meth:`DELETE
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json empty_of_yojson)

      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json printer_of_yojson)

      let list ~parent ?filter ?order_by ?org_unit_id ?page_size ?page_token () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/chrome/printers"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "filter" Fun.id filter;
                    Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                    Google_api_runtime.Query.optional "orgUnitId" Fun.id org_unit_id;
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  ]))
          (Google_api_runtime.Call.json list_printers_response_of_yojson)

      let list_printer_models ~parent ?filter ?page_size ?page_token () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/chrome/printers:listPrinterModels"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "filter" Fun.id filter;
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  ]))
          (Google_api_runtime.Call.json list_printer_models_response_of_yojson)

      let patch ~name ~body ?clear_mask ?update_mask () =
        Google_api_runtime.Call.make ~meth:`PATCH
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "admin/directory/v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "clearMask" Fun.id clear_mask;
                    Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
                  ]))
          ~body:(yojson_of_printer body)
          (Google_api_runtime.Call.json printer_of_yojson)
    end
  end
end

module Domain_aliases = struct
  let delete ~customer ~domain_alias_name () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/domainaliases/" ^ Uri.pct_encode ~component:`Path domain_alias_name))
      Google_api_runtime.Call.empty

  let get ~customer ~domain_alias_name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/domainaliases/" ^ Uri.pct_encode ~component:`Path domain_alias_name))
      (Google_api_runtime.Call.json domain_alias_of_yojson)

  let insert ~customer ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/domainaliases"))
      ~body:(yojson_of_domain_alias body)
      (Google_api_runtime.Call.json domain_alias_of_yojson)

  let list ~customer ?parent_domain_name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/domainaliases"))
           (List.concat
              [
                Google_api_runtime.Query.optional "parentDomainName" Fun.id parent_domain_name;
              ]))
      (Google_api_runtime.Call.json domain_aliases_of_yojson)
end

module Domains = struct
  let delete ~customer ~domain_name () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/domains/" ^ Uri.pct_encode ~component:`Path domain_name))
      Google_api_runtime.Call.empty

  let get ~customer ~domain_name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/domains/" ^ Uri.pct_encode ~component:`Path domain_name))
      (Google_api_runtime.Call.json domains_of_yojson)

  let insert ~customer ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/domains"))
      ~body:(yojson_of_domains body)
      (Google_api_runtime.Call.json domains_of_yojson)

  let list ~customer () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/domains"))
      (Google_api_runtime.Call.json domains2_of_yojson)
end

module Groups = struct
  let delete ~group_key () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key))
      Google_api_runtime.Call.empty

  let get ~group_key () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key))
      (Google_api_runtime.Call.json group_of_yojson)

  let insert ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/groups"))
      ~body:(yojson_of_group body)
      (Google_api_runtime.Call.json group_of_yojson)

  let list ?customer ?domain ?max_results ?order_by ?page_token ?query ?sort_order ?user_key () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/groups"))
           (List.concat
              [
                Google_api_runtime.Query.optional "customer" Fun.id customer;
                Google_api_runtime.Query.optional "domain" Fun.id domain;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "orderBy" (function `Email -> "email" | `Unrecognized value -> value) order_by;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "query" Fun.id query;
                Google_api_runtime.Query.optional "sortOrder" (function `Ascending -> "ASCENDING" | `Descending -> "DESCENDING" | `Unrecognized value -> value) sort_order;
                Google_api_runtime.Query.optional "userKey" Fun.id user_key;
              ]))
      (Google_api_runtime.Call.json groups_of_yojson)

  let patch ~group_key ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key))
      ~body:(yojson_of_group body)
      (Google_api_runtime.Call.json group_of_yojson)

  let update ~group_key ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key))
      ~body:(yojson_of_group body)
      (Google_api_runtime.Call.json group_of_yojson)

  module Aliases = struct
    let delete ~group_key ~alias () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key ^ "/aliases/" ^ Uri.pct_encode ~component:`Path alias))
        Google_api_runtime.Call.empty

    let insert ~group_key ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key ^ "/aliases"))
        ~body:(yojson_of_alias body)
        (Google_api_runtime.Call.json alias_of_yojson)

    let list ~group_key () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key ^ "/aliases"))
        (Google_api_runtime.Call.json aliases_of_yojson)
  end
end

module Members = struct
  let delete ~group_key ~member_key () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key ^ "/members/" ^ Uri.pct_encode ~component:`Path member_key))
      Google_api_runtime.Call.empty

  let get ~group_key ~member_key () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key ^ "/members/" ^ Uri.pct_encode ~component:`Path member_key))
      (Google_api_runtime.Call.json member_of_yojson)

  let has_member ~group_key ~member_key () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key ^ "/hasMember/" ^ Uri.pct_encode ~component:`Path member_key))
      (Google_api_runtime.Call.json members_has_member_of_yojson)

  let insert ~group_key ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key ^ "/members"))
      ~body:(yojson_of_member body)
      (Google_api_runtime.Call.json member_of_yojson)

  let list ~group_key ?include_derived_membership ?max_results ?page_token ?roles () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key ^ "/members"))
           (List.concat
              [
                Google_api_runtime.Query.optional "includeDerivedMembership" string_of_bool include_derived_membership;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "roles" Fun.id roles;
              ]))
      (Google_api_runtime.Call.json members_of_yojson)

  let patch ~group_key ~member_key ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key ^ "/members/" ^ Uri.pct_encode ~component:`Path member_key))
      ~body:(yojson_of_member body)
      (Google_api_runtime.Call.json member_of_yojson)

  let update ~group_key ~member_key ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/groups/" ^ Uri.pct_encode ~component:`Path group_key ^ "/members/" ^ Uri.pct_encode ~component:`Path member_key))
      ~body:(yojson_of_member body)
      (Google_api_runtime.Call.json member_of_yojson)
end

module Mobiledevices = struct
  let action ~customer_id ~resource_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/mobile/" ^ Uri.pct_encode ~component:`Path resource_id ^ "/action"))
      ~body:(yojson_of_mobile_device_action body)
      Google_api_runtime.Call.empty

  let delete ~customer_id ~resource_id () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/mobile/" ^ Uri.pct_encode ~component:`Path resource_id))
      Google_api_runtime.Call.empty

  let get ~customer_id ~resource_id ?projection () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/mobile/" ^ Uri.pct_encode ~component:`Path resource_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "projection" (function `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) projection;
              ]))
      (Google_api_runtime.Call.json mobile_device_of_yojson)

  let list ~customer_id ?max_results ?order_by ?page_token ?projection ?query ?sort_order () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/devices/mobile"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "orderBy" (function `Device_id -> "deviceId" | `Email -> "email" | `Last_sync -> "lastSync" | `Model -> "model" | `Name -> "name" | `Os -> "os" | `Status -> "status" | `Type -> "type" | `Unrecognized value -> value) order_by;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "projection" (function `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "query" Fun.id query;
                Google_api_runtime.Query.optional "sortOrder" (function `Ascending -> "ASCENDING" | `Descending -> "DESCENDING" | `Unrecognized value -> value) sort_order;
              ]))
      (Google_api_runtime.Call.json mobile_devices_of_yojson)
end

module Orgunits = struct
  let delete ~customer_id ~org_unit_path () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/orgunits/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) org_unit_path))
      Google_api_runtime.Call.empty

  let get ~customer_id ~org_unit_path () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/orgunits/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) org_unit_path))
      (Google_api_runtime.Call.json org_unit_of_yojson)

  let insert ~customer_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/orgunits"))
      ~body:(yojson_of_org_unit body)
      (Google_api_runtime.Call.json org_unit_of_yojson)

  let list ~customer_id ?org_unit_path ?type_ () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/orgunits"))
           (List.concat
              [
                Google_api_runtime.Query.optional "orgUnitPath" Fun.id org_unit_path;
                Google_api_runtime.Query.optional "type" (function `All -> "all" | `Children -> "children" | `All_including_parent -> "allIncludingParent" | `Unrecognized value -> value) type_;
              ]))
      (Google_api_runtime.Call.json org_units_of_yojson)

  let patch ~customer_id ~org_unit_path ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/orgunits/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) org_unit_path))
      ~body:(yojson_of_org_unit body)
      (Google_api_runtime.Call.json org_unit_of_yojson)

  let update ~customer_id ~org_unit_path ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/orgunits/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) org_unit_path))
      ~body:(yojson_of_org_unit body)
      (Google_api_runtime.Call.json org_unit_of_yojson)
end

module Privileges = struct
  let list ~customer () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/roles/ALL/privileges"))
      (Google_api_runtime.Call.json privileges_of_yojson)
end

module Resources = struct
  module Buildings = struct
    let delete ~customer ~building_id () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/buildings/" ^ Uri.pct_encode ~component:`Path building_id))
        Google_api_runtime.Call.empty

    let get ~customer ~building_id () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/buildings/" ^ Uri.pct_encode ~component:`Path building_id))
        (Google_api_runtime.Call.json building_of_yojson)

    let insert ~customer ~body ?coordinates_source () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/buildings"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "coordinatesSource" (function `Client_specified -> "CLIENT_SPECIFIED" | `Resolved_from_address -> "RESOLVED_FROM_ADDRESS" | `Source_unspecified -> "SOURCE_UNSPECIFIED" | `Unrecognized value -> value) coordinates_source;
                ]))
        ~body:(yojson_of_building body)
        (Google_api_runtime.Call.json building_of_yojson)

    let list ~customer ?max_results ?page_token () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/buildings"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                ]))
        (Google_api_runtime.Call.json buildings_of_yojson)

    let patch ~customer ~building_id ~body ?coordinates_source () =
      Google_api_runtime.Call.make ~meth:`PATCH
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/buildings/" ^ Uri.pct_encode ~component:`Path building_id))
             (List.concat
                [
                  Google_api_runtime.Query.optional "coordinatesSource" (function `Client_specified -> "CLIENT_SPECIFIED" | `Resolved_from_address -> "RESOLVED_FROM_ADDRESS" | `Source_unspecified -> "SOURCE_UNSPECIFIED" | `Unrecognized value -> value) coordinates_source;
                ]))
        ~body:(yojson_of_building body)
        (Google_api_runtime.Call.json building_of_yojson)

    let update ~customer ~building_id ~body ?coordinates_source () =
      Google_api_runtime.Call.make ~meth:`PUT
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/buildings/" ^ Uri.pct_encode ~component:`Path building_id))
             (List.concat
                [
                  Google_api_runtime.Query.optional "coordinatesSource" (function `Client_specified -> "CLIENT_SPECIFIED" | `Resolved_from_address -> "RESOLVED_FROM_ADDRESS" | `Source_unspecified -> "SOURCE_UNSPECIFIED" | `Unrecognized value -> value) coordinates_source;
                ]))
        ~body:(yojson_of_building body)
        (Google_api_runtime.Call.json building_of_yojson)
  end

  module Calendars = struct
    let delete ~customer ~calendar_resource_id () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/calendars/" ^ Uri.pct_encode ~component:`Path calendar_resource_id))
        Google_api_runtime.Call.empty

    let get ~customer ~calendar_resource_id () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/calendars/" ^ Uri.pct_encode ~component:`Path calendar_resource_id))
        (Google_api_runtime.Call.json calendar_resource_of_yojson)

    let insert ~customer ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/calendars"))
        ~body:(yojson_of_calendar_resource body)
        (Google_api_runtime.Call.json calendar_resource_of_yojson)

    let list ~customer ?max_results ?order_by ?page_token ?query () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/calendars"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                  Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  Google_api_runtime.Query.optional "query" Fun.id query;
                ]))
        (Google_api_runtime.Call.json calendar_resources_of_yojson)

    let patch ~customer ~calendar_resource_id ~body () =
      Google_api_runtime.Call.make ~meth:`PATCH
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/calendars/" ^ Uri.pct_encode ~component:`Path calendar_resource_id))
        ~body:(yojson_of_calendar_resource body)
        (Google_api_runtime.Call.json calendar_resource_of_yojson)

    let update ~customer ~calendar_resource_id ~body () =
      Google_api_runtime.Call.make ~meth:`PUT
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/calendars/" ^ Uri.pct_encode ~component:`Path calendar_resource_id))
        ~body:(yojson_of_calendar_resource body)
        (Google_api_runtime.Call.json calendar_resource_of_yojson)
  end

  module Features = struct
    let delete ~customer ~feature_key () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/features/" ^ Uri.pct_encode ~component:`Path feature_key))
        Google_api_runtime.Call.empty

    let get ~customer ~feature_key () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/features/" ^ Uri.pct_encode ~component:`Path feature_key))
        (Google_api_runtime.Call.json feature_of_yojson)

    let insert ~customer ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/features"))
        ~body:(yojson_of_feature body)
        (Google_api_runtime.Call.json feature_of_yojson)

    let list ~customer ?max_results ?page_token () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/features"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                ]))
        (Google_api_runtime.Call.json features_of_yojson)

    let patch ~customer ~feature_key ~body () =
      Google_api_runtime.Call.make ~meth:`PATCH
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/features/" ^ Uri.pct_encode ~component:`Path feature_key))
        ~body:(yojson_of_feature body)
        (Google_api_runtime.Call.json feature_of_yojson)

    let rename ~customer ~old_name ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/features/" ^ Uri.pct_encode ~component:`Path old_name ^ "/rename"))
        ~body:(yojson_of_feature_rename body)
        Google_api_runtime.Call.empty

    let update ~customer ~feature_key ~body () =
      Google_api_runtime.Call.make ~meth:`PUT
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/resources/features/" ^ Uri.pct_encode ~component:`Path feature_key))
        ~body:(yojson_of_feature body)
        (Google_api_runtime.Call.json feature_of_yojson)
  end
end

module Role_assignments = struct
  let delete ~customer ~role_assignment_id () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/roleassignments/" ^ Uri.pct_encode ~component:`Path role_assignment_id))
      Google_api_runtime.Call.empty

  let get ~customer ~role_assignment_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/roleassignments/" ^ Uri.pct_encode ~component:`Path role_assignment_id))
      (Google_api_runtime.Call.json role_assignment_of_yojson)

  let insert ~customer ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/roleassignments"))
      ~body:(yojson_of_role_assignment body)
      (Google_api_runtime.Call.json role_assignment_of_yojson)

  let list ~customer ?include_indirect_role_assignments ?max_results ?page_token ?role_id ?user_key () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/roleassignments"))
           (List.concat
              [
                Google_api_runtime.Query.optional "includeIndirectRoleAssignments" string_of_bool include_indirect_role_assignments;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "roleId" Fun.id role_id;
                Google_api_runtime.Query.optional "userKey" Fun.id user_key;
              ]))
      (Google_api_runtime.Call.json role_assignments_of_yojson)
end

module Roles = struct
  let delete ~customer ~role_id () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/roles/" ^ Uri.pct_encode ~component:`Path role_id))
      Google_api_runtime.Call.empty

  let get ~customer ~role_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/roles/" ^ Uri.pct_encode ~component:`Path role_id))
      (Google_api_runtime.Call.json role_of_yojson)

  let insert ~customer ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/roles"))
      ~body:(yojson_of_role body)
      (Google_api_runtime.Call.json role_of_yojson)

  let list ~customer ?max_results ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/roles"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json roles_of_yojson)

  let patch ~customer ~role_id ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/roles/" ^ Uri.pct_encode ~component:`Path role_id))
      ~body:(yojson_of_role body)
      (Google_api_runtime.Call.json role_of_yojson)

  let update ~customer ~role_id ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer ^ "/roles/" ^ Uri.pct_encode ~component:`Path role_id))
      ~body:(yojson_of_role body)
      (Google_api_runtime.Call.json role_of_yojson)
end

module Schemas = struct
  let delete ~customer_id ~schema_key () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/schemas/" ^ Uri.pct_encode ~component:`Path schema_key))
      Google_api_runtime.Call.empty

  let get ~customer_id ~schema_key () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/schemas/" ^ Uri.pct_encode ~component:`Path schema_key))
      (Google_api_runtime.Call.json schema_of_yojson)

  let insert ~customer_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/schemas"))
      ~body:(yojson_of_schema body)
      (Google_api_runtime.Call.json schema_of_yojson)

  let list ~customer_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/schemas"))
      (Google_api_runtime.Call.json schemas_of_yojson)

  let patch ~customer_id ~schema_key ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/schemas/" ^ Uri.pct_encode ~component:`Path schema_key))
      ~body:(yojson_of_schema body)
      (Google_api_runtime.Call.json schema_of_yojson)

  let update ~customer_id ~schema_key ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/customer/" ^ Uri.pct_encode ~component:`Path customer_id ^ "/schemas/" ^ Uri.pct_encode ~component:`Path schema_key))
      ~body:(yojson_of_schema body)
      (Google_api_runtime.Call.json schema_of_yojson)
end

module Tokens = struct
  let delete ~user_key ~client_id () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/tokens/" ^ Uri.pct_encode ~component:`Path client_id))
      Google_api_runtime.Call.empty

  let get ~user_key ~client_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/tokens/" ^ Uri.pct_encode ~component:`Path client_id))
      (Google_api_runtime.Call.json token_of_yojson)

  let list ~user_key () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/tokens"))
      (Google_api_runtime.Call.json tokens_of_yojson)
end

module Two_step_verification = struct
  let turn_off ~user_key () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/twoStepVerification/turnOff"))
      Google_api_runtime.Call.empty
end

module Users = struct
  let create_guest ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users:createGuest"))
      ~body:(yojson_of_directory_users_create_guest_request body)
      (Google_api_runtime.Call.json user_of_yojson)

  let delete ~user_key () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key))
      Google_api_runtime.Call.empty

  let get ~user_key ?custom_field_mask ?projection ?view_type () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key))
           (List.concat
              [
                Google_api_runtime.Query.optional "customFieldMask" Fun.id custom_field_mask;
                Google_api_runtime.Query.optional "projection" (function `Basic -> "basic" | `Custom -> "custom" | `Full -> "full" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "viewType" (function `Admin_view -> "admin_view" | `Domain_public -> "domain_public" | `Unrecognized value -> value) view_type;
              ]))
      (Google_api_runtime.Call.json user_of_yojson)

  let insert ~body ?resolve_conflict_account () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/users"))
           (List.concat
              [
                Google_api_runtime.Query.optional "resolveConflictAccount" string_of_bool resolve_conflict_account;
              ]))
      ~body:(yojson_of_user body)
      (Google_api_runtime.Call.json user_of_yojson)

  let list ?custom_field_mask ?customer ?domain ?event ?max_results ?order_by ?page_token ?projection ?query ?show_deleted ?sort_order ?view_type () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/users"))
           (List.concat
              [
                Google_api_runtime.Query.optional "customFieldMask" Fun.id custom_field_mask;
                Google_api_runtime.Query.optional "customer" Fun.id customer;
                Google_api_runtime.Query.optional "domain" Fun.id domain;
                Google_api_runtime.Query.optional "event" (function `Add -> "add" | `Delete -> "delete" | `Make_admin -> "makeAdmin" | `Undelete -> "undelete" | `Update -> "update" | `Unrecognized value -> value) event;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "orderBy" (function `Email -> "email" | `Family_name -> "familyName" | `Given_name -> "givenName" | `Unrecognized value -> value) order_by;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "projection" (function `Basic -> "basic" | `Custom -> "custom" | `Full -> "full" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "query" Fun.id query;
                Google_api_runtime.Query.optional "showDeleted" Fun.id show_deleted;
                Google_api_runtime.Query.optional "sortOrder" (function `Ascending -> "ASCENDING" | `Descending -> "DESCENDING" | `Unrecognized value -> value) sort_order;
                Google_api_runtime.Query.optional "viewType" (function `Admin_view -> "admin_view" | `Domain_public -> "domain_public" | `Unrecognized value -> value) view_type;
              ]))
      (Google_api_runtime.Call.json users_of_yojson)

  let make_admin ~user_key ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/makeAdmin"))
      ~body:(yojson_of_user_make_admin body)
      Google_api_runtime.Call.empty

  let patch ~user_key ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key))
      ~body:(yojson_of_user body)
      (Google_api_runtime.Call.json user_of_yojson)

  let sign_out ~user_key () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/signOut"))
      Google_api_runtime.Call.empty

  let undelete ~user_key ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/undelete"))
      ~body:(yojson_of_user_undelete body)
      Google_api_runtime.Call.empty

  let update ~user_key ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key))
      ~body:(yojson_of_user body)
      (Google_api_runtime.Call.json user_of_yojson)

  let watch ~body ?custom_field_mask ?customer ?domain ?event ?max_results ?order_by ?page_token ?projection ?query ?show_deleted ?sort_order ?view_type () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "admin/directory/v1/users/watch"))
           (List.concat
              [
                Google_api_runtime.Query.optional "customFieldMask" Fun.id custom_field_mask;
                Google_api_runtime.Query.optional "customer" Fun.id customer;
                Google_api_runtime.Query.optional "domain" Fun.id domain;
                Google_api_runtime.Query.optional "event" (function `Add -> "add" | `Delete -> "delete" | `Make_admin -> "makeAdmin" | `Undelete -> "undelete" | `Update -> "update" | `Unrecognized value -> value) event;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "orderBy" (function `Email -> "email" | `Family_name -> "familyName" | `Given_name -> "givenName" | `Unrecognized value -> value) order_by;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "projection" (function `Basic -> "basic" | `Custom -> "custom" | `Full -> "full" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "query" Fun.id query;
                Google_api_runtime.Query.optional "showDeleted" Fun.id show_deleted;
                Google_api_runtime.Query.optional "sortOrder" (function `Ascending -> "ASCENDING" | `Descending -> "DESCENDING" | `Unrecognized value -> value) sort_order;
                Google_api_runtime.Query.optional "viewType" (function `Admin_view -> "admin_view" | `Domain_public -> "domain_public" | `Unrecognized value -> value) view_type;
              ]))
      ~body:(yojson_of_channel body)
      (Google_api_runtime.Call.json channel_of_yojson)

  module Aliases = struct
    let delete ~user_key ~alias () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/aliases/" ^ Uri.pct_encode ~component:`Path alias))
        Google_api_runtime.Call.empty

    let insert ~user_key ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/aliases"))
        ~body:(yojson_of_alias body)
        (Google_api_runtime.Call.json alias_of_yojson)

    let list ~user_key ?event () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/aliases"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "event" (function `Add -> "add" | `Delete -> "delete" | `Unrecognized value -> value) event;
                ]))
        (Google_api_runtime.Call.json aliases_of_yojson)

    let watch ~user_key ~body ?event () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/aliases/watch"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "event" (function `Add -> "add" | `Delete -> "delete" | `Unrecognized value -> value) event;
                ]))
        ~body:(yojson_of_channel body)
        (Google_api_runtime.Call.json channel_of_yojson)
  end

  module Photos = struct
    let delete ~user_key () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/photos/thumbnail"))
        Google_api_runtime.Call.empty

    let get ~user_key () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/photos/thumbnail"))
        (Google_api_runtime.Call.json user_photo_of_yojson)

    let patch ~user_key ~body () =
      Google_api_runtime.Call.make ~meth:`PATCH
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/photos/thumbnail"))
        ~body:(yojson_of_user_photo body)
        (Google_api_runtime.Call.json user_photo_of_yojson)

    let update ~user_key ~body () =
      Google_api_runtime.Call.make ~meth:`PUT
        ~uri:
          (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/photos/thumbnail"))
        ~body:(yojson_of_user_photo body)
        (Google_api_runtime.Call.json user_photo_of_yojson)
  end
end

module Verification_codes = struct
  let generate ~user_key () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/verificationCodes/generate"))
      Google_api_runtime.Call.empty

  let invalidate ~user_key () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/verificationCodes/invalidate"))
      Google_api_runtime.Call.empty

  let list ~user_key () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "admin/directory/v1/users/" ^ Uri.pct_encode ~component:`Path user_key ^ "/verificationCodes"))
      (Google_api_runtime.Call.json verification_codes_of_yojson)
end
