(* Generated from the Discovery document of cloudidentity v1 (revision 20261002). Do not edit. *)

[@@@alert "-internal"]

type add_idp_credential_operation_metadata = {
  state : string option;
}

and add_idp_credential_request = {
  pem_data : string option;
}

and allowlisted_domain = {
  domain : string option;
  name : string option;
}

and cancel_user_invitation_request = Yojson.Safe.t

and check_transitive_membership_response = {
  has_membership : bool option;
}

and create_group_metadata = Yojson.Safe.t

and create_inbound_oidc_sso_profile_operation_metadata = {
  state : string option;
}

and create_inbound_saml_sso_profile_operation_metadata = {
  state : string option;
}

and create_inbound_sso_assignment_operation_metadata = Yojson.Safe.t

and create_membership_metadata = Yojson.Safe.t

and delete_group_metadata = Yojson.Safe.t

and delete_idp_credential_operation_metadata = Yojson.Safe.t

and delete_inbound_oidc_sso_profile_operation_metadata = Yojson.Safe.t

and delete_inbound_saml_sso_profile_operation_metadata = Yojson.Safe.t

and delete_inbound_sso_assignment_operation_metadata = Yojson.Safe.t

and delete_membership_metadata = Yojson.Safe.t

and dsa_public_key_info = {
  key_size : int option;
}

and dynamic_group_metadata = {
  queries : dynamic_group_query list option;
  status : dynamic_group_status option;
}

and dynamic_group_query = {
  query : string option;
  resource_type : [ `Resource_type_unspecified | `User | `Unrecognized of string ] option;
}

and dynamic_group_status = {
  status : [ `Status_unspecified | `Up_to_date | `Updating_memberships | `Invalid_query | `Unrecognized of string ] option;
  status_time : string option;
}

and entity_key = {
  id : string option;
  namespace : string option;
}

and expiry_detail = {
  expire_time : string option;
}

and external_id = {
  id : string option;
  namespace : string option;
}

and get_membership_graph_metadata = Yojson.Safe.t

and get_membership_graph_response = {
  adjacency_list : membership_adjacency_list list option;
  groups : group list option;
}

and google_apps_cloudidentity_devices_v1_android_attributes = {
  cts_profile_match : bool option;
  enabled_unknown_sources : bool option;
  has_potentially_harmful_apps : bool option;
  owner_profile_account : bool option;
  ownership_privilege : [ `Ownership_privilege_unspecified | `Device_administrator | `Profile_owner | `Device_owner | `Unrecognized of string ] option;
  supports_work_profile : bool option;
  verified_boot : bool option;
  verify_apps_enabled : bool option;
}

and google_apps_cloudidentity_devices_v1_approve_device_user_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_approve_device_user_request = {
  customer : string option;
}

and google_apps_cloudidentity_devices_v1_approve_device_user_response = {
  device_user : google_apps_cloudidentity_devices_v1_device_user option;
}

and google_apps_cloudidentity_devices_v1_block_device_user_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_block_device_user_request = {
  customer : string option;
}

and google_apps_cloudidentity_devices_v1_block_device_user_response = {
  device_user : google_apps_cloudidentity_devices_v1_device_user option;
}

and google_apps_cloudidentity_devices_v1_browser_attributes = {
  chrome_browser_info : google_apps_cloudidentity_devices_v1_browser_info option;
  chrome_profile_id : string option;
  last_profile_sync_time : string option;
}

and google_apps_cloudidentity_devices_v1_browser_info = {
  browser_management_state : [ `Unspecified | `Unmanaged | `Managed_by_other_domain | `Profile_managed | `Browser_managed | `Unrecognized of string ] option;
  browser_version : string option;
  is_built_in_dns_client_enabled : bool option;
  is_bulk_data_entry_analysis_enabled : bool option;
  is_chrome_cleanup_enabled : bool option;
  is_chrome_remote_desktop_app_blocked : bool option;
  is_file_download_analysis_enabled : bool option;
  is_file_upload_analysis_enabled : bool option;
  is_realtime_url_check_enabled : bool option;
  is_security_event_analysis_enabled : bool option;
  is_site_isolation_enabled : bool option;
  is_third_party_blocking_enabled : bool option;
  password_protection_warning_trigger : [ `Password_protection_trigger_unspecified | `Protection_off | `Password_reuse | `Phishing_reuse | `Unrecognized of string ] option;
  safe_browsing_protection_level : [ `Safe_browsing_level_unspecified | `Disabled | `Standard | `Enhanced | `Unrecognized of string ] option;
}

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_request = {
  customer : string option;
}

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_response = {
  device : google_apps_cloudidentity_devices_v1_device option;
}

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request = {
  customer : string option;
}

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response = {
  device_user : google_apps_cloudidentity_devices_v1_device_user option;
}

and google_apps_cloudidentity_devices_v1_certificate_attributes = {
  certificate_template : google_apps_cloudidentity_devices_v1_certificate_template option;
  fingerprint : string option;
  issuer : string option;
  serial_number : string option;
  subject : string option;
  thumbprint : string option;
  validation_state : [ `Certificate_validation_state_unspecified | `Validation_successful | `Validation_failed | `Unrecognized of string ] option;
  validity_expiration_time : string option;
  validity_start_time : string option;
}

and google_apps_cloudidentity_devices_v1_certificate_template = {
  id : string option;
  major_version : int option;
  minor_version : int option;
}

and google_apps_cloudidentity_devices_v1_client_state = {
  asset_tags : string list option;
  compliance_state : [ `Compliance_state_unspecified | `Compliant | `Non_compliant | `Unrecognized of string ] option;
  create_time : string option;
  custom_id : string option;
  etag : string option;
  health_score : [ `Health_score_unspecified | `Very_poor | `Poor | `Neutral | `Good | `Very_good | `Unrecognized of string ] option;
  key_value_pairs : (string * google_apps_cloudidentity_devices_v1_custom_attribute_value) list option;
  last_update_time : string option;
  managed : [ `Managed_state_unspecified | `Managed | `Unmanaged | `Unrecognized of string ] option;
  name : string option;
  owner_type : [ `Owner_type_unspecified | `Owner_type_customer | `Owner_type_partner | `Unrecognized of string ] option;
  score_reason : string option;
}

and google_apps_cloudidentity_devices_v1_create_device_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_custom_attribute_value = {
  bool_value : bool option;
  number_value : float option;
  string_value : string option;
}

and google_apps_cloudidentity_devices_v1_delete_device_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_delete_device_user_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_device = {
  android_specific_attributes : google_apps_cloudidentity_devices_v1_android_attributes option;
  asset_tag : string option;
  baseband_version : string option;
  bootloader_version : string option;
  brand : string option;
  build_number : string option;
  compromised_state : [ `Compromised_state_unspecified | `Compromised | `Uncompromised | `Unrecognized of string ] option;
  create_time : string option;
  device_id : string option;
  device_type : [ `Device_type_unspecified | `Android | `Ios | `Google_sync | `Windows | `Mac_os | `Linux | `Chrome_os | `Googlebook | `Unrecognized of string ] option;
  enabled_developer_options : bool option;
  enabled_usb_debugging : bool option;
  encryption_state : [ `Encryption_state_unspecified | `Unsupported_by_device | `Encrypted | `Not_encrypted | `Unrecognized of string ] option;
  endpoint_verification_specific_attributes : google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes option;
  hostname : string option;
  imei : string option;
  kernel_version : string option;
  last_sync_time : string option;
  management_state : [ `Management_state_unspecified | `Approved | `Blocked | `Pending | `Unprovisioned | `Wiping | `Wiped | `Unrecognized of string ] option;
  manufacturer : string option;
  meid : string option;
  model : string option;
  name : string option;
  network_operator : string option;
  os_version : string option;
  other_accounts : string list option;
  owner_type : [ `Device_ownership_unspecified | `Company | `Byod | `Unrecognized of string ] option;
  release_version : string option;
  security_patch_time : string option;
  serial_number : string option;
  unified_device_id : string option;
  wifi_mac_addresses : string list option;
}

and google_apps_cloudidentity_devices_v1_device_user = {
  compromised_state : [ `Compromised_state_unspecified | `Compromised | `Not_compromised | `Unrecognized of string ] option;
  create_time : string option;
  first_sync_time : string option;
  language_code : string option;
  last_sync_time : string option;
  management_state : [ `Management_state_unspecified | `Wiping | `Wiped | `Approved | `Blocked | `Pending_approval | `Unenrolled | `Unrecognized of string ] option;
  name : string option;
  password_state : [ `Password_state_unspecified | `Password_set | `Password_not_set | `Unrecognized of string ] option;
  user_agent : string option;
  user_email : string option;
}

and google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes = {
  additional_signals : (string * Yojson.Safe.t) list option;
  browser_attributes : google_apps_cloudidentity_devices_v1_browser_attributes list option;
  certificate_attributes : google_apps_cloudidentity_devices_v1_certificate_attributes list option;
}

and google_apps_cloudidentity_devices_v1_list_client_states_response = {
  client_states : google_apps_cloudidentity_devices_v1_client_state list option;
  next_page_token : string option;
}

and google_apps_cloudidentity_devices_v1_list_device_users_response = {
  device_users : google_apps_cloudidentity_devices_v1_device_user list option;
  next_page_token : string option;
}

and google_apps_cloudidentity_devices_v1_list_devices_response = {
  devices : google_apps_cloudidentity_devices_v1_device list option;
  next_page_token : string option;
}

and google_apps_cloudidentity_devices_v1_list_endpoint_apps_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_lookup_self_device_users_response = {
  customer : string option;
  names : string list option;
  next_page_token : string option;
}

and google_apps_cloudidentity_devices_v1_signout_device_user_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_update_client_state_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_update_device_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_wipe_device_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_wipe_device_request = {
  customer : string option;
  remove_reset_lock : bool option;
}

and google_apps_cloudidentity_devices_v1_wipe_device_response = {
  device : google_apps_cloudidentity_devices_v1_device option;
}

and google_apps_cloudidentity_devices_v1_wipe_device_user_metadata = Yojson.Safe.t

and google_apps_cloudidentity_devices_v1_wipe_device_user_request = {
  customer : string option;
}

and google_apps_cloudidentity_devices_v1_wipe_device_user_response = {
  device_user : google_apps_cloudidentity_devices_v1_device_user option;
}

and group = {
  additional_group_keys : entity_key list option;
  create_time : string option;
  description : string option;
  display_name : string option;
  dynamic_group_metadata : dynamic_group_metadata option;
  external_ids : external_id list option;
  group_key : entity_key option;
  labels : (string * string) list option;
  name : string option;
  parent : string option;
  update_time : string option;
}

and group_relation = {
  display_name : string option;
  group : string option;
  group_key : entity_key option;
  labels : (string * string) list option;
  relation_type : [ `Relation_type_unspecified | `Direct | `Indirect | `Direct_and_indirect | `Unrecognized of string ] option;
  roles : transitive_membership_role list option;
}

and idp_credential = {
  dsa_key_info : dsa_public_key_info option;
  name : string option;
  rsa_key_info : rsa_public_key_info option;
  update_time : string option;
}

and inbound_oidc_sso_profile = {
  customer : string option;
  display_name : string option;
  idp_config : oidc_idp_config option;
  name : string option;
  rp_config : oidc_rp_config option;
}

and inbound_saml_sso_profile = {
  customer : string option;
  display_name : string option;
  idp_config : saml_idp_config option;
  name : string option;
  sp_config : saml_sp_config option;
}

and inbound_sso_assignment = {
  customer : string option;
  name : string option;
  oidc_sso_info : oidc_sso_info option;
  rank : int option;
  saml_sso_info : saml_sso_info option;
  sign_in_behavior : sign_in_behavior option;
  sso_mode : [ `Sso_mode_unspecified | `Sso_off | `Saml_sso | `Oidc_sso | `Domain_wide_saml_if_enabled | `Unrecognized of string ] option;
  target_group : string option;
  target_org_unit : string option;
}

and is_invitable_user_response = {
  is_invitable_user : bool option;
}

and list_allowlisted_domains_response = {
  allowlisted_domains : allowlisted_domain list option;
  next_page_token : string option;
}

and list_groups_response = {
  groups : group list option;
  next_page_token : string option;
}

and list_idp_credentials_response = {
  idp_credentials : idp_credential list option;
  next_page_token : string option;
}

and list_inbound_oidc_sso_profiles_response = {
  inbound_oidc_sso_profiles : inbound_oidc_sso_profile list option;
  next_page_token : string option;
}

and list_inbound_saml_sso_profiles_response = {
  inbound_saml_sso_profiles : inbound_saml_sso_profile list option;
  next_page_token : string option;
}

and list_inbound_sso_assignments_response = {
  inbound_sso_assignments : inbound_sso_assignment list option;
  next_page_token : string option;
}

and list_memberships_response = {
  memberships : membership list option;
  next_page_token : string option;
}

and list_policies_response = {
  next_page_token : string option;
  policies : policy list option;
}

and list_user_invitations_response = {
  next_page_token : string option;
  user_invitations : user_invitation list option;
}

and lookup_group_name_response = {
  name : string option;
}

and lookup_membership_name_response = {
  name : string option;
}

and member_relation = {
  member : string option;
  preferred_member_key : entity_key list option;
  relation_type : [ `Relation_type_unspecified | `Direct | `Indirect | `Direct_and_indirect | `Unrecognized of string ] option;
  roles : transitive_membership_role list option;
}

and member_restriction = {
  evaluation : restriction_evaluation option;
  query : string option;
}

and membership = {
  create_time : string option;
  delivery_setting : [ `Delivery_setting_unspecified | `All_mail | `Digest | `Daily | `None | `Disabled | `Unrecognized of string ] option;
  name : string option;
  preferred_member_key : entity_key option;
  roles : membership_role list option;
  type_ : [ `Type_unspecified | `User | `Service_account | `Group | `Shared_drive | `Cbcm_browser | `Chrome_os_device | `Other | `Unrecognized of string ] option;
  update_time : string option;
}

and membership_adjacency_list = {
  edges : membership list option;
  group : string option;
}

and membership_relation = {
  description : string option;
  display_name : string option;
  group : string option;
  group_key : entity_key option;
  labels : (string * string) list option;
  membership : string option;
  roles : membership_role list option;
}

and membership_role = {
  expiry_detail : expiry_detail option;
  name : string option;
  restriction_evaluations : restriction_evaluations option;
}

and membership_role_restriction_evaluation = {
  state : [ `State_unspecified | `Compliant | `Forward_compliant | `Non_compliant | `Evaluating | `Unrecognized of string ] option;
}

and modify_membership_roles_request = {
  add_roles : membership_role list option;
  remove_roles : string list option;
  update_roles_params : update_membership_roles_params list option;
}

and modify_membership_roles_response = {
  membership : membership option;
}

and oidc_idp_config = {
  change_password_uri : string option;
  issuer_uri : string option;
}

and oidc_rp_config = {
  client_id : string option;
  client_secret : string option;
  redirect_uris : string list option;
}

and oidc_sso_info = {
  inbound_oidc_sso_profile : string option;
}

and operation = {
  done_ : bool option;
  error : status option;
  metadata : (string * Yojson.Safe.t) list option;
  name : string option;
  response : (string * Yojson.Safe.t) list option;
}

and policy = {
  customer : string option;
  name : string option;
  policy_query : policy_query option;
  setting : setting option;
  type_ : [ `Policy_type_unspecified | `System | `Admin | `Unrecognized of string ] option;
}

and policy_query = {
  group : string option;
  org_unit : string option;
  query : string option;
  sort_order : float option;
}

and restriction_evaluation = {
  state : [ `State_unspecified | `Evaluating | `Compliant | `Forward_compliant | `Non_compliant | `Unrecognized of string ] option;
}

and restriction_evaluations = {
  member_restriction_evaluation : membership_role_restriction_evaluation option;
}

and rsa_public_key_info = {
  key_size : int option;
}

and saml_idp_config = {
  change_password_uri : string option;
  entity_id : string option;
  logout_redirect_uri : string option;
  single_sign_on_service_uri : string option;
}

and saml_sp_config = {
  assertion_consumer_service_uri : string option;
  entity_id : string option;
}

and saml_sso_info = {
  inbound_saml_sso_profile : string option;
}

and search_direct_groups_response = {
  memberships : membership_relation list option;
  next_page_token : string option;
}

and search_groups_response = {
  groups : group list option;
  next_page_token : string option;
}

and search_transitive_groups_response = {
  memberships : group_relation list option;
  next_page_token : string option;
}

and search_transitive_memberships_response = {
  memberships : member_relation list option;
  next_page_token : string option;
}

and security_settings = {
  member_restriction : member_restriction option;
  name : string option;
}

and send_user_invitation_request = Yojson.Safe.t

and setting = {
  type_ : string option;
  value : (string * Yojson.Safe.t) list option;
}

and sign_in_behavior = {
  redirect_condition : [ `Redirect_condition_unspecified | `Never | `Unrecognized of string ] option;
}

