(* Generated from the Discovery document of storage v1 (revision 20261020). Do not edit. *)

[@@@alert "-internal"]

type advance_relocate_bucket_operation_request = {
  expire_time : string option;
  ttl : string option;
}

and anywhere_cache = {
  admission_policy : string option;
  anywhere_cache_id : string option;
  bucket : string option;
  create_time : string option;
  id : string option;
  ingest_on_write : bool option;
  kind : string option;
  pending_update : bool option;
  self_link : string option;
  state : string option;
  ttl : string option;
  update_time : string option;
  zone : string option;
}

and anywhere_caches = {
  items : anywhere_cache list option;
  kind : string option;
  next_page_token : string option;
}

and bucket_autoclass = {
  enabled : bool option;
  terminal_storage_class : string option;
  terminal_storage_class_update_time : string option;
  toggle_time : string option;
}

and bucket_billing = {
  requester_pays : bool option;
}

and bucket_cors_item = {
  max_age_seconds : int option;
  method_ : string list option;
  origin : string list option;
  response_header : string list option;
}

and bucket_custom_placement_config = {
  data_locations : string list option;
}

and bucket_encryption_customer_managed_encryption_enforcement_config = {
  effective_time : string option;
  restriction_mode : [ `Not_restricted | `Fully_restricted | `Unrecognized of string ] option;
}

and bucket_encryption_customer_supplied_encryption_enforcement_config = {
  effective_time : string option;
  restriction_mode : [ `Not_restricted | `Fully_restricted | `Unrecognized of string ] option;
}

and bucket_encryption_google_managed_encryption_enforcement_config = {
  effective_time : string option;
  restriction_mode : [ `Not_restricted | `Fully_restricted | `Unrecognized of string ] option;
}

and bucket_encryption = {
  customer_managed_encryption_enforcement_config : bucket_encryption_customer_managed_encryption_enforcement_config option;
  customer_supplied_encryption_enforcement_config : bucket_encryption_customer_supplied_encryption_enforcement_config option;
  default_kms_key_name : string option;
  google_managed_encryption_enforcement_config : bucket_encryption_google_managed_encryption_enforcement_config option;
}

and bucket_hierarchical_namespace = {
  enabled : bool option;
}

and bucket_iam_configuration_bucket_policy_only = {
  enabled : bool option;
  locked_time : string option;
}

and bucket_iam_configuration_uniform_bucket_level_access = {
  enabled : bool option;
  locked_time : string option;
}

and bucket_iam_configuration = {
  bucket_policy_only : bucket_iam_configuration_bucket_policy_only option;
  public_access_prevention : string option;
  uniform_bucket_level_access : bucket_iam_configuration_uniform_bucket_level_access option;
}

and bucket_ip_filter_public_network_source = {
  allowed_ip_cidr_ranges : string list option;
}

and bucket_ip_filter_vpc_network_sources_item = {
  allowed_ip_cidr_ranges : string list option;
  network : string option;
}

and bucket_ip_filter = {
  allow_all_service_agent_access : bool option;
  allow_cross_org_vpcs : bool option;
  mode : string option;
  public_network_source : bucket_ip_filter_public_network_source option;
  vpc_network_sources : bucket_ip_filter_vpc_network_sources_item list option;
}

and bucket_lifecycle_rule_item_action = {
  storage_class : string option;
  type_ : string option;
}

and bucket_lifecycle_rule_item_condition = {
  age : int option;
  created_before : string option;
  custom_time_before : string option;
  days_since_custom_time : int option;
  days_since_noncurrent_time : int option;
  is_live : bool option;
  matches_pattern : string option;
  matches_prefix : string list option;
  matches_storage_class : string list option;
  matches_suffix : string list option;
  noncurrent_time_before : string option;
  num_newer_versions : int option;
  size_above_bytes : string option;
  size_below_bytes : string option;
}

and bucket_lifecycle_rule_item = {
  action : bucket_lifecycle_rule_item_action option;
  condition : bucket_lifecycle_rule_item_condition option;
}

and bucket_lifecycle = {
  rule : bucket_lifecycle_rule_item list option;
}

and bucket_logging = {
  log_bucket : string option;
  log_object_prefix : string option;
}

and bucket_object_retention = {
  mode : string option;
}

and bucket_owner = {
  entity : string option;
  entity_id : string option;
}

and bucket_retention_policy = {
  effective_time : string option;
  is_locked : bool option;
  retention_period : string option;
}

and bucket_soft_delete_policy_hard_delete_pause = {
  effective_time : string option;
  enabled : bool option;
}

and bucket_soft_delete_policy = {
  effective_time : string option;
  hard_delete_pause : bucket_soft_delete_policy_hard_delete_pause option;
  retention_duration_seconds : string option;
}

and bucket_versioning = {
  enabled : bool option;
}

and bucket_website = {
  main_page_suffix : string option;
  not_found_page : string option;
}

and bucket = {
  acl : bucket_access_control list option;
  autoclass : bucket_autoclass option;
  billing : bucket_billing option;
  cors : bucket_cors_item list option;
  custom_placement_config : bucket_custom_placement_config option;
  default_event_based_hold : bool option;
  default_object_acl : object_access_control list option;
  encryption : bucket_encryption option;
  etag : string option;
  generation : string option;
  hard_delete_time : string option;
  hierarchical_namespace : bucket_hierarchical_namespace option;
  iam_configuration : bucket_iam_configuration option;
  id : string option;
  ip_filter : bucket_ip_filter option;
  kind : string option;
  labels : (string * string) list option;
  lifecycle : bucket_lifecycle option;
  location : string option;
  location_type : string option;
  logging : bucket_logging option;
  metageneration : string option;
  name : string option;
  object_retention : bucket_object_retention option;
  owner : bucket_owner option;
  project_number : string option;
  retention_policy : bucket_retention_policy option;
  rpo : string option;
  satisfies_pzi : bool option;
  satisfies_pzs : bool option;
  self_link : string option;
  soft_delete_policy : bucket_soft_delete_policy option;
  soft_delete_time : string option;
  storage_class : string option;
  time_created : string option;
  updated : string option;
  versioning : bucket_versioning option;
  website : bucket_website option;
}

and bucket_access_control_project_team = {
  project_number : string option;
  team : string option;
}

and bucket_access_control = {
  bucket : string option;
  domain : string option;
  email : string option;
  entity : string option;
  entity_id : string option;
  etag : string option;
  id : string option;
  kind : string option;
  project_team : bucket_access_control_project_team option;
  role : string option;
  self_link : string option;
}

and bucket_access_controls = {
  items : bucket_access_control list option;
  kind : string option;
}

and bucket_storage_layout_custom_placement_config = {
  data_locations : string list option;
}

and bucket_storage_layout_hierarchical_namespace = {
  enabled : bool option;
}

and bucket_storage_layout = {
  bucket : string option;
  custom_placement_config : bucket_storage_layout_custom_placement_config option;
  hierarchical_namespace : bucket_storage_layout_hierarchical_namespace option;
  kind : string option;
  location : string option;
  location_type : string option;
}

and buckets = {
  items : bucket list option;
  kind : string option;
  next_page_token : string option;
  unreachable : string list option;
}

and bulk_restore_objects_request = {
  allow_overwrite : bool option;
  copy_source_acl : bool option;
  created_after_time : string option;
  created_before_time : string option;
  match_globs : string list option;
  soft_deleted_after_time : string option;
  soft_deleted_before_time : string option;
}

and compose_request_source_objects_item_object_preconditions = {
  if_generation_match : string option;
}

and compose_request_source_objects_item = {
  generation : string option;
  name : string option;
  object_preconditions : compose_request_source_objects_item_object_preconditions option;
}

and compose_request = {
  delete_source_objects : bool option;
  destination : object_ option;
  kind : string option;
  source_objects : compose_request_source_objects_item list option;
}

and expr = {
  description : string option;
  expression : string option;
  location : string option;
  title : string option;
}

and folder_pending_rename_info = {
  operation_id : string option;
}

and folder = {
  bucket : string option;
  create_time : string option;
  id : string option;
  kind : string option;
  metageneration : string option;
  name : string option;
  pending_rename_info : folder_pending_rename_info option;
  self_link : string option;
  update_time : string option;
}

and folders = {
  items : folder list option;
  kind : string option;
  next_page_token : string option;
}

and google_longrunning_list_operations_response = {
  kind : string option;
  next_page_token : string option;
  operations : google_longrunning_operation list option;
}

and google_longrunning_operation = {
  done_ : bool option;
  error : google_rpc_status option;
  kind : string option;
  metadata : (string * Yojson.Safe.t) list option;
  name : string option;
  response : (string * Yojson.Safe.t) list option;
  self_link : string option;
}

and google_rpc_status = {
  code : int option;
  details : (string * Yojson.Safe.t) list list option;
  message : string option;
}

and hmac_key = {
  kind : string option;
  metadata : hmac_key_metadata option;
  secret : string option;
}

and hmac_key_metadata = {
  access_id : string option;
  etag : string option;
  id : string option;
  kind : string option;
  project_id : string option;
  self_link : string option;
  service_account_email : string option;
  state : string option;
  time_created : string option;
  updated : string option;
}

and hmac_keys_metadata = {
  items : hmac_key_metadata list option;
  kind : string option;
  next_page_token : string option;
}

and managed_folder = {
  bucket : string option;
  create_time : string option;
  id : string option;
  kind : string option;
  metageneration : string option;
  name : string option;
  rapid_cache_config : rapid_cache_config option;
  self_link : string option;
  update_time : string option;
}

and managed_folders = {
  items : managed_folder list option;
  kind : string option;
  next_page_token : string option;
}

and notification = {
  custom_attributes : (string * string) list option;
  etag : string option;
  event_types : string list option;
  id : string option;
  kind : string option;
  object_name_prefix : string option;
  payload_format : string option;
  self_link : string option;
  topic : string option;
}

and notifications = {
  items : notification list option;
  kind : string option;
}

and object__contexts = {
  custom : (string * object_custom_context_payload) list option;
}

and object__customer_encryption = {
  encryption_algorithm : string option;
  key_sha256 : string option;
}

and object__owner = {
  entity : string option;
  entity_id : string option;
}

and object__retention = {
  mode : string option;
  retain_until_time : string option;
}

and object_ = {
  acl : object_access_control list option;
  bucket : string option;
  cache_control : string option;
  component_count : int option;
  content_disposition : string option;
  content_encoding : string option;
  content_language : string option;
  content_type : string option;
  contexts : object__contexts option;
  crc32c : string option;
  custom_time : string option;
  customer_encryption : object__customer_encryption option;
  etag : string option;
  event_based_hold : bool option;
  generation : string option;
  hard_delete_time : string option;
  id : string option;
  kind : string option;
  kms_key_name : string option;
  md5_hash : string option;
  media_link : string option;
  metadata : (string * string) list option;
  metageneration : string option;
  name : string option;
  owner : object__owner option;
  restore_token : string option;
  retention : object__retention option;
  retention_expiration_time : string option;
  self_link : string option;
  size : string option;
  soft_delete_time : string option;
  storage_class : string option;
  temporary_hold : bool option;
  time_created : string option;
  time_deleted : string option;
  time_finalized : string option;
  time_storage_class_updated : string option;
  updated : string option;
}

and object_access_control_project_team = {
  project_number : string option;
  team : string option;
}

and object_access_control = {
  bucket : string option;
  domain : string option;
  email : string option;
  entity : string option;
  entity_id : string option;
  etag : string option;
  generation : string option;
  id : string option;
  kind : string option;
  object_ : string option;
  project_team : object_access_control_project_team option;
  role : string option;
  self_link : string option;
}

and object_access_controls = {
  items : object_access_control list option;
  kind : string option;
}

and object_custom_context_payload = {
  create_time : string option;
  extended_data_type_url : string option;
  update_time : string option;
  value : string option;
}

and object_full_context = {
  create_time : string option;
  extended_data : (string * Yojson.Safe.t) list option;
  key : string option;
  kind : string option;
  type_ : [ `Custom | `Unrecognized of string ] option;
  update_time : string option;
  value : string option;
}

and objects = {
  items : object_ list option;
  kind : string option;
  next_page_token : string option;
  prefixes : string list option;
}

and policy_bindings_item = {
  condition : expr option;
  members : string list option;
  role : string option;
}

and policy = {
  bindings : policy_bindings_item list option;
  etag : string option;
  kind : string option;
  resource_id : string option;
  version : int option;
}

and rapid_cache = {
  admission_policy : string option;
  bucket : string option;
  cache_type : string option;
  create_time : string option;
  id : string option;
  ingest_on_write : bool option;
  kind : string option;
  pending_update : bool option;
  rapid_cache_id : string option;
  self_link : string option;
  state : string option;
  ttl : string option;
  update_time : string option;
  zone : string option;
}

and rapid_cache_config = {
  policies : (string * rapid_cache_policy) list option;
}

and rapid_cache_policy = {
  ingest_on_write : [ `Enabled | `Unspecified | `Unrecognized of string ] option;
  rapid_cache_id : string option;
}

and rapid_caches = {
  items : rapid_cache list option;
  kind : string option;
  next_page_token : string option;
}

and relocate_bucket_request_destination_custom_placement_config = {
  data_locations : string list option;
}

and relocate_bucket_request = {
  destination_custom_placement_config : relocate_bucket_request_destination_custom_placement_config option;
  destination_kms_key_name : string option;
  destination_location : string option;
  validate_only : bool option;
}

and rewrite_response = {
  done_ : bool option;
  kind : string option;
  object_size : string option;
  resource : object_ option;
  rewrite_token : string option;
  total_bytes_rewritten : string option;
}

and service_account = {
  email_address : string option;
  kind : string option;
}

and test_iam_permissions_response = {
  kind : string option;
  permissions : string list option;
}

let rec advance_relocate_bucket_operation_request_of_yojson json : advance_relocate_bucket_operation_request =
  let open Yojson.Safe.Util in
  {
    expire_time = member "expireTime" json |> to_option to_string;
    ttl = member "ttl" json |> to_option to_string;
  }

