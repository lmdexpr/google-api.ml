(* Generated from the Discovery document of cloudidentity v1 (revision 20261002). Do not edit. *)

(** Cloud Identity API (cloudidentity v1, revision 20261002).

    API for provisioning and managing identity resources.

    {{:https://cloud.google.com/identity/}Documentation} *)

(** LRO response metadata for InboundSamlSsoProfilesService.AddIdpCredential. *)
type add_idp_credential_operation_metadata = {
  state : string option;  (** State of this Operation Will be 'awaiting-multi-party-approval' when the operation is deferred due to the target customer having enabled \[Multi-party approval for sensitive actions\](https://support.google.com/a/answer/13790448). *)
}

(** The request for creating an IdpCredential with its associated payload. An InboundSamlSsoProfile can own up to 2 credentials. *)
and add_idp_credential_request = {
  pem_data : string option;  (** PEM encoded x509 certificate containing the public key for verifying IdP signatures. *)
}

(** This resource object defines a domain that has been designated as allowlisted. *)
and allowlisted_domain = {
  domain : string option;  (** Required. Immutable. Name of the domain that is in the allowlist. e.g. 'google.com' *)
  name : string option;  (** Output only. Identifier. Resource name of the domain in the allowlist e.g. 'allowlistedDomains/0184mhaj1smlusv' *)
}

(** Request to cancel sent invitation for target email in UserInvitation. *)
and cancel_user_invitation_request = Yojson.Safe.t

(** The response message for MembershipsService.CheckTransitiveMembership. *)
and check_transitive_membership_response = {
  has_membership : bool option;  (** Response does not include the possible roles of a member since the behavior of this rpc is not all-or-nothing unlike the other rpcs. So, it may not be possible to list all the roles definitively, due to possible lack of authorization in some of the paths. *)
}

(** Metadata for CreateGroup LRO. *)
and create_group_metadata = Yojson.Safe.t

(** LRO response metadata for InboundOidcSsoProfilesService.CreateInboundOidcSsoProfile. *)
and create_inbound_oidc_sso_profile_operation_metadata = {
  state : string option;  (** State of this Operation Will be 'awaiting-multi-party-approval' when the operation is deferred due to the target customer having enabled \[Multi-party approval for sensitive actions\](https://support.google.com/a/answer/13790448). *)
}

(** LRO response metadata for InboundSamlSsoProfilesService.CreateInboundSamlSsoProfile. *)
and create_inbound_saml_sso_profile_operation_metadata = {
  state : string option;  (** State of this Operation Will be 'awaiting-multi-party-approval' when the operation is deferred due to the target customer having enabled \[Multi-party approval for sensitive actions\](https://support.google.com/a/answer/13790448). *)
}

(** LRO response metadata for InboundSsoAssignmentsService.CreateInboundSsoAssignment. *)
and create_inbound_sso_assignment_operation_metadata = Yojson.Safe.t

(** Metadata for CreateMembership LRO. *)
and create_membership_metadata = Yojson.Safe.t

(** Metadata for DeleteGroup LRO. *)
and delete_group_metadata = Yojson.Safe.t

(** LRO response metadata for InboundSamlSsoProfilesService.DeleteIdpCredential. *)
and delete_idp_credential_operation_metadata = Yojson.Safe.t

(** LRO response metadata for InboundOidcSsoProfilesService.DeleteInboundOidcSsoProfile. *)
and delete_inbound_oidc_sso_profile_operation_metadata = Yojson.Safe.t

(** LRO response metadata for InboundSamlSsoProfilesService.DeleteInboundSamlSsoProfile. *)
and delete_inbound_saml_sso_profile_operation_metadata = Yojson.Safe.t

(** LRO response metadata for InboundSsoAssignmentsService.DeleteInboundSsoAssignment. *)
and delete_inbound_sso_assignment_operation_metadata = Yojson.Safe.t

(** Metadata for DeleteMembership LRO. *)
and delete_membership_metadata = Yojson.Safe.t

(** Information of a DSA public key. *)
and dsa_public_key_info = {
  key_size : int option;  (** Key size in bits (size of parameter P). *)
}

(** Dynamic group metadata like queries and status. *)
and dynamic_group_metadata = {
  queries : dynamic_group_query list option;  (** Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 500 dynamic groups. *)
  status : dynamic_group_status option;  (** Output only. Status of the dynamic group. *)
}

(** Defines a query on a resource. *)
and dynamic_group_query = {
  query : string option;  (** Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')` *)
  resource_type : [ `Resource_type_unspecified | `User | `Unrecognized of string ] option;  (** Resource type for the Dynamic Group Query *)
}

(** The current status of a dynamic group along with timestamp. *)
and dynamic_group_status = {
  status : [ `Status_unspecified | `Up_to_date | `Updating_memberships | `Invalid_query | `Unrecognized of string ] option;  (** Status of the dynamic group. *)
  status_time : string option;  (** The latest time at which the dynamic group is guaranteed to be in the given status. If status is `UP_TO_DATE`, the latest time at which the dynamic group was confirmed to be up-to-date. If status is `UPDATING_MEMBERSHIPS`, the time at which dynamic group was created. *)
}

(** A unique identifier for an entity in the Cloud Identity Groups API. An entity can represent either a group with an optional `namespace` or a user without a `namespace`. The combination of `id` and `namespace` must be unique; however, the same `id` can be used with different `namespace`s. *)
and entity_key = {
  id : string option;  (** The ID of the entity. For Google-managed entities, the `id` should be the email address of an existing group or user. Email addresses need to adhere to \[name guidelines for users and groups\](https://support.google.com/a/answer/9193374). For external-identity-mapped entities, the `id` must be a string conforming to the Identity Source's requirements. Must be unique within a `namespace`. *)
  namespace : string option;  (** The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such as a Google user or a Google Group. If specified, the `EntityKey` represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of `identitysources/\{identity_source\}`. *)
}

(** The `MembershipRole` expiry details. *)
and expiry_detail = {
  expire_time : string option;  (** The time at which the `MembershipRole` will expire. *)
}

(** Represents an external identifier that links a Group in the Cloud Identity Groups API with a corresponding entity in an external directory or identity provider. *)
and external_id = {
  id : string option;  (** Required. The unique identifier assigned by the external identity provider. The API does not enforce unique IDs across entities, but clients **must** ensure IDs are unique within their namespace. *)
  namespace : string option;  (** Required. The namespace in which the entity exists. The only supported namespace is `system/external`. *)
}

(** Metadata of GetMembershipGraphResponse LRO. This is currently empty to permit future extensibility. *)
and get_membership_graph_metadata = Yojson.Safe.t

(** The response message for MembershipsService.GetMembershipGraph. *)
and get_membership_graph_response = {
  adjacency_list : membership_adjacency_list list option;  (** The membership graph's path information represented as an adjacency list. *)
  groups : group list option;  (** The resources representing each group in the adjacency list. Each group in this list can be correlated to a 'group' of the MembershipAdjacencyList using the 'name' of the Group resource. *)
}

(** Resource representing the Android specific attributes of a Device. *)
and google_apps_cloudidentity_devices_v1_android_attributes = {
  cts_profile_match : bool option;  (** Whether the device passes Android CTS compliance. *)
  enabled_unknown_sources : bool option;  (** Whether applications from unknown sources can be installed on device. *)
  has_potentially_harmful_apps : bool option;  (** Whether any potentially harmful apps were detected on the device. *)
  owner_profile_account : bool option;  (** Whether this account is on an owner/primary profile. For phones, only true for owner profiles. Android 4+ devices can have secondary or restricted user profiles. *)
  ownership_privilege : [ `Ownership_privilege_unspecified | `Device_administrator | `Profile_owner | `Device_owner | `Unrecognized of string ] option;  (** Ownership privileges on device. *)
  supports_work_profile : bool option;  (** Whether device supports Android work profiles. If false, this service will not block access to corp data even if an administrator turns on the 'Enforce Work Profile' policy. *)
  verified_boot : bool option;  (** Whether Android verified boot status is GREEN. *)
  verify_apps_enabled : bool option;  (** Whether Google Play Protect Verify Apps is enabled. *)
}

(** Metadata for ApproveDeviceUser LRO. *)
and google_apps_cloudidentity_devices_v1_approve_device_user_metadata = Yojson.Safe.t

(** Request message for approving the device to access user data. *)
and google_apps_cloudidentity_devices_v1_approve_device_user_request = {
  customer : string option;  (** Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)
}

(** Response message for approving the device to access user data. *)
and google_apps_cloudidentity_devices_v1_approve_device_user_response = {
  device_user : google_apps_cloudidentity_devices_v1_device_user option;  (** Resultant DeviceUser object for the action. *)
}

(** Metadata for BlockDeviceUser LRO. *)
and google_apps_cloudidentity_devices_v1_block_device_user_metadata = Yojson.Safe.t

(** Request message for blocking account on device. *)
and google_apps_cloudidentity_devices_v1_block_device_user_request = {
  customer : string option;  (** Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)
}

(** Response message for blocking the device from accessing user data. *)
and google_apps_cloudidentity_devices_v1_block_device_user_response = {
  device_user : google_apps_cloudidentity_devices_v1_device_user option;  (** Resultant DeviceUser object for the action. *)
}

(** Contains information about browser profiles reported by the \[Endpoint Verification extension\](https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1). *)
and google_apps_cloudidentity_devices_v1_browser_attributes = {
  chrome_browser_info : google_apps_cloudidentity_devices_v1_browser_info option;  (** Represents the current state of the \[Chrome browser attributes\](https://cloud.google.com/access-context-manager/docs/browser-attributes) sent by the \[Endpoint Verification extension\](https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1). *)
  chrome_profile_id : string option;  (** Chrome profile ID that is exposed by the Chrome API. It is unique for each device. *)
  last_profile_sync_time : string option;  (** Timestamp in milliseconds since the Unix epoch when the profile/gcm id was last synced. *)
}

(** Browser-specific fields reported by the \[Endpoint Verification extension\](https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1). *)
and google_apps_cloudidentity_devices_v1_browser_info = {
  browser_management_state : [ `Unspecified | `Unmanaged | `Managed_by_other_domain | `Profile_managed | `Browser_managed | `Unrecognized of string ] option;  (** Output only. Browser's management state. *)
  browser_version : string option;  (** Version of the request initiating browser. E.g. `91.0.4442.4`. *)
  is_built_in_dns_client_enabled : bool option;  (** Current state of \[built-in DNS client\](https://chromeenterprise.google/policies/#BuiltInDnsClientEnabled). *)
  is_bulk_data_entry_analysis_enabled : bool option;  (** Current state of \[bulk data analysis\](https://chromeenterprise.google/policies/#OnBulkDataEntryEnterpriseConnector). Set to true if provider list from Chrome is non-empty. *)
  is_chrome_cleanup_enabled : bool option;  (** Deprecated: This field is not used for Chrome version 118 and later. Current state of \[Chrome Cleanup\](https://chromeenterprise.google/policies/#ChromeCleanupEnabled). *)
  is_chrome_remote_desktop_app_blocked : bool option;  (** Current state of \[Chrome Remote Desktop app\](https://chromeenterprise.google/policies/#URLBlocklist). *)
  is_file_download_analysis_enabled : bool option;  (** Current state of \[file download analysis\](https://chromeenterprise.google/policies/#OnFileDownloadedEnterpriseConnector). Set to true if provider list from Chrome is non-empty. *)
  is_file_upload_analysis_enabled : bool option;  (** Current state of \[file upload analysis\](https://chromeenterprise.google/policies/#OnFileAttachedEnterpriseConnector). Set to true if provider list from Chrome is non-empty. *)
  is_realtime_url_check_enabled : bool option;  (** Current state of \[real-time URL check\](https://chromeenterprise.google/policies/#EnterpriseRealTimeUrlCheckMode). Set to true if provider list from Chrome is non-empty. *)
  is_security_event_analysis_enabled : bool option;  (** Current state of \[security event analysis\](https://chromeenterprise.google/policies/#OnSecurityEventEnterpriseConnector). Set to true if provider list from Chrome is non-empty. *)
  is_site_isolation_enabled : bool option;  (** Current state of \[site isolation\](https://chromeenterprise.google/policies/?policy=IsolateOrigins). *)
  is_third_party_blocking_enabled : bool option;  (** Current state of \[third-party blocking\](https://chromeenterprise.google/policies/#ThirdPartyBlockingEnabled). *)
  password_protection_warning_trigger : [ `Password_protection_trigger_unspecified | `Protection_off | `Password_reuse | `Phishing_reuse | `Unrecognized of string ] option;  (** Current state of \[password protection trigger\](https://chromeenterprise.google/policies/#PasswordProtectionWarningTrigger). *)
  safe_browsing_protection_level : [ `Safe_browsing_level_unspecified | `Disabled | `Standard | `Enhanced | `Unrecognized of string ] option;  (** Current state of \[Safe Browsing protection level\](https://chromeenterprise.google/policies/#SafeBrowsingProtectionLevel). *)
}

(** Metadata for CancelWipeDevice LRO. *)
and google_apps_cloudidentity_devices_v1_cancel_wipe_device_metadata = Yojson.Safe.t

(** Request message for cancelling an unfinished device wipe. *)
and google_apps_cloudidentity_devices_v1_cancel_wipe_device_request = {
  customer : string option;  (** Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)
}

(** Response message for cancelling an unfinished device wipe. *)
and google_apps_cloudidentity_devices_v1_cancel_wipe_device_response = {
  device : google_apps_cloudidentity_devices_v1_device option;  (** Resultant Device object for the action. Note that asset tags will not be returned in the device object. *)
}

(** Metadata for CancelWipeDeviceUser LRO. *)
and google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_metadata = Yojson.Safe.t

(** Request message for cancelling an unfinished user account wipe. *)
and google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request = {
  customer : string option;  (** Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)
}

(** Response message for cancelling an unfinished user account wipe. *)
and google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response = {
  device_user : google_apps_cloudidentity_devices_v1_device_user option;  (** Resultant DeviceUser object for the action. *)
}

(** Stores information about a certificate. *)
and google_apps_cloudidentity_devices_v1_certificate_attributes = {
  certificate_template : google_apps_cloudidentity_devices_v1_certificate_template option;  (** The X.509 extension for CertificateTemplate. *)
  fingerprint : string option;  (** The encoded certificate fingerprint. *)
  issuer : string option;  (** The name of the issuer of this certificate. *)
  serial_number : string option;  (** Serial number of the certificate, Example: '123456789'. *)
  subject : string option;  (** The subject name of this certificate. *)
  thumbprint : string option;  (** The certificate thumbprint. *)
  validation_state : [ `Certificate_validation_state_unspecified | `Validation_successful | `Validation_failed | `Unrecognized of string ] option;  (** Output only. Validation state of this certificate. *)
  validity_expiration_time : string option;  (** Certificate not valid at or after this timestamp. *)
  validity_start_time : string option;  (** Certificate not valid before this timestamp. *)
}

(** CertificateTemplate (v3 Extension in X.509). *)
and google_apps_cloudidentity_devices_v1_certificate_template = {
  id : string option;  (** The template id of the template. Example: '1.3.6.1.4.1.311.21.8.15608621.11768144.5720724.16068415.6889630.81.2472537.7784047'. *)
  major_version : int option;  (** The Major version of the template. Example: 100. *)
  minor_version : int option;  (** The minor version of the template. Example: 12. *)
}

(** Represents the state associated with an API client calling the Devices API. Resource representing ClientState and supports updates from API users *)
and google_apps_cloudidentity_devices_v1_client_state = {
  asset_tags : string list option;  (** The caller can specify asset tags for this resource *)
  compliance_state : [ `Compliance_state_unspecified | `Compliant | `Non_compliant | `Unrecognized of string ] option;  (** The compliance state of the resource as specified by the API client. *)
  create_time : string option;  (** Output only. The time the client state data was created. *)
  custom_id : string option;  (** This field may be used to store a unique identifier for the API resource within which these CustomAttributes are a field. *)
  etag : string option;  (** The token that needs to be passed back for concurrency control in updates. Token needs to be passed back in UpdateRequest *)
  health_score : [ `Health_score_unspecified | `Very_poor | `Poor | `Neutral | `Good | `Very_good | `Unrecognized of string ] option;  (** The Health score of the resource. The Health score is the callers specification of the condition of the device from a usability point of view. For example, a third-party device management provider may specify a health score based on its compliance with organizational policies. *)
  key_value_pairs : (string * google_apps_cloudidentity_devices_v1_custom_attribute_value) list option;  (** The map of key-value attributes stored by callers specific to a device. The total serialized length of this map may not exceed 10KB. No limit is placed on the number of attributes in a map. *)
  last_update_time : string option;  (** Output only. The time the client state data was last updated. *)
  managed : [ `Managed_state_unspecified | `Managed | `Unmanaged | `Unrecognized of string ] option;  (** The management state of the resource as specified by the API client. *)
  name : string option;  (** Output only. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the ClientState in format: `devices/\{device\}/deviceUsers/\{device_user\}/clientState/\{partner\}`, where partner corresponds to the partner storing the data. For partners belonging to the 'BeyondCorp Alliance', this is the partner ID specified to you by Google. For all other callers, this is a string of the form: `\{customer\}-suffix`, where `customer` is your customer ID. The *suffix* is any string the caller specifies. This string will be displayed verbatim in the administration console. This suffix is used in setting up Custom Access Levels in Context-Aware Access. Your organization's customer ID can be obtained from the URL: `GET https://www.googleapis.com/admin/directory/v1/customers/my_customer` The `id` field in the response contains the customer ID starting with the letter 'C'. The customer ID to be used in this API is the string after the letter 'C' (not including 'C') *)
  owner_type : [ `Owner_type_unspecified | `Owner_type_customer | `Owner_type_partner | `Unrecognized of string ] option;  (** Output only. The owner of the ClientState *)
  score_reason : string option;  (** A descriptive cause of the health score. *)
}

(** Metadata for CreateDevice LRO. *)
and google_apps_cloudidentity_devices_v1_create_device_metadata = Yojson.Safe.t

(** Additional custom attribute values may be one of these types *)
and google_apps_cloudidentity_devices_v1_custom_attribute_value = {
  bool_value : bool option;  (** Represents a boolean value. *)
  number_value : float option;  (** Represents a double value. *)
  string_value : string option;  (** Represents a string value. *)
}

(** Metadata for DeleteDevice LRO. *)
and google_apps_cloudidentity_devices_v1_delete_device_metadata = Yojson.Safe.t

(** Metadata for DeleteDeviceUser LRO. *)
and google_apps_cloudidentity_devices_v1_delete_device_user_metadata = Yojson.Safe.t

(** A Device within the Cloud Identity Devices API. Represents a Device known to Google Cloud, independent of the device ownership, type, and whether it is assigned or in use by a user. *)
and google_apps_cloudidentity_devices_v1_device = {
  android_specific_attributes : google_apps_cloudidentity_devices_v1_android_attributes option;  (** Output only. Attributes specific to Android devices. *)
  asset_tag : string option;  (** Asset tag of the device. *)
  baseband_version : string option;  (** Output only. Baseband version of the device. *)
  bootloader_version : string option;  (** Output only. Device bootloader version. Example: 0.6.7. *)
  brand : string option;  (** Output only. Device brand. Example: Samsung. *)
  build_number : string option;  (** Output only. Build number of the device. *)
  compromised_state : [ `Compromised_state_unspecified | `Compromised | `Uncompromised | `Unrecognized of string ] option;  (** Output only. Represents whether the Device is compromised. *)
  create_time : string option;  (** Output only. When the Company-Owned device was imported. This field is empty for BYOD devices. *)
  device_id : string option;  (** Unique identifier for the device. *)
  device_type : [ `Device_type_unspecified | `Android | `Ios | `Google_sync | `Windows | `Mac_os | `Linux | `Chrome_os | `Googlebook | `Unrecognized of string ] option;  (** Output only. Type of device. *)
  enabled_developer_options : bool option;  (** Output only. Whether developer options is enabled on device. *)
  enabled_usb_debugging : bool option;  (** Output only. Whether USB debugging is enabled on device. *)
  encryption_state : [ `Encryption_state_unspecified | `Unsupported_by_device | `Encrypted | `Not_encrypted | `Unrecognized of string ] option;  (** Output only. Device encryption state. *)
  endpoint_verification_specific_attributes : google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes option;  (** Output only. Attributes specific to \[Endpoint Verification\](https://cloud.google.com/endpoint-verification/docs/overview) devices. *)
  hostname : string option;  (** Host name of the device. *)
  imei : string option;  (** Output only. IMEI number of device if GSM device; empty otherwise. *)
  kernel_version : string option;  (** Output only. Kernel version of the device. *)
  last_sync_time : string option;  (** Most recent time when device synced with this service. *)
  management_state : [ `Management_state_unspecified | `Approved | `Blocked | `Pending | `Unprovisioned | `Wiping | `Wiped | `Unrecognized of string ] option;  (** Output only. Management state of the device *)
  manufacturer : string option;  (** Output only. Device manufacturer. Example: Motorola. *)
  meid : string option;  (** Output only. MEID number of device if CDMA device; empty otherwise. *)
  model : string option;  (** Output only. Model name of device. Example: Pixel 3. *)
  name : string option;  (** Output only. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/\{device\}`, where device is the unique id assigned to the Device. Important: Device API scopes require that you use domain-wide delegation to access the API. For more information, see \[Set up the Devices API\](https://cloud.google.com/identity/docs/how-to/setup-devices). *)
  network_operator : string option;  (** Output only. Mobile or network operator of device, if available. *)
  os_version : string option;  (** Output only. OS version of the device. Example: Android 8.1.0. *)
  other_accounts : string list option;  (** Output only. Domain name for Google accounts on device. Type for other accounts on device. On Android, will only be populated if |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in to the device policy app if that account's domain has only one account. Examples: 'com.example', 'xyz.com'. *)
  owner_type : [ `Device_ownership_unspecified | `Company | `Byod | `Unrecognized of string ] option;  (** Output only. Whether the device is owned by the company or an individual *)
  release_version : string option;  (** Output only. OS release version. Example: 6.0. *)
  security_patch_time : string option;  (** Output only. OS security patch update time on device. *)
  serial_number : string option;  (** Serial Number of device. Example: HT82V1A01076. *)
  unified_device_id : string option;  (** Output only. Unified device id of the device. *)
  wifi_mac_addresses : string list option;  (** WiFi MAC addresses of device. *)
}

(** Represents a user's use of a Device in the Cloud Identity Devices API. A DeviceUser is a resource representing a user's use of a Device *)
and google_apps_cloudidentity_devices_v1_device_user = {
  compromised_state : [ `Compromised_state_unspecified | `Compromised | `Not_compromised | `Unrecognized of string ] option;  (** Compromised State of the DeviceUser object *)
  create_time : string option;  (** When the user first signed in to the device *)
  first_sync_time : string option;  (** Output only. Most recent time when user registered with this service. *)
  language_code : string option;  (** Output only. Default locale used on device, in IETF BCP-47 format. *)
  last_sync_time : string option;  (** Output only. Last time when user synced with policies. *)
  management_state : [ `Management_state_unspecified | `Wiping | `Wiped | `Approved | `Blocked | `Pending_approval | `Unenrolled | `Unrecognized of string ] option;  (** Output only. Management state of the user on the device. *)
  name : string option;  (** Output only. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the DeviceUser in format: `devices/\{device\}/deviceUsers/\{device_user\}`, where `device_user` uniquely identifies a user's use of a device. *)
  password_state : [ `Password_state_unspecified | `Password_set | `Password_not_set | `Unrecognized of string ] option;  (** Password state of the DeviceUser object *)
  user_agent : string option;  (** Output only. User agent on the device for this specific user *)
  user_email : string option;  (** Email address of the user registered on the device. *)
}

(** Resource representing the \[Endpoint Verification-specific attributes\](https://cloud.google.com/endpoint-verification/docs/device-information) of a device. *)
and google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes = {
  additional_signals : (string * Yojson.Safe.t) list option;  (** \[Additional signals\](https://cloud.google.com/endpoint-verification/docs/device-information) reported by Endpoint Verification. It includes the following attributes: * Non-configurable attributes: hotfixes, av_installed, av_enabled, windows_domain_name, is_os_native_firewall_enabled, and is_secure_boot_enabled. * \[Configurable attributes\](https://cloud.google.com/endpoint-verification/docs/collect-config-attributes): file, folder, and binary attributes; registry entries; and properties in a plist. *)
  browser_attributes : google_apps_cloudidentity_devices_v1_browser_attributes list option;  (** Details of browser profiles reported by Endpoint Verification. *)
  certificate_attributes : google_apps_cloudidentity_devices_v1_certificate_attributes list option;  (** Details of certificates. *)
}

(** Response message that is returned in ListClientStates. *)
and google_apps_cloudidentity_devices_v1_list_client_states_response = {
  client_states : google_apps_cloudidentity_devices_v1_client_state list option;  (** Client states meeting the list restrictions. *)
  next_page_token : string option;  (** Token to retrieve the next page of results. Empty if there are no more results. *)
}

(** Response message that is returned from the ListDeviceUsers method. *)
and google_apps_cloudidentity_devices_v1_list_device_users_response = {
  device_users : google_apps_cloudidentity_devices_v1_device_user list option;  (** Devices meeting the list restrictions. *)
  next_page_token : string option;  (** Token to retrieve the next page of results. Empty if there are no more results. *)
}

(** Response message that is returned from the ListDevices method. *)
and google_apps_cloudidentity_devices_v1_list_devices_response = {
  devices : google_apps_cloudidentity_devices_v1_device list option;  (** Devices meeting the list restrictions. *)
  next_page_token : string option;  (** Token to retrieve the next page of results. Empty if there are no more results. *)
}

(** Metadata for ListEndpointApps LRO. *)
and google_apps_cloudidentity_devices_v1_list_endpoint_apps_metadata = Yojson.Safe.t

(** Response containing resource names of the DeviceUsers associated with the caller's credentials. *)
and google_apps_cloudidentity_devices_v1_lookup_self_device_users_response = {
  customer : string option;  (** The customer resource name that may be passed back to other Devices API methods such as List, Get, etc. *)
  names : string list option;  (** \[Resource names\](https://cloud.google.com/apis/design/resource_names) of the DeviceUsers in the format: `devices/\{device\}/deviceUsers/\{user_resource\}`, where device is the unique ID assigned to a Device and user_resource is the unique user ID *)
  next_page_token : string option;  (** Token to retrieve the next page of results. Empty if there are no more results. *)
}

(** Metadata for SignoutDeviceUser LRO. *)
and google_apps_cloudidentity_devices_v1_signout_device_user_metadata = Yojson.Safe.t

(** Metadata for UpdateClientState LRO. *)
and google_apps_cloudidentity_devices_v1_update_client_state_metadata = Yojson.Safe.t

(** Metadata for UpdateDevice LRO. *)
and google_apps_cloudidentity_devices_v1_update_device_metadata = Yojson.Safe.t

(** Metadata for WipeDevice LRO. *)
and google_apps_cloudidentity_devices_v1_wipe_device_metadata = Yojson.Safe.t

(** Request message for wiping all data on the device. *)
and google_apps_cloudidentity_devices_v1_wipe_device_request = {
  customer : string option;  (** Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)
  remove_reset_lock : bool option;  (** Optional. Specifies if a user is able to factory reset a device after a Device Wipe. On iOS, this is called 'Activation Lock', while on Android, this is known as 'Factory Reset Protection'. If true, this protection will be removed from the device, so that a user can successfully factory reset. If false, the setting is untouched on the device. *)
}

(** Response message for wiping all data on the device. *)
and google_apps_cloudidentity_devices_v1_wipe_device_response = {
  device : google_apps_cloudidentity_devices_v1_device option;  (** Resultant Device object for the action. Note that asset tags will not be returned in the device object. *)
}

(** Metadata for WipeDeviceUser LRO. *)
and google_apps_cloudidentity_devices_v1_wipe_device_user_metadata = Yojson.Safe.t

(** Request message for starting an account wipe on device. *)
and google_apps_cloudidentity_devices_v1_wipe_device_user_request = {
  customer : string option;  (** Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)
}

(** Response message for wiping the user's account from the device. *)
and google_apps_cloudidentity_devices_v1_wipe_device_user_response = {
  device_user : google_apps_cloudidentity_devices_v1_device_user option;  (** Resultant DeviceUser object for the action. *)
}

(** A group within the Cloud Identity Groups API. A `Group` is a collection of entities, where each entity is either a user, another group, or a service account. *)
and group = {
  additional_group_keys : entity_key list option;  (** Output only. Additional group keys associated with the Group. *)
  create_time : string option;  (** Output only. The time when the `Group` was created. *)
  description : string option;  (** An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters. *)
  display_name : string option;  (** The display name of the `Group`. *)
  dynamic_group_metadata : dynamic_group_metadata option;  (** Optional. Dynamic group metadata like queries and status. *)
  external_ids : external_id list option;  (** Optional. External identifiers associated with the `Group`. Allows external identity providers and directory sync tools link their native unique identifiers with this group. The only supported namespace is `system/external`. *)
  group_key : entity_key option;  (** Required. The `EntityKey` of the `Group`. *)
  labels : (string * string) list option;  (** Required. One or more label entries that apply to the Group. Labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value. Google Groups can be \[locked\](https://support.google.com/a?p=locked-groups). To lock a group, add a label with a key of `cloudidentity.googleapis.com/groups.locked` and an empty value. Doing so locks the group. To unlock the group, remove this label. *)
  name : string option;  (** Output only. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/\{group\}`. *)
  parent : string option;  (** Required. Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/\{identity_source\}` for external \[identity-mapped groups\](https://support.google.com/a/answer/9039510) or `customers/\{customer_id\}` for Google Groups. The `customer_id` must begin with 'C' (for example, 'C046psxkn'). \[Find your customer ID.\] (https://support.google.com/cloudidentity/answer/10070793) *)
  update_time : string option;  (** Output only. The time when the `Group` was last updated. *)
}

(** Message representing a transitive group of a user or a group. *)
and group_relation = {
  display_name : string option;  (** Display name for this group. *)
  group : string option;  (** Resource name for this group. *)
  group_key : entity_key option;  (** Entity key has an id and a namespace. In case of discussion forums, the id will be an email address without a namespace. *)
  labels : (string * string) list option;  (** Labels for Group resource. *)
  relation_type : [ `Relation_type_unspecified | `Direct | `Indirect | `Direct_and_indirect | `Unrecognized of string ] option;  (** The relation between the member and the transitive group. *)
  roles : transitive_membership_role list option;  (** Membership roles of the member for the group. *)
}

(** Credential for verifying signatures produced by the Identity Provider. *)
and idp_credential = {
  dsa_key_info : dsa_public_key_info option;  (** Output only. Information of a DSA public key. *)
  name : string option;  (** Output only. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the credential. *)
  rsa_key_info : rsa_public_key_info option;  (** Output only. Information of a RSA public key. *)
  update_time : string option;  (** Output only. Time when the `IdpCredential` was last updated. *)
}

(** An \[OIDC\](https://openid.net/developers/how-connect-works/) federation between a Google enterprise customer and an OIDC identity provider. *)
and inbound_oidc_sso_profile = {
  customer : string option;  (** Immutable. The customer. For example: `customers/C0123abc`. *)
  display_name : string option;  (** Human-readable name of the OIDC SSO profile. *)
  idp_config : oidc_idp_config option;  (** OIDC identity provider configuration. *)
  name : string option;  (** Output only. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the OIDC SSO profile. *)
  rp_config : oidc_rp_config option;  (** OIDC relying party (RP) configuration for this OIDC SSO profile. These are the RP details provided by Google that should be configured on the corresponding identity provider. *)
}

(** A \[SAML 2.0\](https://www.oasis-open.org/standards#samlv2.0) federation between a Google enterprise customer and a SAML identity provider. *)
and inbound_saml_sso_profile = {
  customer : string option;  (** Immutable. The customer. For example: `customers/C0123abc`. *)
  display_name : string option;  (** Human-readable name of the SAML SSO profile. *)
  idp_config : saml_idp_config option;  (** SAML identity provider configuration. *)
  name : string option;  (** Output only. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile. *)
  sp_config : saml_sp_config option;  (** SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider. *)
}

(** Targets with 'set' SSO assignments and their respective assignments. *)
and inbound_sso_assignment = {
  customer : string option;  (** Immutable. The customer. For example: `customers/C0123abc`. *)
  name : string option;  (** Output only. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Inbound SSO Assignment. *)
  oidc_sso_info : oidc_sso_info option;  (** OpenID Connect SSO details. Must be set if and only if `sso_mode` is set to `OIDC_SSO`. *)
  rank : int option;  (** Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set. *)
  saml_sso_info : saml_sso_info option;  (** SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`. *)
  sign_in_behavior : sign_in_behavior option;  (** Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration. *)
  sso_mode : [ `Sso_mode_unspecified | `Sso_off | `Saml_sso | `Oidc_sso | `Domain_wide_saml_if_enabled | `Unrecognized of string ] option;  (** Inbound SSO behavior. *)
  target_group : string option;  (** Immutable. Must be of the form `groups/\{group\}`. *)
  target_org_unit : string option;  (** Immutable. Must be of the form `orgUnits/\{org_unit\}`. *)
}

(** Response for IsInvitableUser RPC. *)
and is_invitable_user_response = {
  is_invitable_user : bool option;  (** Returns true if the email address is invitable. *)
}

(** Response message for AllowlistedDomainsService.ListAllowlistedDomains. *)
and list_allowlisted_domains_response = {
  allowlisted_domains : allowlisted_domain list option;  (** Contains the list of domains in the allowlist. There is no defined ordering of domains within a result. *)
  next_page_token : string option;  (** Contains the next page token if the result is not exhaustive. If there are no more results, this token is empty. *)
}

(** Response message for ListGroups operation. *)
and list_groups_response = {
  groups : group list option;  (** Groups returned in response to list request. The results are not sorted. *)
  next_page_token : string option;  (** Token to retrieve the next page of results, or empty if there are no more results available for listing. *)
}

(** Response of the InboundSamlSsoProfilesService.ListIdpCredentials method. *)
and list_idp_credentials_response = {
  idp_credentials : idp_credential list option;  (** The IdpCredentials from the specified InboundSamlSsoProfile. *)
  next_page_token : string option;  (** A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages. *)
}

(** Response of the InboundOidcSsoProfilesService.ListInboundOidcSsoProfiles method. *)
and list_inbound_oidc_sso_profiles_response = {
  inbound_oidc_sso_profiles : inbound_oidc_sso_profile list option;  (** List of InboundOidcSsoProfiles. *)
  next_page_token : string option;  (** A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages. *)
}

(** Response of the InboundSamlSsoProfilesService.ListInboundSamlSsoProfiles method. *)
and list_inbound_saml_sso_profiles_response = {
  inbound_saml_sso_profiles : inbound_saml_sso_profile list option;  (** List of InboundSamlSsoProfiles. *)
  next_page_token : string option;  (** A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages. *)
}

(** Response of the InboundSsoAssignmentsService.ListInboundSsoAssignments method. *)
and list_inbound_sso_assignments_response = {
  inbound_sso_assignments : inbound_sso_assignment list option;  (** The assignments. *)
  next_page_token : string option;  (** A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages. *)
}

(** The response message for MembershipsService.ListMemberships. *)
and list_memberships_response = {
  memberships : membership list option;  (** The `Membership`s under the specified `parent`. *)
  next_page_token : string option;  (** A continuation token to retrieve the next page of results, or empty if there are no more results available. *)
}

(** The response message for PoliciesService.ListPolicies. *)
and list_policies_response = {
  next_page_token : string option;  (** The pagination token to retrieve the next page of results. If this field is empty, there are no subsequent pages. *)
  policies : policy list option;  (** The results *)
}

(** Response message for UserInvitation listing request. *)
and list_user_invitations_response = {
  next_page_token : string option;  (** The token for the next page. If not empty, indicates that there may be more `UserInvitation` resources that match the listing request; this value can be used in a subsequent ListUserInvitationsRequest to get continued results with the current list call. *)
  user_invitations : user_invitation list option;  (** The list of UserInvitation resources. *)
}

(** The response message for GroupsService.LookupGroupName. *)
and lookup_group_name_response = {
  name : string option;  (** The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the looked-up `Group`. *)
}

(** The response message for MembershipsService.LookupMembershipName. *)
and lookup_membership_name_response = {
  name : string option;  (** The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the looked-up `Membership`. Must be of the form `groups/\{group\}/memberships/\{membership\}`. *)
}

(** Message representing a transitive membership of a group. *)
and member_relation = {
  member : string option;  (** Resource name for this member. *)
  preferred_member_key : entity_key list option;  (** Entity key has an id and a namespace. In case of discussion forums, the id will be an email address without a namespace. *)
  relation_type : [ `Relation_type_unspecified | `Direct | `Indirect | `Direct_and_indirect | `Unrecognized of string ] option;  (** The relation between the group and the transitive member. *)
  roles : transitive_membership_role list option;  (** The membership role details (i.e name of role and expiry time). *)
}

(** The definition of MemberRestriction *)
and member_restriction = {
  evaluation : restriction_evaluation option;  (** The evaluated state of this restriction on a group. *)
  query : string option;  (** Member Restriction as defined by CEL expression. Supported restrictions are: `member.customer_id` and `member.type`. Valid values for `member.type` are `1`, `2` and `3`. They correspond to USER, SERVICE_ACCOUNT, and GROUP respectively. The value for `member.customer_id` only supports `groupCustomerId()` currently which means the customer id of the group will be used for restriction. Supported operators are `&&`, `||` and `==`, corresponding to AND, OR, and EQUAL. Examples: Allow only service accounts of given customer to be members. `member.type == 2 && member.customer_id == groupCustomerId()` Allow only users or groups to be members. `member.type == 1 || member.type == 3` *)
}

(** A membership within the Cloud Identity Groups API. A `Membership` defines a relationship between a `Group` and an entity belonging to that `Group`, referred to as a 'member'. *)
and membership = {
  create_time : string option;  (** Output only. The time when the `Membership` was created. *)
  delivery_setting : [ `Delivery_setting_unspecified | `All_mail | `Digest | `Daily | `None | `Disabled | `Unrecognized of string ] option;  (** Output only. Delivery setting associated with the membership. *)
  name : string option;  (** Output only. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/\{group\}/memberships/\{membership\}`. *)
  preferred_member_key : entity_key option;  (** Required. Immutable. The `EntityKey` of the member. *)
  roles : membership_role list option;  (** The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`. *)
  type_ : [ `Type_unspecified | `User | `Service_account | `Group | `Shared_drive | `Cbcm_browser | `Chrome_os_device | `Other | `Unrecognized of string ] option;  (** Output only. The type of the membership. *)
  update_time : string option;  (** Output only. The time when the `Membership` was last updated. *)
}

(** Membership graph's path information as an adjacency list. *)
and membership_adjacency_list = {
  edges : membership list option;  (** Each edge contains information about the member that belongs to this group. Note: Fields returned here will help identify the specific Membership resource (e.g `name`, `preferred_member_key` and `role`), but may not be a comprehensive list of all fields. *)
  group : string option;  (** Resource name of the group that the members belong to. *)
}

(** Message containing membership relation. *)
and membership_relation = {
  description : string option;  (** An extended description to help users determine the purpose of a `Group`. *)
  display_name : string option;  (** The display name of the `Group`. *)
  group : string option;  (** The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/\{group_id\}`. *)
  group_key : entity_key option;  (** The `EntityKey` of the `Group`. *)
  labels : (string * string) list option;  (** One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. *)
  membership : string option;  (** The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/\{group_id\}/memberships/\{membership_id\}`. *)
  roles : membership_role list option;  (** The `MembershipRole`s that apply to the `Membership`. *)
}

(** A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`. *)
and membership_role = {
  expiry_detail : expiry_detail option;  (** The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value. *)
  name : string option;  (** The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`. *)
  restriction_evaluations : restriction_evaluations option;  (** Evaluations of restrictions applied to parent group on this membership. *)
}

(** The evaluated state of this restriction. *)
and membership_role_restriction_evaluation = {
  state : [ `State_unspecified | `Compliant | `Forward_compliant | `Non_compliant | `Evaluating | `Unrecognized of string ] option;  (** Output only. The current state of the restriction *)
}

(** The request message for MembershipsService.ModifyMembershipRoles. *)
and modify_membership_roles_request = {
  add_roles : membership_role list option;  (** The `MembershipRole`s to be added. Adding or removing roles in the same request as updating roles is not supported. Must not be set if `update_roles_params` is set. *)
  remove_roles : string list option;  (** The `name`s of the `MembershipRole`s to be removed. Adding or removing roles in the same request as updating roles is not supported. It is not possible to remove the `MEMBER` `MembershipRole`. If you wish to delete a `Membership`, call MembershipsService.DeleteMembership instead. Must not contain `MEMBER`. Must not be set if `update_roles_params` is set. *)
  update_roles_params : update_membership_roles_params list option;  (** The `MembershipRole`s to be updated. Updating roles in the same request as adding or removing roles is not supported. Must not be set if either `add_roles` or `remove_roles` is set. *)
}

(** The response message for MembershipsService.ModifyMembershipRoles. *)
and modify_membership_roles_response = {
  membership : membership option;  (** The `Membership` resource after modifying its `MembershipRole`s. *)
}

(** OIDC IDP (identity provider) configuration. *)
and oidc_idp_config = {
  change_password_uri : string option;  (** The **Change Password URL** of the identity provider. Users will be sent to this URL when changing their passwords at `myaccount.google.com`. This takes precedence over the change password URL configured at customer-level. Must use `HTTPS`. *)
  issuer_uri : string option;  (** Required. The Issuer identifier for the IdP. Must be a URL. The discovery URL will be derived from this as described in Section 4 of \[the OIDC specification\](https://openid.net/specs/openid-connect-discovery-1_0.html). *)
}

(** OIDC RP (relying party) configuration. *)
and oidc_rp_config = {
  client_id : string option;  (** OAuth2 client ID for OIDC. *)
  client_secret : string option;  (** Input only. OAuth2 client secret for OIDC. *)
  redirect_uris : string list option;  (** Output only. The URL(s) that this client may use in authentication requests. *)
}

(** Details that are applicable when `sso_mode` is set to `OIDC_SSO`. *)
and oidc_sso_info = {
  inbound_oidc_sso_profile : string option;  (** Required. Name of the `InboundOidcSsoProfile` to use. Must be of the form `inboundOidcSsoProfiles/\{inbound_oidc_sso_profile\}`. *)
}

(** This resource represents a long-running operation that is the result of a network API call. *)
and operation = {
  done_ : bool option;  (** If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available. *)
  error : status option;  (** The error result of the operation in case of failure or cancellation. *)
  metadata : (string * Yojson.Safe.t) list option;  (** Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any. *)
  name : string option;  (** The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/\{unique_id\}`. *)
  response : (string * Yojson.Safe.t) list option;  (** The normal, successful response of the operation. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`. *)
}

(** A Policy resource binds an instance of a single Setting with the scope of a PolicyQuery. The Setting instance will be applied to all entities that satisfy the query. *)
and policy = {
  customer : string option;  (** Immutable. Customer that the Policy belongs to. The value is in the format 'customers/\{customerId\}'. The `customerId` must begin with 'C' To find your customer ID in Admin Console see https://support.google.com/a/answer/10070793. *)
  name : string option;  (** Output only. Identifier. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the Policy. Format: policies/\{policy\}. *)
  policy_query : policy_query option;  (** Required. The PolicyQuery the Setting applies to. *)
  setting : setting option;  (** Required. The Setting configured by this Policy. *)
  type_ : [ `Policy_type_unspecified | `System | `Admin | `Unrecognized of string ] option;  (** Output only. The type of the policy. *)
}

(** PolicyQuery *)
and policy_query = {
  group : string option;  (** Immutable. The group that the query applies to. This field is only set if there is a single value for group that satisfies all clauses of the query. If no group applies, this will be the empty string. *)
  org_unit : string option;  (** Required. Immutable. Non-empty default. The OrgUnit the query applies to. This field is only set if there is a single value for org_unit that satisfies all clauses of the query. *)
  query : string option;  (** Immutable. The CEL query that defines which entities the Policy applies to (ex. a User entity). For details about CEL see https://opensource.google.com/projects/cel. The OrgUnits the Policy applies to are represented by a clause like so: entity.org_units.exists(org_unit, org_unit.org_unit_id == orgUnitId('\{orgUnitId\}')) The Group the Policy applies to are represented by a clause like so: entity.groups.exists(group, group.group_id == groupId('\{groupId\}')) The Licenses the Policy applies to are represented by a clause like so: entity.licenses.exists(license, license in \['/product/\{productId\}/sku/\{skuId\}'\]) **Note:** The licenses clause is not supported in mutate endpoints. The above clauses can be present in any combination, and used in conjunction with the &&, || and ! operators. The org_unit and group fields below are helper fields that contain the corresponding value(s) as the query to make the query easier to use. *)
  sort_order : float option;  (** Output only. The decimal sort order of this PolicyQuery. The value is relative to all other policies with the same setting type for the customer. (There are no duplicates within this set). *)
}

(** The evaluated state of this restriction. *)
and restriction_evaluation = {
  state : [ `State_unspecified | `Evaluating | `Compliant | `Forward_compliant | `Non_compliant | `Unrecognized of string ] option;  (** Output only. The current state of the restriction *)
}

(** Evaluations of restrictions applied to parent group on this membership. *)
and restriction_evaluations = {
  member_restriction_evaluation : membership_role_restriction_evaluation option;  (** Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation. *)
}

(** Information of a RSA public key. *)
and rsa_public_key_info = {
  key_size : int option;  (** Key size in bits (size of the modulus). *)
}

(** SAML IDP (identity provider) configuration. *)
and saml_idp_config = {
  change_password_uri : string option;  (** The **Change Password URL** of the identity provider. Users will be sent to this URL when changing their passwords at `myaccount.google.com`. This takes precedence over the change password URL configured at customer-level. Must use `HTTPS`. *)
  entity_id : string option;  (** Required. The SAML **Entity ID** of the identity provider. *)
  logout_redirect_uri : string option;  (** The **Logout Redirect URL** (sign-out page URL) of the identity provider. When a user clicks the sign-out link on a Google page, they will be redirected to this URL. This is a pure redirect with no attached SAML `LogoutRequest` i.e. SAML single logout is not supported. Must use `HTTPS`. *)
  single_sign_on_service_uri : string option;  (** Required. The `SingleSignOnService` endpoint location (sign-in page URL) of the identity provider. This is the URL where the `AuthnRequest` will be sent. Must use `HTTPS`. Assumed to accept the `HTTP-Redirect` binding. *)
}

(** SAML SP (service provider) configuration. *)
and saml_sp_config = {
  assertion_consumer_service_uri : string option;  (** Output only. The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated login. Assumed to accept response messages via the `HTTP-POST` binding. *)
  entity_id : string option;  (** Output only. The SAML **Entity ID** for this service provider. *)
}

(** Details that are applicable when `sso_mode` == `SAML_SSO`. *)
and saml_sso_info = {
  inbound_saml_sso_profile : string option;  (** Required. Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/\{inbound_saml_sso_profile\}`. *)
}

(** The response message for MembershipsService.SearchDirectGroups. *)
and search_direct_groups_response = {
  memberships : membership_relation list option;  (** List of direct groups satisfying the query. *)
  next_page_token : string option;  (** Token to retrieve the next page of results, or empty if there are no more results available for listing. *)
}

(** The response message for GroupsService.SearchGroups. *)
and search_groups_response = {
  groups : group list option;  (** The `Group` resources that match the search query. *)
  next_page_token : string option;  (** A continuation token to retrieve the next page of results, or empty if there are no more results available. *)
}

(** The response message for MembershipsService.SearchTransitiveGroups. *)
and search_transitive_groups_response = {
  memberships : group_relation list option;  (** List of transitive groups satisfying the query. *)
  next_page_token : string option;  (** Token to retrieve the next page of results, or empty if there are no more results available for listing. *)
}

(** The response message for MembershipsService.SearchTransitiveMemberships. *)
and search_transitive_memberships_response = {
  memberships : member_relation list option;  (** List of transitive members satisfying the query. *)
  next_page_token : string option;  (** Token to retrieve the next page of results, or empty if there are no more results. *)
}

(** The definition of security settings. *)
and security_settings = {
  member_restriction : member_restriction option;  (** The Member Restriction value *)
  name : string option;  (** Output only. The resource name of the security settings. Shall be of the form `groups/\{group_id\}/securitySettings`. *)
}

(** A request to send email for inviting target user corresponding to the UserInvitation. *)
and send_user_invitation_request = Yojson.Safe.t

(** Setting *)
and setting = {
  type_ : string option;  (** Required. Immutable. The type of the Setting. *)
  value : (string * Yojson.Safe.t) list option;  (** Required. The value of the Setting. *)
}

(** Controls sign-in behavior. *)
and sign_in_behavior = {
  redirect_condition : [ `Redirect_condition_unspecified | `Never | `Unrecognized of string ] option;  (** When to redirect sign-ins to the IdP. *)
}

(** The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by \[gRPC\](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the \[API Design Guide\](https://cloud.google.com/apis/design/errors). *)
and status = {
  code : int option;  (** The status code, which should be an enum value of google.rpc.Code. *)
  details : (string * Yojson.Safe.t) list list option;  (** A list of messages that carry the error details. There is a common set of message types for APIs to use. *)
  message : string option;  (** A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client. *)
}

(** Message representing the role of a TransitiveMembership. *)
and transitive_membership_role = {
  role : string option;  (** TransitiveMembershipRole in string format. Currently supported TransitiveMembershipRoles: `'MEMBER'`, `'OWNER'`, and `'MANAGER'`. *)
}

(** Metadata for UpdateGroup LRO. *)
and update_group_metadata = Yojson.Safe.t

(** LRO response metadata for InboundOidcSsoProfilesService.UpdateInboundOidcSsoProfile. *)
and update_inbound_oidc_sso_profile_operation_metadata = {
  state : string option;  (** State of this Operation Will be 'awaiting-multi-party-approval' when the operation is deferred due to the target customer having enabled \[Multi-party approval for sensitive actions\](https://support.google.com/a/answer/13790448). *)
}

(** LRO response metadata for InboundSamlSsoProfilesService.UpdateInboundSamlSsoProfile. *)
and update_inbound_saml_sso_profile_operation_metadata = {
  state : string option;  (** State of this Operation Will be 'awaiting-multi-party-approval' when the operation is deferred due to the target customer having enabled \[Multi-party approval for sensitive actions\](https://support.google.com/a/answer/13790448). *)
}

(** LRO response metadata for InboundSsoAssignmentsService.UpdateInboundSsoAssignment. *)
and update_inbound_sso_assignment_operation_metadata = Yojson.Safe.t

(** Metadata for UpdateMembership LRO. *)
and update_membership_metadata = Yojson.Safe.t

(** The details of an update to a `MembershipRole`. *)
and update_membership_roles_params = {
  field_mask : string option;  (** The fully-qualified names of fields to update. May only contain the field `expiry_detail.expire_time`. *)
  membership_role : membership_role option;  (** The `MembershipRole`s to be updated. Only `MEMBER` `MembershipRole` can currently be updated. *)
}

(** The `UserInvitation` resource represents an email that can be sent to an unmanaged user account inviting them to join the customer's Google Workspace or Cloud Identity account. An unmanaged account shares an email address domain with the Google Workspace or Cloud Identity account but is not managed by it yet. If the user accepts the `UserInvitation`, the user account will become managed. *)
and user_invitation = {
  mails_sent_count : string option;  (** Number of invitation emails sent to the user. *)
  name : string option;  (** Shall be of the form `customers/\{customer\}/userinvitations/\{user_email_address\}`. *)
  state : [ `State_unspecified | `Not_yet_sent | `Invited | `Accepted | `Declined | `Unrecognized of string ] option;  (** State of the `UserInvitation`. *)
  update_time : string option;  (** Time when the `UserInvitation` was last updated. *)
}

val add_idp_credential_operation_metadata_of_yojson : Yojson.Safe.t -> add_idp_credential_operation_metadata
val yojson_of_add_idp_credential_operation_metadata : add_idp_credential_operation_metadata -> Yojson.Safe.t

val make_add_idp_credential_operation_metadata :
  ?state:string ->
  unit ->
  add_idp_credential_operation_metadata

val add_idp_credential_request_of_yojson : Yojson.Safe.t -> add_idp_credential_request
val yojson_of_add_idp_credential_request : add_idp_credential_request -> Yojson.Safe.t

val make_add_idp_credential_request :
  ?pem_data:string ->
  unit ->
  add_idp_credential_request

val allowlisted_domain_of_yojson : Yojson.Safe.t -> allowlisted_domain
val yojson_of_allowlisted_domain : allowlisted_domain -> Yojson.Safe.t

val make_allowlisted_domain :
  ?domain:string ->
  ?name:string ->
  unit ->
  allowlisted_domain

val cancel_user_invitation_request_of_yojson : Yojson.Safe.t -> cancel_user_invitation_request
val yojson_of_cancel_user_invitation_request : cancel_user_invitation_request -> Yojson.Safe.t

val check_transitive_membership_response_of_yojson : Yojson.Safe.t -> check_transitive_membership_response
val yojson_of_check_transitive_membership_response : check_transitive_membership_response -> Yojson.Safe.t

val make_check_transitive_membership_response :
  ?has_membership:bool ->
  unit ->
  check_transitive_membership_response

val create_group_metadata_of_yojson : Yojson.Safe.t -> create_group_metadata
val yojson_of_create_group_metadata : create_group_metadata -> Yojson.Safe.t

val create_inbound_oidc_sso_profile_operation_metadata_of_yojson : Yojson.Safe.t -> create_inbound_oidc_sso_profile_operation_metadata
val yojson_of_create_inbound_oidc_sso_profile_operation_metadata : create_inbound_oidc_sso_profile_operation_metadata -> Yojson.Safe.t

val make_create_inbound_oidc_sso_profile_operation_metadata :
  ?state:string ->
  unit ->
  create_inbound_oidc_sso_profile_operation_metadata

val create_inbound_saml_sso_profile_operation_metadata_of_yojson : Yojson.Safe.t -> create_inbound_saml_sso_profile_operation_metadata
val yojson_of_create_inbound_saml_sso_profile_operation_metadata : create_inbound_saml_sso_profile_operation_metadata -> Yojson.Safe.t

val make_create_inbound_saml_sso_profile_operation_metadata :
  ?state:string ->
  unit ->
  create_inbound_saml_sso_profile_operation_metadata

val create_inbound_sso_assignment_operation_metadata_of_yojson : Yojson.Safe.t -> create_inbound_sso_assignment_operation_metadata
val yojson_of_create_inbound_sso_assignment_operation_metadata : create_inbound_sso_assignment_operation_metadata -> Yojson.Safe.t

val create_membership_metadata_of_yojson : Yojson.Safe.t -> create_membership_metadata
val yojson_of_create_membership_metadata : create_membership_metadata -> Yojson.Safe.t

val delete_group_metadata_of_yojson : Yojson.Safe.t -> delete_group_metadata
val yojson_of_delete_group_metadata : delete_group_metadata -> Yojson.Safe.t

val delete_idp_credential_operation_metadata_of_yojson : Yojson.Safe.t -> delete_idp_credential_operation_metadata
val yojson_of_delete_idp_credential_operation_metadata : delete_idp_credential_operation_metadata -> Yojson.Safe.t

val delete_inbound_oidc_sso_profile_operation_metadata_of_yojson : Yojson.Safe.t -> delete_inbound_oidc_sso_profile_operation_metadata
val yojson_of_delete_inbound_oidc_sso_profile_operation_metadata : delete_inbound_oidc_sso_profile_operation_metadata -> Yojson.Safe.t

val delete_inbound_saml_sso_profile_operation_metadata_of_yojson : Yojson.Safe.t -> delete_inbound_saml_sso_profile_operation_metadata
val yojson_of_delete_inbound_saml_sso_profile_operation_metadata : delete_inbound_saml_sso_profile_operation_metadata -> Yojson.Safe.t

val delete_inbound_sso_assignment_operation_metadata_of_yojson : Yojson.Safe.t -> delete_inbound_sso_assignment_operation_metadata
val yojson_of_delete_inbound_sso_assignment_operation_metadata : delete_inbound_sso_assignment_operation_metadata -> Yojson.Safe.t

val delete_membership_metadata_of_yojson : Yojson.Safe.t -> delete_membership_metadata
val yojson_of_delete_membership_metadata : delete_membership_metadata -> Yojson.Safe.t

val dsa_public_key_info_of_yojson : Yojson.Safe.t -> dsa_public_key_info
val yojson_of_dsa_public_key_info : dsa_public_key_info -> Yojson.Safe.t

val make_dsa_public_key_info :
  ?key_size:int ->
  unit ->
  dsa_public_key_info

val dynamic_group_metadata_of_yojson : Yojson.Safe.t -> dynamic_group_metadata
val yojson_of_dynamic_group_metadata : dynamic_group_metadata -> Yojson.Safe.t

val make_dynamic_group_metadata :
  ?queries:dynamic_group_query list ->
  ?status:dynamic_group_status ->
  unit ->
  dynamic_group_metadata

val dynamic_group_query_of_yojson : Yojson.Safe.t -> dynamic_group_query
val yojson_of_dynamic_group_query : dynamic_group_query -> Yojson.Safe.t

val make_dynamic_group_query :
  ?query:string ->
  ?resource_type:[ `Resource_type_unspecified | `User | `Unrecognized of string ] ->
  unit ->
  dynamic_group_query

val dynamic_group_status_of_yojson : Yojson.Safe.t -> dynamic_group_status
val yojson_of_dynamic_group_status : dynamic_group_status -> Yojson.Safe.t

val make_dynamic_group_status :
  ?status:[ `Status_unspecified | `Up_to_date | `Updating_memberships | `Invalid_query | `Unrecognized of string ] ->
  ?status_time:string ->
  unit ->
  dynamic_group_status

val entity_key_of_yojson : Yojson.Safe.t -> entity_key
val yojson_of_entity_key : entity_key -> Yojson.Safe.t

val make_entity_key :
  ?id:string ->
  ?namespace:string ->
  unit ->
  entity_key

val expiry_detail_of_yojson : Yojson.Safe.t -> expiry_detail
val yojson_of_expiry_detail : expiry_detail -> Yojson.Safe.t

val make_expiry_detail :
  ?expire_time:string ->
  unit ->
  expiry_detail

val external_id_of_yojson : Yojson.Safe.t -> external_id
val yojson_of_external_id : external_id -> Yojson.Safe.t

val make_external_id :
  ?id:string ->
  ?namespace:string ->
  unit ->
  external_id

val get_membership_graph_metadata_of_yojson : Yojson.Safe.t -> get_membership_graph_metadata
val yojson_of_get_membership_graph_metadata : get_membership_graph_metadata -> Yojson.Safe.t

val get_membership_graph_response_of_yojson : Yojson.Safe.t -> get_membership_graph_response
val yojson_of_get_membership_graph_response : get_membership_graph_response -> Yojson.Safe.t

val make_get_membership_graph_response :
  ?adjacency_list:membership_adjacency_list list ->
  ?groups:group list ->
  unit ->
  get_membership_graph_response

val google_apps_cloudidentity_devices_v1_android_attributes_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_android_attributes
val yojson_of_google_apps_cloudidentity_devices_v1_android_attributes : google_apps_cloudidentity_devices_v1_android_attributes -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_android_attributes :
  ?cts_profile_match:bool ->
  ?enabled_unknown_sources:bool ->
  ?has_potentially_harmful_apps:bool ->
  ?owner_profile_account:bool ->
  ?ownership_privilege:[ `Ownership_privilege_unspecified | `Device_administrator | `Profile_owner | `Device_owner | `Unrecognized of string ] ->
  ?supports_work_profile:bool ->
  ?verified_boot:bool ->
  ?verify_apps_enabled:bool ->
  unit ->
  google_apps_cloudidentity_devices_v1_android_attributes

val google_apps_cloudidentity_devices_v1_approve_device_user_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_approve_device_user_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_approve_device_user_metadata : google_apps_cloudidentity_devices_v1_approve_device_user_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_approve_device_user_request_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_approve_device_user_request
val yojson_of_google_apps_cloudidentity_devices_v1_approve_device_user_request : google_apps_cloudidentity_devices_v1_approve_device_user_request -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_approve_device_user_request :
  ?customer:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_approve_device_user_request

val google_apps_cloudidentity_devices_v1_approve_device_user_response_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_approve_device_user_response
val yojson_of_google_apps_cloudidentity_devices_v1_approve_device_user_response : google_apps_cloudidentity_devices_v1_approve_device_user_response -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_approve_device_user_response :
  ?device_user:google_apps_cloudidentity_devices_v1_device_user ->
  unit ->
  google_apps_cloudidentity_devices_v1_approve_device_user_response

val google_apps_cloudidentity_devices_v1_block_device_user_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_block_device_user_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_block_device_user_metadata : google_apps_cloudidentity_devices_v1_block_device_user_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_block_device_user_request_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_block_device_user_request
val yojson_of_google_apps_cloudidentity_devices_v1_block_device_user_request : google_apps_cloudidentity_devices_v1_block_device_user_request -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_block_device_user_request :
  ?customer:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_block_device_user_request

val google_apps_cloudidentity_devices_v1_block_device_user_response_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_block_device_user_response
val yojson_of_google_apps_cloudidentity_devices_v1_block_device_user_response : google_apps_cloudidentity_devices_v1_block_device_user_response -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_block_device_user_response :
  ?device_user:google_apps_cloudidentity_devices_v1_device_user ->
  unit ->
  google_apps_cloudidentity_devices_v1_block_device_user_response

val google_apps_cloudidentity_devices_v1_browser_attributes_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_browser_attributes
val yojson_of_google_apps_cloudidentity_devices_v1_browser_attributes : google_apps_cloudidentity_devices_v1_browser_attributes -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_browser_attributes :
  ?chrome_browser_info:google_apps_cloudidentity_devices_v1_browser_info ->
  ?chrome_profile_id:string ->
  ?last_profile_sync_time:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_browser_attributes

val google_apps_cloudidentity_devices_v1_browser_info_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_browser_info
val yojson_of_google_apps_cloudidentity_devices_v1_browser_info : google_apps_cloudidentity_devices_v1_browser_info -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_browser_info :
  ?browser_management_state:[ `Unspecified | `Unmanaged | `Managed_by_other_domain | `Profile_managed | `Browser_managed | `Unrecognized of string ] ->
  ?browser_version:string ->
  ?is_built_in_dns_client_enabled:bool ->
  ?is_bulk_data_entry_analysis_enabled:bool ->
  ?is_chrome_cleanup_enabled:bool ->
  ?is_chrome_remote_desktop_app_blocked:bool ->
  ?is_file_download_analysis_enabled:bool ->
  ?is_file_upload_analysis_enabled:bool ->
  ?is_realtime_url_check_enabled:bool ->
  ?is_security_event_analysis_enabled:bool ->
  ?is_site_isolation_enabled:bool ->
  ?is_third_party_blocking_enabled:bool ->
  ?password_protection_warning_trigger:[ `Password_protection_trigger_unspecified | `Protection_off | `Password_reuse | `Phishing_reuse | `Unrecognized of string ] ->
  ?safe_browsing_protection_level:[ `Safe_browsing_level_unspecified | `Disabled | `Standard | `Enhanced | `Unrecognized of string ] ->
  unit ->
  google_apps_cloudidentity_devices_v1_browser_info

val google_apps_cloudidentity_devices_v1_cancel_wipe_device_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_cancel_wipe_device_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_metadata : google_apps_cloudidentity_devices_v1_cancel_wipe_device_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_cancel_wipe_device_request_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_cancel_wipe_device_request
val yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_request : google_apps_cloudidentity_devices_v1_cancel_wipe_device_request -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_cancel_wipe_device_request :
  ?customer:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_cancel_wipe_device_request

val google_apps_cloudidentity_devices_v1_cancel_wipe_device_response_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_cancel_wipe_device_response
val yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_response : google_apps_cloudidentity_devices_v1_cancel_wipe_device_response -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_cancel_wipe_device_response :
  ?device:google_apps_cloudidentity_devices_v1_device ->
  unit ->
  google_apps_cloudidentity_devices_v1_cancel_wipe_device_response

val google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_metadata : google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request
val yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request : google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request :
  ?customer:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request

val google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response
val yojson_of_google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response : google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response :
  ?device_user:google_apps_cloudidentity_devices_v1_device_user ->
  unit ->
  google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_response

val google_apps_cloudidentity_devices_v1_certificate_attributes_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_certificate_attributes
val yojson_of_google_apps_cloudidentity_devices_v1_certificate_attributes : google_apps_cloudidentity_devices_v1_certificate_attributes -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_certificate_attributes :
  ?certificate_template:google_apps_cloudidentity_devices_v1_certificate_template ->
  ?fingerprint:string ->
  ?issuer:string ->
  ?serial_number:string ->
  ?subject:string ->
  ?thumbprint:string ->
  ?validation_state:[ `Certificate_validation_state_unspecified | `Validation_successful | `Validation_failed | `Unrecognized of string ] ->
  ?validity_expiration_time:string ->
  ?validity_start_time:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_certificate_attributes

val google_apps_cloudidentity_devices_v1_certificate_template_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_certificate_template
val yojson_of_google_apps_cloudidentity_devices_v1_certificate_template : google_apps_cloudidentity_devices_v1_certificate_template -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_certificate_template :
  ?id:string ->
  ?major_version:int ->
  ?minor_version:int ->
  unit ->
  google_apps_cloudidentity_devices_v1_certificate_template

val google_apps_cloudidentity_devices_v1_client_state_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_client_state
val yojson_of_google_apps_cloudidentity_devices_v1_client_state : google_apps_cloudidentity_devices_v1_client_state -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_client_state :
  ?asset_tags:string list ->
  ?compliance_state:[ `Compliance_state_unspecified | `Compliant | `Non_compliant | `Unrecognized of string ] ->
  ?create_time:string ->
  ?custom_id:string ->
  ?etag:string ->
  ?health_score:[ `Health_score_unspecified | `Very_poor | `Poor | `Neutral | `Good | `Very_good | `Unrecognized of string ] ->
  ?key_value_pairs:(string * google_apps_cloudidentity_devices_v1_custom_attribute_value) list ->
  ?last_update_time:string ->
  ?managed:[ `Managed_state_unspecified | `Managed | `Unmanaged | `Unrecognized of string ] ->
  ?name:string ->
  ?owner_type:[ `Owner_type_unspecified | `Owner_type_customer | `Owner_type_partner | `Unrecognized of string ] ->
  ?score_reason:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_client_state

val google_apps_cloudidentity_devices_v1_create_device_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_create_device_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_create_device_metadata : google_apps_cloudidentity_devices_v1_create_device_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_custom_attribute_value_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_custom_attribute_value
val yojson_of_google_apps_cloudidentity_devices_v1_custom_attribute_value : google_apps_cloudidentity_devices_v1_custom_attribute_value -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_custom_attribute_value :
  ?bool_value:bool ->
  ?number_value:float ->
  ?string_value:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_custom_attribute_value

val google_apps_cloudidentity_devices_v1_delete_device_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_delete_device_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_delete_device_metadata : google_apps_cloudidentity_devices_v1_delete_device_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_delete_device_user_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_delete_device_user_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_delete_device_user_metadata : google_apps_cloudidentity_devices_v1_delete_device_user_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_device_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_device
val yojson_of_google_apps_cloudidentity_devices_v1_device : google_apps_cloudidentity_devices_v1_device -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_device :
  ?android_specific_attributes:google_apps_cloudidentity_devices_v1_android_attributes ->
  ?asset_tag:string ->
  ?baseband_version:string ->
  ?bootloader_version:string ->
  ?brand:string ->
  ?build_number:string ->
  ?compromised_state:[ `Compromised_state_unspecified | `Compromised | `Uncompromised | `Unrecognized of string ] ->
  ?create_time:string ->
  ?device_id:string ->
  ?device_type:[ `Device_type_unspecified | `Android | `Ios | `Google_sync | `Windows | `Mac_os | `Linux | `Chrome_os | `Googlebook | `Unrecognized of string ] ->
  ?enabled_developer_options:bool ->
  ?enabled_usb_debugging:bool ->
  ?encryption_state:[ `Encryption_state_unspecified | `Unsupported_by_device | `Encrypted | `Not_encrypted | `Unrecognized of string ] ->
  ?endpoint_verification_specific_attributes:google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes ->
  ?hostname:string ->
  ?imei:string ->
  ?kernel_version:string ->
  ?last_sync_time:string ->
  ?management_state:[ `Management_state_unspecified | `Approved | `Blocked | `Pending | `Unprovisioned | `Wiping | `Wiped | `Unrecognized of string ] ->
  ?manufacturer:string ->
  ?meid:string ->
  ?model:string ->
  ?name:string ->
  ?network_operator:string ->
  ?os_version:string ->
  ?other_accounts:string list ->
  ?owner_type:[ `Device_ownership_unspecified | `Company | `Byod | `Unrecognized of string ] ->
  ?release_version:string ->
  ?security_patch_time:string ->
  ?serial_number:string ->
  ?unified_device_id:string ->
  ?wifi_mac_addresses:string list ->
  unit ->
  google_apps_cloudidentity_devices_v1_device

val google_apps_cloudidentity_devices_v1_device_user_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_device_user
val yojson_of_google_apps_cloudidentity_devices_v1_device_user : google_apps_cloudidentity_devices_v1_device_user -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_device_user :
  ?compromised_state:[ `Compromised_state_unspecified | `Compromised | `Not_compromised | `Unrecognized of string ] ->
  ?create_time:string ->
  ?first_sync_time:string ->
  ?language_code:string ->
  ?last_sync_time:string ->
  ?management_state:[ `Management_state_unspecified | `Wiping | `Wiped | `Approved | `Blocked | `Pending_approval | `Unenrolled | `Unrecognized of string ] ->
  ?name:string ->
  ?password_state:[ `Password_state_unspecified | `Password_set | `Password_not_set | `Unrecognized of string ] ->
  ?user_agent:string ->
  ?user_email:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_device_user

val google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes
val yojson_of_google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes : google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes :
  ?additional_signals:(string * Yojson.Safe.t) list ->
  ?browser_attributes:google_apps_cloudidentity_devices_v1_browser_attributes list ->
  ?certificate_attributes:google_apps_cloudidentity_devices_v1_certificate_attributes list ->
  unit ->
  google_apps_cloudidentity_devices_v1_endpoint_verification_specific_attributes

val google_apps_cloudidentity_devices_v1_list_client_states_response_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_list_client_states_response
val yojson_of_google_apps_cloudidentity_devices_v1_list_client_states_response : google_apps_cloudidentity_devices_v1_list_client_states_response -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_list_client_states_response :
  ?client_states:google_apps_cloudidentity_devices_v1_client_state list ->
  ?next_page_token:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_list_client_states_response

val google_apps_cloudidentity_devices_v1_list_device_users_response_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_list_device_users_response
val yojson_of_google_apps_cloudidentity_devices_v1_list_device_users_response : google_apps_cloudidentity_devices_v1_list_device_users_response -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_list_device_users_response :
  ?device_users:google_apps_cloudidentity_devices_v1_device_user list ->
  ?next_page_token:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_list_device_users_response

val google_apps_cloudidentity_devices_v1_list_devices_response_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_list_devices_response
val yojson_of_google_apps_cloudidentity_devices_v1_list_devices_response : google_apps_cloudidentity_devices_v1_list_devices_response -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_list_devices_response :
  ?devices:google_apps_cloudidentity_devices_v1_device list ->
  ?next_page_token:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_list_devices_response

val google_apps_cloudidentity_devices_v1_list_endpoint_apps_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_list_endpoint_apps_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_list_endpoint_apps_metadata : google_apps_cloudidentity_devices_v1_list_endpoint_apps_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_lookup_self_device_users_response_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_lookup_self_device_users_response
val yojson_of_google_apps_cloudidentity_devices_v1_lookup_self_device_users_response : google_apps_cloudidentity_devices_v1_lookup_self_device_users_response -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_lookup_self_device_users_response :
  ?customer:string ->
  ?names:string list ->
  ?next_page_token:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_lookup_self_device_users_response

val google_apps_cloudidentity_devices_v1_signout_device_user_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_signout_device_user_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_signout_device_user_metadata : google_apps_cloudidentity_devices_v1_signout_device_user_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_update_client_state_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_update_client_state_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_update_client_state_metadata : google_apps_cloudidentity_devices_v1_update_client_state_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_update_device_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_update_device_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_update_device_metadata : google_apps_cloudidentity_devices_v1_update_device_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_wipe_device_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_wipe_device_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_metadata : google_apps_cloudidentity_devices_v1_wipe_device_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_wipe_device_request_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_wipe_device_request
val yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_request : google_apps_cloudidentity_devices_v1_wipe_device_request -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_wipe_device_request :
  ?customer:string ->
  ?remove_reset_lock:bool ->
  unit ->
  google_apps_cloudidentity_devices_v1_wipe_device_request

val google_apps_cloudidentity_devices_v1_wipe_device_response_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_wipe_device_response
val yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_response : google_apps_cloudidentity_devices_v1_wipe_device_response -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_wipe_device_response :
  ?device:google_apps_cloudidentity_devices_v1_device ->
  unit ->
  google_apps_cloudidentity_devices_v1_wipe_device_response

val google_apps_cloudidentity_devices_v1_wipe_device_user_metadata_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_wipe_device_user_metadata
val yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_user_metadata : google_apps_cloudidentity_devices_v1_wipe_device_user_metadata -> Yojson.Safe.t

val google_apps_cloudidentity_devices_v1_wipe_device_user_request_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_wipe_device_user_request
val yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_user_request : google_apps_cloudidentity_devices_v1_wipe_device_user_request -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_wipe_device_user_request :
  ?customer:string ->
  unit ->
  google_apps_cloudidentity_devices_v1_wipe_device_user_request

val google_apps_cloudidentity_devices_v1_wipe_device_user_response_of_yojson : Yojson.Safe.t -> google_apps_cloudidentity_devices_v1_wipe_device_user_response
val yojson_of_google_apps_cloudidentity_devices_v1_wipe_device_user_response : google_apps_cloudidentity_devices_v1_wipe_device_user_response -> Yojson.Safe.t

val make_google_apps_cloudidentity_devices_v1_wipe_device_user_response :
  ?device_user:google_apps_cloudidentity_devices_v1_device_user ->
  unit ->
  google_apps_cloudidentity_devices_v1_wipe_device_user_response

val group_of_yojson : Yojson.Safe.t -> group
val yojson_of_group : group -> Yojson.Safe.t

val make_group :
  ?additional_group_keys:entity_key list ->
  ?create_time:string ->
  ?description:string ->
  ?display_name:string ->
  ?dynamic_group_metadata:dynamic_group_metadata ->
  ?external_ids:external_id list ->
  ?group_key:entity_key ->
  ?labels:(string * string) list ->
  ?name:string ->
  ?parent:string ->
  ?update_time:string ->
  unit ->
  group

val group_relation_of_yojson : Yojson.Safe.t -> group_relation
val yojson_of_group_relation : group_relation -> Yojson.Safe.t

val make_group_relation :
  ?display_name:string ->
  ?group:string ->
  ?group_key:entity_key ->
  ?labels:(string * string) list ->
  ?relation_type:[ `Relation_type_unspecified | `Direct | `Indirect | `Direct_and_indirect | `Unrecognized of string ] ->
  ?roles:transitive_membership_role list ->
  unit ->
  group_relation

val idp_credential_of_yojson : Yojson.Safe.t -> idp_credential
val yojson_of_idp_credential : idp_credential -> Yojson.Safe.t

val make_idp_credential :
  ?dsa_key_info:dsa_public_key_info ->
  ?name:string ->
  ?rsa_key_info:rsa_public_key_info ->
  ?update_time:string ->
  unit ->
  idp_credential

val inbound_oidc_sso_profile_of_yojson : Yojson.Safe.t -> inbound_oidc_sso_profile
val yojson_of_inbound_oidc_sso_profile : inbound_oidc_sso_profile -> Yojson.Safe.t

val make_inbound_oidc_sso_profile :
  ?customer:string ->
  ?display_name:string ->
  ?idp_config:oidc_idp_config ->
  ?name:string ->
  ?rp_config:oidc_rp_config ->
  unit ->
  inbound_oidc_sso_profile

val inbound_saml_sso_profile_of_yojson : Yojson.Safe.t -> inbound_saml_sso_profile
val yojson_of_inbound_saml_sso_profile : inbound_saml_sso_profile -> Yojson.Safe.t

val make_inbound_saml_sso_profile :
  ?customer:string ->
  ?display_name:string ->
  ?idp_config:saml_idp_config ->
  ?name:string ->
  ?sp_config:saml_sp_config ->
  unit ->
  inbound_saml_sso_profile

val inbound_sso_assignment_of_yojson : Yojson.Safe.t -> inbound_sso_assignment
val yojson_of_inbound_sso_assignment : inbound_sso_assignment -> Yojson.Safe.t

val make_inbound_sso_assignment :
  ?customer:string ->
  ?name:string ->
  ?oidc_sso_info:oidc_sso_info ->
  ?rank:int ->
  ?saml_sso_info:saml_sso_info ->
  ?sign_in_behavior:sign_in_behavior ->
  ?sso_mode:[ `Sso_mode_unspecified | `Sso_off | `Saml_sso | `Oidc_sso | `Domain_wide_saml_if_enabled | `Unrecognized of string ] ->
  ?target_group:string ->
  ?target_org_unit:string ->
  unit ->
  inbound_sso_assignment

val is_invitable_user_response_of_yojson : Yojson.Safe.t -> is_invitable_user_response
val yojson_of_is_invitable_user_response : is_invitable_user_response -> Yojson.Safe.t

val make_is_invitable_user_response :
  ?is_invitable_user:bool ->
  unit ->
  is_invitable_user_response

val list_allowlisted_domains_response_of_yojson : Yojson.Safe.t -> list_allowlisted_domains_response
val yojson_of_list_allowlisted_domains_response : list_allowlisted_domains_response -> Yojson.Safe.t

val make_list_allowlisted_domains_response :
  ?allowlisted_domains:allowlisted_domain list ->
  ?next_page_token:string ->
  unit ->
  list_allowlisted_domains_response

val list_groups_response_of_yojson : Yojson.Safe.t -> list_groups_response
val yojson_of_list_groups_response : list_groups_response -> Yojson.Safe.t

val make_list_groups_response :
  ?groups:group list ->
  ?next_page_token:string ->
  unit ->
  list_groups_response

val list_idp_credentials_response_of_yojson : Yojson.Safe.t -> list_idp_credentials_response
val yojson_of_list_idp_credentials_response : list_idp_credentials_response -> Yojson.Safe.t

val make_list_idp_credentials_response :
  ?idp_credentials:idp_credential list ->
  ?next_page_token:string ->
  unit ->
  list_idp_credentials_response

val list_inbound_oidc_sso_profiles_response_of_yojson : Yojson.Safe.t -> list_inbound_oidc_sso_profiles_response
val yojson_of_list_inbound_oidc_sso_profiles_response : list_inbound_oidc_sso_profiles_response -> Yojson.Safe.t

val make_list_inbound_oidc_sso_profiles_response :
  ?inbound_oidc_sso_profiles:inbound_oidc_sso_profile list ->
  ?next_page_token:string ->
  unit ->
  list_inbound_oidc_sso_profiles_response

val list_inbound_saml_sso_profiles_response_of_yojson : Yojson.Safe.t -> list_inbound_saml_sso_profiles_response
val yojson_of_list_inbound_saml_sso_profiles_response : list_inbound_saml_sso_profiles_response -> Yojson.Safe.t

val make_list_inbound_saml_sso_profiles_response :
  ?inbound_saml_sso_profiles:inbound_saml_sso_profile list ->
  ?next_page_token:string ->
  unit ->
  list_inbound_saml_sso_profiles_response

val list_inbound_sso_assignments_response_of_yojson : Yojson.Safe.t -> list_inbound_sso_assignments_response
val yojson_of_list_inbound_sso_assignments_response : list_inbound_sso_assignments_response -> Yojson.Safe.t

val make_list_inbound_sso_assignments_response :
  ?inbound_sso_assignments:inbound_sso_assignment list ->
  ?next_page_token:string ->
  unit ->
  list_inbound_sso_assignments_response

val list_memberships_response_of_yojson : Yojson.Safe.t -> list_memberships_response
val yojson_of_list_memberships_response : list_memberships_response -> Yojson.Safe.t

val make_list_memberships_response :
  ?memberships:membership list ->
  ?next_page_token:string ->
  unit ->
  list_memberships_response

val list_policies_response_of_yojson : Yojson.Safe.t -> list_policies_response
val yojson_of_list_policies_response : list_policies_response -> Yojson.Safe.t

val make_list_policies_response :
  ?next_page_token:string ->
  ?policies:policy list ->
  unit ->
  list_policies_response

val list_user_invitations_response_of_yojson : Yojson.Safe.t -> list_user_invitations_response
val yojson_of_list_user_invitations_response : list_user_invitations_response -> Yojson.Safe.t

val make_list_user_invitations_response :
  ?next_page_token:string ->
  ?user_invitations:user_invitation list ->
  unit ->
  list_user_invitations_response

val lookup_group_name_response_of_yojson : Yojson.Safe.t -> lookup_group_name_response
val yojson_of_lookup_group_name_response : lookup_group_name_response -> Yojson.Safe.t

val make_lookup_group_name_response :
  ?name:string ->
  unit ->
  lookup_group_name_response

val lookup_membership_name_response_of_yojson : Yojson.Safe.t -> lookup_membership_name_response
val yojson_of_lookup_membership_name_response : lookup_membership_name_response -> Yojson.Safe.t

val make_lookup_membership_name_response :
  ?name:string ->
  unit ->
  lookup_membership_name_response

val member_relation_of_yojson : Yojson.Safe.t -> member_relation
val yojson_of_member_relation : member_relation -> Yojson.Safe.t

val make_member_relation :
  ?member:string ->
  ?preferred_member_key:entity_key list ->
  ?relation_type:[ `Relation_type_unspecified | `Direct | `Indirect | `Direct_and_indirect | `Unrecognized of string ] ->
  ?roles:transitive_membership_role list ->
  unit ->
  member_relation

val member_restriction_of_yojson : Yojson.Safe.t -> member_restriction
val yojson_of_member_restriction : member_restriction -> Yojson.Safe.t

val make_member_restriction :
  ?evaluation:restriction_evaluation ->
  ?query:string ->
  unit ->
  member_restriction

val membership_of_yojson : Yojson.Safe.t -> membership
val yojson_of_membership : membership -> Yojson.Safe.t

val make_membership :
  ?create_time:string ->
  ?delivery_setting:[ `Delivery_setting_unspecified | `All_mail | `Digest | `Daily | `None | `Disabled | `Unrecognized of string ] ->
  ?name:string ->
  ?preferred_member_key:entity_key ->
  ?roles:membership_role list ->
  ?type_:[ `Type_unspecified | `User | `Service_account | `Group | `Shared_drive | `Cbcm_browser | `Chrome_os_device | `Other | `Unrecognized of string ] ->
  ?update_time:string ->
  unit ->
  membership

val membership_adjacency_list_of_yojson : Yojson.Safe.t -> membership_adjacency_list
val yojson_of_membership_adjacency_list : membership_adjacency_list -> Yojson.Safe.t

val make_membership_adjacency_list :
  ?edges:membership list ->
  ?group:string ->
  unit ->
  membership_adjacency_list

val membership_relation_of_yojson : Yojson.Safe.t -> membership_relation
val yojson_of_membership_relation : membership_relation -> Yojson.Safe.t

val make_membership_relation :
  ?description:string ->
  ?display_name:string ->
  ?group:string ->
  ?group_key:entity_key ->
  ?labels:(string * string) list ->
  ?membership:string ->
  ?roles:membership_role list ->
  unit ->
  membership_relation

val membership_role_of_yojson : Yojson.Safe.t -> membership_role
val yojson_of_membership_role : membership_role -> Yojson.Safe.t

val make_membership_role :
  ?expiry_detail:expiry_detail ->
  ?name:string ->
  ?restriction_evaluations:restriction_evaluations ->
  unit ->
  membership_role

val membership_role_restriction_evaluation_of_yojson : Yojson.Safe.t -> membership_role_restriction_evaluation
val yojson_of_membership_role_restriction_evaluation : membership_role_restriction_evaluation -> Yojson.Safe.t

val make_membership_role_restriction_evaluation :
  ?state:[ `State_unspecified | `Compliant | `Forward_compliant | `Non_compliant | `Evaluating | `Unrecognized of string ] ->
  unit ->
  membership_role_restriction_evaluation

val modify_membership_roles_request_of_yojson : Yojson.Safe.t -> modify_membership_roles_request
val yojson_of_modify_membership_roles_request : modify_membership_roles_request -> Yojson.Safe.t

val make_modify_membership_roles_request :
  ?add_roles:membership_role list ->
  ?remove_roles:string list ->
  ?update_roles_params:update_membership_roles_params list ->
  unit ->
  modify_membership_roles_request

val modify_membership_roles_response_of_yojson : Yojson.Safe.t -> modify_membership_roles_response
val yojson_of_modify_membership_roles_response : modify_membership_roles_response -> Yojson.Safe.t

val make_modify_membership_roles_response :
  ?membership:membership ->
  unit ->
  modify_membership_roles_response

val oidc_idp_config_of_yojson : Yojson.Safe.t -> oidc_idp_config
val yojson_of_oidc_idp_config : oidc_idp_config -> Yojson.Safe.t

val make_oidc_idp_config :
  ?change_password_uri:string ->
  ?issuer_uri:string ->
  unit ->
  oidc_idp_config

val oidc_rp_config_of_yojson : Yojson.Safe.t -> oidc_rp_config
val yojson_of_oidc_rp_config : oidc_rp_config -> Yojson.Safe.t

val make_oidc_rp_config :
  ?client_id:string ->
  ?client_secret:string ->
  ?redirect_uris:string list ->
  unit ->
  oidc_rp_config

val oidc_sso_info_of_yojson : Yojson.Safe.t -> oidc_sso_info
val yojson_of_oidc_sso_info : oidc_sso_info -> Yojson.Safe.t

val make_oidc_sso_info :
  ?inbound_oidc_sso_profile:string ->
  unit ->
  oidc_sso_info

val operation_of_yojson : Yojson.Safe.t -> operation
val yojson_of_operation : operation -> Yojson.Safe.t

val make_operation :
  ?done_:bool ->
  ?error:status ->
  ?metadata:(string * Yojson.Safe.t) list ->
  ?name:string ->
  ?response:(string * Yojson.Safe.t) list ->
  unit ->
  operation

val policy_of_yojson : Yojson.Safe.t -> policy
val yojson_of_policy : policy -> Yojson.Safe.t

val make_policy :
  ?customer:string ->
  ?name:string ->
  ?policy_query:policy_query ->
  ?setting:setting ->
  ?type_:[ `Policy_type_unspecified | `System | `Admin | `Unrecognized of string ] ->
  unit ->
  policy

val policy_query_of_yojson : Yojson.Safe.t -> policy_query
val yojson_of_policy_query : policy_query -> Yojson.Safe.t

val make_policy_query :
  ?group:string ->
  ?org_unit:string ->
  ?query:string ->
  ?sort_order:float ->
  unit ->
  policy_query

val restriction_evaluation_of_yojson : Yojson.Safe.t -> restriction_evaluation
val yojson_of_restriction_evaluation : restriction_evaluation -> Yojson.Safe.t

val make_restriction_evaluation :
  ?state:[ `State_unspecified | `Evaluating | `Compliant | `Forward_compliant | `Non_compliant | `Unrecognized of string ] ->
  unit ->
  restriction_evaluation

val restriction_evaluations_of_yojson : Yojson.Safe.t -> restriction_evaluations
val yojson_of_restriction_evaluations : restriction_evaluations -> Yojson.Safe.t

val make_restriction_evaluations :
  ?member_restriction_evaluation:membership_role_restriction_evaluation ->
  unit ->
  restriction_evaluations

val rsa_public_key_info_of_yojson : Yojson.Safe.t -> rsa_public_key_info
val yojson_of_rsa_public_key_info : rsa_public_key_info -> Yojson.Safe.t

val make_rsa_public_key_info :
  ?key_size:int ->
  unit ->
  rsa_public_key_info

val saml_idp_config_of_yojson : Yojson.Safe.t -> saml_idp_config
val yojson_of_saml_idp_config : saml_idp_config -> Yojson.Safe.t

val make_saml_idp_config :
  ?change_password_uri:string ->
  ?entity_id:string ->
  ?logout_redirect_uri:string ->
  ?single_sign_on_service_uri:string ->
  unit ->
  saml_idp_config

val saml_sp_config_of_yojson : Yojson.Safe.t -> saml_sp_config
val yojson_of_saml_sp_config : saml_sp_config -> Yojson.Safe.t

val make_saml_sp_config :
  ?assertion_consumer_service_uri:string ->
  ?entity_id:string ->
  unit ->
  saml_sp_config

val saml_sso_info_of_yojson : Yojson.Safe.t -> saml_sso_info
val yojson_of_saml_sso_info : saml_sso_info -> Yojson.Safe.t

val make_saml_sso_info :
  ?inbound_saml_sso_profile:string ->
  unit ->
  saml_sso_info

val search_direct_groups_response_of_yojson : Yojson.Safe.t -> search_direct_groups_response
val yojson_of_search_direct_groups_response : search_direct_groups_response -> Yojson.Safe.t

val make_search_direct_groups_response :
  ?memberships:membership_relation list ->
  ?next_page_token:string ->
  unit ->
  search_direct_groups_response

val search_groups_response_of_yojson : Yojson.Safe.t -> search_groups_response
val yojson_of_search_groups_response : search_groups_response -> Yojson.Safe.t

val make_search_groups_response :
  ?groups:group list ->
  ?next_page_token:string ->
  unit ->
  search_groups_response

val search_transitive_groups_response_of_yojson : Yojson.Safe.t -> search_transitive_groups_response
val yojson_of_search_transitive_groups_response : search_transitive_groups_response -> Yojson.Safe.t

val make_search_transitive_groups_response :
  ?memberships:group_relation list ->
  ?next_page_token:string ->
  unit ->
  search_transitive_groups_response

val search_transitive_memberships_response_of_yojson : Yojson.Safe.t -> search_transitive_memberships_response
val yojson_of_search_transitive_memberships_response : search_transitive_memberships_response -> Yojson.Safe.t

val make_search_transitive_memberships_response :
  ?memberships:member_relation list ->
  ?next_page_token:string ->
  unit ->
  search_transitive_memberships_response

val security_settings_of_yojson : Yojson.Safe.t -> security_settings
val yojson_of_security_settings : security_settings -> Yojson.Safe.t

val make_security_settings :
  ?member_restriction:member_restriction ->
  ?name:string ->
  unit ->
  security_settings

val send_user_invitation_request_of_yojson : Yojson.Safe.t -> send_user_invitation_request
val yojson_of_send_user_invitation_request : send_user_invitation_request -> Yojson.Safe.t

val setting_of_yojson : Yojson.Safe.t -> setting
val yojson_of_setting : setting -> Yojson.Safe.t

val make_setting :
  ?type_:string ->
  ?value:(string * Yojson.Safe.t) list ->
  unit ->
  setting

val sign_in_behavior_of_yojson : Yojson.Safe.t -> sign_in_behavior
val yojson_of_sign_in_behavior : sign_in_behavior -> Yojson.Safe.t

val make_sign_in_behavior :
  ?redirect_condition:[ `Redirect_condition_unspecified | `Never | `Unrecognized of string ] ->
  unit ->
  sign_in_behavior

val status_of_yojson : Yojson.Safe.t -> status
val yojson_of_status : status -> Yojson.Safe.t

val make_status :
  ?code:int ->
  ?details:(string * Yojson.Safe.t) list list ->
  ?message:string ->
  unit ->
  status

val transitive_membership_role_of_yojson : Yojson.Safe.t -> transitive_membership_role
val yojson_of_transitive_membership_role : transitive_membership_role -> Yojson.Safe.t

val make_transitive_membership_role :
  ?role:string ->
  unit ->
  transitive_membership_role

val update_group_metadata_of_yojson : Yojson.Safe.t -> update_group_metadata
val yojson_of_update_group_metadata : update_group_metadata -> Yojson.Safe.t

val update_inbound_oidc_sso_profile_operation_metadata_of_yojson : Yojson.Safe.t -> update_inbound_oidc_sso_profile_operation_metadata
val yojson_of_update_inbound_oidc_sso_profile_operation_metadata : update_inbound_oidc_sso_profile_operation_metadata -> Yojson.Safe.t

val make_update_inbound_oidc_sso_profile_operation_metadata :
  ?state:string ->
  unit ->
  update_inbound_oidc_sso_profile_operation_metadata

val update_inbound_saml_sso_profile_operation_metadata_of_yojson : Yojson.Safe.t -> update_inbound_saml_sso_profile_operation_metadata
val yojson_of_update_inbound_saml_sso_profile_operation_metadata : update_inbound_saml_sso_profile_operation_metadata -> Yojson.Safe.t

val make_update_inbound_saml_sso_profile_operation_metadata :
  ?state:string ->
  unit ->
  update_inbound_saml_sso_profile_operation_metadata

val update_inbound_sso_assignment_operation_metadata_of_yojson : Yojson.Safe.t -> update_inbound_sso_assignment_operation_metadata
val yojson_of_update_inbound_sso_assignment_operation_metadata : update_inbound_sso_assignment_operation_metadata -> Yojson.Safe.t

val update_membership_metadata_of_yojson : Yojson.Safe.t -> update_membership_metadata
val yojson_of_update_membership_metadata : update_membership_metadata -> Yojson.Safe.t

val update_membership_roles_params_of_yojson : Yojson.Safe.t -> update_membership_roles_params
val yojson_of_update_membership_roles_params : update_membership_roles_params -> Yojson.Safe.t

val make_update_membership_roles_params :
  ?field_mask:string ->
  ?membership_role:membership_role ->
  unit ->
  update_membership_roles_params

val user_invitation_of_yojson : Yojson.Safe.t -> user_invitation
val yojson_of_user_invitation : user_invitation -> Yojson.Safe.t

val make_user_invitation :
  ?mails_sent_count:string ->
  ?name:string ->
  ?state:[ `State_unspecified | `Not_yet_sent | `Invited | `Accepted | `Declined | `Unrecognized of string ] ->
  ?update_time:string ->
  unit ->
  user_invitation

val base_url : string
val batch_endpoint : Uri.t

val batch :
  access_token:string ->
  'a Google_api.Call.t list ->
  (('a, Google_api.Error.t) result list, Google_api.Error.t) result
(** {!Google_api.Batch.execute} on {!batch_endpoint}. *)

module Allowlisted_domains : sig
  val create :
    body:allowlisted_domain ->
    unit ->
    operation Google_api.Call.t
  (** Adds a domain to the allowlist.

      [POST v1/allowlistedDomains] *)

  val delete :
    name:string ->
    unit ->
    operation Google_api.Call.t
  (** Removes a domain from the allowlist.

      [DELETE v1/{+name}]

      - [name]: Required. Specifies the \[resource name\](https://google.aip.dev/122) of the domain to delete. *)

  val get :
    name:string ->
    unit ->
    allowlisted_domain Google_api.Call.t
  (** Retrieves a specific domain from the allowlist.

      [GET v1/{+name}]

      - [name]: Required. Specifies the \[resource name\](https://google.aip.dev/122) of the domain to retrieve. *)

  val list :
    ?filter:string ->
    ?page_size:int ->
    ?page_token:string ->
    unit ->
    list_allowlisted_domains_response Google_api.Call.t
  (** Lists the domains in the allowlist.

      [GET v1/allowlistedDomains]

      - [filter]: Optional. Provides an optional filter for list results. Currently, only exact matches on the domain are supported, such as 'domain = 'google.com'', with no composite conditions.
      - [page_size]: Optional. Specifies the requested page size. If unspecified, the service returns at most 5000 domains. The maximum value is 5000; values above 5000 coerce to 5000. The limits can change over time.
      - [page_token]: Optional. Identifies a token from a previous page of results, if any. *)
end

module Customers : sig
  module Userinvitations : sig
    val cancel :
      name:string ->
      body:cancel_user_invitation_request ->
      unit ->
      operation Google_api.Call.t
    (** Cancels a UserInvitation that was already sent.

        [POST v1/{+name}:cancel]

        - [name]: Required. `UserInvitation` name in the format `customers/\{customer\}/userinvitations/\{user_email_address\}` *)

    val get :
      name:string ->
      unit ->
      user_invitation Google_api.Call.t
    (** Retrieves a UserInvitation resource. **Note:** New consumer accounts with the customer's verified domain created within the previous 48 hours will not appear in the result. This delay also applies to newly-verified domains.

        [GET v1/{+name}]

        - [name]: Required. `UserInvitation` name in the format `customers/\{customer\}/userinvitations/\{user_email_address\}` *)

    val is_invitable_user :
      name:string ->
      unit ->
      is_invitable_user_response Google_api.Call.t
    (** Verifies whether a user account is eligible to receive a UserInvitation (is an unmanaged account). Eligibility is based on the following criteria: * the email address is a consumer account and it's the primary email address of the account, and * the domain of the email address matches an existing verified Google Workspace or Cloud Identity domain If both conditions are met, the user is eligible. **Note:** This method is not supported for Workspace Essentials customers.

        [GET v1/{+name}:isInvitableUser]

        - [name]: Required. `UserInvitation` name in the format `customers/\{customer\}/userinvitations/\{user_email_address\}` *)

    val list :
      parent:string ->
      ?filter:string ->
      ?order_by:string ->
      ?page_size:int ->
      ?page_token:string ->
      unit ->
      list_user_invitations_response Google_api.Call.t
    (** Retrieves a list of UserInvitation resources. **Note:** New consumer accounts with the customer's verified domain created within the previous 48 hours will not appear in the result. This delay also applies to newly-verified domains.

        [GET v1/{+parent}/userinvitations]

        - [parent]: Required. The customer ID of the Google Workspace or Cloud Identity account the UserInvitation resources are associated with.
        - [filter]: Optional. A query string for filtering `UserInvitation` results by their current state, in the format: `'state=='invited''`.
        - [order_by]: Optional. The sort order of the list results. You can sort the results in descending order based on either email or last update timestamp but not both, using `order_by='email desc'`. Currently, sorting is supported for `update_time asc`, `update_time desc`, `email asc`, and `email desc`. If not specified, results will be returned based on `email asc` order.
        - [page_size]: Optional. The maximum number of UserInvitation resources to return. If unspecified, at most 100 resources will be returned. The maximum value is 200; values above 200 will be set to 200.
        - [page_token]: Optional. A page token, received from a previous `ListUserInvitations` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListBooks` must match the call that provided the page token. *)

    val send :
      name:string ->
      body:send_user_invitation_request ->
      unit ->
      operation Google_api.Call.t
    (** Sends a UserInvitation to email. If the `UserInvitation` does not exist for this request and it is a valid request, the request creates a `UserInvitation`. **Note:** The `get` and `list` methods have a 48-hour delay where newly-created consumer accounts will not appear in the results. You can still send a `UserInvitation` to those accounts if you know the unmanaged email address and IsInvitableUser==True.

        [POST v1/{+name}:send]

        - [name]: Required. `UserInvitation` name in the format `customers/\{customer\}/userinvitations/\{user_email_address\}` *)
  end
end

module Devices : sig
  val cancel_wipe :
    name:string ->
    body:google_apps_cloudidentity_devices_v1_cancel_wipe_device_request ->
    unit ->
    operation Google_api.Call.t
  (** Cancels an unfinished device wipe. This operation can be used to cancel device wipe in the gap between the wipe operation returning success and the device being wiped. This operation is possible when the device is in a 'pending wipe' state. The device enters the 'pending wipe' state when a wipe device command is issued, but has not yet been sent to the device. The cancel wipe will fail if the wipe command has already been issued to the device.

      [POST v1/{+name}:cancelWipe]

      - [name]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/\{device\}`, where device is the unique ID assigned to the Device. *)

  val create :
    body:google_apps_cloudidentity_devices_v1_device ->
    ?customer:string ->
    unit ->
    operation Google_api.Call.t
  (** Creates a device. Only company-owned device may be created. **Note**: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium

      [POST v1/devices]

      - [customer]: Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)

  val delete :
    name:string ->
    ?customer:string ->
    unit ->
    operation Google_api.Call.t
  (** Deletes the specified device.

      [DELETE v1/{+name}]

      - [name]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/\{device\}`, where device is the unique ID assigned to the Device.
      - [customer]: Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)

  val get :
    name:string ->
    ?customer:string ->
    unit ->
    google_apps_cloudidentity_devices_v1_device Google_api.Call.t
  (** Retrieves the specified device.

      [GET v1/{+name}]

      - [name]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Device in the format: `devices/\{device\}`, where device is the unique ID assigned to the Device.
      - [customer]: Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Customer in the format: `customers/\{customer\}`, where customer is the customer to whom the device belongs. If you're using this API for your own organization, use `customers/my_customer`. If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)

  val list :
    ?customer:string ->
    ?filter:string ->
    ?order_by:string ->
    ?page_size:int ->
    ?page_token:string ->
    ?view:[ `View_unspecified | `Company_inventory | `User_assigned_devices | `Unrecognized of string ] ->
    unit ->
    google_apps_cloudidentity_devices_v1_list_devices_response Google_api.Call.t
  (** Lists/Searches devices.

      [GET v1/devices]

      - [customer]: Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer in the format: `customers/\{customer\}`, where customer is the customer to whom the device belongs. If you're using this API for your own organization, use `customers/my_customer`. If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs.
      - [filter]: Optional. Additional restrictions when fetching list of devices. For a list of search fields, refer to \[Mobile device search fields\](https://developers.google.com/admin-sdk/directory/v1/search-operators). Multiple search fields are separated by the space character.
      - [order_by]: Optional. Order specification for devices in the response. Only one of the following field names may be used to specify the order: `create_time`, `last_sync_time`, `model`, `os_version`, `device_type` and `serial_number`. `desc` may be specified optionally at the end to specify results to be sorted in descending order. Default order is ascending.
      - [page_size]: Optional. The maximum number of Devices to return. If unspecified, at most 20 Devices will be returned. The maximum value is 100; values above 100 will be coerced to 100.
      - [page_token]: Optional. A page token, received from a previous `ListDevices` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListDevices` must match the call that provided the page token.
      - [view]: Optional. The view to use for the List request. *)

  val wipe :
    name:string ->
    body:google_apps_cloudidentity_devices_v1_wipe_device_request ->
    unit ->
    operation Google_api.Call.t
  (** Wipes all data on the specified device.

      [POST v1/{+name}:wipe]

      - [name]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/\{device\}/deviceUsers/\{device_user\}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User. *)

  module Device_users : sig
    val approve :
      name:string ->
      body:google_apps_cloudidentity_devices_v1_approve_device_user_request ->
      unit ->
      operation Google_api.Call.t
    (** Approves device to access user data.

        [POST v1/{+name}:approve]

        - [name]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/\{device\}/deviceUsers/\{device_user\}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User. *)

    val block :
      name:string ->
      body:google_apps_cloudidentity_devices_v1_block_device_user_request ->
      unit ->
      operation Google_api.Call.t
    (** Blocks device from accessing user data

        [POST v1/{+name}:block]

        - [name]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/\{device\}/deviceUsers/\{device_user\}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User. *)

    val cancel_wipe :
      name:string ->
      body:google_apps_cloudidentity_devices_v1_cancel_wipe_device_user_request ->
      unit ->
      operation Google_api.Call.t
    (** Cancels an unfinished user account wipe. This operation can be used to cancel device wipe in the gap between the wipe operation returning success and the device being wiped.

        [POST v1/{+name}:cancelWipe]

        - [name]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/\{device\}/deviceUsers/\{device_user\}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User. *)

    val delete :
      name:string ->
      ?customer:string ->
      unit ->
      operation Google_api.Call.t
    (** Deletes the specified DeviceUser. This also revokes the user's access to device data.

        [DELETE v1/{+name}]

        - [name]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/\{device\}/deviceUsers/\{device_user\}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.
        - [customer]: Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)

    val get :
      name:string ->
      ?customer:string ->
      unit ->
      google_apps_cloudidentity_devices_v1_device_user Google_api.Call.t
    (** Retrieves the specified DeviceUser

        [GET v1/{+name}]

        - [name]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/\{device\}/deviceUsers/\{device_user\}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.
        - [customer]: Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)

    val list :
      parent:string ->
      ?customer:string ->
      ?filter:string ->
      ?order_by:string ->
      ?page_size:int ->
      ?page_token:string ->
      unit ->
      google_apps_cloudidentity_devices_v1_list_device_users_response Google_api.Call.t
    (** Lists/Searches DeviceUsers.

        [GET v1/{+parent}/deviceUsers]

        - [parent]: Required. To list all DeviceUsers, set this to 'devices/-'. To list all DeviceUsers owned by a device, set this to the resource name of the device. Format: devices/\{device\}
        - [customer]: Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs.
        - [filter]: Optional. Additional restrictions when fetching list of devices. For a list of search fields, refer to \[Mobile device search fields\](https://developers.google.com/admin-sdk/directory/v1/search-operators). Multiple search fields are separated by the space character.
        - [order_by]: Optional. Order specification for devices in the response.
        - [page_size]: Optional. The maximum number of DeviceUsers to return. If unspecified, at most 5 DeviceUsers will be returned. The maximum value is 20; values above 20 will be coerced to 20.
        - [page_token]: Optional. A page token, received from a previous `ListDeviceUsers` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListBooks` must match the call that provided the page token. *)

    val lookup :
      parent:string ->
      ?android_id:string ->
      ?ios_device_id:string ->
      ?page_size:int ->
      ?page_token:string ->
      ?partner:string ->
      ?raw_resource_id:string ->
      ?user_id:string ->
      unit ->
      google_apps_cloudidentity_devices_v1_lookup_self_device_users_response Google_api.Call.t
    (** Looks up resource names of the DeviceUsers associated with the caller's credentials, as well as the properties provided in the request. This method must be called with end-user credentials with the scope: https://www.googleapis.com/auth/cloud-identity.devices.lookup If multiple properties are provided, only DeviceUsers having all of these properties are considered as matches - i.e. the query behaves like an AND. Different platforms require different amounts of information from the caller to ensure that the DeviceUser is uniquely identified. - iOS: If either the `partner` or `ios_device_id` field is provided, then both fields are required. - Android: Specifying the `android_id` field is required. - Desktop: Specifying the `raw_resource_id` field is required.

        [GET v1/{+parent}:lookup]

        - [parent]: Must be set to 'devices/-/deviceUsers' to search across all DeviceUser belonging to the user.
        - [android_id]: Android Id returned by \[Settings.Secure#ANDROID_ID\](https://developer.android.com/reference/android/provider/Settings.Secure.html#ANDROID_ID).
        - [ios_device_id]: Optional. The partner-specified device identifier assigned to the iOS device that initiated the Lookup API call. This string must match the value of the iosDeviceId key in the app config dictionary provided to Google Workspace apps.
        - [page_size]: The maximum number of DeviceUsers to return. If unspecified, at most 20 DeviceUsers will be returned. The maximum value is 20; values above 20 will be coerced to 20.
        - [page_token]: A page token, received from a previous `LookupDeviceUsers` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `LookupDeviceUsers` must match the call that provided the page token.
        - [partner]: Optional. The partner ID of the calling iOS app. This string must match the value of the partner key within the app configuration dictionary provided to Google Workspace apps.
        - [raw_resource_id]: Raw Resource Id used by Google Endpoint Verification. If the user is enrolled into Google Endpoint Verification, this id will be saved as the 'device_resource_id' field in the following platform dependent files. Mac: ~/.secureConnect/context_aware_config.json Windows: C:\\Users\\%USERPROFILE%\\.secureConnect\\context_aware_config.json Linux: ~/.secureConnect/context_aware_config.json
        - [user_id]: The user whose DeviceUser's resource name will be fetched. Must be set to 'me' to fetch the DeviceUser's resource name for the calling user. *)

    val wipe :
      name:string ->
      body:google_apps_cloudidentity_devices_v1_wipe_device_user_request ->
      unit ->
      operation Google_api.Call.t
    (** Wipes the user's account on a device. Other data on the device that is not associated with the user's work account is not affected. For example, if a Gmail app is installed on a device that is used for personal and work purposes, and the user is logged in to the Gmail app with their personal account as well as their work account, wiping the 'deviceUser' by their work administrator will not affect their personal account within Gmail or other apps such as Photos.

        [POST v1/{+name}:wipe]

        - [name]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/\{device\}/deviceUsers/\{device_user\}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User. *)

    module Client_states : sig
      val get :
        name:string ->
        ?customer:string ->
        unit ->
        google_apps_cloudidentity_devices_v1_client_state Google_api.Call.t
      (** Gets the client state for the device user

          [GET v1/{+name}]

          - [name]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the ClientState in format: `devices/\{device\}/deviceUsers/\{device_user\}/clientStates/\{partner\}`, where `device` is the unique ID assigned to the Device, `device_user` is the unique ID assigned to the User and `partner` identifies the partner storing the data. To get the client state for devices belonging to your own organization, the `partnerId` is in the format: `customerId-*anystring*`. Where the `customerId` is your organization's customer ID and `anystring` is any suffix. This suffix is used in setting up Custom Access Levels in Context-Aware Access. You may use `my_customer` instead of the customer ID for devices managed by your own organization. You may specify `-` in place of the `\{device\}`, so the ClientState resource name can be: `devices/-/deviceUsers/\{device_user_resource\}/clientStates/\{partner\}`.
          - [customer]: Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs. *)

      val list :
        parent:string ->
        ?customer:string ->
        ?filter:string ->
        ?order_by:string ->
        ?page_token:string ->
        unit ->
        google_apps_cloudidentity_devices_v1_list_client_states_response Google_api.Call.t
      (** Lists the client states for the given search query.

          [GET v1/{+parent}/clientStates]

          - [parent]: Required. To list all ClientStates, set this to 'devices/-/deviceUsers/-'. To list all ClientStates owned by a DeviceUser, set this to the resource name of the DeviceUser. Format: devices/\{device\}/deviceUsers/\{deviceUser\}
          - [customer]: Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs.
          - [filter]: Optional. Additional restrictions when fetching list of client states.
          - [order_by]: Optional. Order specification for client states in the response.
          - [page_token]: Optional. A page token, received from a previous `ListClientStates` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListClientStates` must match the call that provided the page token. *)

      val patch :
        name:string ->
        body:google_apps_cloudidentity_devices_v1_client_state ->
        ?customer:string ->
        ?update_mask:string ->
        unit ->
        operation Google_api.Call.t
      (** Updates the client state for the device user **Note**: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium

          [PATCH v1/{+name}]

          - [name]: Output only. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the ClientState in format: `devices/\{device\}/deviceUsers/\{device_user\}/clientState/\{partner\}`, where partner corresponds to the partner storing the data. For partners belonging to the 'BeyondCorp Alliance', this is the partner ID specified to you by Google. For all other callers, this is a string of the form: `\{customer\}-suffix`, where `customer` is your customer ID. The *suffix* is any string the caller specifies. This string will be displayed verbatim in the administration console. This suffix is used in setting up Custom Access Levels in Context-Aware Access. Your organization's customer ID can be obtained from the URL: `GET https://www.googleapis.com/admin/directory/v1/customers/my_customer` The `id` field in the response contains the customer ID starting with the letter 'C'. The customer ID to be used in this API is the string after the letter 'C' (not including 'C')
          - [customer]: Optional. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/\{customer\}`, where customer is the customer to whom the device belongs.
          - [update_mask]: Optional. Comma-separated list of fully qualified names of fields to be updated. If not specified, all updatable fields in ClientState are updated. *)
    end
  end
end

module Groups : sig
  val create :
    body:group ->
    ?initial_group_config:[ `Initial_group_config_unspecified | `With_initial_owner | `Empty | `Unrecognized of string ] ->
    unit ->
    operation Google_api.Call.t
  (** Creates a Group.

      [POST v1/groups]

      - [initial_group_config]: Optional. The initial configuration option for the `Group`. *)

  val delete :
    name:string ->
    unit ->
    operation Google_api.Call.t
  (** Deletes a `Group`.

      [DELETE v1/{+name}]

      - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the `Group` to retrieve. Must be of the form `groups/\{group\}`. *)

  val get :
    name:string ->
    unit ->
    group Google_api.Call.t
  (** Retrieves a `Group`.

      [GET v1/{+name}]

      - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the `Group` to retrieve. Must be of the form `groups/\{group\}`. *)

  val get_security_settings :
    name:string ->
    ?read_mask:string ->
    unit ->
    security_settings Google_api.Call.t
  (** Get Security Settings

      [GET v1/{+name}]

      - [name]: Required. The security settings to retrieve. Format: `groups/\{group_id\}/securitySettings`
      - [read_mask]: Field-level read mask of which fields to return. '*' returns all fields. If not specified, all fields will be returned. May only contain the following field: `member_restriction`. *)

  val list :
    ?page_size:int ->
    ?page_token:string ->
    ?parent:string ->
    ?view:[ `View_unspecified | `Basic | `Full | `Unrecognized of string ] ->
    unit ->
    list_groups_response Google_api.Call.t
  (** Lists the `Group` resources under a customer or namespace.

      [GET v1/groups]

      - [page_size]: The maximum number of results to return. Note that the number of results returned may be less than this value even if there are more available results. To fetch all results, clients must continue calling this method repeatedly until the response no longer contains a `next_page_token`. If unspecified, defaults to 200 for `View.BASIC` and to 50 for `View.FULL`. Must not be greater than 1000 for `View.BASIC` or 500 for `View.FULL`.
      - [page_token]: The `next_page_token` value returned from a previous list request, if any.
      - [parent]: Required. The parent resource under which to list all `Group` resources. Must be of the form `identitysources/\{identity_source\}` for external- identity-mapped groups or `customers/\{customer_id\}` for Google Groups. The `customer_id` must begin with 'C' (for example, 'C046psxkn'). \[Find your customer ID.\] (https://support.google.com/cloudidentity/answer/10070793)
      - [view]: The level of detail to be returned. If unspecified, defaults to `View.BASIC`. *)

  val lookup :
    ?group_key_id:string ->
    ?group_key_namespace:string ->
    unit ->
    lookup_group_name_response Google_api.Call.t
  (** Looks up the \[resource name\](https://cloud.google.com/apis/design/resource_names) of a `Group` by its `EntityKey`.

      [GET v1/groups:lookup]

      - [group_key_id]: The ID of the entity. For Google-managed entities, the `id` should be the email address of an existing group or user. Email addresses need to adhere to \[name guidelines for users and groups\](https://support.google.com/a/answer/9193374). For external-identity-mapped entities, the `id` must be a string conforming to the Identity Source's requirements. Must be unique within a `namespace`.
      - [group_key_namespace]: The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such as a Google user or a Google Group. If specified, the `EntityKey` represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of `identitysources/\{identity_source\}`. *)

  val patch :
    name:string ->
    body:group ->
    ?update_mask:string ->
    unit ->
    operation Google_api.Call.t
  (** Updates a `Group`.

      [PATCH v1/{+name}]

      - [name]: Output only. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/\{group\}`.
      - [update_mask]: Required. The names of fields to update. May only contain the following field names: `display_name`, `description`, `labels`. *)

  val search :
    ?page_size:int ->
    ?page_token:string ->
    ?query:string ->
    ?view:[ `View_unspecified | `Basic | `Full | `Unrecognized of string ] ->
    unit ->
    search_groups_response Google_api.Call.t
  (** Searches for `Group` resources matching a specified query.

      [GET v1/groups:search]

      - [page_size]: The maximum number of results to return. Note that the number of results returned may be less than this value even if there are more available results. To fetch all results, clients must continue calling this method repeatedly until the response no longer contains a `next_page_token`. If unspecified, defaults to 200 for `GroupView.BASIC` and 50 for `GroupView.FULL`. Must not be greater than 1000 for `GroupView.BASIC` or 500 for `GroupView.FULL`.
      - [page_token]: The `next_page_token` value returned from a previous search request, if any.
      - [query]: Required. The search query. * Must be specified in \[Common Expression Language\](https://opensource.google/projects/cel). See \[CEL Introduction\](https://github.com/google/cel-spec/blob/master/doc/intro.md) for CEL syntax usage and examples. * Must contain equality operators on the parent, e.g. `parent == 'customers/\{customer_id\}'`. The `customer_id` must begin with 'C' (for example, 'C046psxkn'). \[Find your customer ID.\] (https://support.google.com/cloudidentity/answer/10070793) * Can contain optional inclusion operators on `labels` such as `'cloudidentity.googleapis.com/groups.discussion_forum' in labels`). * Can contain an optional equality operator on `domain_name`. e.g. `domain_name == 'examplepetstore.com'` * Can contain optional `startsWith/contains/equality` operators on `group_key`, e.g. `group_key.startsWith('dev')`, `group_key.contains('dev'), group_key == 'dev\@examplepetstore.com'` * Can contain optional `startsWith/contains/equality` operators on `display_name`, such as `display_name.startsWith('dev')` , `display_name.contains('dev')`, `display_name == 'dev'` Examples: * Search for all discussion forums under a customer: `parent == 'customers/C046psxkn' && 'cloudidentity.googleapis.com/groups.discussion_forum' in labels` * Search for groups with key starting with 'sales': `parent == 'customers/C046psxkn' && group_key.startsWith('sales')` * Search for groups with display name containing 'test': `parent == 'customers/C046psxkn' && display_name.contains('test')`
      - [view]: The level of detail to be returned. If unspecified, defaults to `View.BASIC`. *)

  val update_security_settings :
    name:string ->
    body:security_settings ->
    ?update_mask:string ->
    unit ->
    operation Google_api.Call.t
  (** Update Security Settings

      [PATCH v1/{+name}]

      - [name]: Output only. The resource name of the security settings. Shall be of the form `groups/\{group_id\}/securitySettings`.
      - [update_mask]: Required. The fully-qualified names of fields to update. May only contain the following field: `member_restriction.query`. *)

  module Memberships : sig
    val check_transitive_membership :
      parent:string ->
      ?query:string ->
      unit ->
      check_transitive_membership_response Google_api.Call.t
    (** Check a potential member for membership in a group. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A member has membership to a group as long as there is a single viewable transitive membership between the group and the member. The actor must have view permissions to at least one transitive membership between the member and group.

        [GET v1/{+parent}/memberships:checkTransitiveMembership]

        - [parent]: \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the group to check the transitive membership in. Format: `groups/\{group\}`, where `group` is the unique id assigned to the Group to which the Membership belongs to.
        - [query]: Required. A CEL expression that MUST include member specification. This is a `required` field. Certain groups are uniquely identified by both a 'member_key_id' and a 'member_key_namespace', which requires an additional query input: 'member_key_namespace'. Example query: `member_key_id == 'member_key_id_value'` *)

    val create :
      parent:string ->
      body:membership ->
      unit ->
      operation Google_api.Call.t
    (** Creates a `Membership`.

        [POST v1/{+parent}/memberships]

        - [parent]: Required. The parent `Group` resource under which to create the `Membership`. Must be of the form `groups/\{group\}`. *)

    val delete :
      name:string ->
      unit ->
      operation Google_api.Call.t
    (** Deletes a `Membership`.

        [DELETE v1/{+name}]

        - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the `Membership` to delete. Must be of the form `groups/\{group\}/memberships/\{membership\}` *)

    val get :
      name:string ->
      unit ->
      membership Google_api.Call.t
    (** Retrieves a `Membership`.

        [GET v1/{+name}]

        - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the `Membership` to retrieve. Must be of the form `groups/\{group\}/memberships/\{membership\}`. *)

    val get_membership_graph :
      parent:string ->
      ?query:string ->
      unit ->
      operation Google_api.Call.t
    (** Get a membership graph of just a member or both a member and a group. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. Given a member, the response will contain all membership paths from the member. Given both a group and a member, the response will contain all membership paths between the group and the member.

        [GET v1/{+parent}/memberships:getMembershipGraph]

        - [parent]: Required. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the group to search transitive memberships in. Format: `groups/\{group\}`, where `group` is the unique ID assigned to the Group to which the Membership belongs to. group can be a wildcard collection id '-'. When a group is specified, the membership graph will be constrained to paths between the member (defined in the query) and the parent. If a wildcard collection is provided, all membership paths connected to the member will be returned.
        - [query]: Required. A CEL expression that MUST include member specification AND label(s). Certain groups are uniquely identified by both a 'member_key_id' and a 'member_key_namespace', which requires an additional query input: 'member_key_namespace'. Example query: `member_key_id == 'member_key_id_value' && in labels` *)

    val list :
      parent:string ->
      ?page_size:int ->
      ?page_token:string ->
      ?view:[ `View_unspecified | `Basic | `Full | `Unrecognized of string ] ->
      unit ->
      list_memberships_response Google_api.Call.t
    (** Lists the `Membership`s within a `Group`.

        [GET v1/{+parent}/memberships]

        - [parent]: Required. The parent `Group` resource under which to lookup the `Membership` name. Must be of the form `groups/\{group\}`.
        - [page_size]: The maximum number of results to return. Note that the number of results returned may be less than this value even if there are more available results. To fetch all results, clients must continue calling this method repeatedly until the response no longer contains a `next_page_token`. If unspecified, defaults to 200 for `GroupView.BASIC` and to 50 for `GroupView.FULL`. Must not be greater than 1000 for `GroupView.BASIC` or 500 for `GroupView.FULL`.
        - [page_token]: The `next_page_token` value returned from a previous search request, if any.
        - [view]: The level of detail to be returned. If unspecified, defaults to `View.BASIC`. *)

    val lookup :
      parent:string ->
      ?member_key_id:string ->
      ?member_key_namespace:string ->
      unit ->
      lookup_membership_name_response Google_api.Call.t
    (** Looks up the \[resource name\](https://cloud.google.com/apis/design/resource_names) of a `Membership` by its `EntityKey`.

        [GET v1/{+parent}/memberships:lookup]

        - [parent]: Required. The parent `Group` resource under which to lookup the `Membership` name. Must be of the form `groups/\{group\}`.
        - [member_key_id]: The ID of the entity. For Google-managed entities, the `id` should be the email address of an existing group or user. Email addresses need to adhere to \[name guidelines for users and groups\](https://support.google.com/a/answer/9193374). For external-identity-mapped entities, the `id` must be a string conforming to the Identity Source's requirements. Must be unique within a `namespace`.
        - [member_key_namespace]: The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such as a Google user or a Google Group. If specified, the `EntityKey` represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of `identitysources/\{identity_source\}`. *)

    val modify_membership_roles :
      name:string ->
      body:modify_membership_roles_request ->
      unit ->
      modify_membership_roles_response Google_api.Call.t
    (** Modifies the `MembershipRole`s of a `Membership`.

        [POST v1/{+name}:modifyMembershipRoles]

        - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the `Membership` whose roles are to be modified. Must be of the form `groups/\{group\}/memberships/\{membership\}`. *)

    val search_direct_groups :
      parent:string ->
      ?order_by:string ->
      ?page_size:int ->
      ?page_token:string ->
      ?query:string ->
      unit ->
      search_direct_groups_response Google_api.Call.t
    (** Searches direct groups of a member. Groups for which the actor does not have the permission to view memberships are silently filtered out.

        [GET v1/{+parent}/memberships:searchDirectGroups]

        - [parent]: \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the group to search transitive memberships in. Format: groups/\{group_id\}, where group_id is always '-' as this API will search across all groups for a given member.
        - [order_by]: The ordering of membership relation for the display name or email in the response. The syntax for this field can be found at https://cloud.google.com/apis/design/design_patterns#sorting_order. Example: Sort by the ascending display name: order_by='group_name' or order_by='group_name asc'. Sort by the descending display name: order_by='group_name desc'. Sort by the ascending group key: order_by='group_key' or order_by='group_key asc'. Sort by the descending group key: order_by='group_key desc'.
        - [page_size]: The default page size is 200 (max 1000).
        - [page_token]: The `next_page_token` value returned from a previous list request, if any
        - [query]: Required. A CEL expression that MUST include member specification AND label(s). Users can search on label attributes of groups. CONTAINS match ('in') is supported on labels. Identity-mapped groups are uniquely identified by both a `member_key_id` and a `member_key_namespace`, which requires an additional query input: `member_key_namespace`. Example query: `member_key_id == 'member_key_id_value' && 'label_value' in labels` *)

    val search_transitive_groups :
      parent:string ->
      ?page_size:int ->
      ?page_token:string ->
      ?query:string ->
      unit ->
      search_transitive_groups_response Google_api.Call.t
    (** Search transitive groups of a member. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A transitive group is any group that has a direct or indirect membership to the member. Actor must have view permissions all transitive groups.

        [GET v1/{+parent}/memberships:searchTransitiveGroups]

        - [parent]: \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the group to search transitive memberships in. Format: `groups/\{group\}`, where `group` is always '-' as this API will search across all groups for a given member.
        - [page_size]: The default page size is 200 (max 1000).
        - [page_token]: The `next_page_token` value returned from a previous list request, if any.
        - [query]: Required. A CEL expression that MUST include member specification AND label(s). This is a `required` field. Users can search on label attributes of groups. CONTAINS match ('in') is supported on labels. Identity-mapped groups are uniquely identified by both a `member_key_id` and a `member_key_namespace`, which requires an additional query input: `member_key_namespace`. Example query: `member_key_id == 'member_key_id_value' && in labels` Query may optionally contain equality operators on the parent of the group restricting the search within a particular customer, e.g. `parent == 'customers/\{customer_id\}'`. The `customer_id` must begin with 'C' (for example, 'C046psxkn'). This filtering is only supported for Admins with groups read permissions on the input customer. Example query: `member_key_id == 'member_key_id_value' && in labels && parent == 'customers/C046psxkn'` *)

    val search_transitive_memberships :
      parent:string ->
      ?page_size:int ->
      ?page_token:string ->
      unit ->
      search_transitive_memberships_response Google_api.Call.t
    (** Search transitive memberships of a group. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the group is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A transitive membership is any direct or indirect membership of a group. Actor must have view permissions to all transitive memberships.

        [GET v1/{+parent}/memberships:searchTransitiveMemberships]

        - [parent]: \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the group to search transitive memberships in. Format: `groups/\{group\}`, where `group` is the unique ID assigned to the Group.
        - [page_size]: The default page size is 200 (max 1000).
        - [page_token]: The `next_page_token` value returned from a previous list request, if any. *)
  end
end

module Inbound_oidc_sso_profiles : sig
  val create :
    body:inbound_oidc_sso_profile ->
    unit ->
    operation Google_api.Call.t
  (** Creates an InboundOidcSsoProfile for a customer. When the target customer has enabled \[Multi-party approval for sensitive actions\](https://support.google.com/a/answer/13790448), the `Operation` in the response will have `'done': false`, it will not have a response, and the metadata will have `'state': 'awaiting-multi-party-approval'`.

      [POST v1/inboundOidcSsoProfiles] *)

  val delete :
    name:string ->
    unit ->
    operation Google_api.Call.t
  (** Deletes an InboundOidcSsoProfile.

      [DELETE v1/{+name}]

      - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the InboundOidcSsoProfile to delete. Format: `inboundOidcSsoProfiles/\{sso_profile_id\}` *)

  val get :
    name:string ->
    unit ->
    inbound_oidc_sso_profile Google_api.Call.t
  (** Gets an InboundOidcSsoProfile.

      [GET v1/{+name}]

      - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the InboundOidcSsoProfile to get. Format: `inboundOidcSsoProfiles/\{sso_profile_id\}` *)

  val list :
    ?filter:string ->
    ?page_size:int ->
    ?page_token:string ->
    unit ->
    list_inbound_oidc_sso_profiles_response Google_api.Call.t
  (** Lists InboundOidcSsoProfile objects for a Google enterprise customer.

      [GET v1/inboundOidcSsoProfiles]

      - [filter]: A \[Common Expression Language\](https://github.com/google/cel-spec) expression to filter the results. The only supported filter is filtering by customer. For example: `customer=='customers/C0123abc'`. Omitting the filter or specifying a filter of `customer=='customers/my_customer'` will return the profiles for the customer that the caller (authenticated user) belongs to. Specifying a filter of `customer==''` will return the global shared OIDC profiles.
      - [page_size]: The maximum number of InboundOidcSsoProfiles to return. The service may return fewer than this value. If omitted (or defaulted to zero) the server will use a sensible default. This default may change over time. The maximum allowed value is 100. Requests with page_size greater than that will be silently interpreted as having this maximum value.
      - [page_token]: A page token, received from a previous `ListInboundOidcSsoProfiles` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListInboundOidcSsoProfiles` must match the call that provided the page token. *)

  val patch :
    name:string ->
    body:inbound_oidc_sso_profile ->
    ?update_mask:string ->
    unit ->
    operation Google_api.Call.t
  (** Updates an InboundOidcSsoProfile. When the target customer has enabled \[Multi-party approval for sensitive actions\](https://support.google.com/a/answer/13790448), the `Operation` in the response will have `'done': false`, it will not have a response, and the metadata will have `'state': 'awaiting-multi-party-approval'`.

      [PATCH v1/{+name}]

      - [name]: Output only. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the OIDC SSO profile.
      - [update_mask]: Required. The list of fields to be updated. *)
end

module Inbound_saml_sso_profiles : sig
  val create :
    body:inbound_saml_sso_profile ->
    unit ->
    operation Google_api.Call.t
  (** Creates an InboundSamlSsoProfile for a customer. When the target customer has enabled \[Multi-party approval for sensitive actions\](https://support.google.com/a/answer/13790448), the `Operation` in the response will have `'done': false`, it will not have a response, and the metadata will have `'state': 'awaiting-multi-party-approval'`.

      [POST v1/inboundSamlSsoProfiles] *)

  val delete :
    name:string ->
    unit ->
    operation Google_api.Call.t
  (** Deletes an InboundSamlSsoProfile.

      [DELETE v1/{+name}]

      - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the InboundSamlSsoProfile to delete. Format: `inboundSamlSsoProfiles/\{sso_profile_id\}` *)

  val get :
    name:string ->
    unit ->
    inbound_saml_sso_profile Google_api.Call.t
  (** Gets an InboundSamlSsoProfile.

      [GET v1/{+name}]

      - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the InboundSamlSsoProfile to get. Format: `inboundSamlSsoProfiles/\{sso_profile_id\}` *)

  val list :
    ?filter:string ->
    ?page_size:int ->
    ?page_token:string ->
    unit ->
    list_inbound_saml_sso_profiles_response Google_api.Call.t
  (** Lists InboundSamlSsoProfiles for a customer.

      [GET v1/inboundSamlSsoProfiles]

      - [filter]: A \[Common Expression Language\](https://github.com/google/cel-spec) expression to filter the results. The only supported filter is filtering by customer. For example: `customer=='customers/C0123abc'`. Omitting the filter or specifying a filter of `customer=='customers/my_customer'` will return the profiles for the customer that the caller (authenticated user) belongs to.
      - [page_size]: The maximum number of InboundSamlSsoProfiles to return. The service may return fewer than this value. If omitted (or defaulted to zero) the server will use a sensible default. This default may change over time. The maximum allowed value is 100. Requests with page_size greater than that will be silently interpreted as having this maximum value.
      - [page_token]: A page token, received from a previous `ListInboundSamlSsoProfiles` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListInboundSamlSsoProfiles` must match the call that provided the page token. *)

  val patch :
    name:string ->
    body:inbound_saml_sso_profile ->
    ?update_mask:string ->
    unit ->
    operation Google_api.Call.t
  (** Updates an InboundSamlSsoProfile. When the target customer has enabled \[Multi-party approval for sensitive actions\](https://support.google.com/a/answer/13790448), the `Operation` in the response will have `'done': false`, it will not have a response, and the metadata will have `'state': 'awaiting-multi-party-approval'`.

      [PATCH v1/{+name}]

      - [name]: Output only. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile.
      - [update_mask]: Required. The list of fields to be updated. *)

  module Idp_credentials : sig
    val add :
      parent:string ->
      body:add_idp_credential_request ->
      unit ->
      operation Google_api.Call.t
    (** Adds an IdpCredential. Up to 2 credentials are allowed. When the target customer has enabled \[Multi-party approval for sensitive actions\](https://support.google.com/a/answer/13790448), the `Operation` in the response will have `'done': false`, it will not have a response, and the metadata will have `'state': 'awaiting-multi-party-approval'`.

        [POST v1/{+parent}/idpCredentials:add]

        - [parent]: Required. The InboundSamlSsoProfile that owns the IdpCredential. Format: `inboundSamlSsoProfiles/\{sso_profile_id\}` *)

    val delete :
      name:string ->
      unit ->
      operation Google_api.Call.t
    (** Deletes an IdpCredential.

        [DELETE v1/{+name}]

        - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the IdpCredential to delete. Format: `inboundSamlSsoProfiles/\{sso_profile_id\}/idpCredentials/\{idp_credential_id\}` *)

    val get :
      name:string ->
      unit ->
      idp_credential Google_api.Call.t
    (** Gets an IdpCredential.

        [GET v1/{+name}]

        - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the IdpCredential to retrieve. Format: `inboundSamlSsoProfiles/\{sso_profile_id\}/idpCredentials/\{idp_credential_id\}` *)

    val list :
      parent:string ->
      ?page_size:int ->
      ?page_token:string ->
      unit ->
      list_idp_credentials_response Google_api.Call.t
    (** Returns a list of IdpCredentials in an InboundSamlSsoProfile.

        [GET v1/{+parent}/idpCredentials]

        - [parent]: Required. The parent, which owns this collection of `IdpCredential`s. Format: `inboundSamlSsoProfiles/\{sso_profile_id\}`
        - [page_size]: The maximum number of `IdpCredential`s to return. The service may return fewer than this value.
        - [page_token]: A page token, received from a previous `ListIdpCredentials` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListIdpCredentials` must match the call that provided the page token. *)
  end
end

module Inbound_sso_assignments : sig
  val create :
    body:inbound_sso_assignment ->
    unit ->
    operation Google_api.Call.t
  (** Creates an InboundSsoAssignment for users and devices in a `Customer` under a given `Group` or `OrgUnit`.

      [POST v1/inboundSsoAssignments] *)

  val delete :
    name:string ->
    unit ->
    operation Google_api.Call.t
  (** Deletes an InboundSsoAssignment. To disable SSO, Create (or Update) an assignment that has `sso_mode` == `SSO_OFF`.

      [DELETE v1/{+name}]

      - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the InboundSsoAssignment to delete. Format: `inboundSsoAssignments/\{assignment\}` *)

  val get :
    name:string ->
    unit ->
    inbound_sso_assignment Google_api.Call.t
  (** Gets an InboundSsoAssignment.

      [GET v1/{+name}]

      - [name]: Required. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the InboundSsoAssignment to fetch. Format: `inboundSsoAssignments/\{assignment\}` *)

  val list :
    ?filter:string ->
    ?page_size:int ->
    ?page_token:string ->
    unit ->
    list_inbound_sso_assignments_response Google_api.Call.t
  (** Lists the InboundSsoAssignments for a `Customer`.

      [GET v1/inboundSsoAssignments]

      - [filter]: A CEL expression to filter the results. The only supported filter is filtering by customer. For example: `customer==customers/C0123abc`. Omitting the filter or specifying a filter of `customer==customers/my_customer` will return the assignments for the customer that the caller (authenticated user) belongs to.
      - [page_size]: The maximum number of assignments to return. The service may return fewer than this value. If omitted (or defaulted to zero) the server will use a sensible default. This default may change over time. The maximum allowed value is 100, though requests with page_size greater than that will be silently interpreted as having this maximum value. This may increase in the futue.
      - [page_token]: A page token, received from a previous `ListInboundSsoAssignments` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListInboundSsoAssignments` must match the call that provided the page token. *)

  val patch :
    name:string ->
    body:inbound_sso_assignment ->
    ?update_mask:string ->
    unit ->
    operation Google_api.Call.t
  (** Updates an InboundSsoAssignment. The body of this request is the `inbound_sso_assignment` field and the `update_mask` is relative to that. For example: a PATCH to `/v1/inboundSsoAssignments/0abcdefg1234567&update_mask=rank` with a body of `\{ 'rank': 1 \}` moves that (presumably group-targeted) SSO assignment to the highest priority and shifts any other group-targeted assignments down in priority.

      [PATCH v1/{+name}]

      - [name]: Output only. \[Resource name\](https://cloud.google.com/apis/design/resource_names) of the Inbound SSO Assignment.
      - [update_mask]: Required. The list of fields to be updated. *)
end

module Policies : sig
  val create :
    body:policy ->
    unit ->
    operation Google_api.Call.t
  (** Create a policy.

      [POST v1/policies] *)

  val delete :
    name:string ->
    unit ->
    operation Google_api.Call.t
  (** Delete a policy.

      [DELETE v1/{+name}]

      - [name]: Required. The name of the policy to delete. Format: `policies/\{policy\}`. *)

  val get :
    name:string ->
    unit ->
    policy Google_api.Call.t
  (** Get a policy.

      [GET v1/{+name}]

      - [name]: Required. The name of the policy to retrieve. Format: `policies/\{policy\}`. *)

  val list :
    ?filter:string ->
    ?page_size:int ->
    ?page_token:string ->
    unit ->
    list_policies_response Google_api.Call.t
  (** List policies.

      [GET v1/policies]

      - [filter]: Optional. A CEL expression for filtering the results. Policies can be filtered using the expression in the following ways: - Filter by application: `setting.type.matches('^settings/gmail\\\\..*$')` - Filter by setting type: `setting.type.matches('^.*\\\\.service_status$')` - Filter by customer: `customer == 'customers/\{customer\}'` Where `customer` is the `id` from the \[Admin SDK `Customer` resource\](https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers). You may use `customers/my_customer` to specify your own organization. When no `customer` is mentioned it will be default to `customers/my_customer`. You may only filter on policies for a single customer at a time. The above clauses can be combined together in a single filter expression with the `&&` and `||` operators, like in the following example: `customer == 'customers/my_customer' && ( setting.type.matches('^settings/gmail\\\\..*$') || setting.type.matches('^.*\\\\.service_status$') )`.
      - [page_size]: Optional. The maximum number of results to return. The service can return fewer than this number. If omitted or set to `0`, the default is `50` results per page. The maximum allowed value is `100`. `page_size` values greater than `100` default to `100`.
      - [page_token]: Optional. The pagination token received from a prior call to PoliciesService.ListPolicies to retrieve the next page of results. When paginating, all other parameters provided to `ListPoliciesRequest` must match the call that provided the page token. *)

  val patch :
    name:string ->
    body:policy ->
    unit ->
    operation Google_api.Call.t
  (** Update a policy.

      [PATCH v1/{+name}]

      - [name]: Output only. Identifier. The \[resource name\](https://cloud.google.com/apis/design/resource_names) of the Policy. Format: policies/\{policy\}. *)
end