and status = {
  code : int option;
  details : (string * Yojson.Safe.t) list list option;
  message : string option;
}

and transitive_membership_role = {
  role : string option;
}

and update_group_metadata = Yojson.Safe.t

and update_inbound_oidc_sso_profile_operation_metadata = {
  state : string option;
}

and update_inbound_saml_sso_profile_operation_metadata = {
  state : string option;
}

and update_inbound_sso_assignment_operation_metadata = Yojson.Safe.t

and update_membership_metadata = Yojson.Safe.t

and update_membership_roles_params = {
  field_mask : string option;
  membership_role : membership_role option;
}

and user_invitation = {
  mails_sent_count : string option;
  name : string option;
  state : [ `State_unspecified | `Not_yet_sent | `Invited | `Accepted | `Declined | `Unrecognized of string ] option;
  update_time : string option;
}

let rec add_idp_credential_operation_metadata_of_yojson json : add_idp_credential_operation_metadata =
  let open Yojson.Safe.Util in
  {
    state = member "state" json |> to_option to_string;
  }

and yojson_of_add_idp_credential_operation_metadata (value : add_idp_credential_operation_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
       ])

and add_idp_credential_request_of_yojson json : add_idp_credential_request =
  let open Yojson.Safe.Util in
  {
    pem_data = member "pemData" json |> to_option to_string;
  }

and yojson_of_add_idp_credential_request (value : add_idp_credential_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("pemData", (fun value -> `String value) field)) value.pem_data;
       ])

and allowlisted_domain_of_yojson json : allowlisted_domain =
  let open Yojson.Safe.Util in
  {
    domain = member "domain" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_allowlisted_domain (value : allowlisted_domain) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("domain", (fun value -> `String value) field)) value.domain;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and cancel_user_invitation_request_of_yojson json : cancel_user_invitation_request =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_cancel_user_invitation_request (value : cancel_user_invitation_request) : Yojson.Safe.t = Fun.id value

and check_transitive_membership_response_of_yojson json : check_transitive_membership_response =
  let open Yojson.Safe.Util in
  {
    has_membership = member "hasMembership" json |> to_option to_bool;
  }

and yojson_of_check_transitive_membership_response (value : check_transitive_membership_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("hasMembership", (fun value -> `Bool value) field)) value.has_membership;
       ])

and create_group_metadata_of_yojson json : create_group_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_create_group_metadata (value : create_group_metadata) : Yojson.Safe.t = Fun.id value

and create_inbound_oidc_sso_profile_operation_metadata_of_yojson json : create_inbound_oidc_sso_profile_operation_metadata =
  let open Yojson.Safe.Util in
  {
    state = member "state" json |> to_option to_string;
  }

and yojson_of_create_inbound_oidc_sso_profile_operation_metadata (value : create_inbound_oidc_sso_profile_operation_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
       ])

and create_inbound_saml_sso_profile_operation_metadata_of_yojson json : create_inbound_saml_sso_profile_operation_metadata =
  let open Yojson.Safe.Util in
  {
    state = member "state" json |> to_option to_string;
  }

and yojson_of_create_inbound_saml_sso_profile_operation_metadata (value : create_inbound_saml_sso_profile_operation_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
       ])

and create_inbound_sso_assignment_operation_metadata_of_yojson json : create_inbound_sso_assignment_operation_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_create_inbound_sso_assignment_operation_metadata (value : create_inbound_sso_assignment_operation_metadata) : Yojson.Safe.t = Fun.id value

and create_membership_metadata_of_yojson json : create_membership_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_create_membership_metadata (value : create_membership_metadata) : Yojson.Safe.t = Fun.id value

and delete_group_metadata_of_yojson json : delete_group_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_delete_group_metadata (value : delete_group_metadata) : Yojson.Safe.t = Fun.id value

and delete_idp_credential_operation_metadata_of_yojson json : delete_idp_credential_operation_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_delete_idp_credential_operation_metadata (value : delete_idp_credential_operation_metadata) : Yojson.Safe.t = Fun.id value

and delete_inbound_oidc_sso_profile_operation_metadata_of_yojson json : delete_inbound_oidc_sso_profile_operation_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_delete_inbound_oidc_sso_profile_operation_metadata (value : delete_inbound_oidc_sso_profile_operation_metadata) : Yojson.Safe.t = Fun.id value

and delete_inbound_saml_sso_profile_operation_metadata_of_yojson json : delete_inbound_saml_sso_profile_operation_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_delete_inbound_saml_sso_profile_operation_metadata (value : delete_inbound_saml_sso_profile_operation_metadata) : Yojson.Safe.t = Fun.id value

and delete_inbound_sso_assignment_operation_metadata_of_yojson json : delete_inbound_sso_assignment_operation_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_delete_inbound_sso_assignment_operation_metadata (value : delete_inbound_sso_assignment_operation_metadata) : Yojson.Safe.t = Fun.id value

and delete_membership_metadata_of_yojson json : delete_membership_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_delete_membership_metadata (value : delete_membership_metadata) : Yojson.Safe.t = Fun.id value

and dsa_public_key_info_of_yojson json : dsa_public_key_info =
  let open Yojson.Safe.Util in
  {
    key_size = member "keySize" json |> to_option to_int;
  }

and yojson_of_dsa_public_key_info (value : dsa_public_key_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("keySize", (fun value -> `Int value) field)) value.key_size;
       ])

and dynamic_group_metadata_of_yojson json : dynamic_group_metadata =
  let open Yojson.Safe.Util in
  {
    queries = member "queries" json |> to_option (convert_each dynamic_group_query_of_yojson);
    status = member "status" json |> to_option dynamic_group_status_of_yojson;
  }

and yojson_of_dynamic_group_metadata (value : dynamic_group_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("queries", (fun items -> `List (List.map yojson_of_dynamic_group_query items)) field)) value.queries;
         Option.map (fun field -> ("status", yojson_of_dynamic_group_status field)) value.status;
       ])

and dynamic_group_query_of_yojson json : dynamic_group_query =
  let open Yojson.Safe.Util in
  {
    query = member "query" json |> to_option to_string;
    resource_type = member "resourceType" json |> to_option (fun json -> match to_string json with "RESOURCE_TYPE_UNSPECIFIED" -> `Resource_type_unspecified | "USER" -> `User | value -> `Unrecognized value);
  }

and yojson_of_dynamic_group_query (value : dynamic_group_query) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("query", (fun value -> `String value) field)) value.query;
         Option.map (fun field -> ("resourceType", (fun value -> `String ((function `Resource_type_unspecified -> "RESOURCE_TYPE_UNSPECIFIED" | `User -> "USER" | `Unrecognized value -> value) value)) field)) value.resource_type;
       ])

and dynamic_group_status_of_yojson json : dynamic_group_status =
  let open Yojson.Safe.Util in
  {
    status = member "status" json |> to_option (fun json -> match to_string json with "STATUS_UNSPECIFIED" -> `Status_unspecified | "UP_TO_DATE" -> `Up_to_date | "UPDATING_MEMBERSHIPS" -> `Updating_memberships | "INVALID_QUERY" -> `Invalid_query | value -> `Unrecognized value);
    status_time = member "statusTime" json |> to_option to_string;
  }

and yojson_of_dynamic_group_status (value : dynamic_group_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("status", (fun value -> `String ((function `Status_unspecified -> "STATUS_UNSPECIFIED" | `Up_to_date -> "UP_TO_DATE" | `Updating_memberships -> "UPDATING_MEMBERSHIPS" | `Invalid_query -> "INVALID_QUERY" | `Unrecognized value -> value) value)) field)) value.status;
         Option.map (fun field -> ("statusTime", (fun value -> `String value) field)) value.status_time;
       ])

and entity_key_of_yojson json : entity_key =
  let open Yojson.Safe.Util in
  {
    id = member "id" json |> to_option to_string;
    namespace = member "namespace" json |> to_option to_string;
  }

and yojson_of_entity_key (value : entity_key) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("namespace", (fun value -> `String value) field)) value.namespace;
       ])

and expiry_detail_of_yojson json : expiry_detail =
  let open Yojson.Safe.Util in
  {
    expire_time = member "expireTime" json |> to_option to_string;
  }

and yojson_of_expiry_detail (value : expiry_detail) : Yojson.Safe.t =
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

and get_membership_graph_metadata_of_yojson json : get_membership_graph_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_get_membership_graph_metadata (value : get_membership_graph_metadata) : Yojson.Safe.t = Fun.id value

and get_membership_graph_response_of_yojson json : get_membership_graph_response =
  let open Yojson.Safe.Util in
  {
    adjacency_list = member "adjacencyList" json |> to_option (convert_each membership_adjacency_list_of_yojson);
    groups = member "groups" json |> to_option (convert_each group_of_yojson);
  }

and yojson_of_get_membership_graph_response (value : get_membership_graph_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("adjacencyList", (fun items -> `List (List.map yojson_of_membership_adjacency_list items)) field)) value.adjacency_list;
         Option.map (fun field -> ("groups", (fun items -> `List (List.map yojson_of_group items)) field)) value.groups;
       ])

and google_apps_cloudidentity_devices_v1_android_attributes_of_yojson json : google_apps_cloudidentity_devices_v1_android_attributes =
  let open Yojson.Safe.Util in
  {
    cts_profile_match = member "ctsProfileMatch" json |> to_option to_bool;
    enabled_unknown_sources = member "enabledUnknownSources" json |> to_option to_bool;
    has_potentially_harmful_apps = member "hasPotentiallyHarmfulApps" json |> to_option to_bool;
    owner_profile_account = member "ownerProfileAccount" json |> to_option to_bool;
    ownership_privilege = member "ownershipPrivilege" json |> to_option (fun json -> match to_string json with "OWNERSHIP_PRIVILEGE_UNSPECIFIED" -> `Ownership_privilege_unspecified | "DEVICE_ADMINISTRATOR" -> `Device_administrator | "PROFILE_OWNER" -> `Profile_owner | "DEVICE_OWNER" -> `Device_owner | value -> `Unrecognized value);
    supports_work_profile = member "supportsWorkProfile" json |> to_option to_bool;
    verified_boot = member "verifiedBoot" json |> to_option to_bool;
    verify_apps_enabled = member "verifyAppsEnabled" json |> to_option to_bool;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_android_attributes (value : google_apps_cloudidentity_devices_v1_android_attributes) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ctsProfileMatch", (fun value -> `Bool value) field)) value.cts_profile_match;
         Option.map (fun field -> ("enabledUnknownSources", (fun value -> `Bool value) field)) value.enabled_unknown_sources;
         Option.map (fun field -> ("hasPotentiallyHarmfulApps", (fun value -> `Bool value) field)) value.has_potentially_harmful_apps;
         Option.map (fun field -> ("ownerProfileAccount", (fun value -> `Bool value) field)) value.owner_profile_account;
         Option.map (fun field -> ("ownershipPrivilege", (fun value -> `String ((function `Ownership_privilege_unspecified -> "OWNERSHIP_PRIVILEGE_UNSPECIFIED" | `Device_administrator -> "DEVICE_ADMINISTRATOR" | `Profile_owner -> "PROFILE_OWNER" | `Device_owner -> "DEVICE_OWNER" | `Unrecognized value -> value) value)) field)) value.ownership_privilege;
         Option.map (fun field -> ("supportsWorkProfile", (fun value -> `Bool value) field)) value.supports_work_profile;
         Option.map (fun field -> ("verifiedBoot", (fun value -> `Bool value) field)) value.verified_boot;
         Option.map (fun field -> ("verifyAppsEnabled", (fun value -> `Bool value) field)) value.verify_apps_enabled;
       ])

and google_apps_cloudidentity_devices_v1_approve_device_user_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_approve_device_user_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_approve_device_user_metadata (value : google_apps_cloudidentity_devices_v1_approve_device_user_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_approve_device_user_request_of_yojson json : google_apps_cloudidentity_devices_v1_approve_device_user_request =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_approve_device_user_request (value : google_apps_cloudidentity_devices_v1_approve_device_user_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
       ])

and google_apps_cloudidentity_devices_v1_approve_device_user_response_of_yojson json : google_apps_cloudidentity_devices_v1_approve_device_user_response =
  let open Yojson.Safe.Util in
  {
    device_user = member "deviceUser" json |> to_option google_apps_cloudidentity_devices_v1_device_user_of_yojson;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_approve_device_user_response (value : google_apps_cloudidentity_devices_v1_approve_device_user_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deviceUser", yojson_of_google_apps_cloudidentity_devices_v1_device_user field)) value.device_user;
       ])

and google_apps_cloudidentity_devices_v1_block_device_user_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_block_device_user_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_block_device_user_metadata (value : google_apps_cloudidentity_devices_v1_block_device_user_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_block_device_user_request_of_yojson json : google_apps_cloudidentity_devices_v1_block_device_user_request =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_block_device_user_request (value : google_apps_cloudidentity_devices_v1_block_device_user_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
       ])

and google_apps_cloudidentity_devices_v1_block_device_user_response_of_yojson json : google_apps_cloudidentity_devices_v1_block_device_user_response =
  let open Yojson.Safe.Util in
  {
    device_user = member "deviceUser" json |> to_option google_apps_cloudidentity_devices_v1_device_user_of_yojson;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_block_device_user_response (value : google_apps_cloudidentity_devices_v1_block_device_user_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deviceUser", yojson_of_google_apps_cloudidentity_devices_v1_device_user field)) value.device_user;
       ])

and google_apps_cloudidentity_devices_v1_browser_attributes_of_yojson json : google_apps_cloudidentity_devices_v1_browser_attributes =
  let open Yojson.Safe.Util in
  {
    chrome_browser_info = member "chromeBrowserInfo" json |> to_option google_apps_cloudidentity_devices_v1_browser_info_of_yojson;
    chrome_profile_id = member "chromeProfileId" json |> to_option to_string;
    last_profile_sync_time = member "lastProfileSyncTime" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_browser_attributes (value : google_apps_cloudidentity_devices_v1_browser_attributes) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("chromeBrowserInfo", yojson_of_google_apps_cloudidentity_devices_v1_browser_info field)) value.chrome_browser_info;
         Option.map (fun field -> ("chromeProfileId", (fun value -> `String value) field)) value.chrome_profile_id;
         Option.map (fun field -> ("lastProfileSyncTime", (fun value -> `String value) field)) value.last_profile_sync_time;
       ])