and yojson_of_advance_relocate_bucket_operation_request (value : advance_relocate_bucket_operation_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
         Option.map (fun field -> ("ttl", (fun value -> `String value) field)) value.ttl;
       ])

and anywhere_cache_of_yojson json : anywhere_cache =
  let open Yojson.Safe.Util in
  {
    admission_policy = member "admissionPolicy" json |> to_option to_string;
    anywhere_cache_id = member "anywhereCacheId" json |> to_option to_string;
    bucket = member "bucket" json |> to_option to_string;
    create_time = member "createTime" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    ingest_on_write = member "ingestOnWrite" json |> to_option to_bool;
    kind = member "kind" json |> to_option to_string;
    pending_update = member "pendingUpdate" json |> to_option to_bool;
    self_link = member "selfLink" json |> to_option to_string;
    state = member "state" json |> to_option to_string;
    ttl = member "ttl" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
    zone = member "zone" json |> to_option to_string;
  }

and yojson_of_anywhere_cache (value : anywhere_cache) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("admissionPolicy", (fun value -> `String value) field)) value.admission_policy;
         Option.map (fun field -> ("anywhereCacheId", (fun value -> `String value) field)) value.anywhere_cache_id;
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("ingestOnWrite", (fun value -> `Bool value) field)) value.ingest_on_write;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("pendingUpdate", (fun value -> `Bool value) field)) value.pending_update;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
         Option.map (fun field -> ("ttl", (fun value -> `String value) field)) value.ttl;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
         Option.map (fun field -> ("zone", (fun value -> `String value) field)) value.zone;
       ])

and anywhere_caches_of_yojson json : anywhere_caches =
  let open Yojson.Safe.Util in
  {
    items = member "items" json |> to_option (convert_each anywhere_cache_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_anywhere_caches (value : anywhere_caches) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_anywhere_cache items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and bucket_autoclass_of_yojson json : bucket_autoclass =
  let open Yojson.Safe.Util in
  {
    enabled = member "enabled" json |> to_option to_bool;
    terminal_storage_class = member "terminalStorageClass" json |> to_option to_string;
    terminal_storage_class_update_time = member "terminalStorageClassUpdateTime" json |> to_option to_string;
    toggle_time = member "toggleTime" json |> to_option to_string;
  }

and yojson_of_bucket_autoclass (value : bucket_autoclass) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("enabled", (fun value -> `Bool value) field)) value.enabled;
         Option.map (fun field -> ("terminalStorageClass", (fun value -> `String value) field)) value.terminal_storage_class;
         Option.map (fun field -> ("terminalStorageClassUpdateTime", (fun value -> `String value) field)) value.terminal_storage_class_update_time;
         Option.map (fun field -> ("toggleTime", (fun value -> `String value) field)) value.toggle_time;
       ])

and bucket_billing_of_yojson json : bucket_billing =
  let open Yojson.Safe.Util in
  {
    requester_pays = member "requesterPays" json |> to_option to_bool;
  }

and yojson_of_bucket_billing (value : bucket_billing) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("requesterPays", (fun value -> `Bool value) field)) value.requester_pays;
       ])

and bucket_cors_item_of_yojson json : bucket_cors_item =
  let open Yojson.Safe.Util in
  {
    max_age_seconds = member "maxAgeSeconds" json |> to_option to_int;
    method_ = member "method" json |> to_option (convert_each to_string);
    origin = member "origin" json |> to_option (convert_each to_string);
    response_header = member "responseHeader" json |> to_option (convert_each to_string);
  }

and yojson_of_bucket_cors_item (value : bucket_cors_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("maxAgeSeconds", (fun value -> `Int value) field)) value.max_age_seconds;
         Option.map (fun field -> ("method", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.method_;
         Option.map (fun field -> ("origin", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.origin;
         Option.map (fun field -> ("responseHeader", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.response_header;
       ])

and bucket_custom_placement_config_of_yojson json : bucket_custom_placement_config =
  let open Yojson.Safe.Util in
  {
    data_locations = member "dataLocations" json |> to_option (convert_each to_string);
  }

and yojson_of_bucket_custom_placement_config (value : bucket_custom_placement_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dataLocations", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.data_locations;
       ])

and bucket_encryption_customer_managed_encryption_enforcement_config_of_yojson json : bucket_encryption_customer_managed_encryption_enforcement_config =
  let open Yojson.Safe.Util in
  {
    effective_time = member "effectiveTime" json |> to_option to_string;
    restriction_mode = member "restrictionMode" json |> to_option (fun json -> match to_string json with "NotRestricted" -> `Not_restricted | "FullyRestricted" -> `Fully_restricted | value -> `Unrecognized value);
  }

and yojson_of_bucket_encryption_customer_managed_encryption_enforcement_config (value : bucket_encryption_customer_managed_encryption_enforcement_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("effectiveTime", (fun value -> `String value) field)) value.effective_time;
         Option.map (fun field -> ("restrictionMode", (fun value -> `String ((function `Not_restricted -> "NotRestricted" | `Fully_restricted -> "FullyRestricted" | `Unrecognized value -> value) value)) field)) value.restriction_mode;
       ])

and bucket_encryption_customer_supplied_encryption_enforcement_config_of_yojson json : bucket_encryption_customer_supplied_encryption_enforcement_config =
  let open Yojson.Safe.Util in
  {
    effective_time = member "effectiveTime" json |> to_option to_string;
    restriction_mode = member "restrictionMode" json |> to_option (fun json -> match to_string json with "NotRestricted" -> `Not_restricted | "FullyRestricted" -> `Fully_restricted | value -> `Unrecognized value);
  }

and yojson_of_bucket_encryption_customer_supplied_encryption_enforcement_config (value : bucket_encryption_customer_supplied_encryption_enforcement_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("effectiveTime", (fun value -> `String value) field)) value.effective_time;
         Option.map (fun field -> ("restrictionMode", (fun value -> `String ((function `Not_restricted -> "NotRestricted" | `Fully_restricted -> "FullyRestricted" | `Unrecognized value -> value) value)) field)) value.restriction_mode;
       ])

and bucket_encryption_google_managed_encryption_enforcement_config_of_yojson json : bucket_encryption_google_managed_encryption_enforcement_config =
  let open Yojson.Safe.Util in
  {
    effective_time = member "effectiveTime" json |> to_option to_string;
    restriction_mode = member "restrictionMode" json |> to_option (fun json -> match to_string json with "NotRestricted" -> `Not_restricted | "FullyRestricted" -> `Fully_restricted | value -> `Unrecognized value);
  }

and yojson_of_bucket_encryption_google_managed_encryption_enforcement_config (value : bucket_encryption_google_managed_encryption_enforcement_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("effectiveTime", (fun value -> `String value) field)) value.effective_time;
         Option.map (fun field -> ("restrictionMode", (fun value -> `String ((function `Not_restricted -> "NotRestricted" | `Fully_restricted -> "FullyRestricted" | `Unrecognized value -> value) value)) field)) value.restriction_mode;
       ])

and bucket_encryption_of_yojson json : bucket_encryption =
  let open Yojson.Safe.Util in
  {
    customer_managed_encryption_enforcement_config = member "customerManagedEncryptionEnforcementConfig" json |> to_option bucket_encryption_customer_managed_encryption_enforcement_config_of_yojson;
    customer_supplied_encryption_enforcement_config = member "customerSuppliedEncryptionEnforcementConfig" json |> to_option bucket_encryption_customer_supplied_encryption_enforcement_config_of_yojson;
    default_kms_key_name = member "defaultKmsKeyName" json |> to_option to_string;
    google_managed_encryption_enforcement_config = member "googleManagedEncryptionEnforcementConfig" json |> to_option bucket_encryption_google_managed_encryption_enforcement_config_of_yojson;
  }

and yojson_of_bucket_encryption (value : bucket_encryption) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("customerManagedEncryptionEnforcementConfig", yojson_of_bucket_encryption_customer_managed_encryption_enforcement_config field)) value.customer_managed_encryption_enforcement_config;
         Option.map (fun field -> ("customerSuppliedEncryptionEnforcementConfig", yojson_of_bucket_encryption_customer_supplied_encryption_enforcement_config field)) value.customer_supplied_encryption_enforcement_config;
         Option.map (fun field -> ("defaultKmsKeyName", (fun value -> `String value) field)) value.default_kms_key_name;
         Option.map (fun field -> ("googleManagedEncryptionEnforcementConfig", yojson_of_bucket_encryption_google_managed_encryption_enforcement_config field)) value.google_managed_encryption_enforcement_config;
       ])

and bucket_hierarchical_namespace_of_yojson json : bucket_hierarchical_namespace =
  let open Yojson.Safe.Util in
  {
    enabled = member "enabled" json |> to_option to_bool;
  }

and yojson_of_bucket_hierarchical_namespace (value : bucket_hierarchical_namespace) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("enabled", (fun value -> `Bool value) field)) value.enabled;
       ])

and bucket_iam_configuration_bucket_policy_only_of_yojson json : bucket_iam_configuration_bucket_policy_only =
  let open Yojson.Safe.Util in
  {
    enabled = member "enabled" json |> to_option to_bool;
    locked_time = member "lockedTime" json |> to_option to_string;
  }

and yojson_of_bucket_iam_configuration_bucket_policy_only (value : bucket_iam_configuration_bucket_policy_only) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("enabled", (fun value -> `Bool value) field)) value.enabled;
         Option.map (fun field -> ("lockedTime", (fun value -> `String value) field)) value.locked_time;
       ])

and bucket_iam_configuration_uniform_bucket_level_access_of_yojson json : bucket_iam_configuration_uniform_bucket_level_access =
  let open Yojson.Safe.Util in
  {
    enabled = member "enabled" json |> to_option to_bool;
    locked_time = member "lockedTime" json |> to_option to_string;
  }

and yojson_of_bucket_iam_configuration_uniform_bucket_level_access (value : bucket_iam_configuration_uniform_bucket_level_access) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("enabled", (fun value -> `Bool value) field)) value.enabled;
         Option.map (fun field -> ("lockedTime", (fun value -> `String value) field)) value.locked_time;
       ])

and bucket_iam_configuration_of_yojson json : bucket_iam_configuration =
  let open Yojson.Safe.Util in
  {
    bucket_policy_only = member "bucketPolicyOnly" json |> to_option bucket_iam_configuration_bucket_policy_only_of_yojson;
    public_access_prevention = member "publicAccessPrevention" json |> to_option to_string;
    uniform_bucket_level_access = member "uniformBucketLevelAccess" json |> to_option bucket_iam_configuration_uniform_bucket_level_access_of_yojson;
  }

and yojson_of_bucket_iam_configuration (value : bucket_iam_configuration) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bucketPolicyOnly", yojson_of_bucket_iam_configuration_bucket_policy_only field)) value.bucket_policy_only;
         Option.map (fun field -> ("publicAccessPrevention", (fun value -> `String value) field)) value.public_access_prevention;
         Option.map (fun field -> ("uniformBucketLevelAccess", yojson_of_bucket_iam_configuration_uniform_bucket_level_access field)) value.uniform_bucket_level_access;
       ])

and bucket_ip_filter_public_network_source_of_yojson json : bucket_ip_filter_public_network_source =
  let open Yojson.Safe.Util in
  {
    allowed_ip_cidr_ranges = member "allowedIpCidrRanges" json |> to_option (convert_each to_string);
  }

and yojson_of_bucket_ip_filter_public_network_source (value : bucket_ip_filter_public_network_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowedIpCidrRanges", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.allowed_ip_cidr_ranges;
       ])

and bucket_ip_filter_vpc_network_sources_item_of_yojson json : bucket_ip_filter_vpc_network_sources_item =
  let open Yojson.Safe.Util in
  {
    allowed_ip_cidr_ranges = member "allowedIpCidrRanges" json |> to_option (convert_each to_string);
    network = member "network" json |> to_option to_string;
  }

and yojson_of_bucket_ip_filter_vpc_network_sources_item (value : bucket_ip_filter_vpc_network_sources_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowedIpCidrRanges", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.allowed_ip_cidr_ranges;
         Option.map (fun field -> ("network", (fun value -> `String value) field)) value.network;
       ])

and bucket_ip_filter_of_yojson json : bucket_ip_filter =
  let open Yojson.Safe.Util in
  {
    allow_all_service_agent_access = member "allowAllServiceAgentAccess" json |> to_option to_bool;
    allow_cross_org_vpcs = member "allowCrossOrgVpcs" json |> to_option to_bool;
    mode = member "mode" json |> to_option to_string;
    public_network_source = member "publicNetworkSource" json |> to_option bucket_ip_filter_public_network_source_of_yojson;
    vpc_network_sources = member "vpcNetworkSources" json |> to_option (convert_each bucket_ip_filter_vpc_network_sources_item_of_yojson);
  }

and yojson_of_bucket_ip_filter (value : bucket_ip_filter) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowAllServiceAgentAccess", (fun value -> `Bool value) field)) value.allow_all_service_agent_access;
         Option.map (fun field -> ("allowCrossOrgVpcs", (fun value -> `Bool value) field)) value.allow_cross_org_vpcs;
         Option.map (fun field -> ("mode", (fun value -> `String value) field)) value.mode;
         Option.map (fun field -> ("publicNetworkSource", yojson_of_bucket_ip_filter_public_network_source field)) value.public_network_source;
         Option.map (fun field -> ("vpcNetworkSources", (fun items -> `List (List.map yojson_of_bucket_ip_filter_vpc_network_sources_item items)) field)) value.vpc_network_sources;
       ])

and bucket_lifecycle_rule_item_action_of_yojson json : bucket_lifecycle_rule_item_action =
  let open Yojson.Safe.Util in
  {
    storage_class = member "storageClass" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_bucket_lifecycle_rule_item_action (value : bucket_lifecycle_rule_item_action) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("storageClass", (fun value -> `String value) field)) value.storage_class;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and bucket_lifecycle_rule_item_condition_of_yojson json : bucket_lifecycle_rule_item_condition =
  let open Yojson.Safe.Util in
  {
    age = member "age" json |> to_option to_int;
    created_before = member "createdBefore" json |> to_option to_string;
    custom_time_before = member "customTimeBefore" json |> to_option to_string;
    days_since_custom_time = member "daysSinceCustomTime" json |> to_option to_int;
    days_since_noncurrent_time = member "daysSinceNoncurrentTime" json |> to_option to_int;
    is_live = member "isLive" json |> to_option to_bool;
    matches_pattern = member "matchesPattern" json |> to_option to_string;
    matches_prefix = member "matchesPrefix" json |> to_option (convert_each to_string);
    matches_storage_class = member "matchesStorageClass" json |> to_option (convert_each to_string);
    matches_suffix = member "matchesSuffix" json |> to_option (convert_each to_string);
    noncurrent_time_before = member "noncurrentTimeBefore" json |> to_option to_string;
    num_newer_versions = member "numNewerVersions" json |> to_option to_int;
    size_above_bytes = member "sizeAboveBytes" json |> to_option to_string;
    size_below_bytes = member "sizeBelowBytes" json |> to_option to_string;
  }

and yojson_of_bucket_lifecycle_rule_item_condition (value : bucket_lifecycle_rule_item_condition) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("age", (fun value -> `Int value) field)) value.age;
         Option.map (fun field -> ("createdBefore", (fun value -> `String value) field)) value.created_before;
         Option.map (fun field -> ("customTimeBefore", (fun value -> `String value) field)) value.custom_time_before;
         Option.map (fun field -> ("daysSinceCustomTime", (fun value -> `Int value) field)) value.days_since_custom_time;
         Option.map (fun field -> ("daysSinceNoncurrentTime", (fun value -> `Int value) field)) value.days_since_noncurrent_time;
         Option.map (fun field -> ("isLive", (fun value -> `Bool value) field)) value.is_live;
         Option.map (fun field -> ("matchesPattern", (fun value -> `String value) field)) value.matches_pattern;
         Option.map (fun field -> ("matchesPrefix", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.matches_prefix;
         Option.map (fun field -> ("matchesStorageClass", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.matches_storage_class;
         Option.map (fun field -> ("matchesSuffix", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.matches_suffix;
         Option.map (fun field -> ("noncurrentTimeBefore", (fun value -> `String value) field)) value.noncurrent_time_before;
         Option.map (fun field -> ("numNewerVersions", (fun value -> `Int value) field)) value.num_newer_versions;
         Option.map (fun field -> ("sizeAboveBytes", (fun value -> `String value) field)) value.size_above_bytes;
         Option.map (fun field -> ("sizeBelowBytes", (fun value -> `String value) field)) value.size_below_bytes;
       ])

and bucket_lifecycle_rule_item_of_yojson json : bucket_lifecycle_rule_item =
  let open Yojson.Safe.Util in
  {
    action = member "action" json |> to_option bucket_lifecycle_rule_item_action_of_yojson;
    condition = member "condition" json |> to_option bucket_lifecycle_rule_item_condition_of_yojson;
  }

and yojson_of_bucket_lifecycle_rule_item (value : bucket_lifecycle_rule_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("action", yojson_of_bucket_lifecycle_rule_item_action field)) value.action;
         Option.map (fun field -> ("condition", yojson_of_bucket_lifecycle_rule_item_condition field)) value.condition;
       ])

and bucket_lifecycle_of_yojson json : bucket_lifecycle =
  let open Yojson.Safe.Util in
  {
    rule = member "rule" json |> to_option (convert_each bucket_lifecycle_rule_item_of_yojson);
  }

and yojson_of_bucket_lifecycle (value : bucket_lifecycle) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("rule", (fun items -> `List (List.map yojson_of_bucket_lifecycle_rule_item items)) field)) value.rule;
       ])

and bucket_logging_of_yojson json : bucket_logging =
  let open Yojson.Safe.Util in
  {
    log_bucket = member "logBucket" json |> to_option to_string;
    log_object_prefix = member "logObjectPrefix" json |> to_option to_string;
  }

and yojson_of_bucket_logging (value : bucket_logging) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("logBucket", (fun value -> `String value) field)) value.log_bucket;
         Option.map (fun field -> ("logObjectPrefix", (fun value -> `String value) field)) value.log_object_prefix;
       ])