and google_apps_cloudidentity_devices_v1_browser_info_of_yojson json : google_apps_cloudidentity_devices_v1_browser_info =
  let open Yojson.Safe.Util in
  {
    browser_management_state = member "browserManagementState" json |> to_option (fun json -> match to_string json with "UNSPECIFIED" -> `Unspecified | "UNMANAGED" -> `Unmanaged | "MANAGED_BY_OTHER_DOMAIN" -> `Managed_by_other_domain | "PROFILE_MANAGED" -> `Profile_managed | "BROWSER_MANAGED" -> `Browser_managed | value -> `Unrecognized value);
    browser_version = member "browserVersion" json |> to_option to_string;
    is_built_in_dns_client_enabled = member "isBuiltInDnsClientEnabled" json |> to_option to_bool;
    is_bulk_data_entry_analysis_enabled = member "isBulkDataEntryAnalysisEnabled" json |> to_option to_bool;
    is_chrome_cleanup_enabled = member "isChromeCleanupEnabled" json |> to_option to_bool;
    is_chrome_remote_desktop_app_blocked = member "isChromeRemoteDesktopAppBlocked" json |> to_option to_bool;
    is_file_download_analysis_enabled = member "isFileDownloadAnalysisEnabled" json |> to_option to_bool;
    is_file_upload_analysis_enabled = member "isFileUploadAnalysisEnabled" json |> to_option to_bool;
    is_realtime_url_check_enabled = member "isRealtimeUrlCheckEnabled" json |> to_option to_bool;
    is_security_event_analysis_enabled = member "isSecurityEventAnalysisEnabled" json |> to_option to_bool;
    is_site_isolation_enabled = member "isSiteIsolationEnabled" json |> to_option to_bool;
    is_third_party_blocking_enabled = member "isThirdPartyBlockingEnabled" json |> to_option to_bool;
    password_protection_warning_trigger = member "passwordProtectionWarningTrigger" json |> to_option (fun json -> match to_string json with "PASSWORD_PROTECTION_TRIGGER_UNSPECIFIED" -> `Password_protection_trigger_unspecified | "PROTECTION_OFF" -> `Protection_off | "PASSWORD_REUSE" -> `Password_reuse | "PHISHING_REUSE" -> `Phishing_reuse | value -> `Unrecognized value);
    safe_browsing_protection_level = member "safeBrowsingProtectionLevel" json |> to_option (fun json -> match to_string json with "SAFE_BROWSING_LEVEL_UNSPECIFIED" -> `Safe_browsing_level_unspecified | "DISABLED" -> `Disabled | "STANDARD" -> `Standard | "ENHANCED" -> `Enhanced | value -> `Unrecognized value);
  }

and yojson_of_google_apps_cloudidentity_devices_v1_browser_info (value : google_apps_cloudidentity_devices_v1_browser_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("browserManagementState", (fun value -> `String ((function `Unspecified -> "UNSPECIFIED" | `Unmanaged -> "UNMANAGED" | `Managed_by_other_domain -> "MANAGED_BY_OTHER_DOMAIN" | `Profile_managed -> "PROFILE_MANAGED" | `Browser_managed -> "BROWSER_MANAGED" | `Unrecognized value -> value) value)) field)) value.browser_management_state;
         Option.map (fun field -> ("browserVersion", (fun value -> `String value) field)) value.browser_version;
         Option.map (fun field -> ("isBuiltInDnsClientEnabled", (fun value -> `Bool value) field)) value.is_built_in_dns_client_enabled;
         Option.map (fun field -> ("isBulkDataEntryAnalysisEnabled", (fun value -> `Bool value) field)) value.is_bulk_data_entry_analysis_enabled;
         Option.map (fun field -> ("isChromeCleanupEnabled", (fun value -> `Bool value) field)) value.is_chrome_cleanup_enabled;
         Option.map (fun field -> ("isChromeRemoteDesktopAppBlocked", (fun value -> `Bool value) field)) value.is_chrome_remote_desktop_app_blocked;
         Option.map (fun field -> ("isFileDownloadAnalysisEnabled", (fun value -> `Bool value) field)) value.is_file_download_analysis_enabled;
         Option.map (fun field -> ("isFileUploadAnalysisEnabled", (fun value -> `Bool value) field)) value.is_file_upload_analysis_enabled;
         Option.map (fun field -> ("isRealtimeUrlCheckEnabled", (fun value -> `Bool value) field)) value.is_realtime_url_check_enabled;
         Option.map (fun field -> ("isSecurityEventAnalysisEnabled", (fun value -> `Bool value) field)) value.is_security_event_analysis_enabled;
         Option.map (fun field -> ("isSiteIsolationEnabled", (fun value -> `Bool value) field)) value.is_site_isolation_enabled;
         Option.map (fun field -> ("isThirdPartyBlockingEnabled", (fun value -> `Bool value) field)) value.is_third_party_blocking_enabled;
         Option.map (fun field -> ("passwordProtectionWarningTrigger", (fun value -> `String ((function `Password_protection_trigger_unspecified -> "PASSWORD_PROTECTION_TRIGGER_UNSPECIFIED" | `Protection_off -> "PROTECTION_OFF" | `Password_reuse -> "PASSWORD_REUSE" | `Phishing_reuse -> "PHISHING_REUSE" | `Unrecognized value -> value) value)) field)) value.password_protection_warning_trigger;
         Option.map (fun field -> ("safeBrowsingProtectionLevel", (fun value -> `String ((function `Safe_browsing_level_unspecified -> "SAFE_BROWSING_LEVEL_UNSPECIFIED" | `Disabled -> "DISABLED" | `Standard -> "STANDARD" | `Enhanced -> "ENHANCED" | `Unrecognized value -> value) value)) field)) value.safe_browsing_protection_level;
       ])

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_cancel_wipe_device_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_metadata (value : google_apps_cloudidentity_devices_v1_cancel_wipe_device_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_request_of_yojson json : google_apps_cloudidentity_devices_v1_cancel_wipe_device_request =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_request (value : google_apps_cloudidentity_devices_v1_cancel_wipe_device_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
       ])

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_response_of_yojson json : google_apps_cloudidentity_devices_v1_cancel_wipe_device_response =
  let open Yojson.Safe.Util in
  {
    device = member "device" json |> to_option google_apps_cloudidentity_devices_v1_device_of_yojson;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_response (value : google_apps_cloudidentity_devices_v1_cancel_wipe_device_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("device", yojson_of_google_apps_cloudidentity_devices_v1_device field)) value.device;
       ])

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_metadata (value : google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request_of_yojson json : google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request (value : google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
       ])

and google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response_of_yojson json : google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response =
  let open Yojson.Safe.Util in
  {
    device_user = member "deviceUser" json |> to_option google_apps_cloudidentity_devices_v1_device_user_of_yojson;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response (value : google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deviceUser", yojson_of_google_apps_cloudidentity_devices_v1_device_user field)) value.device_user;
       ])

and google_apps_cloudidentity_devices_v1_certificate_attributes_of_yojson json : google_apps_cloudidentity_devices_v1_certificate_attributes =
  let open Yojson.Safe.Util in
  {
    certificate_template = member "certificateTemplate" json |> to_option google_apps_cloudidentity_devices_v1_certificate_template_of_yojson;
    fingerprint = member "fingerprint" json |> to_option to_string;
    issuer = member "issuer" json |> to_option to_string;
    serial_number = member "serialNumber" json |> to_option to_string;
    subject = member "subject" json |> to_option to_string;
    thumbprint = member "thumbprint" json |> to_option to_string;
    validation_state = member "validationState" json |> to_option (fun json -> match to_string json with "CERTIFICATE_VALIDATION_STATE_UNSPECIFIED" -> `Certificate_validation_state_unspecified | "VALIDATION_SUCCESSFUL" -> `Validation_successful | "VALIDATION_FAILED" -> `Validation_failed | value -> `Unrecognized value);
    validity_expiration_time = member "validityExpirationTime" json |> to_option to_string;
    validity_start_time = member "validityStartTime" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_certificate_attributes (value : google_apps_cloudidentity_devices_v1_certificate_attributes) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("certificateTemplate", yojson_of_google_apps_cloudidentity_devices_v1_certificate_template field)) value.certificate_template;
         Option.map (fun field -> ("fingerprint", (fun value -> `String value) field)) value.fingerprint;
         Option.map (fun field -> ("issuer", (fun value -> `String value) field)) value.issuer;
         Option.map (fun field -> ("serialNumber", (fun value -> `String value) field)) value.serial_number;
         Option.map (fun field -> ("subject", (fun value -> `String value) field)) value.subject;
         Option.map (fun field -> ("thumbprint", (fun value -> `String value) field)) value.thumbprint;
         Option.map (fun field -> ("validationState", (fun value -> `String ((function `Certificate_validation_state_unspecified -> "CERTIFICATE_VALIDATION_STATE_UNSPECIFIED" | `Validation_successful -> "VALIDATION_SUCCESSFUL" | `Validation_failed -> "VALIDATION_FAILED" | `Unrecognized value -> value) value)) field)) value.validation_state;
         Option.map (fun field -> ("validityExpirationTime", (fun value -> `String value) field)) value.validity_expiration_time;
         Option.map (fun field -> ("validityStartTime", (fun value -> `String value) field)) value.validity_start_time;
       ])

and google_apps_cloudidentity_devices_v1_certificate_template_of_yojson json : google_apps_cloudidentity_devices_v1_certificate_template =
  let open Yojson.Safe.Util in
  {
    id = member "id" json |> to_option to_string;
    major_version = member "majorVersion" json |> to_option to_int;
    minor_version = member "minorVersion" json |> to_option to_int;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_certificate_template (value : google_apps_cloudidentity_devices_v1_certificate_template) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("majorVersion", (fun value -> `Int value) field)) value.major_version;
         Option.map (fun field -> ("minorVersion", (fun value -> `Int value) field)) value.minor_version;
       ])

and google_apps_cloudidentity_devices_v1_client_state_of_yojson json : google_apps_cloudidentity_devices_v1_client_state =
  let open Yojson.Safe.Util in
  {
    asset_tags = member "assetTags" json |> to_option (convert_each to_string);
    compliance_state = member "complianceState" json |> to_option (fun json -> match to_string json with "COMPLIANCE_STATE_UNSPECIFIED" -> `Compliance_state_unspecified | "COMPLIANT" -> `Compliant | "NON_COMPLIANT" -> `Non_compliant | value -> `Unrecognized value);
    create_time = member "createTime" json |> to_option to_string;
    custom_id = member "customId" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    health_score = member "healthScore" json |> to_option (fun json -> match to_string json with "HEALTH_SCORE_UNSPECIFIED" -> `Health_score_unspecified | "VERY_POOR" -> `Very_poor | "POOR" -> `Poor | "NEUTRAL" -> `Neutral | "GOOD" -> `Good | "VERY_GOOD" -> `Very_good | value -> `Unrecognized value);
    key_value_pairs = member "keyValuePairs" json |> to_option (fun json -> List.map (fun (key, value) -> (key, google_apps_cloudidentity_devices_v1_custom_attribute_value_of_yojson value)) (to_assoc json));
    last_update_time = member "lastUpdateTime" json |> to_option to_string;
    managed = member "managed" json |> to_option (fun json -> match to_string json with "MANAGED_STATE_UNSPECIFIED" -> `Managed_state_unspecified | "MANAGED" -> `Managed | "UNMANAGED" -> `Unmanaged | value -> `Unrecognized value);
    name = member "name" json |> to_option to_string;
    owner_type = member "ownerType" json |> to_option (fun json -> match to_string json with "OWNER_TYPE_UNSPECIFIED" -> `Owner_type_unspecified | "OWNER_TYPE_CUSTOMER" -> `Owner_type_customer | "OWNER_TYPE_PARTNER" -> `Owner_type_partner | value -> `Unrecognized value);
    score_reason = member "scoreReason" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_client_state (value : google_apps_cloudidentity_devices_v1_client_state) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("assetTags", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.asset_tags;
         Option.map (fun field -> ("complianceState", (fun value -> `String ((function `Compliance_state_unspecified -> "COMPLIANCE_STATE_UNSPECIFIED" | `Compliant -> "COMPLIANT" | `Non_compliant -> "NON_COMPLIANT" | `Unrecognized value -> value) value)) field)) value.compliance_state;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("customId", (fun value -> `String value) field)) value.custom_id;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("healthScore", (fun value -> `String ((function `Health_score_unspecified -> "HEALTH_SCORE_UNSPECIFIED" | `Very_poor -> "VERY_POOR" | `Poor -> "POOR" | `Neutral -> "NEUTRAL" | `Good -> "GOOD" | `Very_good -> "VERY_GOOD" | `Unrecognized value -> value) value)) field)) value.health_score;
         Option.map (fun field -> ("keyValuePairs", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_google_apps_cloudidentity_devices_v1_custom_attribute_value value)) members)) field)) value.key_value_pairs;
         Option.map (fun field -> ("lastUpdateTime", (fun value -> `String value) field)) value.last_update_time;
         Option.map (fun field -> ("managed", (fun value -> `String ((function `Managed_state_unspecified -> "MANAGED_STATE_UNSPECIFIED" | `Managed -> "MANAGED" | `Unmanaged -> "UNMANAGED" | `Unrecognized value -> value) value)) field)) value.managed;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("ownerType", (fun value -> `String ((function `Owner_type_unspecified -> "OWNER_TYPE_UNSPECIFIED" | `Owner_type_customer -> "OWNER_TYPE_CUSTOMER" | `Owner_type_partner -> "OWNER_TYPE_PARTNER" | `Unrecognized value -> value) value)) field)) value.owner_type;
         Option.map (fun field -> ("scoreReason", (fun value -> `String value) field)) value.score_reason;
       ])

and google_apps_cloudidentity_devices_v1_create_device_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_create_device_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_create_device_metadata (value : google_apps_cloudidentity_devices_v1_create_device_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_custom_attribute_value_of_yojson json : google_apps_cloudidentity_devices_v1_custom_attribute_value =
  let open Yojson.Safe.Util in
  {
    bool_value = member "boolValue" json |> to_option to_bool;
    number_value = member "numberValue" json |> to_option to_number;
    string_value = member "stringValue" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_custom_attribute_value (value : google_apps_cloudidentity_devices_v1_custom_attribute_value) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("boolValue", (fun value -> `Bool value) field)) value.bool_value;
         Option.map (fun field -> ("numberValue", (fun value -> `Float value) field)) value.number_value;
         Option.map (fun field -> ("stringValue", (fun value -> `String value) field)) value.string_value;
       ])

and google_apps_cloudidentity_devices_v1_delete_device_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_delete_device_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_delete_device_metadata (value : google_apps_cloudidentity_devices_v1_delete_device_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_delete_device_user_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_delete_device_user_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_delete_device_user_metadata (value : google_apps_cloudidentity_devices_v1_delete_device_user_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_device_of_yojson json : google_apps_cloudidentity_devices_v1_device =
  let open Yojson.Safe.Util in
  {
    android_specific_attributes = member "androidSpecificAttributes" json |> to_option google_apps_cloudidentity_devices_v1_android_attributes_of_yojson;
    asset_tag = member "assetTag" json |> to_option to_string;
    baseband_version = member "basebandVersion" json |> to_option to_string;
    bootloader_version = member "bootloaderVersion" json |> to_option to_string;
    brand = member "brand" json |> to_option to_string;
    build_number = member "buildNumber" json |> to_option to_string;
    compromised_state = member "compromisedState" json |> to_option (fun json -> match to_string json with "COMPROMISED_STATE_UNSPECIFIED" -> `Compromised_state_unspecified | "COMPROMISED" -> `Compromised | "UNCOMPROMISED" -> `Uncompromised | value -> `Unrecognized value);
    create_time = member "createTime" json |> to_option to_string;
    device_id = member "deviceId" json |> to_option to_string;
    device_type = member "deviceType" json |> to_option (fun json -> match to_string json with "DEVICE_TYPE_UNSPECIFIED" -> `Device_type_unspecified | "ANDROID" -> `Android | "IOS" -> `Ios | "GOOGLE_SYNC" -> `Google_sync | "WINDOWS" -> `Windows | "MAC_OS" -> `Mac_os | "LINUX" -> `Linux | "CHROME_OS" -> `Chrome_os | "GOOGLEBOOK" -> `Googlebook | value -> `Unrecognized value);
    enabled_developer_options = member "enabledDeveloperOptions" json |> to_option to_bool;
    enabled_usb_debugging = member "enabledUsbDebugging" json |> to_option to_bool;
    encryption_state = member "encryptionState" json |> to_option (fun json -> match to_string json with "ENCRYPTION_STATE_UNSPECIFIED" -> `Encryption_state_unspecified | "UNSUPPORTED_BY_DEVICE" -> `Unsupported_by_device | "ENCRYPTED" -> `Encrypted | "NOT_ENCRYPTED" -> `Not_encrypted | value -> `Unrecognized value);
    endpoint_verification_specific_attributes = member "endpointVerificationSpecificAttributes" json |> to_option google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes_of_yojson;
    hostname = member "hostname" json |> to_option to_string;
    imei = member "imei" json |> to_option to_string;
    kernel_version = member "kernelVersion" json |> to_option to_string;
    last_sync_time = member "lastSyncTime" json |> to_option to_string;
    management_state = member "managementState" json |> to_option (fun json -> match to_string json with "MANAGEMENT_STATE_UNSPECIFIED" -> `Management_state_unspecified | "APPROVED" -> `Approved | "BLOCKED" -> `Blocked | "PENDING" -> `Pending | "UNPROVISIONED" -> `Unprovisioned | "WIPING" -> `Wiping | "WIPED" -> `Wiped | value -> `Unrecognized value);
    manufacturer = member "manufacturer" json |> to_option to_string;
    meid = member "meid" json |> to_option to_string;
    model = member "model" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    network_operator = member "networkOperator" json |> to_option to_string;
    os_version = member "osVersion" json |> to_option to_string;
    other_accounts = member "otherAccounts" json |> to_option (convert_each to_string);
    owner_type = member "ownerType" json |> to_option (fun json -> match to_string json with "DEVICE_OWNERSHIP_UNSPECIFIED" -> `Device_ownership_unspecified | "COMPANY" -> `Company | "BYOD" -> `Byod | value -> `Unrecognized value);
    release_version = member "releaseVersion" json |> to_option to_string;
    security_patch_time = member "securityPatchTime" json |> to_option to_string;
    serial_number = member "serialNumber" json |> to_option to_string;
    unified_device_id = member "unifiedDeviceId" json |> to_option to_string;
    wifi_mac_addresses = member "wifiMacAddresses" json |> to_option (convert_each to_string);
  }

and yojson_of_google_apps_cloudidentity_devices_v1_device (value : google_apps_cloudidentity_devices_v1_device) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("androidSpecificAttributes", yojson_of_google_apps_cloudidentity_devices_v1_android_attributes field)) value.android_specific_attributes;
         Option.map (fun field -> ("assetTag", (fun value -> `String value) field)) value.asset_tag;
         Option.map (fun field -> ("basebandVersion", (fun value -> `String value) field)) value.baseband_version;
         Option.map (fun field -> ("bootloaderVersion", (fun value -> `String value) field)) value.bootloader_version;
         Option.map (fun field -> ("brand", (fun value -> `String value) field)) value.brand;
         Option.map (fun field -> ("buildNumber", (fun value -> `String value) field)) value.build_number;
         Option.map (fun field -> ("compromisedState", (fun value -> `String ((function `Compromised_state_unspecified -> "COMPROMISED_STATE_UNSPECIFIED" | `Compromised -> "COMPROMISED" | `Uncompromised -> "UNCOMPROMISED" | `Unrecognized value -> value) value)) field)) value.compromised_state;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("deviceId", (fun value -> `String value) field)) value.device_id;
         Option.map (fun field -> ("deviceType", (fun value -> `String ((function `Device_type_unspecified -> "DEVICE_TYPE_UNSPECIFIED" | `Android -> "ANDROID" | `Ios -> "IOS" | `Google_sync -> "GOOGLE_SYNC" | `Windows -> "WINDOWS" | `Mac_os -> "MAC_OS" | `Linux -> "LINUX" | `Chrome_os -> "CHROME_OS" | `Googlebook -> "GOOGLEBOOK" | `Unrecognized value -> value) value)) field)) value.device_type;
         Option.map (fun field -> ("enabledDeveloperOptions", (fun value -> `Bool value) field)) value.enabled_developer_options;
         Option.map (fun field -> ("enabledUsbDebugging", (fun value -> `Bool value) field)) value.enabled_usb_debugging;
         Option.map (fun field -> ("encryptionState", (fun value -> `String ((function `Encryption_state_unspecified -> "ENCRYPTION_STATE_UNSPECIFIED" | `Unsupported_by_device -> "UNSUPPORTED_BY_DEVICE" | `Encrypted -> "ENCRYPTED" | `Not_encrypted -> "NOT_ENCRYPTED" | `Unrecognized value -> value) value)) field)) value.encryption_state;
         Option.map (fun field -> ("endpointVerificationSpecificAttributes", yojson_of_google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes field)) value.endpoint_verification_specific_attributes;
         Option.map (fun field -> ("hostname", (fun value -> `String value) field)) value.hostname;
         Option.map (fun field -> ("imei", (fun value -> `String value) field)) value.imei;
         Option.map (fun field -> ("kernelVersion", (fun value -> `String value) field)) value.kernel_version;
         Option.map (fun field -> ("lastSyncTime", (fun value -> `String value) field)) value.last_sync_time;
         Option.map (fun field -> ("managementState", (fun value -> `String ((function `Management_state_unspecified -> "MANAGEMENT_STATE_UNSPECIFIED" | `Approved -> "APPROVED" | `Blocked -> "BLOCKED" | `Pending -> "PENDING" | `Unprovisioned -> "UNPROVISIONED" | `Wiping -> "WIPING" | `Wiped -> "WIPED" | `Unrecognized value -> value) value)) field)) value.management_state;
         Option.map (fun field -> ("manufacturer", (fun value -> `String value) field)) value.manufacturer;
         Option.map (fun field -> ("meid", (fun value -> `String value) field)) value.meid;
         Option.map (fun field -> ("model", (fun value -> `String value) field)) value.model;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("networkOperator", (fun value -> `String value) field)) value.network_operator;
         Option.map (fun field -> ("osVersion", (fun value -> `String value) field)) value.os_version;
         Option.map (fun field -> ("otherAccounts", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.other_accounts;
         Option.map (fun field -> ("ownerType", (fun value -> `String ((function `Device_ownership_unspecified -> "DEVICE_OWNERSHIP_UNSPECIFIED" | `Company -> "COMPANY" | `Byod -> "BYOD" | `Unrecognized value -> value) value)) field)) value.owner_type;
         Option.map (fun field -> ("releaseVersion", (fun value -> `String value) field)) value.release_version;
         Option.map (fun field -> ("securityPatchTime", (fun value -> `String value) field)) value.security_patch_time;
         Option.map (fun field -> ("serialNumber", (fun value -> `String value) field)) value.serial_number;
         Option.map (fun field -> ("unifiedDeviceId", (fun value -> `String value) field)) value.unified_device_id;
         Option.map (fun field -> ("wifiMacAddresses", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.wifi_mac_addresses;
       ])

and google_apps_cloudidentity_devices_v1_device_user_of_yojson json : google_apps_cloudidentity_devices_v1_device_user =
  let open Yojson.Safe.Util in
  {
    compromised_state = member "compromisedState" json |> to_option (fun json -> match to_string json with "COMPROMISED_STATE_UNSPECIFIED" -> `Compromised_state_unspecified | "COMPROMISED" -> `Compromised | "NOT_COMPROMISED" -> `Not_compromised | value -> `Unrecognized value);
    create_time = member "createTime" json |> to_option to_string;
    first_sync_time = member "firstSyncTime" json |> to_option to_string;
    language_code = member "languageCode" json |> to_option to_string;
    last_sync_time = member "lastSyncTime" json |> to_option to_string;
    management_state = member "managementState" json |> to_option (fun json -> match to_string json with "MANAGEMENT_STATE_UNSPECIFIED" -> `Management_state_unspecified | "WIPING" -> `Wiping | "WIPED" -> `Wiped | "APPROVED" -> `Approved | "BLOCKED" -> `Blocked | "PENDING_APPROVAL" -> `Pending_approval | "UNENROLLED" -> `Unenrolled | value -> `Unrecognized value);
    name = member "name" json |> to_option to_string;
    password_state = member "passwordState" json |> to_option (fun json -> match to_string json with "PASSWORD_STATE_UNSPECIFIED" -> `Password_state_unspecified | "PASSWORD_SET" -> `Password_set | "PASSWORD_NOT_SET" -> `Password_not_set | value -> `Unrecognized value);
    user_agent = member "userAgent" json |> to_option to_string;
    user_email = member "userEmail" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_device_user (value : google_apps_cloudidentity_devices_v1_device_user) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("compromisedState", (fun value -> `String ((function `Compromised_state_unspecified -> "COMPROMISED_STATE_UNSPECIFIED" | `Compromised -> "COMPROMISED" | `Not_compromised -> "NOT_COMPROMISED" | `Unrecognized value -> value) value)) field)) value.compromised_state;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("firstSyncTime", (fun value -> `String value) field)) value.first_sync_time;
         Option.map (fun field -> ("languageCode", (fun value -> `String value) field)) value.language_code;
         Option.map (fun field -> ("lastSyncTime", (fun value -> `String value) field)) value.last_sync_time;
         Option.map (fun field -> ("managementState", (fun value -> `String ((function `Management_state_unspecified -> "MANAGEMENT_STATE_UNSPECIFIED" | `Wiping -> "WIPING" | `Wiped -> "WIPED" | `Approved -> "APPROVED" | `Blocked -> "BLOCKED" | `Pending_approval -> "PENDING_APPROVAL" | `Unenrolled -> "UNENROLLED" | `Unrecognized value -> value) value)) field)) value.management_state;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("passwordState", (fun value -> `String ((function `Password_state_unspecified -> "PASSWORD_STATE_UNSPECIFIED" | `Password_set -> "PASSWORD_SET" | `Password_not_set -> "PASSWORD_NOT_SET" | `Unrecognized value -> value) value)) field)) value.password_state;
         Option.map (fun field -> ("userAgent", (fun value -> `String value) field)) value.user_agent;
         Option.map (fun field -> ("userEmail", (fun value -> `String value) field)) value.user_email;
       ])

and google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes_of_yojson json : google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes =
  let open Yojson.Safe.Util in
  {
    additional_signals = member "additionalSignals" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
    browser_attributes = member "browserAttributes" json |> to_option (convert_each google_apps_cloudidentity_devices_v1_browser_attributes_of_yojson);
    certificate_attributes = member "certificateAttributes" json |> to_option (convert_each google_apps_cloudidentity_devices_v1_certificate_attributes_of_yojson);
  }

and yojson_of_google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes (value : google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("additionalSignals", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.additional_signals;
         Option.map (fun field -> ("browserAttributes", (fun items -> `List (List.map yojson_of_google_apps_cloudidentity_devices_v1_browser_attributes items)) field)) value.browser_attributes;
         Option.map (fun field -> ("certificateAttributes", (fun items -> `List (List.map yojson_of_google_apps_cloudidentity_devices_v1_certificate_attributes items)) field)) value.certificate_attributes;
       ])

and google_apps_cloudidentity_devices_v1_list_client_states_response_of_yojson json : google_apps_cloudidentity_devices_v1_list_client_states_response =
  let open Yojson.Safe.Util in
  {
    client_states = member "clientStates" json |> to_option (convert_each google_apps_cloudidentity_devices_v1_client_state_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_list_client_states_response (value : google_apps_cloudidentity_devices_v1_list_client_states_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("clientStates", (fun items -> `List (List.map yojson_of_google_apps_cloudidentity_devices_v1_client_state items)) field)) value.client_states;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and google_apps_cloudidentity_devices_v1_list_device_users_response_of_yojson json : google_apps_cloudidentity_devices_v1_list_device_users_response =
  let open Yojson.Safe.Util in
  {
    device_users = member "deviceUsers" json |> to_option (convert_each google_apps_cloudidentity_devices_v1_device_user_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_list_device_users_response (value : google_apps_cloudidentity_devices_v1_list_device_users_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deviceUsers", (fun items -> `List (List.map yojson_of_google_apps_cloudidentity_devices_v1_device_user items)) field)) value.device_users;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and google_apps_cloudidentity_devices_v1_list_devices_response_of_yojson json : google_apps_cloudidentity_devices_v1_list_devices_response =
  let open Yojson.Safe.Util in
  {
    devices = member "devices" json |> to_option (convert_each google_apps_cloudidentity_devices_v1_device_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_list_devices_response (value : google_apps_cloudidentity_devices_v1_list_devices_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("devices", (fun items -> `List (List.map yojson_of_google_apps_cloudidentity_devices_v1_device items)) field)) value.devices;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and google_apps_cloudidentity_devices_v1_list_endpoint_apps_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_list_endpoint_apps_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_list_endpoint_apps_metadata (value : google_apps_cloudidentity_devices_v1_list_endpoint_apps_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_lookup_self_device_users_response_of_yojson json : google_apps_cloudidentity_devices_v1_lookup_self_device_users_response =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
    names = member "names" json |> to_option (convert_each to_string);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_lookup_self_device_users_response (value : google_apps_cloudidentity_devices_v1_lookup_self_device_users_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
         Option.map (fun field -> ("names", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.names;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and google_apps_cloudidentity_devices_v1_signout_device_user_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_signout_device_user_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_signout_device_user_metadata (value : google_apps_cloudidentity_devices_v1_signout_device_user_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_update_client_state_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_update_client_state_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_update_client_state_metadata (value : google_apps_cloudidentity_devices_v1_update_client_state_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_update_device_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_update_device_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_update_device_metadata (value : google_apps_cloudidentity_devices_v1_update_device_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_wipe_device_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_wipe_device_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_metadata (value : google_apps_cloudidentity_devices_v1_wipe_device_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_wipe_device_request_of_yojson json : google_apps_cloudidentity_devices_v1_wipe_device_request =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
    remove_reset_lock = member "removeResetLock" json |> to_option to_bool;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_request (value : google_apps_cloudidentity_devices_v1_wipe_device_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
         Option.map (fun field -> ("removeResetLock", (fun value -> `Bool value) field)) value.remove_reset_lock;
       ])

and google_apps_cloudidentity_devices_v1_wipe_device_response_of_yojson json : google_apps_cloudidentity_devices_v1_wipe_device_response =
  let open Yojson.Safe.Util in
  {
    device = member "device" json |> to_option google_apps_cloudidentity_devices_v1_device_of_yojson;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_response (value : google_apps_cloudidentity_devices_v1_wipe_device_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("device", yojson_of_google_apps_cloudidentity_devices_v1_device field)) value.device;
       ])

and google_apps_cloudidentity_devices_v1_wipe_device_user_metadata_of_yojson json : google_apps_cloudidentity_devices_v1_wipe_device_user_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_user_metadata (value : google_apps_cloudidentity_devices_v1_wipe_device_user_metadata) : Yojson.Safe.t = Fun.id value

and google_apps_cloudidentity_devices_v1_wipe_device_user_request_of_yojson json : google_apps_cloudidentity_devices_v1_wipe_device_user_request =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_user_request (value : google_apps_cloudidentity_devices_v1_wipe_device_user_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
       ])

and google_apps_cloudidentity_devices_v1_wipe_device_user_response_of_yojson json : google_apps_cloudidentity_devices_v1_wipe_device_user_response =
  let open Yojson.Safe.Util in
  {
    device_user = member "deviceUser" json |> to_option google_apps_cloudidentity_devices_v1_device_user_of_yojson;
  }

and yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_user_response (value : google_apps_cloudidentity_devices_v1_wipe_device_user_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deviceUser", yojson_of_google_apps_cloudidentity_devices_v1_device_user field)) value.device_user;
       ])