and bucket_object_retention_of_yojson json : bucket_object_retention =
  let open Yojson.Safe.Util in
  {
    mode = member "mode" json |> to_option to_string;
  }

and yojson_of_bucket_object_retention (value : bucket_object_retention) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("mode", (fun value -> `String value) field)) value.mode;
       ])

and bucket_owner_of_yojson json : bucket_owner =
  let open Yojson.Safe.Util in
  {
    entity = member "entity" json |> to_option to_string;
    entity_id = member "entityId" json |> to_option to_string;
  }

and yojson_of_bucket_owner (value : bucket_owner) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("entity", (fun value -> `String value) field)) value.entity;
         Option.map (fun field -> ("entityId", (fun value -> `String value) field)) value.entity_id;
       ])

and bucket_retention_policy_of_yojson json : bucket_retention_policy =
  let open Yojson.Safe.Util in
  {
    effective_time = member "effectiveTime" json |> to_option to_string;
    is_locked = member "isLocked" json |> to_option to_bool;
    retention_period = member "retentionPeriod" json |> to_option to_string;
  }

and yojson_of_bucket_retention_policy (value : bucket_retention_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("effectiveTime", (fun value -> `String value) field)) value.effective_time;
         Option.map (fun field -> ("isLocked", (fun value -> `Bool value) field)) value.is_locked;
         Option.map (fun field -> ("retentionPeriod", (fun value -> `String value) field)) value.retention_period;
       ])

and bucket_soft_delete_policy_hard_delete_pause_of_yojson json : bucket_soft_delete_policy_hard_delete_pause =
  let open Yojson.Safe.Util in
  {
    effective_time = member "effectiveTime" json |> to_option to_string;
    enabled = member "enabled" json |> to_option to_bool;
  }

and yojson_of_bucket_soft_delete_policy_hard_delete_pause (value : bucket_soft_delete_policy_hard_delete_pause) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("effectiveTime", (fun value -> `String value) field)) value.effective_time;
         Option.map (fun field -> ("enabled", (fun value -> `Bool value) field)) value.enabled;
       ])

and bucket_soft_delete_policy_of_yojson json : bucket_soft_delete_policy =
  let open Yojson.Safe.Util in
  {
    effective_time = member "effectiveTime" json |> to_option to_string;
    hard_delete_pause = member "hardDeletePause" json |> to_option bucket_soft_delete_policy_hard_delete_pause_of_yojson;
    retention_duration_seconds = member "retentionDurationSeconds" json |> to_option to_string;
  }

and yojson_of_bucket_soft_delete_policy (value : bucket_soft_delete_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("effectiveTime", (fun value -> `String value) field)) value.effective_time;
         Option.map (fun field -> ("hardDeletePause", yojson_of_bucket_soft_delete_policy_hard_delete_pause field)) value.hard_delete_pause;
         Option.map (fun field -> ("retentionDurationSeconds", (fun value -> `String value) field)) value.retention_duration_seconds;
       ])

and bucket_versioning_of_yojson json : bucket_versioning =
  let open Yojson.Safe.Util in
  {
    enabled = member "enabled" json |> to_option to_bool;
  }

and yojson_of_bucket_versioning (value : bucket_versioning) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("enabled", (fun value -> `Bool value) field)) value.enabled;
       ])

and bucket_website_of_yojson json : bucket_website =
  let open Yojson.Safe.Util in
  {
    main_page_suffix = member "mainPageSuffix" json |> to_option to_string;
    not_found_page = member "notFoundPage" json |> to_option to_string;
  }

and yojson_of_bucket_website (value : bucket_website) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("mainPageSuffix", (fun value -> `String value) field)) value.main_page_suffix;
         Option.map (fun field -> ("notFoundPage", (fun value -> `String value) field)) value.not_found_page;
       ])

and bucket_of_yojson json : bucket =
  let open Yojson.Safe.Util in
  {
    acl = member "acl" json |> to_option (convert_each bucket_access_control_of_yojson);
    autoclass = member "autoclass" json |> to_option bucket_autoclass_of_yojson;
    billing = member "billing" json |> to_option bucket_billing_of_yojson;
    cors = member "cors" json |> to_option (convert_each bucket_cors_item_of_yojson);
    custom_placement_config = member "customPlacementConfig" json |> to_option bucket_custom_placement_config_of_yojson;
    default_event_based_hold = member "defaultEventBasedHold" json |> to_option to_bool;
    default_object_acl = member "defaultObjectAcl" json |> to_option (convert_each object_access_control_of_yojson);
    encryption = member "encryption" json |> to_option bucket_encryption_of_yojson;
    etag = member "etag" json |> to_option to_string;
    generation = member "generation" json |> to_option to_string;
    hard_delete_time = member "hardDeleteTime" json |> to_option to_string;
    hierarchical_namespace = member "hierarchicalNamespace" json |> to_option bucket_hierarchical_namespace_of_yojson;
    iam_configuration = member "iamConfiguration" json |> to_option bucket_iam_configuration_of_yojson;
    id = member "id" json |> to_option to_string;
    ip_filter = member "ipFilter" json |> to_option bucket_ip_filter_of_yojson;
    kind = member "kind" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    lifecycle = member "lifecycle" json |> to_option bucket_lifecycle_of_yojson;
    location = member "location" json |> to_option to_string;
    location_type = member "locationType" json |> to_option to_string;
    logging = member "logging" json |> to_option bucket_logging_of_yojson;
    metageneration = member "metageneration" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    object_retention = member "objectRetention" json |> to_option bucket_object_retention_of_yojson;
    owner = member "owner" json |> to_option bucket_owner_of_yojson;
    project_number = member "projectNumber" json |> to_option to_string;
    retention_policy = member "retentionPolicy" json |> to_option bucket_retention_policy_of_yojson;
    rpo = member "rpo" json |> to_option to_string;
    satisfies_pzi = member "satisfiesPZI" json |> to_option to_bool;
    satisfies_pzs = member "satisfiesPZS" json |> to_option to_bool;
    self_link = member "selfLink" json |> to_option to_string;
    soft_delete_policy = member "softDeletePolicy" json |> to_option bucket_soft_delete_policy_of_yojson;
    soft_delete_time = member "softDeleteTime" json |> to_option to_string;
    storage_class = member "storageClass" json |> to_option to_string;
    time_created = member "timeCreated" json |> to_option to_string;
    updated = member "updated" json |> to_option to_string;
    versioning = member "versioning" json |> to_option bucket_versioning_of_yojson;
    website = member "website" json |> to_option bucket_website_of_yojson;
  }

and yojson_of_bucket (value : bucket) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("acl", (fun items -> `List (List.map yojson_of_bucket_access_control items)) field)) value.acl;
         Option.map (fun field -> ("autoclass", yojson_of_bucket_autoclass field)) value.autoclass;
         Option.map (fun field -> ("billing", yojson_of_bucket_billing field)) value.billing;
         Option.map (fun field -> ("cors", (fun items -> `List (List.map yojson_of_bucket_cors_item items)) field)) value.cors;
         Option.map (fun field -> ("customPlacementConfig", yojson_of_bucket_custom_placement_config field)) value.custom_placement_config;
         Option.map (fun field -> ("defaultEventBasedHold", (fun value -> `Bool value) field)) value.default_event_based_hold;
         Option.map (fun field -> ("defaultObjectAcl", (fun items -> `List (List.map yojson_of_object_access_control items)) field)) value.default_object_acl;
         Option.map (fun field -> ("encryption", yojson_of_bucket_encryption field)) value.encryption;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("hardDeleteTime", (fun value -> `String value) field)) value.hard_delete_time;
         Option.map (fun field -> ("hierarchicalNamespace", yojson_of_bucket_hierarchical_namespace field)) value.hierarchical_namespace;
         Option.map (fun field -> ("iamConfiguration", yojson_of_bucket_iam_configuration field)) value.iam_configuration;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("ipFilter", yojson_of_bucket_ip_filter field)) value.ip_filter;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("lifecycle", yojson_of_bucket_lifecycle field)) value.lifecycle;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("locationType", (fun value -> `String value) field)) value.location_type;
         Option.map (fun field -> ("logging", yojson_of_bucket_logging field)) value.logging;
         Option.map (fun field -> ("metageneration", (fun value -> `String value) field)) value.metageneration;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("objectRetention", yojson_of_bucket_object_retention field)) value.object_retention;
         Option.map (fun field -> ("owner", yojson_of_bucket_owner field)) value.owner;
         Option.map (fun field -> ("projectNumber", (fun value -> `String value) field)) value.project_number;
         Option.map (fun field -> ("retentionPolicy", yojson_of_bucket_retention_policy field)) value.retention_policy;
         Option.map (fun field -> ("rpo", (fun value -> `String value) field)) value.rpo;
         Option.map (fun field -> ("satisfiesPZI", (fun value -> `Bool value) field)) value.satisfies_pzi;
         Option.map (fun field -> ("satisfiesPZS", (fun value -> `Bool value) field)) value.satisfies_pzs;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("softDeletePolicy", yojson_of_bucket_soft_delete_policy field)) value.soft_delete_policy;
         Option.map (fun field -> ("softDeleteTime", (fun value -> `String value) field)) value.soft_delete_time;
         Option.map (fun field -> ("storageClass", (fun value -> `String value) field)) value.storage_class;
         Option.map (fun field -> ("timeCreated", (fun value -> `String value) field)) value.time_created;
         Option.map (fun field -> ("updated", (fun value -> `String value) field)) value.updated;
         Option.map (fun field -> ("versioning", yojson_of_bucket_versioning field)) value.versioning;
         Option.map (fun field -> ("website", yojson_of_bucket_website field)) value.website;
       ])

and bucket_access_control_project_team_of_yojson json : bucket_access_control_project_team =
  let open Yojson.Safe.Util in
  {
    project_number = member "projectNumber" json |> to_option to_string;
    team = member "team" json |> to_option to_string;
  }

and yojson_of_bucket_access_control_project_team (value : bucket_access_control_project_team) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("projectNumber", (fun value -> `String value) field)) value.project_number;
         Option.map (fun field -> ("team", (fun value -> `String value) field)) value.team;
       ])

and bucket_access_control_of_yojson json : bucket_access_control =
  let open Yojson.Safe.Util in
  {
    bucket = member "bucket" json |> to_option to_string;
    domain = member "domain" json |> to_option to_string;
    email = member "email" json |> to_option to_string;
    entity = member "entity" json |> to_option to_string;
    entity_id = member "entityId" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    project_team = member "projectTeam" json |> to_option bucket_access_control_project_team_of_yojson;
    role = member "role" json |> to_option to_string;
    self_link = member "selfLink" json |> to_option to_string;
  }

and yojson_of_bucket_access_control (value : bucket_access_control) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("domain", (fun value -> `String value) field)) value.domain;
         Option.map (fun field -> ("email", (fun value -> `String value) field)) value.email;
         Option.map (fun field -> ("entity", (fun value -> `String value) field)) value.entity;
         Option.map (fun field -> ("entityId", (fun value -> `String value) field)) value.entity_id;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("projectTeam", yojson_of_bucket_access_control_project_team field)) value.project_team;
         Option.map (fun field -> ("role", (fun value -> `String value) field)) value.role;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
       ])

and bucket_access_controls_of_yojson json : bucket_access_controls =
  let open Yojson.Safe.Util in
  {
    items = member "items" json |> to_option (convert_each bucket_access_control_of_yojson);
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_bucket_access_controls (value : bucket_access_controls) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_bucket_access_control items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and bucket_storage_layout_custom_placement_config_of_yojson json : bucket_storage_layout_custom_placement_config =
  let open Yojson.Safe.Util in
  {
    data_locations = member "dataLocations" json |> to_option (convert_each to_string);
  }

and yojson_of_bucket_storage_layout_custom_placement_config (value : bucket_storage_layout_custom_placement_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dataLocations", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.data_locations;
       ])

and bucket_storage_layout_hierarchical_namespace_of_yojson json : bucket_storage_layout_hierarchical_namespace =
  let open Yojson.Safe.Util in
  {
    enabled = member "enabled" json |> to_option to_bool;
  }

and yojson_of_bucket_storage_layout_hierarchical_namespace (value : bucket_storage_layout_hierarchical_namespace) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("enabled", (fun value -> `Bool value) field)) value.enabled;
       ])

and bucket_storage_layout_of_yojson json : bucket_storage_layout =
  let open Yojson.Safe.Util in
  {
    bucket = member "bucket" json |> to_option to_string;
    custom_placement_config = member "customPlacementConfig" json |> to_option bucket_storage_layout_custom_placement_config_of_yojson;
    hierarchical_namespace = member "hierarchicalNamespace" json |> to_option bucket_storage_layout_hierarchical_namespace_of_yojson;
    kind = member "kind" json |> to_option to_string;
    location = member "location" json |> to_option to_string;
    location_type = member "locationType" json |> to_option to_string;
  }

and yojson_of_bucket_storage_layout (value : bucket_storage_layout) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("customPlacementConfig", yojson_of_bucket_storage_layout_custom_placement_config field)) value.custom_placement_config;
         Option.map (fun field -> ("hierarchicalNamespace", yojson_of_bucket_storage_layout_hierarchical_namespace field)) value.hierarchical_namespace;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("locationType", (fun value -> `String value) field)) value.location_type;
       ])

and buckets_of_yojson json : buckets =
  let open Yojson.Safe.Util in
  {
    items = member "items" json |> to_option (convert_each bucket_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    unreachable = member "unreachable" json |> to_option (convert_each to_string);
  }

and yojson_of_buckets (value : buckets) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_bucket items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("unreachable", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.unreachable;
       ])

and bulk_restore_objects_request_of_yojson json : bulk_restore_objects_request =
  let open Yojson.Safe.Util in
  {
    allow_overwrite = member "allowOverwrite" json |> to_option to_bool;
    copy_source_acl = member "copySourceAcl" json |> to_option to_bool;
    created_after_time = member "createdAfterTime" json |> to_option to_string;
    created_before_time = member "createdBeforeTime" json |> to_option to_string;
    match_globs = member "matchGlobs" json |> to_option (convert_each to_string);
    soft_deleted_after_time = member "softDeletedAfterTime" json |> to_option to_string;
    soft_deleted_before_time = member "softDeletedBeforeTime" json |> to_option to_string;
  }

and yojson_of_bulk_restore_objects_request (value : bulk_restore_objects_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowOverwrite", (fun value -> `Bool value) field)) value.allow_overwrite;
         Option.map (fun field -> ("copySourceAcl", (fun value -> `Bool value) field)) value.copy_source_acl;
         Option.map (fun field -> ("createdAfterTime", (fun value -> `String value) field)) value.created_after_time;
         Option.map (fun field -> ("createdBeforeTime", (fun value -> `String value) field)) value.created_before_time;
         Option.map (fun field -> ("matchGlobs", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.match_globs;
         Option.map (fun field -> ("softDeletedAfterTime", (fun value -> `String value) field)) value.soft_deleted_after_time;
         Option.map (fun field -> ("softDeletedBeforeTime", (fun value -> `String value) field)) value.soft_deleted_before_time;
       ])

and compose_request_source_objects_item_object_preconditions_of_yojson json : compose_request_source_objects_item_object_preconditions =
  let open Yojson.Safe.Util in
  {
    if_generation_match = member "ifGenerationMatch" json |> to_option to_string;
  }

and yojson_of_compose_request_source_objects_item_object_preconditions (value : compose_request_source_objects_item_object_preconditions) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ifGenerationMatch", (fun value -> `String value) field)) value.if_generation_match;
       ])

and compose_request_source_objects_item_of_yojson json : compose_request_source_objects_item =
  let open Yojson.Safe.Util in
  {
    generation = member "generation" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    object_preconditions = member "objectPreconditions" json |> to_option compose_request_source_objects_item_object_preconditions_of_yojson;
  }

and yojson_of_compose_request_source_objects_item (value : compose_request_source_objects_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("objectPreconditions", yojson_of_compose_request_source_objects_item_object_preconditions field)) value.object_preconditions;
       ])

and compose_request_of_yojson json : compose_request =
  let open Yojson.Safe.Util in
  {
    delete_source_objects = member "deleteSourceObjects" json |> to_option to_bool;
    destination = member "destination" json |> to_option object__of_yojson;
    kind = member "kind" json |> to_option to_string;
    source_objects = member "sourceObjects" json |> to_option (convert_each compose_request_source_objects_item_of_yojson);
  }

and yojson_of_compose_request (value : compose_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deleteSourceObjects", (fun value -> `Bool value) field)) value.delete_source_objects;
         Option.map (fun field -> ("destination", yojson_of_object_ field)) value.destination;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("sourceObjects", (fun items -> `List (List.map yojson_of_compose_request_source_objects_item items)) field)) value.source_objects;
       ])

and expr_of_yojson json : expr =
  let open Yojson.Safe.Util in
  {
    description = member "description" json |> to_option to_string;
    expression = member "expression" json |> to_option to_string;
    location = member "location" json |> to_option to_string;
    title = member "title" json |> to_option to_string;
  }

and yojson_of_expr (value : expr) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("expression", (fun value -> `String value) field)) value.expression;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("title", (fun value -> `String value) field)) value.title;
       ])

and folder_pending_rename_info_of_yojson json : folder_pending_rename_info =
  let open Yojson.Safe.Util in
  {
    operation_id = member "operationId" json |> to_option to_string;
  }

and yojson_of_folder_pending_rename_info (value : folder_pending_rename_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("operationId", (fun value -> `String value) field)) value.operation_id;
       ])

and folder_of_yojson json : folder =
  let open Yojson.Safe.Util in
  {
    bucket = member "bucket" json |> to_option to_string;
    create_time = member "createTime" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    metageneration = member "metageneration" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    pending_rename_info = member "pendingRenameInfo" json |> to_option folder_pending_rename_info_of_yojson;
    self_link = member "selfLink" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
  }

and yojson_of_folder (value : folder) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("metageneration", (fun value -> `String value) field)) value.metageneration;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("pendingRenameInfo", yojson_of_folder_pending_rename_info field)) value.pending_rename_info;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
       ])

and folders_of_yojson json : folders =
  let open Yojson.Safe.Util in
  {
    items = member "items" json |> to_option (convert_each folder_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_folders (value : folders) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_folder items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and google_longrunning_list_operations_response_of_yojson json : google_longrunning_list_operations_response =
  let open Yojson.Safe.Util in
  {
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    operations = member "operations" json |> to_option (convert_each google_longrunning_operation_of_yojson);
  }

and yojson_of_google_longrunning_list_operations_response (value : google_longrunning_list_operations_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("operations", (fun items -> `List (List.map yojson_of_google_longrunning_operation items)) field)) value.operations;
       ])

and google_longrunning_operation_of_yojson json : google_longrunning_operation =
  let open Yojson.Safe.Util in
  {
    done_ = member "done" json |> to_option to_bool;
    error = member "error" json |> to_option google_rpc_status_of_yojson;
    kind = member "kind" json |> to_option to_string;
    metadata = member "metadata" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
    name = member "name" json |> to_option to_string;
    response = member "response" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
    self_link = member "selfLink" json |> to_option to_string;
  }

and yojson_of_google_longrunning_operation (value : google_longrunning_operation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("done", (fun value -> `Bool value) field)) value.done_;
         Option.map (fun field -> ("error", yojson_of_google_rpc_status field)) value.error;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("metadata", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.metadata;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("response", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.response;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
       ])

and google_rpc_status_of_yojson json : google_rpc_status =
  let open Yojson.Safe.Util in
  {
    code = member "code" json |> to_option to_int;
    details = member "details" json |> to_option (convert_each (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json)));
    message = member "message" json |> to_option to_string;
  }

and yojson_of_google_rpc_status (value : google_rpc_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("code", (fun value -> `Int value) field)) value.code;
         Option.map (fun field -> ("details", (fun items -> `List (List.map (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) items)) field)) value.details;
         Option.map (fun field -> ("message", (fun value -> `String value) field)) value.message;
       ])

and hmac_key_of_yojson json : hmac_key =
  let open Yojson.Safe.Util in
  {
    kind = member "kind" json |> to_option to_string;
    metadata = member "metadata" json |> to_option hmac_key_metadata_of_yojson;
    secret = member "secret" json |> to_option to_string;
  }

and yojson_of_hmac_key (value : hmac_key) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("metadata", yojson_of_hmac_key_metadata field)) value.metadata;
         Option.map (fun field -> ("secret", (fun value -> `String value) field)) value.secret;
       ])

and hmac_key_metadata_of_yojson json : hmac_key_metadata =
  let open Yojson.Safe.Util in
  {
    access_id = member "accessId" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    project_id = member "projectId" json |> to_option to_string;
    self_link = member "selfLink" json |> to_option to_string;
    service_account_email = member "serviceAccountEmail" json |> to_option to_string;
    state = member "state" json |> to_option to_string;
    time_created = member "timeCreated" json |> to_option to_string;
    updated = member "updated" json |> to_option to_string;
  }

and yojson_of_hmac_key_metadata (value : hmac_key_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("accessId", (fun value -> `String value) field)) value.access_id;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("serviceAccountEmail", (fun value -> `String value) field)) value.service_account_email;
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
         Option.map (fun field -> ("timeCreated", (fun value -> `String value) field)) value.time_created;
         Option.map (fun field -> ("updated", (fun value -> `String value) field)) value.updated;
       ])

and hmac_keys_metadata_of_yojson json : hmac_keys_metadata =
  let open Yojson.Safe.Util in
  {
    items = member "items" json |> to_option (convert_each hmac_key_metadata_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_hmac_keys_metadata (value : hmac_keys_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_hmac_key_metadata items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and managed_folder_of_yojson json : managed_folder =
  let open Yojson.Safe.Util in
  {
    bucket = member "bucket" json |> to_option to_string;
    create_time = member "createTime" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    metageneration = member "metageneration" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    rapid_cache_config = member "rapidCacheConfig" json |> to_option rapid_cache_config_of_yojson;
    self_link = member "selfLink" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
  }

and yojson_of_managed_folder (value : managed_folder) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("metageneration", (fun value -> `String value) field)) value.metageneration;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("rapidCacheConfig", yojson_of_rapid_cache_config field)) value.rapid_cache_config;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
       ])