and group_of_yojson json : group =
  let open Yojson.Safe.Util in
  {
    additional_group_keys = member "additionalGroupKeys" json |> to_option (convert_each entity_key_of_yojson);
    create_time = member "createTime" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    display_name = member "displayName" json |> to_option to_string;
    dynamic_group_metadata = member "dynamicGroupMetadata" json |> to_option dynamic_group_metadata_of_yojson;
    external_ids = member "externalIds" json |> to_option (convert_each external_id_of_yojson);
    group_key = member "groupKey" json |> to_option entity_key_of_yojson;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    name = member "name" json |> to_option to_string;
    parent = member "parent" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
  }

and yojson_of_group (value : group) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("additionalGroupKeys", (fun items -> `List (List.map yojson_of_entity_key items)) field)) value.additional_group_keys;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("dynamicGroupMetadata", yojson_of_dynamic_group_metadata field)) value.dynamic_group_metadata;
         Option.map (fun field -> ("externalIds", (fun items -> `List (List.map yojson_of_external_id items)) field)) value.external_ids;
         Option.map (fun field -> ("groupKey", yojson_of_entity_key field)) value.group_key;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("parent", (fun value -> `String value) field)) value.parent;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
       ])

and group_relation_of_yojson json : group_relation =
  let open Yojson.Safe.Util in
  {
    display_name = member "displayName" json |> to_option to_string;
    group = member "group" json |> to_option to_string;
    group_key = member "groupKey" json |> to_option entity_key_of_yojson;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    relation_type = member "relationType" json |> to_option (fun json -> match to_string json with "RELATION_TYPE_UNSPECIFIED" -> `Relation_type_unspecified | "DIRECT" -> `Direct | "INDIRECT" -> `Indirect | "DIRECT_AND_INDIRECT" -> `Direct_and_indirect | value -> `Unrecognized value);
    roles = member "roles" json |> to_option (convert_each transitive_membership_role_of_yojson);
  }

and yojson_of_group_relation (value : group_relation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("group", (fun value -> `String value) field)) value.group;
         Option.map (fun field -> ("groupKey", yojson_of_entity_key field)) value.group_key;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("relationType", (fun value -> `String ((function `Relation_type_unspecified -> "RELATION_TYPE_UNSPECIFIED" | `Direct -> "DIRECT" | `Indirect -> "INDIRECT" | `Direct_and_indirect -> "DIRECT_AND_INDIRECT" | `Unrecognized value -> value) value)) field)) value.relation_type;
         Option.map (fun field -> ("roles", (fun items -> `List (List.map yojson_of_transitive_membership_role items)) field)) value.roles;
       ])

and idp_credential_of_yojson json : idp_credential =
  let open Yojson.Safe.Util in
  {
    dsa_key_info = member "dsaKeyInfo" json |> to_option dsa_public_key_info_of_yojson;
    name = member "name" json |> to_option to_string;
    rsa_key_info = member "rsaKeyInfo" json |> to_option rsa_public_key_info_of_yojson;
    update_time = member "updateTime" json |> to_option to_string;
  }

and yojson_of_idp_credential (value : idp_credential) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dsaKeyInfo", yojson_of_dsa_public_key_info field)) value.dsa_key_info;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("rsaKeyInfo", yojson_of_rsa_public_key_info field)) value.rsa_key_info;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
       ])

and inbound_oidc_sso_profile_of_yojson json : inbound_oidc_sso_profile =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
    display_name = member "displayName" json |> to_option to_string;
    idp_config = member "idpConfig" json |> to_option oidc_idp_config_of_yojson;
    name = member "name" json |> to_option to_string;
    rp_config = member "rpConfig" json |> to_option oidc_rp_config_of_yojson;
  }

and yojson_of_inbound_oidc_sso_profile (value : inbound_oidc_sso_profile) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("idpConfig", yojson_of_oidc_idp_config field)) value.idp_config;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("rpConfig", yojson_of_oidc_rp_config field)) value.rp_config;
       ])

and inbound_saml_sso_profile_of_yojson json : inbound_saml_sso_profile =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
    display_name = member "displayName" json |> to_option to_string;
    idp_config = member "idpConfig" json |> to_option saml_idp_config_of_yojson;
    name = member "name" json |> to_option to_string;
    sp_config = member "spConfig" json |> to_option saml_sp_config_of_yojson;
  }

and yojson_of_inbound_saml_sso_profile (value : inbound_saml_sso_profile) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("idpConfig", yojson_of_saml_idp_config field)) value.idp_config;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("spConfig", yojson_of_saml_sp_config field)) value.sp_config;
       ])

and inbound_sso_assignment_of_yojson json : inbound_sso_assignment =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    oidc_sso_info = member "oidcSsoInfo" json |> to_option oidc_sso_info_of_yojson;
    rank = member "rank" json |> to_option to_int;
    saml_sso_info = member "samlSsoInfo" json |> to_option saml_sso_info_of_yojson;
    sign_in_behavior = member "signInBehavior" json |> to_option sign_in_behavior_of_yojson;
    sso_mode = member "ssoMode" json |> to_option (fun json -> match to_string json with "SSO_MODE_UNSPECIFIED" -> `Sso_mode_unspecified | "SSO_OFF" -> `Sso_off | "SAML_SSO" -> `Saml_sso | "OIDC_SSO" -> `Oidc_sso | "DOMAIN_WIDE_SAML_IF_ENABLED" -> `Domain_wide_saml_if_enabled | value -> `Unrecognized value);
    target_group = member "targetGroup" json |> to_option to_string;
    target_org_unit = member "targetOrgUnit" json |> to_option to_string;
  }

and yojson_of_inbound_sso_assignment (value : inbound_sso_assignment) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("oidcSsoInfo", yojson_of_oidc_sso_info field)) value.oidc_sso_info;
         Option.map (fun field -> ("rank", (fun value -> `Int value) field)) value.rank;
         Option.map (fun field -> ("samlSsoInfo", yojson_of_saml_sso_info field)) value.saml_sso_info;
         Option.map (fun field -> ("signInBehavior", yojson_of_sign_in_behavior field)) value.sign_in_behavior;
         Option.map (fun field -> ("ssoMode", (fun value -> `String ((function `Sso_mode_unspecified -> "SSO_MODE_UNSPECIFIED" | `Sso_off -> "SSO_OFF" | `Saml_sso -> "SAML_SSO" | `Oidc_sso -> "OIDC_SSO" | `Domain_wide_saml_if_enabled -> "DOMAIN_WIDE_SAML_IF_ENABLED" | `Unrecognized value -> value) value)) field)) value.sso_mode;
         Option.map (fun field -> ("targetGroup", (fun value -> `String value) field)) value.target_group;
         Option.map (fun field -> ("targetOrgUnit", (fun value -> `String value) field)) value.target_org_unit;
       ])

and is_invitable_user_response_of_yojson json : is_invitable_user_response =
  let open Yojson.Safe.Util in
  {
    is_invitable_user = member "isInvitableUser" json |> to_option to_bool;
  }

and yojson_of_is_invitable_user_response (value : is_invitable_user_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("isInvitableUser", (fun value -> `Bool value) field)) value.is_invitable_user;
       ])

and list_allowlisted_domains_response_of_yojson json : list_allowlisted_domains_response =
  let open Yojson.Safe.Util in
  {
    allowlisted_domains = member "allowlistedDomains" json |> to_option (convert_each allowlisted_domain_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_list_allowlisted_domains_response (value : list_allowlisted_domains_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowlistedDomains", (fun items -> `List (List.map yojson_of_allowlisted_domain items)) field)) value.allowlisted_domains;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and list_groups_response_of_yojson json : list_groups_response =
  let open Yojson.Safe.Util in
  {
    groups = member "groups" json |> to_option (convert_each group_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_list_groups_response (value : list_groups_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("groups", (fun items -> `List (List.map yojson_of_group items)) field)) value.groups;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and list_idp_credentials_response_of_yojson json : list_idp_credentials_response =
  let open Yojson.Safe.Util in
  {
    idp_credentials = member "idpCredentials" json |> to_option (convert_each idp_credential_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_list_idp_credentials_response (value : list_idp_credentials_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("idpCredentials", (fun items -> `List (List.map yojson_of_idp_credential items)) field)) value.idp_credentials;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and list_inbound_oidc_sso_profiles_response_of_yojson json : list_inbound_oidc_sso_profiles_response =
  let open Yojson.Safe.Util in
  {
    inbound_oidc_sso_profiles = member "inboundOidcSsoProfiles" json |> to_option (convert_each inbound_oidc_sso_profile_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_list_inbound_oidc_sso_profiles_response (value : list_inbound_oidc_sso_profiles_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("inboundOidcSsoProfiles", (fun items -> `List (List.map yojson_of_inbound_oidc_sso_profile items)) field)) value.inbound_oidc_sso_profiles;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and list_inbound_saml_sso_profiles_response_of_yojson json : list_inbound_saml_sso_profiles_response =
  let open Yojson.Safe.Util in
  {
    inbound_saml_sso_profiles = member "inboundSamlSsoProfiles" json |> to_option (convert_each inbound_saml_sso_profile_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_list_inbound_saml_sso_profiles_response (value : list_inbound_saml_sso_profiles_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("inboundSamlSsoProfiles", (fun items -> `List (List.map yojson_of_inbound_saml_sso_profile items)) field)) value.inbound_saml_sso_profiles;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and list_inbound_sso_assignments_response_of_yojson json : list_inbound_sso_assignments_response =
  let open Yojson.Safe.Util in
  {
    inbound_sso_assignments = member "inboundSsoAssignments" json |> to_option (convert_each inbound_sso_assignment_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_list_inbound_sso_assignments_response (value : list_inbound_sso_assignments_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("inboundSsoAssignments", (fun items -> `List (List.map yojson_of_inbound_sso_assignment items)) field)) value.inbound_sso_assignments;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and list_memberships_response_of_yojson json : list_memberships_response =
  let open Yojson.Safe.Util in
  {
    memberships = member "memberships" json |> to_option (convert_each membership_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_list_memberships_response (value : list_memberships_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("memberships", (fun items -> `List (List.map yojson_of_membership items)) field)) value.memberships;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and list_policies_response_of_yojson json : list_policies_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    policies = member "policies" json |> to_option (convert_each policy_of_yojson);
  }

and yojson_of_list_policies_response (value : list_policies_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("policies", (fun items -> `List (List.map yojson_of_policy items)) field)) value.policies;
       ])

and list_user_invitations_response_of_yojson json : list_user_invitations_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    user_invitations = member "userInvitations" json |> to_option (convert_each user_invitation_of_yojson);
  }

and yojson_of_list_user_invitations_response (value : list_user_invitations_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("userInvitations", (fun items -> `List (List.map yojson_of_user_invitation items)) field)) value.user_invitations;
       ])

and lookup_group_name_response_of_yojson json : lookup_group_name_response =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
  }

and yojson_of_lookup_group_name_response (value : lookup_group_name_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and lookup_membership_name_response_of_yojson json : lookup_membership_name_response =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
  }

and yojson_of_lookup_membership_name_response (value : lookup_membership_name_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and member_relation_of_yojson json : member_relation =
  let open Yojson.Safe.Util in
  {
    member = member "member" json |> to_option to_string;
    preferred_member_key = member "preferredMemberKey" json |> to_option (convert_each entity_key_of_yojson);
    relation_type = member "relationType" json |> to_option (fun json -> match to_string json with "RELATION_TYPE_UNSPECIFIED" -> `Relation_type_unspecified | "DIRECT" -> `Direct | "INDIRECT" -> `Indirect | "DIRECT_AND_INDIRECT" -> `Direct_and_indirect | value -> `Unrecognized value);
    roles = member "roles" json |> to_option (convert_each transitive_membership_role_of_yojson);
  }

and yojson_of_member_relation (value : member_relation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("member", (fun value -> `String value) field)) value.member;
         Option.map (fun field -> ("preferredMemberKey", (fun items -> `List (List.map yojson_of_entity_key items)) field)) value.preferred_member_key;
         Option.map (fun field -> ("relationType", (fun value -> `String ((function `Relation_type_unspecified -> "RELATION_TYPE_UNSPECIFIED" | `Direct -> "DIRECT" | `Indirect -> "INDIRECT" | `Direct_and_indirect -> "DIRECT_AND_INDIRECT" | `Unrecognized value -> value) value)) field)) value.relation_type;
         Option.map (fun field -> ("roles", (fun items -> `List (List.map yojson_of_transitive_membership_role items)) field)) value.roles;
       ])

and member_restriction_of_yojson json : member_restriction =
  let open Yojson.Safe.Util in
  {
    evaluation = member "evaluation" json |> to_option restriction_evaluation_of_yojson;
    query = member "query" json |> to_option to_string;
  }

and yojson_of_member_restriction (value : member_restriction) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("evaluation", yojson_of_restriction_evaluation field)) value.evaluation;
         Option.map (fun field -> ("query", (fun value -> `String value) field)) value.query;
       ])

and membership_of_yojson json : membership =
  let open Yojson.Safe.Util in
  {
    create_time = member "createTime" json |> to_option to_string;
    delivery_setting = member "deliverySetting" json |> to_option (fun json -> match to_string json with "DELIVERY_SETTING_UNSPECIFIED" -> `Delivery_setting_unspecified | "ALL_MAIL" -> `All_mail | "DIGEST" -> `Digest | "DAILY" -> `Daily | "NONE" -> `None | "DISABLED" -> `Disabled | value -> `Unrecognized value);
    name = member "name" json |> to_option to_string;
    preferred_member_key = member "preferredMemberKey" json |> to_option entity_key_of_yojson;
    roles = member "roles" json |> to_option (convert_each membership_role_of_yojson);
    type_ = member "type" json |> to_option (fun json -> match to_string json with "TYPE_UNSPECIFIED" -> `Type_unspecified | "USER" -> `User | "SERVICE_ACCOUNT" -> `Service_account | "GROUP" -> `Group | "SHARED_DRIVE" -> `Shared_drive | "CBCM_BROWSER" -> `Cbcm_browser | "CHROME_OS_DEVICE" -> `Chrome_os_device | "OTHER" -> `Other | value -> `Unrecognized value);
    update_time = member "updateTime" json |> to_option to_string;
  }

and yojson_of_membership (value : membership) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("deliverySetting", (fun value -> `String ((function `Delivery_setting_unspecified -> "DELIVERY_SETTING_UNSPECIFIED" | `All_mail -> "ALL_MAIL" | `Digest -> "DIGEST" | `Daily -> "DAILY" | `None -> "NONE" | `Disabled -> "DISABLED" | `Unrecognized value -> value) value)) field)) value.delivery_setting;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("preferredMemberKey", yojson_of_entity_key field)) value.preferred_member_key;
         Option.map (fun field -> ("roles", (fun items -> `List (List.map yojson_of_membership_role items)) field)) value.roles;
         Option.map (fun field -> ("type", (fun value -> `String ((function `Type_unspecified -> "TYPE_UNSPECIFIED" | `User -> "USER" | `Service_account -> "SERVICE_ACCOUNT" | `Group -> "GROUP" | `Shared_drive -> "SHARED_DRIVE" | `Cbcm_browser -> "CBCM_BROWSER" | `Chrome_os_device -> "CHROME_OS_DEVICE" | `Other -> "OTHER" | `Unrecognized value -> value) value)) field)) value.type_;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
       ])