and managed_folders_of_yojson json : managed_folders =
  let open Yojson.Safe.Util in
  {
    items = member "items" json |> to_option (convert_each managed_folder_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_managed_folders (value : managed_folders) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_managed_folder items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and notification_of_yojson json : notification =
  let open Yojson.Safe.Util in
  {
    custom_attributes = member "custom_attributes" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    etag = member "etag" json |> to_option to_string;
    event_types = member "event_types" json |> to_option (convert_each to_string);
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    object_name_prefix = member "object_name_prefix" json |> to_option to_string;
    payload_format = member "payload_format" json |> to_option to_string;
    self_link = member "selfLink" json |> to_option to_string;
    topic = member "topic" json |> to_option to_string;
  }

and yojson_of_notification (value : notification) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("custom_attributes", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.custom_attributes;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("event_types", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.event_types;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("object_name_prefix", (fun value -> `String value) field)) value.object_name_prefix;
         Option.map (fun field -> ("payload_format", (fun value -> `String value) field)) value.payload_format;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("topic", (fun value -> `String value) field)) value.topic;
       ])

and notifications_of_yojson json : notifications =
  let open Yojson.Safe.Util in
  {
    items = member "items" json |> to_option (convert_each notification_of_yojson);
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_notifications (value : notifications) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_notification items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and object__contexts_of_yojson json : object__contexts =
  let open Yojson.Safe.Util in
  {
    custom = member "custom" json |> to_option (fun json -> List.map (fun (key, value) -> (key, object_custom_context_payload_of_yojson value)) (to_assoc json));
  }

and yojson_of_object__contexts (value : object__contexts) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("custom", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_object_custom_context_payload value)) members)) field)) value.custom;
       ])

and object__customer_encryption_of_yojson json : object__customer_encryption =
  let open Yojson.Safe.Util in
  {
    encryption_algorithm = member "encryptionAlgorithm" json |> to_option to_string;
    key_sha256 = member "keySha256" json |> to_option to_string;
  }

and yojson_of_object__customer_encryption (value : object__customer_encryption) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("encryptionAlgorithm", (fun value -> `String value) field)) value.encryption_algorithm;
         Option.map (fun field -> ("keySha256", (fun value -> `String value) field)) value.key_sha256;
       ])

and object__owner_of_yojson json : object__owner =
  let open Yojson.Safe.Util in
  {
    entity = member "entity" json |> to_option to_string;
    entity_id = member "entityId" json |> to_option to_string;
  }

and yojson_of_object__owner (value : object__owner) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("entity", (fun value -> `String value) field)) value.entity;
         Option.map (fun field -> ("entityId", (fun value -> `String value) field)) value.entity_id;
       ])

and object__retention_of_yojson json : object__retention =
  let open Yojson.Safe.Util in
  {
    mode = member "mode" json |> to_option to_string;
    retain_until_time = member "retainUntilTime" json |> to_option to_string;
  }

and yojson_of_object__retention (value : object__retention) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("mode", (fun value -> `String value) field)) value.mode;
         Option.map (fun field -> ("retainUntilTime", (fun value -> `String value) field)) value.retain_until_time;
       ])

and object__of_yojson json : object_ =
  let open Yojson.Safe.Util in
  {
    acl = member "acl" json |> to_option (convert_each object_access_control_of_yojson);
    bucket = member "bucket" json |> to_option to_string;
    cache_control = member "cacheControl" json |> to_option to_string;
    component_count = member "componentCount" json |> to_option to_int;
    content_disposition = member "contentDisposition" json |> to_option to_string;
    content_encoding = member "contentEncoding" json |> to_option to_string;
    content_language = member "contentLanguage" json |> to_option to_string;
    content_type = member "contentType" json |> to_option to_string;
    contexts = member "contexts" json |> to_option object__contexts_of_yojson;
    crc32c = member "crc32c" json |> to_option to_string;
    custom_time = member "customTime" json |> to_option to_string;
    customer_encryption = member "customerEncryption" json |> to_option object__customer_encryption_of_yojson;
    etag = member "etag" json |> to_option to_string;
    event_based_hold = member "eventBasedHold" json |> to_option to_bool;
    generation = member "generation" json |> to_option to_string;
    hard_delete_time = member "hardDeleteTime" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    kms_key_name = member "kmsKeyName" json |> to_option to_string;
    md5_hash = member "md5Hash" json |> to_option to_string;
    media_link = member "mediaLink" json |> to_option to_string;
    metadata = member "metadata" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    metageneration = member "metageneration" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    owner = member "owner" json |> to_option object__owner_of_yojson;
    restore_token = member "restoreToken" json |> to_option to_string;
    retention = member "retention" json |> to_option object__retention_of_yojson;
    retention_expiration_time = member "retentionExpirationTime" json |> to_option to_string;
    self_link = member "selfLink" json |> to_option to_string;
    size = member "size" json |> to_option to_string;
    soft_delete_time = member "softDeleteTime" json |> to_option to_string;
    storage_class = member "storageClass" json |> to_option to_string;
    temporary_hold = member "temporaryHold" json |> to_option to_bool;
    time_created = member "timeCreated" json |> to_option to_string;
    time_deleted = member "timeDeleted" json |> to_option to_string;
    time_finalized = member "timeFinalized" json |> to_option to_string;
    time_storage_class_updated = member "timeStorageClassUpdated" json |> to_option to_string;
    updated = member "updated" json |> to_option to_string;
  }

and yojson_of_object_ (value : object_) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("acl", (fun items -> `List (List.map yojson_of_object_access_control items)) field)) value.acl;
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("cacheControl", (fun value -> `String value) field)) value.cache_control;
         Option.map (fun field -> ("componentCount", (fun value -> `Int value) field)) value.component_count;
         Option.map (fun field -> ("contentDisposition", (fun value -> `String value) field)) value.content_disposition;
         Option.map (fun field -> ("contentEncoding", (fun value -> `String value) field)) value.content_encoding;
         Option.map (fun field -> ("contentLanguage", (fun value -> `String value) field)) value.content_language;
         Option.map (fun field -> ("contentType", (fun value -> `String value) field)) value.content_type;
         Option.map (fun field -> ("contexts", yojson_of_object__contexts field)) value.contexts;
         Option.map (fun field -> ("crc32c", (fun value -> `String value) field)) value.crc32c;
         Option.map (fun field -> ("customTime", (fun value -> `String value) field)) value.custom_time;
         Option.map (fun field -> ("customerEncryption", yojson_of_object__customer_encryption field)) value.customer_encryption;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("eventBasedHold", (fun value -> `Bool value) field)) value.event_based_hold;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("hardDeleteTime", (fun value -> `String value) field)) value.hard_delete_time;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("kmsKeyName", (fun value -> `String value) field)) value.kms_key_name;
         Option.map (fun field -> ("md5Hash", (fun value -> `String value) field)) value.md5_hash;
         Option.map (fun field -> ("mediaLink", (fun value -> `String value) field)) value.media_link;
         Option.map (fun field -> ("metadata", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.metadata;
         Option.map (fun field -> ("metageneration", (fun value -> `String value) field)) value.metageneration;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("owner", yojson_of_object__owner field)) value.owner;
         Option.map (fun field -> ("restoreToken", (fun value -> `String value) field)) value.restore_token;
         Option.map (fun field -> ("retention", yojson_of_object__retention field)) value.retention;
         Option.map (fun field -> ("retentionExpirationTime", (fun value -> `String value) field)) value.retention_expiration_time;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("size", (fun value -> `String value) field)) value.size;
         Option.map (fun field -> ("softDeleteTime", (fun value -> `String value) field)) value.soft_delete_time;
         Option.map (fun field -> ("storageClass", (fun value -> `String value) field)) value.storage_class;
         Option.map (fun field -> ("temporaryHold", (fun value -> `Bool value) field)) value.temporary_hold;
         Option.map (fun field -> ("timeCreated", (fun value -> `String value) field)) value.time_created;
         Option.map (fun field -> ("timeDeleted", (fun value -> `String value) field)) value.time_deleted;
         Option.map (fun field -> ("timeFinalized", (fun value -> `String value) field)) value.time_finalized;
         Option.map (fun field -> ("timeStorageClassUpdated", (fun value -> `String value) field)) value.time_storage_class_updated;
         Option.map (fun field -> ("updated", (fun value -> `String value) field)) value.updated;
       ])

and object_access_control_project_team_of_yojson json : object_access_control_project_team =
  let open Yojson.Safe.Util in
  {
    project_number = member "projectNumber" json |> to_option to_string;
    team = member "team" json |> to_option to_string;
  }

and yojson_of_object_access_control_project_team (value : object_access_control_project_team) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("projectNumber", (fun value -> `String value) field)) value.project_number;
         Option.map (fun field -> ("team", (fun value -> `String value) field)) value.team;
       ])

and object_access_control_of_yojson json : object_access_control =
  let open Yojson.Safe.Util in
  {
    bucket = member "bucket" json |> to_option to_string;
    domain = member "domain" json |> to_option to_string;
    email = member "email" json |> to_option to_string;
    entity = member "entity" json |> to_option to_string;
    entity_id = member "entityId" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    generation = member "generation" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    object_ = member "object" json |> to_option to_string;
    project_team = member "projectTeam" json |> to_option object_access_control_project_team_of_yojson;
    role = member "role" json |> to_option to_string;
    self_link = member "selfLink" json |> to_option to_string;
  }

and yojson_of_object_access_control (value : object_access_control) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("domain", (fun value -> `String value) field)) value.domain;
         Option.map (fun field -> ("email", (fun value -> `String value) field)) value.email;
         Option.map (fun field -> ("entity", (fun value -> `String value) field)) value.entity;
         Option.map (fun field -> ("entityId", (fun value -> `String value) field)) value.entity_id;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("object", (fun value -> `String value) field)) value.object_;
         Option.map (fun field -> ("projectTeam", yojson_of_object_access_control_project_team field)) value.project_team;
         Option.map (fun field -> ("role", (fun value -> `String value) field)) value.role;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
       ])

and object_access_controls_of_yojson json : object_access_controls =
  let open Yojson.Safe.Util in
  {
    items = member "items" json |> to_option (convert_each object_access_control_of_yojson);
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_object_access_controls (value : object_access_controls) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_object_access_control items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and object_custom_context_payload_of_yojson json : object_custom_context_payload =
  let open Yojson.Safe.Util in
  {
    create_time = member "createTime" json |> to_option to_string;
    extended_data_type_url = member "extendedDataTypeUrl" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_object_custom_context_payload (value : object_custom_context_payload) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("extendedDataTypeUrl", (fun value -> `String value) field)) value.extended_data_type_url;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and object_full_context_of_yojson json : object_full_context =
  let open Yojson.Safe.Util in
  {
    create_time = member "createTime" json |> to_option to_string;
    extended_data = member "extendedData" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
    key = member "key" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    type_ = member "type" json |> to_option (fun json -> match to_string json with "CUSTOM" -> `Custom | value -> `Unrecognized value);
    update_time = member "updateTime" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_object_full_context (value : object_full_context) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("extendedData", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.extended_data;
         Option.map (fun field -> ("key", (fun value -> `String value) field)) value.key;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("type", (fun value -> `String ((function `Custom -> "CUSTOM" | `Unrecognized value -> value) value)) field)) value.type_;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and objects_of_yojson json : objects =
  let open Yojson.Safe.Util in
  {
    items = member "items" json |> to_option (convert_each object__of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    prefixes = member "prefixes" json |> to_option (convert_each to_string);
  }

and yojson_of_objects (value : objects) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_object_ items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("prefixes", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.prefixes;
       ])

and policy_bindings_item_of_yojson json : policy_bindings_item =
  let open Yojson.Safe.Util in
  {
    condition = member "condition" json |> to_option expr_of_yojson;
    members = member "members" json |> to_option (convert_each to_string);
    role = member "role" json |> to_option to_string;
  }

and yojson_of_policy_bindings_item (value : policy_bindings_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("condition", yojson_of_expr field)) value.condition;
         Option.map (fun field -> ("members", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.members;
         Option.map (fun field -> ("role", (fun value -> `String value) field)) value.role;
       ])

and policy_of_yojson json : policy =
  let open Yojson.Safe.Util in
  {
    bindings = member "bindings" json |> to_option (convert_each policy_bindings_item_of_yojson);
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    resource_id = member "resourceId" json |> to_option to_string;
    version = member "version" json |> to_option to_int;
  }

and yojson_of_policy (value : policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bindings", (fun items -> `List (List.map yojson_of_policy_bindings_item items)) field)) value.bindings;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("resourceId", (fun value -> `String value) field)) value.resource_id;
         Option.map (fun field -> ("version", (fun value -> `Int value) field)) value.version;
       ])

and rapid_cache_of_yojson json : rapid_cache =
  let open Yojson.Safe.Util in
  {
    admission_policy = member "admissionPolicy" json |> to_option to_string;
    bucket = member "bucket" json |> to_option to_string;
    cache_type = member "cacheType" json |> to_option to_string;
    create_time = member "createTime" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    ingest_on_write = member "ingestOnWrite" json |> to_option to_bool;
    kind = member "kind" json |> to_option to_string;
    pending_update = member "pendingUpdate" json |> to_option to_bool;
    rapid_cache_id = member "rapidCacheId" json |> to_option to_string;
    self_link = member "selfLink" json |> to_option to_string;
    state = member "state" json |> to_option to_string;
    ttl = member "ttl" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
    zone = member "zone" json |> to_option to_string;
  }

and yojson_of_rapid_cache (value : rapid_cache) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("admissionPolicy", (fun value -> `String value) field)) value.admission_policy;
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("cacheType", (fun value -> `String value) field)) value.cache_type;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("ingestOnWrite", (fun value -> `Bool value) field)) value.ingest_on_write;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("pendingUpdate", (fun value -> `Bool value) field)) value.pending_update;
         Option.map (fun field -> ("rapidCacheId", (fun value -> `String value) field)) value.rapid_cache_id;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
         Option.map (fun field -> ("ttl", (fun value -> `String value) field)) value.ttl;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
         Option.map (fun field -> ("zone", (fun value -> `String value) field)) value.zone;
       ])

and rapid_cache_config_of_yojson json : rapid_cache_config =
  let open Yojson.Safe.Util in
  {
    policies = member "policies" json |> to_option (fun json -> List.map (fun (key, value) -> (key, rapid_cache_policy_of_yojson value)) (to_assoc json));
  }

and yojson_of_rapid_cache_config (value : rapid_cache_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("policies", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_rapid_cache_policy value)) members)) field)) value.policies;
       ])

and rapid_cache_policy_of_yojson json : rapid_cache_policy =
  let open Yojson.Safe.Util in
  {
    ingest_on_write = member "ingestOnWrite" json |> to_option (fun json -> match to_string json with "enabled" -> `Enabled | "unspecified" -> `Unspecified | value -> `Unrecognized value);
    rapid_cache_id = member "rapidCacheId" json |> to_option to_string;
  }

and yojson_of_rapid_cache_policy (value : rapid_cache_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ingestOnWrite", (fun value -> `String ((function `Enabled -> "enabled" | `Unspecified -> "unspecified" | `Unrecognized value -> value) value)) field)) value.ingest_on_write;
         Option.map (fun field -> ("rapidCacheId", (fun value -> `String value) field)) value.rapid_cache_id;
       ])

and rapid_caches_of_yojson json : rapid_caches =
  let open Yojson.Safe.Util in
  {
    items = member "items" json |> to_option (convert_each rapid_cache_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_rapid_caches (value : rapid_caches) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_rapid_cache items)) field)) value.items;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and relocate_bucket_request_destination_custom_placement_config_of_yojson json : relocate_bucket_request_destination_custom_placement_config =
  let open Yojson.Safe.Util in
  {
    data_locations = member "dataLocations" json |> to_option (convert_each to_string);
  }

and yojson_of_relocate_bucket_request_destination_custom_placement_config (value : relocate_bucket_request_destination_custom_placement_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dataLocations", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.data_locations;
       ])

and relocate_bucket_request_of_yojson json : relocate_bucket_request =
  let open Yojson.Safe.Util in
  {
    destination_custom_placement_config = member "destinationCustomPlacementConfig" json |> to_option relocate_bucket_request_destination_custom_placement_config_of_yojson;
    destination_kms_key_name = member "destinationKmsKeyName" json |> to_option to_string;
    destination_location = member "destinationLocation" json |> to_option to_string;
    validate_only = member "validateOnly" json |> to_option to_bool;
  }

and yojson_of_relocate_bucket_request (value : relocate_bucket_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("destinationCustomPlacementConfig", yojson_of_relocate_bucket_request_destination_custom_placement_config field)) value.destination_custom_placement_config;
         Option.map (fun field -> ("destinationKmsKeyName", (fun value -> `String value) field)) value.destination_kms_key_name;
         Option.map (fun field -> ("destinationLocation", (fun value -> `String value) field)) value.destination_location;
         Option.map (fun field -> ("validateOnly", (fun value -> `Bool value) field)) value.validate_only;
       ])

and rewrite_response_of_yojson json : rewrite_response =
  let open Yojson.Safe.Util in
  {
    done_ = member "done" json |> to_option to_bool;
    kind = member "kind" json |> to_option to_string;
    object_size = member "objectSize" json |> to_option to_string;
    resource = member "resource" json |> to_option object__of_yojson;
    rewrite_token = member "rewriteToken" json |> to_option to_string;
    total_bytes_rewritten = member "totalBytesRewritten" json |> to_option to_string;
  }

and yojson_of_rewrite_response (value : rewrite_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("done", (fun value -> `Bool value) field)) value.done_;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("objectSize", (fun value -> `String value) field)) value.object_size;
         Option.map (fun field -> ("resource", yojson_of_object_ field)) value.resource;
         Option.map (fun field -> ("rewriteToken", (fun value -> `String value) field)) value.rewrite_token;
         Option.map (fun field -> ("totalBytesRewritten", (fun value -> `String value) field)) value.total_bytes_rewritten;
       ])

and service_account_of_yojson json : service_account =
  let open Yojson.Safe.Util in
  {
    email_address = member "email_address" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_service_account (value : service_account) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("email_address", (fun value -> `String value) field)) value.email_address;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and test_iam_permissions_response_of_yojson json : test_iam_permissions_response =
  let open Yojson.Safe.Util in
  {
    kind = member "kind" json |> to_option to_string;
    permissions = member "permissions" json |> to_option (convert_each to_string);
  }

and yojson_of_test_iam_permissions_response (value : test_iam_permissions_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("permissions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.permissions;
       ])

let make_advance_relocate_bucket_operation_request ?expire_time ?ttl () : advance_relocate_bucket_operation_request = { expire_time; ttl }

let make_anywhere_cache ?admission_policy ?anywhere_cache_id ?bucket ?create_time ?id ?ingest_on_write ?kind ?pending_update ?self_link ?state ?ttl ?update_time ?zone () : anywhere_cache = { admission_policy; anywhere_cache_id; bucket; create_time; id; ingest_on_write; kind; pending_update; self_link; state; ttl; update_time; zone }

let make_anywhere_caches ?items ?kind ?next_page_token () : anywhere_caches = { items; kind; next_page_token }

let make_bucket_autoclass ?enabled ?terminal_storage_class ?terminal_storage_class_update_time ?toggle_time () : bucket_autoclass = { enabled; terminal_storage_class; terminal_storage_class_update_time; toggle_time }

let make_bucket_billing ?requester_pays () : bucket_billing = { requester_pays }

let make_bucket_cors_item ?max_age_seconds ?method_ ?origin ?response_header () : bucket_cors_item = { max_age_seconds; method_; origin; response_header }

let make_bucket_custom_placement_config ?data_locations () : bucket_custom_placement_config = { data_locations }

let make_bucket_encryption_customer_managed_encryption_enforcement_config ?effective_time ?restriction_mode () : bucket_encryption_customer_managed_encryption_enforcement_config = { effective_time; restriction_mode }

let make_bucket_encryption_customer_supplied_encryption_enforcement_config ?effective_time ?restriction_mode () : bucket_encryption_customer_supplied_encryption_enforcement_config = { effective_time; restriction_mode }

let make_bucket_encryption_google_managed_encryption_enforcement_config ?effective_time ?restriction_mode () : bucket_encryption_google_managed_encryption_enforcement_config = { effective_time; restriction_mode }

let make_bucket_encryption ?customer_managed_encryption_enforcement_config ?customer_supplied_encryption_enforcement_config ?default_kms_key_name ?google_managed_encryption_enforcement_config () : bucket_encryption = { customer_managed_encryption_enforcement_config; customer_supplied_encryption_enforcement_config; default_kms_key_name; google_managed_encryption_enforcement_config }

let make_bucket_hierarchical_namespace ?enabled () : bucket_hierarchical_namespace = { enabled }

let make_bucket_iam_configuration_bucket_policy_only ?enabled ?locked_time () : bucket_iam_configuration_bucket_policy_only = { enabled; locked_time }

let make_bucket_iam_configuration_uniform_bucket_level_access ?enabled ?locked_time () : bucket_iam_configuration_uniform_bucket_level_access = { enabled; locked_time }

let make_bucket_iam_configuration ?bucket_policy_only ?public_access_prevention ?uniform_bucket_level_access () : bucket_iam_configuration = { bucket_policy_only; public_access_prevention; uniform_bucket_level_access }

let make_bucket_ip_filter_public_network_source ?allowed_ip_cidr_ranges () : bucket_ip_filter_public_network_source = { allowed_ip_cidr_ranges }

let make_bucket_ip_filter_vpc_network_sources_item ?allowed_ip_cidr_ranges ?network () : bucket_ip_filter_vpc_network_sources_item = { allowed_ip_cidr_ranges; network }

let make_bucket_ip_filter ?allow_all_service_agent_access ?allow_cross_org_vpcs ?mode ?public_network_source ?vpc_network_sources () : bucket_ip_filter = { allow_all_service_agent_access; allow_cross_org_vpcs; mode; public_network_source; vpc_network_sources }

let make_bucket_lifecycle_rule_item_action ?storage_class ?type_ () : bucket_lifecycle_rule_item_action = { storage_class; type_ }

let make_bucket_lifecycle_rule_item_condition ?age ?created_before ?custom_time_before ?days_since_custom_time ?days_since_noncurrent_time ?is_live ?matches_pattern ?matches_prefix ?matches_storage_class ?matches_suffix ?noncurrent_time_before ?num_newer_versions ?size_above_bytes ?size_below_bytes () : bucket_lifecycle_rule_item_condition = { age; created_before; custom_time_before; days_since_custom_time; days_since_noncurrent_time; is_live; matches_pattern; matches_prefix; matches_storage_class; matches_suffix; noncurrent_time_before; num_newer_versions; size_above_bytes; size_below_bytes }

let make_bucket_lifecycle_rule_item ?action ?condition () : bucket_lifecycle_rule_item = { action; condition }

let make_bucket_lifecycle ?rule () : bucket_lifecycle = { rule }

let make_bucket_logging ?log_bucket ?log_object_prefix () : bucket_logging = { log_bucket; log_object_prefix }

let make_bucket_object_retention ?mode () : bucket_object_retention = { mode }

let make_bucket_owner ?entity ?entity_id () : bucket_owner = { entity; entity_id }

let make_bucket_retention_policy ?effective_time ?is_locked ?retention_period () : bucket_retention_policy = { effective_time; is_locked; retention_period }

let make_bucket_soft_delete_policy_hard_delete_pause ?effective_time ?enabled () : bucket_soft_delete_policy_hard_delete_pause = { effective_time; enabled }

let make_bucket_soft_delete_policy ?effective_time ?hard_delete_pause ?retention_duration_seconds () : bucket_soft_delete_policy = { effective_time; hard_delete_pause; retention_duration_seconds }

let make_bucket_versioning ?enabled () : bucket_versioning = { enabled }

let make_bucket_website ?main_page_suffix ?not_found_page () : bucket_website = { main_page_suffix; not_found_page }

let make_bucket ?acl ?autoclass ?billing ?cors ?custom_placement_config ?default_event_based_hold ?default_object_acl ?encryption ?etag ?generation ?hard_delete_time ?hierarchical_namespace ?iam_configuration ?id ?ip_filter ?kind ?labels ?lifecycle ?location ?location_type ?logging ?metageneration ?name ?object_retention ?owner ?project_number ?retention_policy ?rpo ?satisfies_pzi ?satisfies_pzs ?self_link ?soft_delete_policy ?soft_delete_time ?storage_class ?time_created ?updated ?versioning ?website () : bucket = { acl; autoclass; billing; cors; custom_placement_config; default_event_based_hold; default_object_acl; encryption; etag; generation; hard_delete_time; hierarchical_namespace; iam_configuration; id; ip_filter; kind; labels; lifecycle; location; location_type; logging; metageneration; name; object_retention; owner; project_number; retention_policy; rpo; satisfies_pzi; satisfies_pzs; self_link; soft_delete_policy; soft_delete_time; storage_class; time_created; updated; versioning; website }

let make_bucket_access_control_project_team ?project_number ?team () : bucket_access_control_project_team = { project_number; team }

let make_bucket_access_control ?bucket ?domain ?email ?entity ?entity_id ?etag ?id ?kind ?project_team ?role ?self_link () : bucket_access_control = { bucket; domain; email; entity; entity_id; etag; id; kind; project_team; role; self_link }

let make_bucket_access_controls ?items ?kind () : bucket_access_controls = { items; kind }

let make_bucket_storage_layout_custom_placement_config ?data_locations () : bucket_storage_layout_custom_placement_config = { data_locations }

let make_bucket_storage_layout_hierarchical_namespace ?enabled () : bucket_storage_layout_hierarchical_namespace = { enabled }

let make_bucket_storage_layout ?bucket ?custom_placement_config ?hierarchical_namespace ?kind ?location ?location_type () : bucket_storage_layout = { bucket; custom_placement_config; hierarchical_namespace; kind; location; location_type }

let make_buckets ?items ?kind ?next_page_token ?unreachable () : buckets = { items; kind; next_page_token; unreachable }

let make_bulk_restore_objects_request ?allow_overwrite ?copy_source_acl ?created_after_time ?created_before_time ?match_globs ?soft_deleted_after_time ?soft_deleted_before_time () : bulk_restore_objects_request = { allow_overwrite; copy_source_acl; created_after_time; created_before_time; match_globs; soft_deleted_after_time; soft_deleted_before_time }

let make_compose_request_source_objects_item_object_preconditions ?if_generation_match () : compose_request_source_objects_item_object_preconditions = { if_generation_match }

let make_compose_request_source_objects_item ?generation ?name ?object_preconditions () : compose_request_source_objects_item = { generation; name; object_preconditions }

let make_compose_request ?delete_source_objects ?destination ?kind ?source_objects () : compose_request = { delete_source_objects; destination; kind; source_objects }

let make_expr ?description ?expression ?location ?title () : expr = { description; expression; location; title }

let make_folder_pending_rename_info ?operation_id () : folder_pending_rename_info = { operation_id }

let make_folder ?bucket ?create_time ?id ?kind ?metageneration ?name ?pending_rename_info ?self_link ?update_time () : folder = { bucket; create_time; id; kind; metageneration; name; pending_rename_info; self_link; update_time }

let make_folders ?items ?kind ?next_page_token () : folders = { items; kind; next_page_token }

let make_google_longrunning_list_operations_response ?kind ?next_page_token ?operations () : google_longrunning_list_operations_response = { kind; next_page_token; operations }

let make_google_longrunning_operation ?done_ ?error ?kind ?metadata ?name ?response ?self_link () : google_longrunning_operation = { done_; error; kind; metadata; name; response; self_link }

let make_google_rpc_status ?code ?details ?message () : google_rpc_status = { code; details; message }

let make_hmac_key ?kind ?metadata ?secret () : hmac_key = { kind; metadata; secret }

let make_hmac_key_metadata ?access_id ?etag ?id ?kind ?project_id ?self_link ?service_account_email ?state ?time_created ?updated () : hmac_key_metadata = { access_id; etag; id; kind; project_id; self_link; service_account_email; state; time_created; updated }

let make_hmac_keys_metadata ?items ?kind ?next_page_token () : hmac_keys_metadata = { items; kind; next_page_token }

let make_managed_folder ?bucket ?create_time ?id ?kind ?metageneration ?name ?rapid_cache_config ?self_link ?update_time () : managed_folder = { bucket; create_time; id; kind; metageneration; name; rapid_cache_config; self_link; update_time }

let make_managed_folders ?items ?kind ?next_page_token () : managed_folders = { items; kind; next_page_token }

let make_notification ?custom_attributes ?etag ?event_types ?id ?kind ?object_name_prefix ?payload_format ?self_link ?topic () : notification = { custom_attributes; etag; event_types; id; kind; object_name_prefix; payload_format; self_link; topic }

let make_notifications ?items ?kind () : notifications = { items; kind }

let make_object__contexts ?custom () : object__contexts = { custom }

let make_object__customer_encryption ?encryption_algorithm ?key_sha256 () : object__customer_encryption = { encryption_algorithm; key_sha256 }

let make_object__owner ?entity ?entity_id () : object__owner = { entity; entity_id }

let make_object__retention ?mode ?retain_until_time () : object__retention = { mode; retain_until_time }

let make_object_ ?acl ?bucket ?cache_control ?component_count ?content_disposition ?content_encoding ?content_language ?content_type ?contexts ?crc32c ?custom_time ?customer_encryption ?etag ?event_based_hold ?generation ?hard_delete_time ?id ?kind ?kms_key_name ?md5_hash ?media_link ?metadata ?metageneration ?name ?owner ?restore_token ?retention ?retention_expiration_time ?self_link ?size ?soft_delete_time ?storage_class ?temporary_hold ?time_created ?time_deleted ?time_finalized ?time_storage_class_updated ?updated () : object_ = { acl; bucket; cache_control; component_count; content_disposition; content_encoding; content_language; content_type; contexts; crc32c; custom_time; customer_encryption; etag; event_based_hold; generation; hard_delete_time; id; kind; kms_key_name; md5_hash; media_link; metadata; metageneration; name; owner; restore_token; retention; retention_expiration_time; self_link; size; soft_delete_time; storage_class; temporary_hold; time_created; time_deleted; time_finalized; time_storage_class_updated; updated }

let make_object_access_control_project_team ?project_number ?team () : object_access_control_project_team = { project_number; team }

let make_object_access_control ?bucket ?domain ?email ?entity ?entity_id ?etag ?generation ?id ?kind ?object_ ?project_team ?role ?self_link () : object_access_control = { bucket; domain; email; entity; entity_id; etag; generation; id; kind; object_; project_team; role; self_link }

let make_object_access_controls ?items ?kind () : object_access_controls = { items; kind }

let make_object_custom_context_payload ?create_time ?extended_data_type_url ?update_time ?value () : object_custom_context_payload = { create_time; extended_data_type_url; update_time; value }

let make_object_full_context ?create_time ?extended_data ?key ?kind ?type_ ?update_time ?value () : object_full_context = { create_time; extended_data; key; kind; type_; update_time; value }

let make_objects ?items ?kind ?next_page_token ?prefixes () : objects = { items; kind; next_page_token; prefixes }

let make_policy_bindings_item ?condition ?members ?role () : policy_bindings_item = { condition; members; role }

let make_policy ?bindings ?etag ?kind ?resource_id ?version () : policy = { bindings; etag; kind; resource_id; version }

let make_rapid_cache ?admission_policy ?bucket ?cache_type ?create_time ?id ?ingest_on_write ?kind ?pending_update ?rapid_cache_id ?self_link ?state ?ttl ?update_time ?zone () : rapid_cache = { admission_policy; bucket; cache_type; create_time; id; ingest_on_write; kind; pending_update; rapid_cache_id; self_link; state; ttl; update_time; zone }

let make_rapid_cache_config ?policies () : rapid_cache_config = { policies }

let make_rapid_cache_policy ?ingest_on_write ?rapid_cache_id () : rapid_cache_policy = { ingest_on_write; rapid_cache_id }

let make_rapid_caches ?items ?kind ?next_page_token () : rapid_caches = { items; kind; next_page_token }

let make_relocate_bucket_request_destination_custom_placement_config ?data_locations () : relocate_bucket_request_destination_custom_placement_config = { data_locations }

let make_relocate_bucket_request ?destination_custom_placement_config ?destination_kms_key_name ?destination_location ?validate_only () : relocate_bucket_request = { destination_custom_placement_config; destination_kms_key_name; destination_location; validate_only }

let make_rewrite_response ?done_ ?kind ?object_size ?resource ?rewrite_token ?total_bytes_rewritten () : rewrite_response = { done_; kind; object_size; resource; rewrite_token; total_bytes_rewritten }

let make_service_account ?email_address ?kind () : service_account = { email_address; kind }

let make_test_iam_permissions_response ?kind ?permissions () : test_iam_permissions_response = { kind; permissions }

let base_url = "https://storage.googleapis.com/storage/v1/"
let batch_endpoint = Uri.of_string "https://storage.googleapis.com/batch/storage/v1"
let batch ~access_token calls = Google_api.Batch.execute ~access_token ~endpoint:batch_endpoint calls

module Anywhere_caches = struct
  let disable ~bucket ~anywhere_cache_id () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/anywhereCaches/" ^ Uri.pct_encode ~component:`Path anywhere_cache_id ^ "/disable"))
      (Google_api_runtime.Call.json anywhere_cache_of_yojson)

  let get ~bucket ~anywhere_cache_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/anywhereCaches/" ^ Uri.pct_encode ~component:`Path anywhere_cache_id))
      (Google_api_runtime.Call.json anywhere_cache_of_yojson)

  let insert ~bucket ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/anywhereCaches"))
      ~body:(yojson_of_anywhere_cache body)
      (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

  let list ~bucket ?page_size ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/anywhereCaches"))
           (List.concat
              [
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json anywhere_caches_of_yojson)

  let pause ~bucket ~anywhere_cache_id () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/anywhereCaches/" ^ Uri.pct_encode ~component:`Path anywhere_cache_id ^ "/pause"))
      (Google_api_runtime.Call.json anywhere_cache_of_yojson)

  let resume ~bucket ~anywhere_cache_id () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/anywhereCaches/" ^ Uri.pct_encode ~component:`Path anywhere_cache_id ^ "/resume"))
      (Google_api_runtime.Call.json anywhere_cache_of_yojson)

  let update ~bucket ~anywhere_cache_id ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/anywhereCaches/" ^ Uri.pct_encode ~component:`Path anywhere_cache_id))
      ~body:(yojson_of_anywhere_cache body)
      (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)
end

module Bucket_access_controls = struct
  let delete ~bucket ~entity ?user_project () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/acl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      Google_api_runtime.Call.empty

  let get ~bucket ~entity ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/acl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json bucket_access_control_of_yojson)

  let insert ~bucket ~body ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/acl"))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_bucket_access_control body)
      (Google_api_runtime.Call.json bucket_access_control_of_yojson)

  let list ~bucket ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/acl"))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json bucket_access_controls_of_yojson)

  let patch ~bucket ~entity ~body ?user_project () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/acl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_bucket_access_control body)
      (Google_api_runtime.Call.json bucket_access_control_of_yojson)

  let update ~bucket ~entity ~body ?user_project () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/acl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_bucket_access_control body)
      (Google_api_runtime.Call.json bucket_access_control_of_yojson)