and membership_adjacency_list_of_yojson json : membership_adjacency_list =
  let open Yojson.Safe.Util in
  {
    edges = member "edges" json |> to_option (convert_each membership_of_yojson);
    group = member "group" json |> to_option to_string;
  }

and yojson_of_membership_adjacency_list (value : membership_adjacency_list) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("edges", (fun items -> `List (List.map yojson_of_membership items)) field)) value.edges;
         Option.map (fun field -> ("group", (fun value -> `String value) field)) value.group;
       ])

and membership_relation_of_yojson json : membership_relation =
  let open Yojson.Safe.Util in
  {
    description = member "description" json |> to_option to_string;
    display_name = member "displayName" json |> to_option to_string;
    group = member "group" json |> to_option to_string;
    group_key = member "groupKey" json |> to_option entity_key_of_yojson;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    membership = member "membership" json |> to_option to_string;
    roles = member "roles" json |> to_option (convert_each membership_role_of_yojson);
  }

and yojson_of_membership_relation (value : membership_relation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("group", (fun value -> `String value) field)) value.group;
         Option.map (fun field -> ("groupKey", yojson_of_entity_key field)) value.group_key;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("membership", (fun value -> `String value) field)) value.membership;
         Option.map (fun field -> ("roles", (fun items -> `List (List.map yojson_of_membership_role items)) field)) value.roles;
       ])

and membership_role_of_yojson json : membership_role =
  let open Yojson.Safe.Util in
  {
    expiry_detail = member "expiryDetail" json |> to_option expiry_detail_of_yojson;
    name = member "name" json |> to_option to_string;
    restriction_evaluations = member "restrictionEvaluations" json |> to_option restriction_evaluations_of_yojson;
  }

and yojson_of_membership_role (value : membership_role) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("expiryDetail", yojson_of_expiry_detail field)) value.expiry_detail;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("restrictionEvaluations", yojson_of_restriction_evaluations field)) value.restriction_evaluations;
       ])

and membership_role_restriction_evaluation_of_yojson json : membership_role_restriction_evaluation =
  let open Yojson.Safe.Util in
  {
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "COMPLIANT" -> `Compliant | "FORWARD_COMPLIANT" -> `Forward_compliant | "NON_COMPLIANT" -> `Non_compliant | "EVALUATING" -> `Evaluating | value -> `Unrecognized value);
  }

and yojson_of_membership_role_restriction_evaluation (value : membership_role_restriction_evaluation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Compliant -> "COMPLIANT" | `Forward_compliant -> "FORWARD_COMPLIANT" | `Non_compliant -> "NON_COMPLIANT" | `Evaluating -> "EVALUATING" | `Unrecognized value -> value) value)) field)) value.state;
       ])

and modify_membership_roles_request_of_yojson json : modify_membership_roles_request =
  let open Yojson.Safe.Util in
  {
    add_roles = member "addRoles" json |> to_option (convert_each membership_role_of_yojson);
    remove_roles = member "removeRoles" json |> to_option (convert_each to_string);
    update_roles_params = member "updateRolesParams" json |> to_option (convert_each update_membership_roles_params_of_yojson);
  }

and yojson_of_modify_membership_roles_request (value : modify_membership_roles_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("addRoles", (fun items -> `List (List.map yojson_of_membership_role items)) field)) value.add_roles;
         Option.map (fun field -> ("removeRoles", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.remove_roles;
         Option.map (fun field -> ("updateRolesParams", (fun items -> `List (List.map yojson_of_update_membership_roles_params items)) field)) value.update_roles_params;
       ])

and modify_membership_roles_response_of_yojson json : modify_membership_roles_response =
  let open Yojson.Safe.Util in
  {
    membership = member "membership" json |> to_option membership_of_yojson;
  }

and yojson_of_modify_membership_roles_response (value : modify_membership_roles_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("membership", yojson_of_membership field)) value.membership;
       ])

and oidc_idp_config_of_yojson json : oidc_idp_config =
  let open Yojson.Safe.Util in
  {
    change_password_uri = member "changePasswordUri" json |> to_option to_string;
    issuer_uri = member "issuerUri" json |> to_option to_string;
  }

and yojson_of_oidc_idp_config (value : oidc_idp_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("changePasswordUri", (fun value -> `String value) field)) value.change_password_uri;
         Option.map (fun field -> ("issuerUri", (fun value -> `String value) field)) value.issuer_uri;
       ])

and oidc_rp_config_of_yojson json : oidc_rp_config =
  let open Yojson.Safe.Util in
  {
    client_id = member "clientId" json |> to_option to_string;
    client_secret = member "clientSecret" json |> to_option to_string;
    redirect_uris = member "redirectUris" json |> to_option (convert_each to_string);
  }

and yojson_of_oidc_rp_config (value : oidc_rp_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("clientId", (fun value -> `String value) field)) value.client_id;
         Option.map (fun field -> ("clientSecret", (fun value -> `String value) field)) value.client_secret;
         Option.map (fun field -> ("redirectUris", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.redirect_uris;
       ])

and oidc_sso_info_of_yojson json : oidc_sso_info =
  let open Yojson.Safe.Util in
  {
    inbound_oidc_sso_profile = member "inboundOidcSsoProfile" json |> to_option to_string;
  }

and yojson_of_oidc_sso_info (value : oidc_sso_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("inboundOidcSsoProfile", (fun value -> `String value) field)) value.inbound_oidc_sso_profile;
       ])

and operation_of_yojson json : operation =
  let open Yojson.Safe.Util in
  {
    done_ = member "done" json |> to_option to_bool;
    error = member "error" json |> to_option status_of_yojson;
    metadata = member "metadata" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
    name = member "name" json |> to_option to_string;
    response = member "response" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
  }

and yojson_of_operation (value : operation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("done", (fun value -> `Bool value) field)) value.done_;
         Option.map (fun field -> ("error", yojson_of_status field)) value.error;
         Option.map (fun field -> ("metadata", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.metadata;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("response", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.response;
       ])

and policy_of_yojson json : policy =
  let open Yojson.Safe.Util in
  {
    customer = member "customer" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    policy_query = member "policyQuery" json |> to_option policy_query_of_yojson;
    setting = member "setting" json |> to_option setting_of_yojson;
    type_ = member "type" json |> to_option (fun json -> match to_string json with "POLICY_TYPE_UNSPECIFIED" -> `Policy_type_unspecified | "SYSTEM" -> `System | "ADMIN" -> `Admin | value -> `Unrecognized value);
  }

and yojson_of_policy (value : policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customer", (fun value -> `String value) field)) value.customer;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("policyQuery", yojson_of_policy_query field)) value.policy_query;
         Option.map (fun field -> ("setting", yojson_of_setting field)) value.setting;
         Option.map (fun field -> ("type", (fun value -> `String ((function `Policy_type_unspecified -> "POLICY_TYPE_UNSPECIFIED" | `System -> "SYSTEM" | `Admin -> "ADMIN" | `Unrecognized value -> value) value)) field)) value.type_;
       ])

and policy_query_of_yojson json : policy_query =
  let open Yojson.Safe.Util in
  {
    group = member "group" json |> to_option to_string;
    org_unit = member "orgUnit" json |> to_option to_string;
    query = member "query" json |> to_option to_string;
    sort_order = member "sortOrder" json |> to_option to_number;
  }

and yojson_of_policy_query (value : policy_query) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("group", (fun value -> `String value) field)) value.group;
         Option.map (fun field -> ("orgUnit", (fun value -> `String value) field)) value.org_unit;
         Option.map (fun field -> ("query", (fun value -> `String value) field)) value.query;
         Option.map (fun field -> ("sortOrder", (fun value -> `Float value) field)) value.sort_order;
       ])

and restriction_evaluation_of_yojson json : restriction_evaluation =
  let open Yojson.Safe.Util in
  {
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "EVALUATING" -> `Evaluating | "COMPLIANT" -> `Compliant | "FORWARD_COMPLIANT" -> `Forward_compliant | "NON_COMPLIANT" -> `Non_compliant | value -> `Unrecognized value);
  }

and yojson_of_restriction_evaluation (value : restriction_evaluation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Evaluating -> "EVALUATING" | `Compliant -> "COMPLIANT" | `Forward_compliant -> "FORWARD_COMPLIANT" | `Non_compliant -> "NON_COMPLIANT" | `Unrecognized value -> value) value)) field)) value.state;
       ])

and restriction_evaluations_of_yojson json : restriction_evaluations =
  let open Yojson.Safe.Util in
  {
    member_restriction_evaluation = member "memberRestrictionEvaluation" json |> to_option membership_role_restriction_evaluation_of_yojson;
  }

and yojson_of_restriction_evaluations (value : restriction_evaluations) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("memberRestrictionEvaluation", yojson_of_membership_role_restriction_evaluation field)) value.member_restriction_evaluation;
       ])

and rsa_public_key_info_of_yojson json : rsa_public_key_info =
  let open Yojson.Safe.Util in
  {
    key_size = member "keySize" json |> to_option to_int;
  }

and yojson_of_rsa_public_key_info (value : rsa_public_key_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("keySize", (fun value -> `Int value) field)) value.key_size;
       ])

and saml_idp_config_of_yojson json : saml_idp_config =
  let open Yojson.Safe.Util in
  {
    change_password_uri = member "changePasswordUri" json |> to_option to_string;
    entity_id = member "entityId" json |> to_option to_string;
    logout_redirect_uri = member "logoutRedirectUri" json |> to_option to_string;
    single_sign_on_service_uri = member "singleSignOnServiceUri" json |> to_option to_string;
  }

and yojson_of_saml_idp_config (value : saml_idp_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("changePasswordUri", (fun value -> `String value) field)) value.change_password_uri;
         Option.map (fun field -> ("entityId", (fun value -> `String value) field)) value.entity_id;
         Option.map (fun field -> ("logoutRedirectUri", (fun value -> `String value) field)) value.logout_redirect_uri;
         Option.map (fun field -> ("singleSignOnServiceUri", (fun value -> `String value) field)) value.single_sign_on_service_uri;
       ])

and saml_sp_config_of_yojson json : saml_sp_config =
  let open Yojson.Safe.Util in
  {
    assertion_consumer_service_uri = member "assertionConsumerServiceUri" json |> to_option to_string;
    entity_id = member "entityId" json |> to_option to_string;
  }

and yojson_of_saml_sp_config (value : saml_sp_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("assertionConsumerServiceUri", (fun value -> `String value) field)) value.assertion_consumer_service_uri;
         Option.map (fun field -> ("entityId", (fun value -> `String value) field)) value.entity_id;
       ])

and saml_sso_info_of_yojson json : saml_sso_info =
  let open Yojson.Safe.Util in
  {
    inbound_saml_sso_profile = member "inboundSamlSsoProfile" json |> to_option to_string;
  }

and yojson_of_saml_sso_info (value : saml_sso_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("inboundSamlSsoProfile", (fun value -> `String value) field)) value.inbound_saml_sso_profile;
       ])