end

module Buckets = struct
  let delete ~bucket ?if_metageneration_match ?if_metageneration_not_match ?user_project () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket))
           (List.concat
              [
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      Google_api_runtime.Call.empty

  let get ~bucket ?generation ?if_metageneration_match ?if_metageneration_not_match ?projection ?soft_deleted ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "softDeleted" string_of_bool soft_deleted;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json bucket_of_yojson)

  let get_iam_policy ~bucket ?options_requested_policy_version ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/iam"))
           (List.concat
              [
                Google_api_runtime.Query.optional "optionsRequestedPolicyVersion" string_of_int options_requested_policy_version;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json policy_of_yojson)

  let get_storage_layout ~bucket ?prefix () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/storageLayout"))
           (List.concat
              [
                Google_api_runtime.Query.optional "prefix" Fun.id prefix;
              ]))
      (Google_api_runtime.Call.json bucket_storage_layout_of_yojson)

  let insert ~project ~body ?enable_object_retention ?predefined_acl ?predefined_default_object_acl ?projection ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b"))
           (List.concat
              [
                Google_api_runtime.Query.required "project" Fun.id project;
                Google_api_runtime.Query.optional "enableObjectRetention" string_of_bool enable_object_retention;
                Google_api_runtime.Query.optional "predefinedAcl" (function `Authenticated_read -> "authenticatedRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Public_read_write -> "publicReadWrite" | `Unrecognized value -> value) predefined_acl;
                Google_api_runtime.Query.optional "predefinedDefaultObjectAcl" (function `Authenticated_read -> "authenticatedRead" | `Bucket_owner_full_control -> "bucketOwnerFullControl" | `Bucket_owner_read -> "bucketOwnerRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Unrecognized value -> value) predefined_default_object_acl;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_bucket body)
      (Google_api_runtime.Call.json bucket_of_yojson)

  let list ~project ?max_results ?page_token ?prefix ?projection ?return_partial_success ?soft_deleted ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b"))
           (List.concat
              [
                Google_api_runtime.Query.required "project" Fun.id project;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "prefix" Fun.id prefix;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "returnPartialSuccess" string_of_bool return_partial_success;
                Google_api_runtime.Query.optional "softDeleted" string_of_bool soft_deleted;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json buckets_of_yojson)

  let lock_retention_policy ~bucket ~if_metageneration_match ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/lockRetentionPolicy"))
           (List.concat
              [
                Google_api_runtime.Query.required "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json bucket_of_yojson)

  let patch ~bucket ~body ?if_metageneration_match ?if_metageneration_not_match ?predefined_acl ?predefined_default_object_acl ?projection ?user_project () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket))
           (List.concat
              [
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "predefinedAcl" (function `Authenticated_read -> "authenticatedRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Public_read_write -> "publicReadWrite" | `Unrecognized value -> value) predefined_acl;
                Google_api_runtime.Query.optional "predefinedDefaultObjectAcl" (function `Authenticated_read -> "authenticatedRead" | `Bucket_owner_full_control -> "bucketOwnerFullControl" | `Bucket_owner_read -> "bucketOwnerRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Unrecognized value -> value) predefined_default_object_acl;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_bucket body)
      (Google_api_runtime.Call.json bucket_of_yojson)

  let relocate ~bucket ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/relocate"))
      ~body:(yojson_of_relocate_bucket_request body)
      (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

  let restore ~bucket ~generation ?projection ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/restore"))
           (List.concat
              [
                Google_api_runtime.Query.required "generation" Fun.id generation;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json bucket_of_yojson)

  let set_iam_policy ~bucket ~body ?user_project () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/iam"))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_policy body)
      (Google_api_runtime.Call.json policy_of_yojson)

  let test_iam_permissions ~bucket ~permissions ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/iam/testPermissions"))
           (List.concat
              [
                Google_api_runtime.Query.repeated "permissions" Fun.id (Some permissions);
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json test_iam_permissions_response_of_yojson)

  let update ~bucket ~body ?if_metageneration_match ?if_metageneration_not_match ?predefined_acl ?predefined_default_object_acl ?projection ?user_project () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket))
           (List.concat
              [
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "predefinedAcl" (function `Authenticated_read -> "authenticatedRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Public_read_write -> "publicReadWrite" | `Unrecognized value -> value) predefined_acl;
                Google_api_runtime.Query.optional "predefinedDefaultObjectAcl" (function `Authenticated_read -> "authenticatedRead" | `Bucket_owner_full_control -> "bucketOwnerFullControl" | `Bucket_owner_read -> "bucketOwnerRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Unrecognized value -> value) predefined_default_object_acl;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_bucket body)
      (Google_api_runtime.Call.json bucket_of_yojson)
end

module Default_object_access_controls = struct
  let delete ~bucket ~entity ?user_project () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/defaultObjectAcl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      Google_api_runtime.Call.empty

  let get ~bucket ~entity ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/defaultObjectAcl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json object_access_control_of_yojson)

  let insert ~bucket ~body ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/defaultObjectAcl"))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_object_access_control body)
      (Google_api_runtime.Call.json object_access_control_of_yojson)

  let list ~bucket ?if_metageneration_match ?if_metageneration_not_match ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/defaultObjectAcl"))
           (List.concat
              [
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json object_access_controls_of_yojson)

  let patch ~bucket ~entity ~body ?user_project () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/defaultObjectAcl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_object_access_control body)
      (Google_api_runtime.Call.json object_access_control_of_yojson)

  let update ~bucket ~entity ~body ?user_project () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/defaultObjectAcl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_object_access_control body)
      (Google_api_runtime.Call.json object_access_control_of_yojson)
end

module Folders = struct
  let delete ~bucket ~folder ?if_metageneration_match ?if_metageneration_not_match () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/folders/" ^ Uri.pct_encode ~component:`Path folder))
           (List.concat
              [
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
              ]))
      Google_api_runtime.Call.empty

  let delete_recursive ~bucket ~folder ?if_metageneration_match ?if_metageneration_not_match () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/folders/" ^ Uri.pct_encode ~component:`Path folder ^ "/deleteRecursive"))
           (List.concat
              [
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
              ]))
      (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

  let get ~bucket ~folder ?if_metageneration_match ?if_metageneration_not_match () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/folders/" ^ Uri.pct_encode ~component:`Path folder))
           (List.concat
              [
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
              ]))
      (Google_api_runtime.Call.json folder_of_yojson)

  let insert ~bucket ~body ?recursive () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/folders"))
           (List.concat
              [
                Google_api_runtime.Query.optional "recursive" string_of_bool recursive;
              ]))
      ~body:(yojson_of_folder body)
      (Google_api_runtime.Call.json folder_of_yojson)

  let list ~bucket ?delimiter ?end_offset ?page_size ?page_token ?prefix ?start_offset () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/folders"))
           (List.concat
              [
                Google_api_runtime.Query.optional "delimiter" Fun.id delimiter;
                Google_api_runtime.Query.optional "endOffset" Fun.id end_offset;
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "prefix" Fun.id prefix;
                Google_api_runtime.Query.optional "startOffset" Fun.id start_offset;
              ]))
      (Google_api_runtime.Call.json folders_of_yojson)

  let rename ~bucket ~source_folder ~destination_folder ?if_source_metageneration_match ?if_source_metageneration_not_match () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/folders/" ^ Uri.pct_encode ~component:`Path source_folder ^ "/renameTo/folders/" ^ Uri.pct_encode ~component:`Path destination_folder))
           (List.concat
              [
                Google_api_runtime.Query.optional "ifSourceMetagenerationMatch" Fun.id if_source_metageneration_match;
                Google_api_runtime.Query.optional "ifSourceMetagenerationNotMatch" Fun.id if_source_metageneration_not_match;
              ]))
      (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)
end

module Managed_folders = struct
  let delete ~bucket ~managed_folder ?allow_non_empty ?if_metageneration_match ?if_metageneration_not_match () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/managedFolders/" ^ Uri.pct_encode ~component:`Path managed_folder))
           (List.concat
              [
                Google_api_runtime.Query.optional "allowNonEmpty" string_of_bool allow_non_empty;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
              ]))
      Google_api_runtime.Call.empty

  let get ~bucket ~managed_folder ?if_metageneration_match ?if_metageneration_not_match () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/managedFolders/" ^ Uri.pct_encode ~component:`Path managed_folder))
           (List.concat
              [
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
              ]))
      (Google_api_runtime.Call.json managed_folder_of_yojson)

  let get_iam_policy ~bucket ~managed_folder ?options_requested_policy_version ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/managedFolders/" ^ Uri.pct_encode ~component:`Path managed_folder ^ "/iam"))
           (List.concat
              [
                Google_api_runtime.Query.optional "optionsRequestedPolicyVersion" string_of_int options_requested_policy_version;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json policy_of_yojson)

  let insert ~bucket ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/managedFolders"))
      ~body:(yojson_of_managed_folder body)
      (Google_api_runtime.Call.json managed_folder_of_yojson)

  let list ~bucket ?page_size ?page_token ?prefix () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/managedFolders"))
           (List.concat
              [
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "prefix" Fun.id prefix;
              ]))
      (Google_api_runtime.Call.json managed_folders_of_yojson)

  let set_iam_policy ~bucket ~managed_folder ~body ?user_project () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/managedFolders/" ^ Uri.pct_encode ~component:`Path managed_folder ^ "/iam"))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_policy body)
      (Google_api_runtime.Call.json policy_of_yojson)

  let test_iam_permissions ~bucket ~managed_folder ~permissions ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/managedFolders/" ^ Uri.pct_encode ~component:`Path managed_folder ^ "/iam/testPermissions"))
           (List.concat
              [
                Google_api_runtime.Query.repeated "permissions" Fun.id (Some permissions);
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json test_iam_permissions_response_of_yojson)

  let update ~bucket ~managed_folder ~body ?if_metageneration_match ?if_metageneration_not_match () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/managedFolders/" ^ Uri.pct_encode ~component:`Path managed_folder))
           (List.concat
              [
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
              ]))
      ~body:(yojson_of_managed_folder body)
      (Google_api_runtime.Call.json managed_folder_of_yojson)
end