and search_direct_groups_response_of_yojson json : search_direct_groups_response =
  let open Yojson.Safe.Util in
  {
    memberships = member "memberships" json |> to_option (convert_each membership_relation_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_search_direct_groups_response (value : search_direct_groups_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("memberships", (fun items -> `List (List.map yojson_of_membership_relation items)) field)) value.memberships;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and search_groups_response_of_yojson json : search_groups_response =
  let open Yojson.Safe.Util in
  {
    groups = member "groups" json |> to_option (convert_each group_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_search_groups_response (value : search_groups_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("groups", (fun items -> `List (List.map yojson_of_group items)) field)) value.groups;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and search_transitive_groups_response_of_yojson json : search_transitive_groups_response =
  let open Yojson.Safe.Util in
  {
    memberships = member "memberships" json |> to_option (convert_each group_relation_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_search_transitive_groups_response (value : search_transitive_groups_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("memberships", (fun items -> `List (List.map yojson_of_group_relation items)) field)) value.memberships;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and search_transitive_memberships_response_of_yojson json : search_transitive_memberships_response =
  let open Yojson.Safe.Util in
  {
    memberships = member "memberships" json |> to_option (convert_each member_relation_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_search_transitive_memberships_response (value : search_transitive_memberships_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("memberships", (fun items -> `List (List.map yojson_of_member_relation items)) field)) value.memberships;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and security_settings_of_yojson json : security_settings =
  let open Yojson.Safe.Util in
  {
    member_restriction = member "memberRestriction" json |> to_option member_restriction_of_yojson;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_security_settings (value : security_settings) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("memberRestriction", yojson_of_member_restriction field)) value.member_restriction;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and send_user_invitation_request_of_yojson json : send_user_invitation_request =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_send_user_invitation_request (value : send_user_invitation_request) : Yojson.Safe.t = Fun.id value

and setting_of_yojson json : setting =
  let open Yojson.Safe.Util in
  {
    type_ = member "type" json |> to_option to_string;
    value = member "value" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
  }

and yojson_of_setting (value : setting) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
         Option.map (fun field -> ("value", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.value;
       ])

and sign_in_behavior_of_yojson json : sign_in_behavior =
  let open Yojson.Safe.Util in
  {
    redirect_condition = member "redirectCondition" json |> to_option (fun json -> match to_string json with "REDIRECT_CONDITION_UNSPECIFIED" -> `Redirect_condition_unspecified | "NEVER" -> `Never | value -> `Unrecognized value);
  }

and yojson_of_sign_in_behavior (value : sign_in_behavior) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("redirectCondition", (fun value -> `String ((function `Redirect_condition_unspecified -> "REDIRECT_CONDITION_UNSPECIFIED" | `Never -> "NEVER" | `Unrecognized value -> value) value)) field)) value.redirect_condition;
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

and transitive_membership_role_of_yojson json : transitive_membership_role =
  let open Yojson.Safe.Util in
  {
    role = member "role" json |> to_option to_string;
  }

and yojson_of_transitive_membership_role (value : transitive_membership_role) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("role", (fun value -> `String value) field)) value.role;
       ])

and update_group_metadata_of_yojson json : update_group_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_update_group_metadata (value : update_group_metadata) : Yojson.Safe.t = Fun.id value

and update_inbound_oidc_sso_profile_operation_metadata_of_yojson json : update_inbound_oidc_sso_profile_operation_metadata =
  let open Yojson.Safe.Util in
  {
    state = member "state" json |> to_option to_string;
  }

and yojson_of_update_inbound_oidc_sso_profile_operation_metadata (value : update_inbound_oidc_sso_profile_operation_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
       ])

and update_inbound_saml_sso_profile_operation_metadata_of_yojson json : update_inbound_saml_sso_profile_operation_metadata =
  let open Yojson.Safe.Util in
  {
    state = member "state" json |> to_option to_string;
  }

and yojson_of_update_inbound_saml_sso_profile_operation_metadata (value : update_inbound_saml_sso_profile_operation_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
       ])

and update_inbound_sso_assignment_operation_metadata_of_yojson json : update_inbound_sso_assignment_operation_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_update_inbound_sso_assignment_operation_metadata (value : update_inbound_sso_assignment_operation_metadata) : Yojson.Safe.t = Fun.id value

and update_membership_metadata_of_yojson json : update_membership_metadata =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_update_membership_metadata (value : update_membership_metadata) : Yojson.Safe.t = Fun.id value

and update_membership_roles_params_of_yojson json : update_membership_roles_params =
  let open Yojson.Safe.Util in
  {
    field_mask = member "fieldMask" json |> to_option to_string;
    membership_role = member "membershipRole" json |> to_option membership_role_of_yojson;
  }

and yojson_of_update_membership_roles_params (value : update_membership_roles_params) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("fieldMask", (fun value -> `String value) field)) value.field_mask;
         Option.map (fun field -> ("membershipRole", yojson_of_membership_role field)) value.membership_role;
       ])

and user_invitation_of_yojson json : user_invitation =
  let open Yojson.Safe.Util in
  {
    mails_sent_count = member "mailsSentCount" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "NOT_YET_SENT" -> `Not_yet_sent | "INVITED" -> `Invited | "ACCEPTED" -> `Accepted | "DECLINED" -> `Declined | value -> `Unrecognized value);
    update_time = member "updateTime" json |> to_option to_string;
  }

and yojson_of_user_invitation (value : user_invitation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("mailsSentCount", (fun value -> `String value) field)) value.mails_sent_count;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Not_yet_sent -> "NOT_YET_SENT" | `Invited -> "INVITED" | `Accepted -> "ACCEPTED" | `Declined -> "DECLINED" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
       ])

let make_add_idp_credential_operation_metadata ?state () : add_idp_credential_operation_metadata = { state }

let make_add_idp_credential_request ?pem_data () : add_idp_credential_request = { pem_data }

let make_allowlisted_domain ?domain ?name () : allowlisted_domain = { domain; name }

let make_check_transitive_membership_response ?has_membership () : check_transitive_membership_response = { has_membership }

let make_create_inbound_oidc_sso_profile_operation_metadata ?state () : create_inbound_oidc_sso_profile_operation_metadata = { state }

let make_create_inbound_saml_sso_profile_operation_metadata ?state () : create_inbound_saml_sso_profile_operation_metadata = { state }

let make_dsa_public_key_info ?key_size () : dsa_public_key_info = { key_size }

let make_dynamic_group_metadata ?queries ?status () : dynamic_group_metadata = { queries; status }

let make_dynamic_group_query ?query ?resource_type () : dynamic_group_query = { query; resource_type }

let make_dynamic_group_status ?status ?status_time () : dynamic_group_status = { status; status_time }

let make_entity_key ?id ?namespace () : entity_key = { id; namespace }

let make_expiry_detail ?expire_time () : expiry_detail = { expire_time }

let make_external_id ?id ?namespace () : external_id = { id; namespace }

let make_get_membership_graph_response ?adjacency_list ?groups () : get_membership_graph_response = { adjacency_list; groups }

let make_google_apps_cloudidentity_devices_v1_android_attributes ?cts_profile_match ?enabled_unknown_sources ?has_potentially_harmful_apps ?owner_profile_account ?ownership_privilege ?supports_work_profile ?verified_boot ?verify_apps_enabled () : google_apps_cloudidentity_devices_v1_android_attributes = { cts_profile_match; enabled_unknown_sources; has_potentially_harmful_apps; owner_profile_account; ownership_privilege; supports_work_profile; verified_boot; verify_apps_enabled }

let make_google_apps_cloudidentity_devices_v1_approve_device_user_request ?customer () : google_apps_cloudidentity_devices_v1_approve_device_user_request = { customer }

let make_google_apps_cloudidentity_devices_v1_approve_device_user_response ?device_user () : google_apps_cloudidentity_devices_v1_approve_device_user_response = { device_user }

let make_google_apps_cloudidentity_devices_v1_block_device_user_request ?customer () : google_apps_cloudidentity_devices_v1_block_device_user_request = { customer }

let make_google_apps_cloudidentity_devices_v1_block_device_user_response ?device_user () : google_apps_cloudidentity_devices_v1_block_device_user_response = { device_user }

let make_google_apps_cloudidentity_devices_v1_browser_attributes ?chrome_browser_info ?chrome_profile_id ?last_profile_sync_time () : google_apps_cloudidentity_devices_v1_browser_attributes = { chrome_browser_info; chrome_profile_id; last_profile_sync_time }

let make_google_apps_cloudidentity_devices_v1_browser_info ?browser_management_state ?browser_version ?is_built_in_dns_client_enabled ?is_bulk_data_entry_analysis_enabled ?is_chrome_cleanup_enabled ?is_chrome_remote_desktop_app_blocked ?is_file_download_analysis_enabled ?is_file_upload_analysis_enabled ?is_realtime_url_check_enabled ?is_security_event_analysis_enabled ?is_site_isolation_enabled ?is_third_party_blocking_enabled ?password_protection_warning_trigger ?safe_browsing_protection_level () : google_apps_cloudidentity_devices_v1_browser_info = { browser_management_state; browser_version; is_built_in_dns_client_enabled; is_bulk_data_entry_analysis_enabled; is_chrome_cleanup_enabled; is_chrome_remote_desktop_app_blocked; is_file_download_analysis_enabled; is_file_upload_analysis_enabled; is_realtime_url_check_enabled; is_security_event_analysis_enabled; is_site_isolation_enabled; is_third_party_blocking_enabled; password_protection_warning_trigger; safe_browsing_protection_level }

let make_google_apps_cloudidentity_devices_v1_cancel_wipe_device_request ?customer () : google_apps_cloudidentity_devices_v1_cancel_wipe_device_request = { customer }

let make_google_apps_cloudidentity_devices_v1_cancel_wipe_device_response ?device () : google_apps_cloudidentity_devices_v1_cancel_wipe_device_response = { device }

let make_google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request ?customer () : google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request = { customer }

let make_google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response ?device_user () : google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response = { device_user }

let make_google_apps_cloudidentity_devices_v1_certificate_attributes ?certificate_template ?fingerprint ?issuer ?serial_number ?subject ?thumbprint ?validation_state ?validity_expiration_time ?validity_start_time () : google_apps_cloudidentity_devices_v1_certificate_attributes = { certificate_template; fingerprint; issuer; serial_number; subject; thumbprint; validation_state; validity_expiration_time; validity_start_time }

let make_google_apps_cloudidentity_devices_v1_certificate_template ?id ?major_version ?minor_version () : google_apps_cloudidentity_devices_v1_certificate_template = { id; major_version; minor_version }

let make_google_apps_cloudidentity_devices_v1_client_state ?asset_tags ?compliance_state ?create_time ?custom_id ?etag ?health_score ?key_value_pairs ?last_update_time ?managed ?name ?owner_type ?score_reason () : google_apps_cloudidentity_devices_v1_client_state = { asset_tags; compliance_state; create_time; custom_id; etag; health_score; key_value_pairs; last_update_time; managed; name; owner_type; score_reason }

let make_google_apps_cloudidentity_devices_v1_custom_attribute_value ?bool_value ?number_value ?string_value () : google_apps_cloudidentity_devices_v1_custom_attribute_value = { bool_value; number_value; string_value }

let make_google_apps_cloudidentity_devices_v1_device ?android_specific_attributes ?asset_tag ?baseband_version ?bootloader_version ?brand ?build_number ?compromised_state ?create_time ?device_id ?device_type ?enabled_developer_options ?enabled_usb_debugging ?encryption_state ?endpoint_verification_specific_attributes ?hostname ?imei ?kernel_version ?last_sync_time ?management_state ?manufacturer ?meid ?model ?name ?network_operator ?os_version ?other_accounts ?owner_type ?release_version ?security_patch_time ?serial_number ?unified_device_id ?wifi_mac_addresses () : google_apps_cloudidentity_devices_v1_device = { android_specific_attributes; asset_tag; baseband_version; bootloader_version; brand; build_number; compromised_state; create_time; device_id; device_type; enabled_developer_options; enabled_usb_debugging; encryption_state; endpoint_verification_specific_attributes; hostname; imei; kernel_version; last_sync_time; management_state; manufacturer; meid; model; name; network_operator; os_version; other_accounts; owner_type; release_version; security_patch_time; serial_number; unified_device_id; wifi_mac_addresses }

let make_google_apps_cloudidentity_devices_v1_device_user ?compromised_state ?create_time ?first_sync_time ?language_code ?last_sync_time ?management_state ?name ?password_state ?user_agent ?user_email () : google_apps_cloudidentity_devices_v1_device_user = { compromised_state; create_time; first_sync_time; language_code; last_sync_time; management_state; name; password_state; user_agent; user_email }

let make_google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes ?additional_signals ?browser_attributes ?certificate_attributes () : google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes = { additional_signals; browser_attributes; certificate_attributes }

let make_google_apps_cloudidentity_devices_v1_list_client_states_response ?client_states ?next_page_token () : google_apps_cloudidentity_devices_v1_list_client_states_response = { client_states; next_page_token }

let make_google_apps_cloudidentity_devices_v1_list_device_users_response ?device_users ?next_page_token () : google_apps_cloudidentity_devices_v1_list_device_users_response = { device_users; next_page_token }

let make_google_apps_cloudidentity_devices_v1_list_devices_response ?devices ?next_page_token () : google_apps_cloudidentity_devices_v1_list_devices_response = { devices; next_page_token }

let make_google_apps_cloudidentity_devices_v1_lookup_self_device_users_response ?customer ?names ?next_page_token () : google_apps_cloudidentity_devices_v1_lookup_self_device_users_response = { customer; names; next_page_token }

let make_google_apps_cloudidentity_devices_v1_wipe_device_request ?customer ?remove_reset_lock () : google_apps_cloudidentity_devices_v1_wipe_device_request = { customer; remove_reset_lock }

let make_google_apps_cloudidentity_devices_v1_wipe_device_response ?device () : google_apps_cloudidentity_devices_v1_wipe_device_response = { device }

let make_google_apps_cloudidentity_devices_v1_wipe_device_user_request ?customer () : google_apps_cloudidentity_devices_v1_wipe_device_user_request = { customer }

let make_google_apps_cloudidentity_devices_v1_wipe_device_user_response ?device_user () : google_apps_cloudidentity_devices_v1_wipe_device_user_response = { device_user }

let make_group ?additional_group_keys ?create_time ?description ?display_name ?dynamic_group_metadata ?external_ids ?group_key ?labels ?name ?parent ?update_time () : group = { additional_group_keys; create_time; description; display_name; dynamic_group_metadata; external_ids; group_key; labels; name; parent; update_time }

let make_group_relation ?display_name ?group ?group_key ?labels ?relation_type ?roles () : group_relation = { display_name; group; group_key; labels; relation_type; roles }

let make_idp_credential ?dsa_key_info ?name ?rsa_key_info ?update_time () : idp_credential = { dsa_key_info; name; rsa_key_info; update_time }

let make_inbound_oidc_sso_profile ?customer ?display_name ?idp_config ?name ?rp_config () : inbound_oidc_sso_profile = { customer; display_name; idp_config; name; rp_config }

let make_inbound_saml_sso_profile ?customer ?display_name ?idp_config ?name ?sp_config () : inbound_saml_sso_profile = { customer; display_name; idp_config; name; sp_config }

let make_inbound_sso_assignment ?customer ?name ?oidc_sso_info ?rank ?saml_sso_info ?sign_in_behavior ?sso_mode ?target_group ?target_org_unit () : inbound_sso_assignment = { customer; name; oidc_sso_info; rank; saml_sso_info; sign_in_behavior; sso_mode; target_group; target_org_unit }

let make_is_invitable_user_response ?is_invitable_user () : is_invitable_user_response = { is_invitable_user }

let make_list_allowlisted_domains_response ?allowlisted_domains ?next_page_token () : list_allowlisted_domains_response = { allowlisted_domains; next_page_token }

let make_list_groups_response ?groups ?next_page_token () : list_groups_response = { groups; next_page_token }

let make_list_idp_credentials_response ?idp_credentials ?next_page_token () : list_idp_credentials_response = { idp_credentials; next_page_token }

let make_list_inbound_oidc_sso_profiles_response ?inbound_oidc_sso_profiles ?next_page_token () : list_inbound_oidc_sso_profiles_response = { inbound_oidc_sso_profiles; next_page_token }

let make_list_inbound_saml_sso_profiles_response ?inbound_saml_sso_profiles ?next_page_token () : list_inbound_saml_sso_profiles_response = { inbound_saml_sso_profiles; next_page_token }

let make_list_inbound_sso_assignments_response ?inbound_sso_assignments ?next_page_token () : list_inbound_sso_assignments_response = { inbound_sso_assignments; next_page_token }

let make_list_memberships_response ?memberships ?next_page_token () : list_memberships_response = { memberships; next_page_token }

let make_list_policies_response ?next_page_token ?policies () : list_policies_response = { next_page_token; policies }

let make_list_user_invitations_response ?next_page_token ?user_invitations () : list_user_invitations_response = { next_page_token; user_invitations }

let make_lookup_group_name_response ?name () : lookup_group_name_response = { name }

let make_lookup_membership_name_response ?name () : lookup_membership_name_response = { name }

let make_member_relation ?member ?preferred_member_key ?relation_type ?roles () : member_relation = { member; preferred_member_key; relation_type; roles }

let make_member_restriction ?evaluation ?query () : member_restriction = { evaluation; query }

let make_membership ?create_time ?delivery_setting ?name ?preferred_member_key ?roles ?type_ ?update_time () : membership = { create_time; delivery_setting; name; preferred_member_key; roles; type_; update_time }

let make_membership_adjacency_list ?edges ?group () : membership_adjacency_list = { edges; group }

let make_membership_relation ?description ?display_name ?group ?group_key ?labels ?membership ?roles () : membership_relation = { description; display_name; group; group_key; labels; membership; roles }

let make_membership_role ?expiry_detail ?name ?restriction_evaluations () : membership_role = { expiry_detail; name; restriction_evaluations }

let make_membership_role_restriction_evaluation ?state () : membership_role_restriction_evaluation = { state }

let make_modify_membership_roles_request ?add_roles ?remove_roles ?update_roles_params () : modify_membership_roles_request = { add_roles; remove_roles; update_roles_params }

let make_modify_membership_roles_response ?membership () : modify_membership_roles_response = { membership }

let make_oidc_idp_config ?change_password_uri ?issuer_uri () : oidc_idp_config = { change_password_uri; issuer_uri }

let make_oidc_rp_config ?client_id ?client_secret ?redirect_uris () : oidc_rp_config = { client_id; client_secret; redirect_uris }

let make_oidc_sso_info ?inbound_oidc_sso_profile () : oidc_sso_info = { inbound_oidc_sso_profile }

let make_operation ?done_ ?error ?metadata ?name ?response () : operation = { done_; error; metadata; name; response }

let make_policy ?customer ?name ?policy_query ?setting ?type_ () : policy = { customer; name; policy_query; setting; type_ }

let make_policy_query ?group ?org_unit ?query ?sort_order () : policy_query = { group; org_unit; query; sort_order }

let make_restriction_evaluation ?state () : restriction_evaluation = { state }

let make_restriction_evaluations ?member_restriction_evaluation () : restriction_evaluations = { member_restriction_evaluation }

let make_rsa_public_key_info ?key_size () : rsa_public_key_info = { key_size }

let make_saml_idp_config ?change_password_uri ?entity_id ?logout_redirect_uri ?single_sign_on_service_uri () : saml_idp_config = { change_password_uri; entity_id; logout_redirect_uri; single_sign_on_service_uri }

let make_saml_sp_config ?assertion_consumer_service_uri ?entity_id () : saml_sp_config = { assertion_consumer_service_uri; entity_id }

let make_saml_sso_info ?inbound_saml_sso_profile () : saml_sso_info = { inbound_saml_sso_profile }

let make_search_direct_groups_response ?memberships ?next_page_token () : search_direct_groups_response = { memberships; next_page_token }

let make_search_groups_response ?groups ?next_page_token () : search_groups_response = { groups; next_page_token }

let make_search_transitive_groups_response ?memberships ?next_page_token () : search_transitive_groups_response = { memberships; next_page_token }

let make_search_transitive_memberships_response ?memberships ?next_page_token () : search_transitive_memberships_response = { memberships; next_page_token }

let make_security_settings ?member_restriction ?name () : security_settings = { member_restriction; name }

let make_setting ?type_ ?value () : setting = { type_; value }

let make_sign_in_behavior ?redirect_condition () : sign_in_behavior = { redirect_condition }

let make_status ?code ?details ?message () : status = { code; details; message }

let make_transitive_membership_role ?role () : transitive_membership_role = { role }

let make_update_inbound_oidc_sso_profile_operation_metadata ?state () : update_inbound_oidc_sso_profile_operation_metadata = { state }

let make_update_inbound_saml_sso_profile_operation_metadata ?state () : update_inbound_saml_sso_profile_operation_metadata = { state }

let make_update_membership_roles_params ?field_mask ?membership_role () : update_membership_roles_params = { field_mask; membership_role }

let make_user_invitation ?mails_sent_count ?name ?state ?update_time () : user_invitation = { mails_sent_count; name; state; update_time }

let base_url = "https://cloudidentity.googleapis.com/"
let batch_endpoint = Uri.of_string "https://cloudidentity.googleapis.com/batch"
let batch ~access_token calls = Google_api.Batch.execute ~access_token ~endpoint:batch_endpoint calls

module Allowlisted_domains = struct
  let create ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "v1/allowlistedDomains"))
      ~body:(yojson_of_allowlisted_domain body)
      (Google_api_runtime.Call.json operation_of_yojson)

  let delete ~name () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json operation_of_yojson)

  let get ~name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json allowlisted_domain_of_yojson)

  let list ?filter ?page_size ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/allowlistedDomains"))
           (List.concat
              [
                Google_api_runtime.Query.optional "filter" Fun.id filter;
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json list_allowlisted_domains_response_of_yojson)
end

module Customers = struct
  module Userinvitations = struct
    let cancel ~name ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":cancel"))
        ~body:(yojson_of_cancel_user_invitation_request body)
        (Google_api_runtime.Call.json operation_of_yojson)

    let get ~name () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        (Google_api_runtime.Call.json user_invitation_of_yojson)

    let is_invitable_user ~name () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":isInvitableUser"))
        (Google_api_runtime.Call.json is_invitable_user_response_of_yojson)

    let list ~parent ?filter ?order_by ?page_size ?page_token () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/userinvitations"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "filter" Fun.id filter;
                  Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                ]))
        (Google_api_runtime.Call.json list_user_invitations_response_of_yojson)

    let send ~name ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":send"))
        ~body:(yojson_of_send_user_invitation_request body)
        (Google_api_runtime.Call.json operation_of_yojson)
  end