module Notifications = struct
  let delete ~bucket ~notification ?user_project () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/notificationConfigs/" ^ Uri.pct_encode ~component:`Path notification))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      Google_api_runtime.Call.empty

  let get ~bucket ~notification ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/notificationConfigs/" ^ Uri.pct_encode ~component:`Path notification))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json notification_of_yojson)

  let insert ~bucket ~body ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/notificationConfigs"))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_notification body)
      (Google_api_runtime.Call.json notification_of_yojson)

  let list ~bucket ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/notificationConfigs"))
           (List.concat
              [
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json notifications_of_yojson)
end

module Object_access_controls = struct
  let delete ~bucket ~object_ ~entity ?generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_ ^ "/acl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      Google_api_runtime.Call.empty

  let get ~bucket ~object_ ~entity ?generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_ ^ "/acl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json object_access_control_of_yojson)

  let insert ~bucket ~object_ ~body ?generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_ ^ "/acl"))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_object_access_control body)
      (Google_api_runtime.Call.json object_access_control_of_yojson)

  let list ~bucket ~object_ ?generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_ ^ "/acl"))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json object_access_controls_of_yojson)

  let patch ~bucket ~object_ ~entity ~body ?generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_ ^ "/acl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_object_access_control body)
      (Google_api_runtime.Call.json object_access_control_of_yojson)

  let update ~bucket ~object_ ~entity ~body ?generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_ ^ "/acl/" ^ Uri.pct_encode ~component:`Path entity))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_object_access_control body)
      (Google_api_runtime.Call.json object_access_control_of_yojson)
end

module Objects = struct
  let bulk_restore ~bucket ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/bulkRestore"))
      ~body:(yojson_of_bulk_restore_objects_request body)
      (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

  let compose ~destination_bucket ~destination_object ~body ?destination_predefined_acl ?drop_context_groups ?if_generation_match ?if_metageneration_match ?kms_key_name ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path destination_bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path destination_object ^ "/compose"))
           (List.concat
              [
                Google_api_runtime.Query.optional "destinationPredefinedAcl" (function `Authenticated_read -> "authenticatedRead" | `Bucket_owner_full_control -> "bucketOwnerFullControl" | `Bucket_owner_read -> "bucketOwnerRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Unrecognized value -> value) destination_predefined_acl;
                Google_api_runtime.Query.repeated "dropContextGroups" Fun.id drop_context_groups;
                Google_api_runtime.Query.optional "ifGenerationMatch" Fun.id if_generation_match;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "kmsKeyName" Fun.id kms_key_name;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_compose_request body)
      (Google_api_runtime.Call.json object__of_yojson)

  let copy ~source_bucket ~source_object ~destination_bucket ~destination_object ~body ?destination_kms_key_name ?destination_predefined_acl ?if_generation_match ?if_generation_not_match ?if_metageneration_match ?if_metageneration_not_match ?if_source_generation_match ?if_source_generation_not_match ?if_source_metageneration_match ?if_source_metageneration_not_match ?projection ?source_generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path source_bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path source_object ^ "/copyTo/b/" ^ Uri.pct_encode ~component:`Path destination_bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path destination_object))
           (List.concat
              [
                Google_api_runtime.Query.optional "destinationKmsKeyName" Fun.id destination_kms_key_name;
                Google_api_runtime.Query.optional "destinationPredefinedAcl" (function `Authenticated_read -> "authenticatedRead" | `Bucket_owner_full_control -> "bucketOwnerFullControl" | `Bucket_owner_read -> "bucketOwnerRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Unrecognized value -> value) destination_predefined_acl;
                Google_api_runtime.Query.optional "ifGenerationMatch" Fun.id if_generation_match;
                Google_api_runtime.Query.optional "ifGenerationNotMatch" Fun.id if_generation_not_match;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "ifSourceGenerationMatch" Fun.id if_source_generation_match;
                Google_api_runtime.Query.optional "ifSourceGenerationNotMatch" Fun.id if_source_generation_not_match;
                Google_api_runtime.Query.optional "ifSourceMetagenerationMatch" Fun.id if_source_metageneration_match;
                Google_api_runtime.Query.optional "ifSourceMetagenerationNotMatch" Fun.id if_source_metageneration_not_match;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "sourceGeneration" Fun.id source_generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_object_ body)
      (Google_api_runtime.Call.json object__of_yojson)

  let delete ~bucket ~object_ ?generation ?if_generation_match ?if_generation_not_match ?if_metageneration_match ?if_metageneration_not_match ?user_project () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "ifGenerationMatch" Fun.id if_generation_match;
                Google_api_runtime.Query.optional "ifGenerationNotMatch" Fun.id if_generation_not_match;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      Google_api_runtime.Call.empty

  let get ~bucket ~object_ ?generation ?if_generation_match ?if_generation_not_match ?if_metageneration_match ?if_metageneration_not_match ?projection ?restore_token ?soft_deleted ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "ifGenerationMatch" Fun.id if_generation_match;
                Google_api_runtime.Query.optional "ifGenerationNotMatch" Fun.id if_generation_not_match;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "restoreToken" Fun.id restore_token;
                Google_api_runtime.Query.optional "softDeleted" string_of_bool soft_deleted;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json object__of_yojson)

  let get_media ~bucket ~object_ ?generation ?if_generation_match ?if_generation_not_match ?if_metageneration_match ?if_metageneration_not_match ?projection ?restore_token ?soft_deleted ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "ifGenerationMatch" Fun.id if_generation_match;
                Google_api_runtime.Query.optional "ifGenerationNotMatch" Fun.id if_generation_not_match;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "restoreToken" Fun.id restore_token;
                Google_api_runtime.Query.optional "softDeleted" string_of_bool soft_deleted;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
                [ "alt", [ "media" ] ];
              ]))
      Fun.id

  let get_iam_policy ~bucket ~object_ ?generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_ ^ "/iam"))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json policy_of_yojson)

  let insert ~bucket ~body ?content_encoding ?if_generation_match ?if_generation_not_match ?if_metageneration_match ?if_metageneration_not_match ?kms_key_name ?name ?predefined_acl ?projection ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o"))
           (List.concat
              [
                Google_api_runtime.Query.optional "contentEncoding" Fun.id content_encoding;
                Google_api_runtime.Query.optional "ifGenerationMatch" Fun.id if_generation_match;
                Google_api_runtime.Query.optional "ifGenerationNotMatch" Fun.id if_generation_not_match;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "kmsKeyName" Fun.id kms_key_name;
                Google_api_runtime.Query.optional "name" Fun.id name;
                Google_api_runtime.Query.optional "predefinedAcl" (function `Authenticated_read -> "authenticatedRead" | `Bucket_owner_full_control -> "bucketOwnerFullControl" | `Bucket_owner_read -> "bucketOwnerRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Unrecognized value -> value) predefined_acl;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_object_ body)
      (Google_api_runtime.Call.json object__of_yojson)

  let list ~bucket ?delimiter ?end_offset ?filter ?include_folders_as_prefixes ?include_trailing_delimiter ?match_glob ?max_results ?page_token ?prefix ?projection ?soft_deleted ?start_offset ?user_project ?versions () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o"))
           (List.concat
              [
                Google_api_runtime.Query.optional "delimiter" Fun.id delimiter;
                Google_api_runtime.Query.optional "endOffset" Fun.id end_offset;
                Google_api_runtime.Query.optional "filter" Fun.id filter;
                Google_api_runtime.Query.optional "includeFoldersAsPrefixes" string_of_bool include_folders_as_prefixes;
                Google_api_runtime.Query.optional "includeTrailingDelimiter" string_of_bool include_trailing_delimiter;
                Google_api_runtime.Query.optional "matchGlob" Fun.id match_glob;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "prefix" Fun.id prefix;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "softDeleted" string_of_bool soft_deleted;
                Google_api_runtime.Query.optional "startOffset" Fun.id start_offset;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
                Google_api_runtime.Query.optional "versions" string_of_bool versions;
              ]))
      (Google_api_runtime.Call.json objects_of_yojson)

  let move ~bucket ~source_object ~destination_object ?if_generation_match ?if_generation_not_match ?if_metageneration_match ?if_metageneration_not_match ?if_source_generation_match ?if_source_generation_not_match ?if_source_metageneration_match ?if_source_metageneration_not_match ?projection ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path source_object ^ "/moveTo/o/" ^ Uri.pct_encode ~component:`Path destination_object))
           (List.concat
              [
                Google_api_runtime.Query.optional "ifGenerationMatch" Fun.id if_generation_match;
                Google_api_runtime.Query.optional "ifGenerationNotMatch" Fun.id if_generation_not_match;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "ifSourceGenerationMatch" Fun.id if_source_generation_match;
                Google_api_runtime.Query.optional "ifSourceGenerationNotMatch" Fun.id if_source_generation_not_match;
                Google_api_runtime.Query.optional "ifSourceMetagenerationMatch" Fun.id if_source_metageneration_match;
                Google_api_runtime.Query.optional "ifSourceMetagenerationNotMatch" Fun.id if_source_metageneration_not_match;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json object__of_yojson)

  let patch ~bucket ~object_ ~body ?generation ?if_generation_match ?if_generation_not_match ?if_metageneration_match ?if_metageneration_not_match ?override_unlocked_retention ?predefined_acl ?projection ?user_project () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "ifGenerationMatch" Fun.id if_generation_match;
                Google_api_runtime.Query.optional "ifGenerationNotMatch" Fun.id if_generation_not_match;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "overrideUnlockedRetention" string_of_bool override_unlocked_retention;
                Google_api_runtime.Query.optional "predefinedAcl" (function `Authenticated_read -> "authenticatedRead" | `Bucket_owner_full_control -> "bucketOwnerFullControl" | `Bucket_owner_read -> "bucketOwnerRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Unrecognized value -> value) predefined_acl;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_object_ body)
      (Google_api_runtime.Call.json object__of_yojson)

  let restore ~bucket ~object_ ~generation ?copy_source_acl ?if_generation_match ?if_generation_not_match ?if_metageneration_match ?if_metageneration_not_match ?projection ?restore_token ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_ ^ "/restore"))
           (List.concat
              [
                Google_api_runtime.Query.required "generation" Fun.id generation;
                Google_api_runtime.Query.optional "copySourceAcl" string_of_bool copy_source_acl;
                Google_api_runtime.Query.optional "ifGenerationMatch" Fun.id if_generation_match;
                Google_api_runtime.Query.optional "ifGenerationNotMatch" Fun.id if_generation_not_match;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "restoreToken" Fun.id restore_token;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json object__of_yojson)

  let rewrite ~source_bucket ~source_object ~destination_bucket ~destination_object ~body ?destination_kms_key_name ?destination_predefined_acl ?drop_context_groups ?if_generation_match ?if_generation_not_match ?if_metageneration_match ?if_metageneration_not_match ?if_source_generation_match ?if_source_generation_not_match ?if_source_metageneration_match ?if_source_metageneration_not_match ?max_bytes_rewritten_per_call ?projection ?rewrite_token ?source_generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path source_bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path source_object ^ "/rewriteTo/b/" ^ Uri.pct_encode ~component:`Path destination_bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path destination_object))
           (List.concat
              [
                Google_api_runtime.Query.optional "destinationKmsKeyName" Fun.id destination_kms_key_name;
                Google_api_runtime.Query.optional "destinationPredefinedAcl" (function `Authenticated_read -> "authenticatedRead" | `Bucket_owner_full_control -> "bucketOwnerFullControl" | `Bucket_owner_read -> "bucketOwnerRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Unrecognized value -> value) destination_predefined_acl;
                Google_api_runtime.Query.repeated "dropContextGroups" Fun.id drop_context_groups;
                Google_api_runtime.Query.optional "ifGenerationMatch" Fun.id if_generation_match;
                Google_api_runtime.Query.optional "ifGenerationNotMatch" Fun.id if_generation_not_match;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "ifSourceGenerationMatch" Fun.id if_source_generation_match;
                Google_api_runtime.Query.optional "ifSourceGenerationNotMatch" Fun.id if_source_generation_not_match;
                Google_api_runtime.Query.optional "ifSourceMetagenerationMatch" Fun.id if_source_metageneration_match;
                Google_api_runtime.Query.optional "ifSourceMetagenerationNotMatch" Fun.id if_source_metageneration_not_match;
                Google_api_runtime.Query.optional "maxBytesRewrittenPerCall" Fun.id max_bytes_rewritten_per_call;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "rewriteToken" Fun.id rewrite_token;
                Google_api_runtime.Query.optional "sourceGeneration" Fun.id source_generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_object_ body)
      (Google_api_runtime.Call.json rewrite_response_of_yojson)

  let set_iam_policy ~bucket ~object_ ~body ?generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_ ^ "/iam"))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_policy body)
      (Google_api_runtime.Call.json policy_of_yojson)

  let test_iam_permissions ~bucket ~object_ ~permissions ?generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_ ^ "/iam/testPermissions"))
           (List.concat
              [
                Google_api_runtime.Query.repeated "permissions" Fun.id (Some permissions);
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json test_iam_permissions_response_of_yojson)

  let update ~bucket ~object_ ~body ?generation ?if_generation_match ?if_generation_not_match ?if_metageneration_match ?if_metageneration_not_match ?override_unlocked_retention ?predefined_acl ?projection ?user_project () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_))
           (List.concat
              [
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "ifGenerationMatch" Fun.id if_generation_match;
                Google_api_runtime.Query.optional "ifGenerationNotMatch" Fun.id if_generation_not_match;
                Google_api_runtime.Query.optional "ifMetagenerationMatch" Fun.id if_metageneration_match;
                Google_api_runtime.Query.optional "ifMetagenerationNotMatch" Fun.id if_metageneration_not_match;
                Google_api_runtime.Query.optional "overrideUnlockedRetention" string_of_bool override_unlocked_retention;
                Google_api_runtime.Query.optional "predefinedAcl" (function `Authenticated_read -> "authenticatedRead" | `Bucket_owner_full_control -> "bucketOwnerFullControl" | `Bucket_owner_read -> "bucketOwnerRead" | `Private -> "private" | `Project_private -> "projectPrivate" | `Public_read -> "publicRead" | `Unrecognized value -> value) predefined_acl;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `No_acl -> "noAcl" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      ~body:(yojson_of_object_ body)
      (Google_api_runtime.Call.json object__of_yojson)

  let view_full_context ~bucket ~object_ ~context_key ?generation ?user_project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/o/" ^ Uri.pct_encode ~component:`Path object_ ^ "/viewFullContext"))
           (List.concat
              [
                Google_api_runtime.Query.required "contextKey" Fun.id context_key;
                Google_api_runtime.Query.optional "generation" Fun.id generation;
                Google_api_runtime.Query.optional "userProject" Fun.id user_project;
              ]))
      (Google_api_runtime.Call.json object_full_context_of_yojson)
end

module Operations = struct
  let advance_relocate_bucket ~bucket ~operation_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/operations/" ^ Uri.pct_encode ~component:`Path operation_id ^ "/advanceRelocateBucket"))
      ~body:(yojson_of_advance_relocate_bucket_operation_request body)
      Google_api_runtime.Call.empty

  let cancel ~bucket ~operation_id () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/operations/" ^ Uri.pct_encode ~component:`Path operation_id ^ "/cancel"))
      Google_api_runtime.Call.empty

  let get ~bucket ~operation_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/operations/" ^ Uri.pct_encode ~component:`Path operation_id))
      (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

  let list ~bucket ?filter ?page_size ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/operations"))
           (List.concat
              [
                Google_api_runtime.Query.optional "filter" Fun.id filter;
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json google_longrunning_list_operations_response_of_yojson)
end

module Projects = struct
  module Hmac_keys = struct
    let create ~project_id ~service_account_email ?user_project () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:`Path project_id ^ "/hmacKeys"))
             (List.concat
                [
                  Google_api_runtime.Query.required "serviceAccountEmail" Fun.id service_account_email;
                  Google_api_runtime.Query.optional "userProject" Fun.id user_project;
                ]))
        (Google_api_runtime.Call.json hmac_key_of_yojson)

    let delete ~project_id ~access_id ?user_project () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:`Path project_id ^ "/hmacKeys/" ^ Uri.pct_encode ~component:`Path access_id))
             (List.concat
                [
                  Google_api_runtime.Query.optional "userProject" Fun.id user_project;
                ]))
        Google_api_runtime.Call.empty

    let get ~project_id ~access_id ?user_project () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:`Path project_id ^ "/hmacKeys/" ^ Uri.pct_encode ~component:`Path access_id))
             (List.concat
                [
                  Google_api_runtime.Query.optional "userProject" Fun.id user_project;
                ]))
        (Google_api_runtime.Call.json hmac_key_metadata_of_yojson)

    let list ~project_id ?max_results ?page_token ?service_account_email ?show_deleted_keys ?user_project () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:`Path project_id ^ "/hmacKeys"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  Google_api_runtime.Query.optional "serviceAccountEmail" Fun.id service_account_email;
                  Google_api_runtime.Query.optional "showDeletedKeys" string_of_bool show_deleted_keys;
                  Google_api_runtime.Query.optional "userProject" Fun.id user_project;
                ]))
        (Google_api_runtime.Call.json hmac_keys_metadata_of_yojson)

    let update ~project_id ~access_id ~body ?user_project () =
      Google_api_runtime.Call.make ~meth:`PUT
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:`Path project_id ^ "/hmacKeys/" ^ Uri.pct_encode ~component:`Path access_id))
             (List.concat
                [
                  Google_api_runtime.Query.optional "userProject" Fun.id user_project;
                ]))
        ~body:(yojson_of_hmac_key_metadata body)
        (Google_api_runtime.Call.json hmac_key_metadata_of_yojson)
  end

  module Service_account = struct
    let get ~project_id ?user_project () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:`Path project_id ^ "/serviceAccount"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "userProject" Fun.id user_project;
                ]))
        (Google_api_runtime.Call.json service_account_of_yojson)
  end
end

module Rapid_caches = struct
  let disable ~bucket ~rapid_cache_id () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/rapidCaches/" ^ Uri.pct_encode ~component:`Path rapid_cache_id ^ "/disable"))
      (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

  let get ~bucket ~rapid_cache_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/rapidCaches/" ^ Uri.pct_encode ~component:`Path rapid_cache_id))
      (Google_api_runtime.Call.json rapid_cache_of_yojson)

  let insert ~bucket ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/rapidCaches"))
      ~body:(yojson_of_rapid_cache body)
      (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

  let list ~bucket ?page_size ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/rapidCaches"))
           (List.concat
              [
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json rapid_caches_of_yojson)

  let update ~bucket ~rapid_cache_id ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "b/" ^ Uri.pct_encode ~component:`Path bucket ^ "/rapidCaches/" ^ Uri.pct_encode ~component:`Path rapid_cache_id))
      ~body:(yojson_of_rapid_cache body)
      (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)
end