end

module Devices = struct
  let cancel_wipe ~name ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":cancelWipe"))
      ~body:(yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_request body)
      (Google_api_runtime.Call.json operation_of_yojson)

  let create ~body ?customer () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/devices"))
           (List.concat
              [
                Google_api_runtime.Query.optional "customer" Fun.id customer;
              ]))
      ~body:(yojson_of_google_apps_cloudidentity_devices_v1_device body)
      (Google_api_runtime.Call.json operation_of_yojson)

  let delete ~name ?customer () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "customer" Fun.id customer;
              ]))
      (Google_api_runtime.Call.json operation_of_yojson)

  let get ~name ?customer () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "customer" Fun.id customer;
              ]))
      (Google_api_runtime.Call.json google_apps_cloudidentity_devices_v1_device_of_yojson)

  let list ?customer ?filter ?order_by ?page_size ?page_token ?view () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/devices"))
           (List.concat
              [
                Google_api_runtime.Query.optional "customer" Fun.id customer;
                Google_api_runtime.Query.optional "filter" Fun.id filter;
                Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "view" (function `View_unspecified -> "VIEW_UNSPECIFIED" | `Company_inventory -> "COMPANY_INVENTORY" | `User_assigned_devices -> "USER_ASSIGNED_DEVICES" | `Unrecognized value -> value) view;
              ]))
      (Google_api_runtime.Call.json google_apps_cloudidentity_devices_v1_list_devices_response_of_yojson)

  let wipe ~name ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":wipe"))
      ~body:(yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_request body)
      (Google_api_runtime.Call.json operation_of_yojson)

  module Device_users = struct
    let approve ~name ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":approve"))
        ~body:(yojson_of_google_apps_cloudidentity_devices_v1_approve_device_user_request body)
        (Google_api_runtime.Call.json operation_of_yojson)

    let block ~name ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":block"))
        ~body:(yojson_of_google_apps_cloudidentity_devices_v1_block_device_user_request body)
        (Google_api_runtime.Call.json operation_of_yojson)

    let cancel_wipe ~name ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":cancelWipe"))
        ~body:(yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request body)
        (Google_api_runtime.Call.json operation_of_yojson)

    let delete ~name ?customer () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
             (List.concat
                [
                  Google_api_runtime.Query.optional "customer" Fun.id customer;
                ]))
        (Google_api_runtime.Call.json operation_of_yojson)

    let get ~name ?customer () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
             (List.concat
                [
                  Google_api_runtime.Query.optional "customer" Fun.id customer;
                ]))
        (Google_api_runtime.Call.json google_apps_cloudidentity_devices_v1_device_user_of_yojson)

    let list ~parent ?customer ?filter ?order_by ?page_size ?page_token () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/deviceUsers"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "customer" Fun.id customer;
                  Google_api_runtime.Query.optional "filter" Fun.id filter;
                  Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                ]))
        (Google_api_runtime.Call.json google_apps_cloudidentity_devices_v1_list_device_users_response_of_yojson)

    let lookup ~parent ?android_id ?ios_device_id ?page_size ?page_token ?partner ?raw_resource_id ?user_id () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ ":lookup"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "androidId" Fun.id android_id;
                  Google_api_runtime.Query.optional "iosDeviceId" Fun.id ios_device_id;
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  Google_api_runtime.Query.optional "partner" Fun.id partner;
                  Google_api_runtime.Query.optional "rawResourceId" Fun.id raw_resource_id;
                  Google_api_runtime.Query.optional "userId" Fun.id user_id;
                ]))
        (Google_api_runtime.Call.json google_apps_cloudidentity_devices_v1_lookup_self_device_users_response_of_yojson)

    let wipe ~name ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":wipe"))
        ~body:(yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_user_request body)
        (Google_api_runtime.Call.json operation_of_yojson)

    module Client_states = struct
      let get ~name ?customer () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "customer" Fun.id customer;
                  ]))
          (Google_api_runtime.Call.json google_apps_cloudidentity_devices_v1_client_state_of_yojson)

      let list ~parent ?customer ?filter ?order_by ?page_token () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/clientStates"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "customer" Fun.id customer;
                    Google_api_runtime.Query.optional "filter" Fun.id filter;
                    Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  ]))
          (Google_api_runtime.Call.json google_apps_cloudidentity_devices_v1_list_client_states_response_of_yojson)

      let patch ~name ~body ?customer ?update_mask () =
        Google_api_runtime.Call.make ~meth:`PATCH
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "customer" Fun.id customer;
                    Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
                  ]))
          ~body:(yojson_of_google_apps_cloudidentity_devices_v1_client_state body)
          (Google_api_runtime.Call.json operation_of_yojson)
    end
  end
end

module Groups = struct
  let create ~body ?initial_group_config () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/groups"))
           (List.concat
              [
                Google_api_runtime.Query.optional "initialGroupConfig" (function `Initial_group_config_unspecified -> "INITIAL_GROUP_CONFIG_UNSPECIFIED" | `With_initial_owner -> "WITH_INITIAL_OWNER" | `Empty -> "EMPTY" | `Unrecognized value -> value) initial_group_config;
              ]))
      ~body:(yojson_of_group body)
      (Google_api_runtime.Call.json operation_of_yojson)

  let delete ~name () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json operation_of_yojson)

  let get ~name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json group_of_yojson)

  let get_security_settings ~name ?read_mask () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "readMask" Fun.id read_mask;
              ]))
      (Google_api_runtime.Call.json security_settings_of_yojson)

  let list ?page_size ?page_token ?parent ?view () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/groups"))
           (List.concat
              [
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "parent" Fun.id parent;
                Google_api_runtime.Query.optional "view" (function `View_unspecified -> "VIEW_UNSPECIFIED" | `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) view;
              ]))
      (Google_api_runtime.Call.json list_groups_response_of_yojson)

  let lookup ?group_key_id ?group_key_namespace () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/groups:lookup"))
           (List.concat
              [
                Google_api_runtime.Query.optional "groupKey.id" Fun.id group_key_id;
                Google_api_runtime.Query.optional "groupKey.namespace" Fun.id group_key_namespace;
              ]))
      (Google_api_runtime.Call.json lookup_group_name_response_of_yojson)

  let patch ~name ~body ?update_mask () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
              ]))
      ~body:(yojson_of_group body)
      (Google_api_runtime.Call.json operation_of_yojson)

  let search ?page_size ?page_token ?query ?view () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/groups:search"))
           (List.concat
              [
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "query" Fun.id query;
                Google_api_runtime.Query.optional "view" (function `View_unspecified -> "VIEW_UNSPECIFIED" | `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) view;
              ]))
      (Google_api_runtime.Call.json search_groups_response_of_yojson)

  let update_security_settings ~name ~body ?update_mask () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
              ]))
      ~body:(yojson_of_security_settings body)
      (Google_api_runtime.Call.json operation_of_yojson)

  module Memberships = struct
    let check_transitive_membership ~parent ?query () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/memberships:checkTransitiveMembership"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "query" Fun.id query;
                ]))
        (Google_api_runtime.Call.json check_transitive_membership_response_of_yojson)

    let create ~parent ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/memberships"))
        ~body:(yojson_of_membership body)
        (Google_api_runtime.Call.json operation_of_yojson)

    let delete ~name () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        (Google_api_runtime.Call.json operation_of_yojson)

    let get ~name () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        (Google_api_runtime.Call.json membership_of_yojson)

    let get_membership_graph ~parent ?query () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/memberships:getMembershipGraph"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "query" Fun.id query;
                ]))
        (Google_api_runtime.Call.json operation_of_yojson)

    let list ~parent ?page_size ?page_token ?view () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/memberships"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  Google_api_runtime.Query.optional "view" (function `View_unspecified -> "VIEW_UNSPECIFIED" | `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) view;
                ]))
        (Google_api_runtime.Call.json list_memberships_response_of_yojson)

    let lookup ~parent ?member_key_id ?member_key_namespace () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/memberships:lookup"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "memberKey.id" Fun.id member_key_id;
                  Google_api_runtime.Query.optional "memberKey.namespace" Fun.id member_key_namespace;
                ]))
        (Google_api_runtime.Call.json lookup_membership_name_response_of_yojson)

    let modify_membership_roles ~name ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":modifyMembershipRoles"))
        ~body:(yojson_of_modify_membership_roles_request body)
        (Google_api_runtime.Call.json modify_membership_roles_response_of_yojson)

    let search_direct_groups ~parent ?order_by ?page_size ?page_token ?query () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/memberships:searchDirectGroups"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  Google_api_runtime.Query.optional "query" Fun.id query;
                ]))
        (Google_api_runtime.Call.json search_direct_groups_response_of_yojson)

    let search_transitive_groups ~parent ?page_size ?page_token ?query () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/memberships:searchTransitiveGroups"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  Google_api_runtime.Query.optional "query" Fun.id query;
                ]))
        (Google_api_runtime.Call.json search_transitive_groups_response_of_yojson)

    let search_transitive_memberships ~parent ?page_size ?page_token () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/memberships:searchTransitiveMemberships"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                ]))
        (Google_api_runtime.Call.json search_transitive_memberships_response_of_yojson)
  end
end

module Inbound_oidc_sso_profiles = struct
  let create ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "v1/inboundOidcSsoProfiles"))
      ~body:(yojson_of_inbound_oidc_sso_profile body)
      (Google_api_runtime.Call.json operation_of_yojson)

  let delete ~name () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json operation_of_yojson)

  let get ~name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json inbound_oidc_sso_profile_of_yojson)

  let list ?filter ?page_size ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/inboundOidcSsoProfiles"))
           (List.concat
              [
                Google_api_runtime.Query.optional "filter" Fun.id filter;
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json list_inbound_oidc_sso_profiles_response_of_yojson)

  let patch ~name ~body ?update_mask () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
              ]))
      ~body:(yojson_of_inbound_oidc_sso_profile body)
      (Google_api_runtime.Call.json operation_of_yojson)
end

module Inbound_saml_sso_profiles = struct
  let create ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "v1/inboundSamlSsoProfiles"))
      ~body:(yojson_of_inbound_saml_sso_profile body)
      (Google_api_runtime.Call.json operation_of_yojson)

  let delete ~name () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json operation_of_yojson)

  let get ~name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json inbound_saml_sso_profile_of_yojson)

  let list ?filter ?page_size ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/inboundSamlSsoProfiles"))
           (List.concat
              [
                Google_api_runtime.Query.optional "filter" Fun.id filter;
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json list_inbound_saml_sso_profiles_response_of_yojson)

  let patch ~name ~body ?update_mask () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
              ]))
      ~body:(yojson_of_inbound_saml_sso_profile body)
      (Google_api_runtime.Call.json operation_of_yojson)

  module Idp_credentials = struct
    let add ~parent ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/idpCredentials:add"))
        ~body:(yojson_of_add_idp_credential_request body)
        (Google_api_runtime.Call.json operation_of_yojson)

    let delete ~name () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        (Google_api_runtime.Call.json operation_of_yojson)

    let get ~name () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        (Google_api_runtime.Call.json idp_credential_of_yojson)

    let list ~parent ?page_size ?page_token () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/idpCredentials"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                ]))
        (Google_api_runtime.Call.json list_idp_credentials_response_of_yojson)
  end
end

module Inbound_sso_assignments = struct
  let create ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "v1/inboundSsoAssignments"))
      ~body:(yojson_of_inbound_sso_assignment body)
      (Google_api_runtime.Call.json operation_of_yojson)

  let delete ~name () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json operation_of_yojson)

  let get ~name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json inbound_sso_assignment_of_yojson)

  let list ?filter ?page_size ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/inboundSsoAssignments"))
           (List.concat
              [
                Google_api_runtime.Query.optional "filter" Fun.id filter;
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json list_inbound_sso_assignments_response_of_yojson)

  let patch ~name ~body ?update_mask () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
              ]))
      ~body:(yojson_of_inbound_sso_assignment body)
      (Google_api_runtime.Call.json operation_of_yojson)
end

module Policies = struct
  let create ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "v1/policies"))
      ~body:(yojson_of_policy body)
      (Google_api_runtime.Call.json operation_of_yojson)

  let delete ~name () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json operation_of_yojson)

  let get ~name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json policy_of_yojson)

  let list ?filter ?page_size ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/policies"))
           (List.concat
              [
                Google_api_runtime.Query.optional "filter" Fun.id filter;
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json list_policies_response_of_yojson)

  let patch ~name ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      ~body:(yojson_of_policy body)
      (Google_api_runtime.Call.json operation_of_yojson)
end
