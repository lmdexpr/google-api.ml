(* Generated from the Discovery document of storage v1 (revision 20261013). Do not edit. *)

(** Cloud Storage JSON API (storage v1, revision 20261013).

    Stores and retrieves potentially large, immutable data objects.

    {{:https://developers.google.com/storage/docs/json_api/}Documentation} *)

(** An AdvanceRelocateBucketOperation request. *)
type advance_relocate_bucket_operation_request = {
  expire_time : string option;  (** Specifies the time when the relocation will revert to the sync stage if the relocation hasn't succeeded. *)
  ttl : string option;  (** Specifies the duration after which the relocation will revert to the sync stage if the relocation hasn't succeeded. Optional, if not supplied, a default value of 12h will be used. *)
}

(** An Anywhere Cache instance. *)
and anywhere_cache = {
  admission_policy : string option;  (** The cache-level entry admission policy. *)
  anywhere_cache_id : string option;  (** The ID of the Anywhere cache instance. *)
  bucket : string option;  (** The name of the bucket containing this cache instance. *)
  create_time : string option;  (** The creation time of the cache instance in RFC 3339 format. *)
  id : string option;  (** The ID of the resource, including the project number, bucket name and anywhere cache ID. *)
  ingest_on_write : bool option;  (** Specifies whether objects are ingested into the cache upon write. *)
  kind : string option;  (** The kind of item this is. For Anywhere Cache, this is always storage#anywhereCache. *)
  pending_update : bool option;  (** True if the cache instance has an active Update long-running operation. *)
  self_link : string option;  (** The link to this cache instance. *)
  state : string option;  (** The current state of the cache instance. *)
  ttl : string option;  (** The TTL of all cache entries in whole seconds. e.g., '7200s'. *)
  update_time : string option;  (** The modification time of the cache instance metadata in RFC 3339 format. *)
  zone : string option;  (** The zone in which the cache instance is running. For example, us-central1-a. *)
}

(** A list of Anywhere Caches. *)
and anywhere_caches = {
  items : anywhere_cache list option;  (** The list of items. *)
  kind : string option;  (** The kind of item this is. For lists of Anywhere Caches, this is always storage#anywhereCaches. *)
  next_page_token : string option;  (** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. *)
}

and bucket_autoclass = {
  enabled : bool option;  (** Whether or not Autoclass is enabled on this bucket *)
  terminal_storage_class : string option;  (** The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Valid values are NEARLINE and ARCHIVE. *)
  terminal_storage_class_update_time : string option;  (** A date and time in RFC 3339 format representing the time of the most recent update to 'terminalStorageClass'. *)
  toggle_time : string option;  (** A date and time in RFC 3339 format representing the instant at which 'enabled' was last toggled. *)
}

and bucket_billing = {
  requester_pays : bool option;  (** When set to true, Requester Pays is enabled for this bucket. *)
}

and bucket_cors_item = {
  max_age_seconds : int option;  (** The value, in seconds, to return in the  Access-Control-Max-Age header used in preflight responses. *)
  method_ : string list option;  (** The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: '*' is permitted in the list of methods, and means 'any method'. *)
  origin : string list option;  (** The list of Origins eligible to receive CORS response headers. Note: '*' is permitted in the list of origins, and means 'any Origin'. *)
  response_header : string list option;  (** The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains. *)
}

and bucket_custom_placement_config = {
  data_locations : string list option;  (** The list of regional locations in which data is placed. *)
}

and bucket_encryption_customer_managed_encryption_enforcement_config = {
  effective_time : string option;  (** Server-determined value that indicates the time from which configuration was enforced and effective. This value is in RFC 3339 format. *)
  restriction_mode : [ `Not_restricted | `Fully_restricted | `Unrecognized of string ] option;  (** Restriction mode for Customer-Managed Encryption Keys. Defaults to NotRestricted. *)
}

and bucket_encryption_customer_supplied_encryption_enforcement_config = {
  effective_time : string option;  (** Server-determined value that indicates the time from which configuration was enforced and effective. This value is in RFC 3339 format. *)
  restriction_mode : [ `Not_restricted | `Fully_restricted | `Unrecognized of string ] option;  (** Restriction mode for Customer-Supplied Encryption Keys. Defaults to NotRestricted. *)
}

and bucket_encryption_google_managed_encryption_enforcement_config = {
  effective_time : string option;  (** Server-determined value that indicates the time from which configuration was enforced and effective. This value is in RFC 3339 format. *)
  restriction_mode : [ `Not_restricted | `Fully_restricted | `Unrecognized of string ] option;  (** Restriction mode for Google-Managed Encryption Keys. Defaults to NotRestricted. *)
}

and bucket_encryption = {
  customer_managed_encryption_enforcement_config : bucket_encryption_customer_managed_encryption_enforcement_config option;  (** If set, the new objects created in this bucket must comply with this enforcement config. Changing this has no effect on existing objects; it applies to new objects only. If omitted, the new objects are allowed to be encrypted with Customer Managed Encryption type by default. *)
  customer_supplied_encryption_enforcement_config : bucket_encryption_customer_supplied_encryption_enforcement_config option;  (** If set, the new objects created in this bucket must comply with this enforcement config. Changing this has no effect on existing objects; it applies to new objects only. If omitted, the new objects are allowed to be encrypted with Customer Supplied Encryption type by default. *)
  default_kms_key_name : string option;  (** A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified. *)
  google_managed_encryption_enforcement_config : bucket_encryption_google_managed_encryption_enforcement_config option;  (** If set, the new objects created in this bucket must comply with this enforcement config. Changing this has no effect on existing objects; it applies to new objects only. If omitted, the new objects are allowed to be encrypted with Google Managed Encryption type by default. *)
}

and bucket_hierarchical_namespace = {
  enabled : bool option;  (** When set to true, hierarchical namespace is enabled for this bucket. *)
}

and bucket_iam_configuration_bucket_policy_only = {
  enabled : bool option;  (** If set, access is controlled only by bucket-level or above IAM policies. *)
  locked_time : string option;  (** The deadline for changing iamConfiguration.bucketPolicyOnly.enabled from true to false in RFC 3339 format. iamConfiguration.bucketPolicyOnly.enabled may be changed from true to false until the locked time, after which the field is immutable. *)
}

and bucket_iam_configuration_uniform_bucket_level_access = {
  enabled : bool option;  (** If set, access is controlled only by bucket-level or above IAM policies. *)
  locked_time : string option;  (** The deadline for changing iamConfiguration.uniformBucketLevelAccess.enabled from true to false in RFC 3339  format. iamConfiguration.uniformBucketLevelAccess.enabled may be changed from true to false until the locked time, after which the field is immutable. *)
}

and bucket_iam_configuration = {
  bucket_policy_only : bucket_iam_configuration_bucket_policy_only option;  (** The bucket's uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature. *)
  public_access_prevention : string option;  (** The bucket's Public Access Prevention configuration. Currently, 'inherited' and 'enforced' are supported. *)
  uniform_bucket_level_access : bucket_iam_configuration_uniform_bucket_level_access option;  (** The bucket's uniform bucket-level access configuration. *)
}

and bucket_ip_filter_public_network_source = {
  allowed_ip_cidr_ranges : string list option;  (** The list of public IPv4, IPv6 cidr ranges that are allowed to access the bucket. *)
}

and bucket_ip_filter_vpc_network_sources_item = {
  allowed_ip_cidr_ranges : string list option;  (** The list of IPv4, IPv6 cidr ranges subnetworks that are allowed to access the bucket. *)
  network : string option;  (** Name of the network. Format: projects/\{PROJECT_ID\}/global/networks/\{NETWORK_NAME\} *)
}

and bucket_ip_filter = {
  allow_all_service_agent_access : bool option;  (** Whether to allow all service agents to access the bucket regardless of the IP filter configuration. *)
  allow_cross_org_vpcs : bool option;  (** Whether to allow cross-org VPCs in the bucket's IP filter configuration. *)
  mode : string option;  (** The mode of the IP filter. Valid values are 'Enabled' and 'Disabled'. *)
  public_network_source : bucket_ip_filter_public_network_source option;  (** The public network source of the bucket's IP filter. *)
  vpc_network_sources : bucket_ip_filter_vpc_network_sources_item list option;  (** The list of \[VPC network\](https://cloud.google.com/vpc/docs/vpc) sources of the bucket's IP filter. *)
}

and bucket_lifecycle_rule_item_action = {
  storage_class : string option;  (** Target storage class. Required iff the type of the action is SetStorageClass. *)
  type_ : string option;  (** Type of the action. Currently, only Delete, SetStorageClass, and AbortIncompleteMultipartUpload are supported. *)
}

and bucket_lifecycle_rule_item_condition = {
  age : int option;  (** Age of an object (in days). This condition is satisfied when an object reaches the specified age. *)
  created_before : string option;  (** A date in RFC 3339 format with only the date part (for instance, '2013-01-15'). This condition is satisfied when an object is created before midnight of the specified date in UTC. *)
  custom_time_before : string option;  (** A date in RFC 3339 format with only the date part (for instance, '2013-01-15'). This condition is satisfied when the custom time on an object is before this date in UTC. *)
  days_since_custom_time : int option;  (** Number of days elapsed since the user-specified timestamp set on an object. The condition is satisfied if the days elapsed is at least this number. If no custom timestamp is specified on an object, the condition does not apply. *)
  days_since_noncurrent_time : int option;  (** Number of days elapsed since the noncurrent timestamp of an object. The condition is satisfied if the days elapsed is at least this number. This condition is relevant only for versioned objects. The value of the field must be a nonnegative integer. If it's zero, the object version will become eligible for Lifecycle action as soon as it becomes noncurrent. *)
  is_live : bool option;  (** Relevant only for versioned objects. If the value is true, this condition matches live objects; if the value is false, it matches archived objects. *)
  matches_pattern : string option;  (** A regular expression that satisfies the RE2 syntax. This condition is satisfied when the name of the object matches the RE2 pattern. Note: This feature is currently in the 'Early Access' launch stage and is only available to a whitelisted set of users; that means that this feature may be changed in backward-incompatible ways and that it is not guaranteed to be released. *)
  matches_prefix : string list option;  (** List of object name prefixes. This condition will be satisfied when at least one of the prefixes exactly matches the beginning of the object name. *)
  matches_storage_class : string list option;  (** Objects having any of the storage classes specified by this condition will be matched. Values include MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, and DURABLE_REDUCED_AVAILABILITY. *)
  matches_suffix : string list option;  (** List of object name suffixes. This condition will be satisfied when at least one of the suffixes exactly matches the end of the object name. *)
  noncurrent_time_before : string option;  (** A date in RFC 3339 format with only the date part (for instance, '2013-01-15'). This condition is satisfied when the noncurrent time on an object is before this date in UTC. This condition is relevant only for versioned objects. *)
  num_newer_versions : int option;  (** Relevant only for versioned objects. If the value is N, this condition is satisfied when there are at least N versions (including the live version) newer than this version of the object. *)
  size_above_bytes : string option;  (** Objects having a size greater than this value in bytes will be matched. *)
  size_below_bytes : string option;  (** Objects having a size less than this value in bytes will be matched. *)
}

and bucket_lifecycle_rule_item = {
  action : bucket_lifecycle_rule_item_action option;  (** The action to take. *)
  condition : bucket_lifecycle_rule_item_condition option;  (** The condition(s) under which the action will be taken. *)
}

and bucket_lifecycle = {
  rule : bucket_lifecycle_rule_item list option;  (** A lifecycle management rule, which is made of an action to take and the condition(s) under which the action will be taken. *)
}

and bucket_logging = {
  log_bucket : string option;  (** The destination bucket where the current bucket's logs should be placed. *)
  log_object_prefix : string option;  (** A prefix for log object names. *)
}

and bucket_object_retention = {
  mode : string option;  (** The bucket's object retention mode. Can be Enabled. *)
}

and bucket_owner = {
  entity : string option;  (** The entity, in the form project-owner-projectId. *)
  entity_id : string option;  (** The ID for the entity. *)
}

and bucket_retention_policy = {
  effective_time : string option;  (** Server-determined value that indicates the time from which policy was enforced and effective. This value is in RFC 3339 format. *)
  is_locked : bool option;  (** Once locked, an object retention policy cannot be modified. *)
  retention_period : string option;  (** The duration in seconds that objects need to be retained. Retention duration must be greater than zero and less than 100 years. Note that enforcement of retention periods less than a day is not guaranteed. Such periods should only be used for testing purposes. *)
}

and bucket_soft_delete_policy_hard_delete_pause = {
  effective_time : string option;  (** Server-determined value that indicates the time from which the hard delete pause became effective. This value is in RFC 3339 format. *)
  enabled : bool option;  (** Whether hard deletions are paused. *)
}

and bucket_soft_delete_policy = {
  effective_time : string option;  (** Server-determined value that indicates the time from which the policy, or one with a greater retention, was effective. This value is in RFC 3339 format. *)
  hard_delete_pause : bucket_soft_delete_policy_hard_delete_pause option;  (** The bucket's hard delete pause configuration. If set, soft-deleted objects in the bucket will not be permanently deleted until the hard delete pause is disabled. *)
  retention_duration_seconds : string option;  (** The duration in seconds that soft-deleted objects in the bucket will be retained and cannot be permanently deleted. *)
}

and bucket_versioning = {
  enabled : bool option;  (** While set to true, versioning is fully enabled for this bucket. *)
}

and bucket_website = {
  main_page_suffix : string option;  (** If the requested object path is missing, the service will ensure the path has a trailing '/', append this suffix, and attempt to retrieve the resulting object. This allows the creation of index.html objects to represent directory pages. *)
  not_found_page : string option;  (** If the requested object path is missing, and any mainPageSuffix object is missing, if applicable, the service will return the named object from this bucket as the content for a 404 Not Found result. *)
}

(** A bucket. *)
and bucket = {
  acl : bucket_access_control list option;  (** Access controls on the bucket. *)
  autoclass : bucket_autoclass option;  (** The bucket's Autoclass configuration. *)
  billing : bucket_billing option;  (** The bucket's billing configuration. *)
  cors : bucket_cors_item list option;  (** The bucket's Cross-Origin Resource Sharing (CORS) configuration. *)
  custom_placement_config : bucket_custom_placement_config option;  (** The bucket's custom placement configuration for Custom Dual Regions. *)
  default_event_based_hold : bool option;  (** The default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold's release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed. *)
  default_object_acl : object_access_control list option;  (** Default access controls to apply to new objects when no ACL is provided. *)
  encryption : bucket_encryption option;  (** Encryption configuration for a bucket. *)
  etag : string option;  (** HTTP 1.1 Entity tag for the bucket. *)
  generation : string option;  (** The generation of this bucket. *)
  hard_delete_time : string option;  (** The hard delete time of the bucket in RFC 3339 format. *)
  hierarchical_namespace : bucket_hierarchical_namespace option;  (** The bucket's hierarchical namespace configuration. *)
  iam_configuration : bucket_iam_configuration option;  (** The bucket's IAM configuration. *)
  id : string option;  (** The ID of the bucket. For buckets, the id and name properties are the same. *)
  ip_filter : bucket_ip_filter option;  (** The bucket's IP filter configuration. Specifies the network sources that are allowed to access the operations on the bucket, as well as its underlying objects. Only enforced when the mode is set to 'Enabled'. *)
  kind : string option;  (** The kind of item this is. For buckets, this is always storage#bucket. *)
  labels : (string * string) list option;  (** User-provided labels, in key/value pairs. *)
  lifecycle : bucket_lifecycle option;  (** The bucket's lifecycle configuration. See \[Lifecycle Management\](https://cloud.google.com/storage/docs/lifecycle) for more information. *)
  location : string option;  (** The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the \[Developer's Guide\](https://cloud.google.com/storage/docs/locations) for the authoritative list. *)
  location_type : string option;  (** The type of the bucket location. *)
  logging : bucket_logging option;  (** The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs. *)
  metageneration : string option;  (** The metadata generation of this bucket. *)
  name : string option;  (** The name of the bucket. *)
  object_retention : bucket_object_retention option;  (** The bucket's object retention config. *)
  owner : bucket_owner option;  (** The owner of the bucket. This is always the project team's owner group. *)
  project_number : string option;  (** The project number of the project the bucket belongs to. *)
  retention_policy : bucket_retention_policy option;  (** The bucket's retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION_DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION_DENIED error. *)
  rpo : string option;  (** The Recovery Point Objective (RPO) of this bucket. Set to ASYNC_TURBO to turn on Turbo Replication on a bucket. *)
  satisfies_pzi : bool option;  (** Reserved for future use. *)
  satisfies_pzs : bool option;  (** Reserved for future use. *)
  self_link : string option;  (** The URI of this bucket. *)
  soft_delete_policy : bucket_soft_delete_policy option;  (** The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted. *)
  soft_delete_time : string option;  (** The soft delete time of the bucket in RFC 3339 format. *)
  storage_class : string option;  (** The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, ARCHIVE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see \[Storage Classes\](https://cloud.google.com/storage/docs/storage-classes). *)
  time_created : string option;  (** The creation time of the bucket in RFC 3339 format. *)
  updated : string option;  (** The modification time of the bucket in RFC 3339 format. *)
  versioning : bucket_versioning option;  (** The bucket's versioning configuration. *)
  website : bucket_website option;  (** The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the \[Static Website Examples\](https://cloud.google.com/storage/docs/static-website) for more information. *)
}

and bucket_access_control_project_team = {
  project_number : string option;  (** The project number. *)
  team : string option;  (** The team. *)
}

(** An access-control entry. *)
and bucket_access_control = {
  bucket : string option;  (** The name of the bucket. *)
  domain : string option;  (** The domain associated with the entity, if any. *)
  email : string option;  (** The email address associated with the entity, if any. *)
  entity : string option;  (** The entity holding the permission, in one of the following forms:
    - user-userId
    - user-email
    - group-groupId
    - group-email
    - domain-domain
    - project-team-projectId
    - allUsers
    - allAuthenticatedUsers Examples:
    - The user liz\@example.com would be user-liz\@example.com.
    - The group example\@googlegroups.com would be group-example\@googlegroups.com.
    - To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com. *)
  entity_id : string option;  (** The ID for the entity, if any. *)
  etag : string option;  (** HTTP 1.1 Entity tag for the access-control entry. *)
  id : string option;  (** The ID of the access-control entry. *)
  kind : string option;  (** The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl. *)
  project_team : bucket_access_control_project_team option;  (** The project team associated with the entity, if any. *)
  role : string option;  (** The access permission for the entity. *)
  self_link : string option;  (** The link to this access-control entry. *)
}

(** An access-control list. *)
and bucket_access_controls = {
  items : bucket_access_control list option;  (** The list of items. *)
  kind : string option;  (** The kind of item this is. For lists of bucket access control entries, this is always storage#bucketAccessControls. *)
}

and bucket_storage_layout_custom_placement_config = {
  data_locations : string list option;  (** The list of regional locations in which data is placed. *)
}

and bucket_storage_layout_hierarchical_namespace = {
  enabled : bool option;  (** When set to true, hierarchical namespace is enabled for this bucket. *)
}

(** The storage layout configuration of a bucket. *)
and bucket_storage_layout = {
  bucket : string option;  (** The name of the bucket. *)
  custom_placement_config : bucket_storage_layout_custom_placement_config option;  (** The bucket's custom placement configuration for Custom Dual Regions. *)
  hierarchical_namespace : bucket_storage_layout_hierarchical_namespace option;  (** The bucket's hierarchical namespace configuration. *)
  kind : string option;  (** The kind of item this is. For storage layout, this is always storage#storageLayout. *)
  location : string option;  (** The location of the bucket. *)
  location_type : string option;  (** The type of the bucket location. *)
}

(** A list of buckets. *)
and buckets = {
  items : bucket list option;  (** The list of items. *)
  kind : string option;  (** The kind of item this is. For lists of buckets, this is always storage#buckets. *)
  next_page_token : string option;  (** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. *)
  unreachable : string list option;  (** The list of bucket resource names that could not be reached during the listing operation. *)
}

(** A bulk restore objects request. *)
and bulk_restore_objects_request = {
  allow_overwrite : bool option;  (** If false (default), the restore will not overwrite live objects with the same name at the destination. This means some deleted objects may be skipped. If true, live objects will be overwritten resulting in a noncurrent object (if versioning is enabled). If versioning is not enabled, overwriting the object will result in a soft-deleted object. In either case, if a noncurrent object already exists with the same name, a live version can be written without issue. *)
  copy_source_acl : bool option;  (** If true, copies the source object's ACL; otherwise, uses the bucket's default object ACL. The default is false. *)
  created_after_time : string option;  (** Restores only the objects that were created after this time. *)
  created_before_time : string option;  (** Restores only the objects that were created before this time. *)
  match_globs : string list option;  (** Restores only the objects matching any of the specified glob(s). If this parameter is not specified, all objects will be restored within the specified time range. *)
  soft_deleted_after_time : string option;  (** Restores only the objects that were soft-deleted after this time. *)
  soft_deleted_before_time : string option;  (** Restores only the objects that were soft-deleted before this time. *)
}

and compose_request_source_objects_item_object_preconditions = {
  if_generation_match : string option;  (** Only perform the composition if the generation of the source object that would be used matches this value. If this value and a generation are both specified, they must be the same value or the call will fail. *)
}

and compose_request_source_objects_item = {
  generation : string option;  (** The generation of this object to use as the source. *)
  name : string option;  (** The source object's name. All source objects must reside in the same bucket. *)
  object_preconditions : compose_request_source_objects_item_object_preconditions option;  (** Conditions that must be met for this operation to execute. *)
}

(** A Compose request. *)
and compose_request = {
  delete_source_objects : bool option;  (** If true, the source objects will be deleted. *)
  destination : object_ option;  (** Properties of the resulting object. *)
  kind : string option;  (** The kind of item this is. *)
  source_objects : compose_request_source_objects_item list option;  (** The list of source objects that will be concatenated into a single object. *)
}

(** Represents an expression text. Example: title: 'User account presence' description: 'Determines whether the request has a user account' expression: 'size(request.user) > 0' *)
and expr = {
  description : string option;  (** An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. *)
  expression : string option;  (** Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported. *)
  location : string option;  (** An optional string indicating the location of the expression for error reporting, e.g. a file name and a position in the file. *)
  title : string option;  (** An optional title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. *)
}

and folder_pending_rename_info = {
  operation_id : string option;  (** The ID of the rename folder operation. *)
}

(** A folder. Only available in buckets with hierarchical namespace enabled. *)
and folder = {
  bucket : string option;  (** The name of the bucket containing this folder. *)
  create_time : string option;  (** The creation time of the folder in RFC 3339 format. *)
  id : string option;  (** The ID of the folder, including the bucket name, folder name. *)
  kind : string option;  (** The kind of item this is. For folders, this is always storage#folder. *)
  metageneration : string option;  (** The version of the metadata for this folder. Used for preconditions and for detecting changes in metadata. *)
  name : string option;  (** The name of the folder. Required if not specified by URL parameter. *)
  pending_rename_info : folder_pending_rename_info option;  (** Only present if the folder is part of an ongoing rename folder operation. Contains information which can be used to query the operation status. *)
  self_link : string option;  (** The link to this folder. *)
  update_time : string option;  (** The modification time of the folder metadata in RFC 3339 format. *)
}

(** A list of folders. *)
and folders = {
  items : folder list option;  (** The list of items. *)
  kind : string option;  (** The kind of item this is. For lists of folders, this is always storage#folders. *)
  next_page_token : string option;  (** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. *)
}

(** The response message for storage.buckets.operations.list. *)
and google_longrunning_list_operations_response = {
  kind : string option;  (** The kind of item this is. For lists of operations, this is always storage#operations. *)
  next_page_token : string option;  (** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. *)
  operations : google_longrunning_operation list option;  (** A list of operations that matches the specified filter in the request. *)
}

(** This resource represents a long-running operation that is the result of a network API call. *)
and google_longrunning_operation = {
  done_ : bool option;  (** If the value is 'false', it means the operation is still in progress. If 'true', the operation is completed, and either 'error' or 'response' is available. *)
  error : google_rpc_status option;  (** The error result of the operation in case of failure or cancellation. *)
  kind : string option;  (** The kind of item this is. For operations, this is always storage#operation. *)
  metadata : (string * Yojson.Safe.t) list option;  (** Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any. *)
  name : string option;  (** The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the 'name' should be a resource name ending with 'operations/\{operationId\}'. *)
  response : (string * Yojson.Safe.t) list option;  (** The normal response of the operation in case of success. If the original method returns no data on success, such as 'Delete', the response is google.protobuf.Empty. If the original method is standard Get/Create/Update, the response should be the resource. For other methods, the response should have the type 'XxxResponse', where 'Xxx' is the original method name. For example, if the original method name is 'TakeSnapshot()', the inferred response type is 'TakeSnapshotResponse'. *)
  self_link : string option;  (** The link to this long running operation. *)
}

(** The 'Status' type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by \[gRPC\](https://github.com/grpc). Each 'Status' message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the \[API Design Guide\](https://cloud.google.com/apis/design/errors). *)
and google_rpc_status = {
  code : int option;  (** The status code, which should be an enum value of google.rpc.Code. *)
  details : (string * Yojson.Safe.t) list list option;  (** A list of messages that carry the error details. There is a common set of message types for APIs to use. *)
  message : string option;  (** A developer-facing error message, which should be in English. *)
}

(** JSON template to produce a JSON-style HMAC Key resource for Create responses. *)
and hmac_key = {
  kind : string option;  (** The kind of item this is. For HMAC keys, this is always storage#hmacKey. *)
  metadata : hmac_key_metadata option;  (** Key metadata. *)
  secret : string option;  (** HMAC secret key material. *)
}

(** JSON template to produce a JSON-style HMAC Key metadata resource. *)
and hmac_key_metadata = {
  access_id : string option;  (** The ID of the HMAC Key. *)
  etag : string option;  (** HTTP 1.1 Entity tag for the HMAC key. *)
  id : string option;  (** The ID of the HMAC key, including the Project ID and the Access ID. *)
  kind : string option;  (** The kind of item this is. For HMAC Key metadata, this is always storage#hmacKeyMetadata. *)
  project_id : string option;  (** Project ID owning the service account to which the key authenticates. *)
  self_link : string option;  (** The link to this resource. *)
  service_account_email : string option;  (** The email address of the key's associated service account. *)
  state : string option;  (** The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED. *)
  time_created : string option;  (** The creation time of the HMAC key in RFC 3339 format. *)
  updated : string option;  (** The last modification time of the HMAC key metadata in RFC 3339 format. *)
}

(** A list of hmacKeys. *)
and hmac_keys_metadata = {
  items : hmac_key_metadata list option;  (** The list of items. *)
  kind : string option;  (** The kind of item this is. For lists of hmacKeys, this is always storage#hmacKeysMetadata. *)
  next_page_token : string option;  (** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. *)
}

(** A managed folder. *)
and managed_folder = {
  bucket : string option;  (** The name of the bucket containing this managed folder. *)
  create_time : string option;  (** The creation time of the managed folder in RFC 3339 format. *)
  id : string option;  (** The ID of the managed folder, including the bucket name and managed folder name. *)
  kind : string option;  (** The kind of item this is. For managed folders, this is always storage#managedFolder. *)
  metageneration : string option;  (** The version of the metadata for this managed folder. Used for preconditions and for detecting changes in metadata. *)
  name : string option;  (** The name of the managed folder. Required if not specified by URL parameter. *)
  rapid_cache_config : rapid_cache_config option;  (** The rapid cache configuration for the managed folder. *)
  self_link : string option;  (** The link to this managed folder. *)
  update_time : string option;  (** The last update time of the managed folder metadata in RFC 3339 format. *)
}

(** A list of managed folders. *)
and managed_folders = {
  items : managed_folder list option;  (** The list of items. *)
  kind : string option;  (** The kind of item this is. For lists of managed folders, this is always storage#managedFolders. *)
  next_page_token : string option;  (** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. *)
}

(** A subscription to receive Google PubSub notifications. *)
and notification = {
  custom_attributes : (string * string) list option;  (** An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription. *)
  etag : string option;  (** HTTP 1.1 Entity tag for this subscription notification. *)
  event_types : string list option;  (** If present, only send notifications about listed event types. If empty, sent notifications for all event types. *)
  id : string option;  (** The ID of the notification. *)
  kind : string option;  (** The kind of item this is. For notifications, this is always storage#notification. *)
  object_name_prefix : string option;  (** If present, only apply this notification configuration to object names that begin with this prefix. *)
  payload_format : string option;  (** The desired content of the Payload. *)
  self_link : string option;  (** The canonical URL of this notification. *)
  topic : string option;  (** The Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.com/projects/\{project-identifier\}/topics/\{my-topic\}' *)
}

(** A list of notification subscriptions. *)
and notifications = {
  items : notification list option;  (** The list of items. *)
  kind : string option;  (** The kind of item this is. For lists of notifications, this is always storage#notifications. *)
}

and object__contexts = {
  custom : (string * object_custom_context_payload) list option;  (** User-defined object contexts. *)
}

and object__customer_encryption = {
  encryption_algorithm : string option;  (** The encryption algorithm. *)
  key_sha256 : string option;  (** SHA256 hash value of the encryption key. *)
}

and object__owner = {
  entity : string option;  (** The entity, in the form user-userId. *)
  entity_id : string option;  (** The ID for the entity. *)
}

and object__retention = {
  mode : string option;  (** The bucket's object retention mode, can only be Unlocked or Locked. *)
  retain_until_time : string option;  (** A time in RFC 3339 format until which object retention protects this object. *)
}

(** An object. *)
and object_ = {
  acl : object_access_control list option;  (** Access controls on the object. *)
  bucket : string option;  (** The name of the bucket containing this object. *)
  cache_control : string option;  (** Cache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600. *)
  component_count : int option;  (** Number of underlying components that make up this object. Components are accumulated by compose operations. *)
  content_disposition : string option;  (** Content-Disposition of the object data. *)
  content_encoding : string option;  (** Content-Encoding of the object data. *)
  content_language : string option;  (** Content-Language of the object data. *)
  content_type : string option;  (** Content-Type of the object data. If an object is stored without a Content-Type, it is served as application/octet-stream. *)
  contexts : object__contexts option;  (** User-defined or system-defined object contexts. Each object context is a key-payload pair, where the key provides the identification and the payload holds the associated value and additional metadata. *)
  crc32c : string option;  (** CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see \[Data Validation and Change Detection\](https://cloud.google.com/storage/docs/data-validation). *)
  custom_time : string option;  (** A timestamp in RFC 3339 format specified by the user for an object. *)
  customer_encryption : object__customer_encryption option;  (** Metadata of customer-supplied encryption key, if the object is encrypted by such a key. *)
  etag : string option;  (** HTTP 1.1 Entity tag for the object. *)
  event_based_hold : bool option;  (** Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. *)
  generation : string option;  (** The content generation of this object. Used for object versioning. *)
  hard_delete_time : string option;  (** This is the time (in the future) when the soft-deleted object will no longer be restorable. It is equal to the soft delete time plus the current soft delete retention duration of the bucket. *)
  id : string option;  (** The ID of the object, including the bucket name, object name, and generation number. *)
  kind : string option;  (** The kind of item this is. For objects, this is always storage#object. *)
  kms_key_name : string option;  (** Not currently supported. Specifying the parameter causes the request to fail with status code 400 - Bad Request. *)
  md5_hash : string option;  (** MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see \[Data Validation and Change Detection\](https://cloud.google.com/storage/docs/data-validation). *)
  media_link : string option;  (** Media download link. *)
  metadata : (string * string) list option;  (** User-provided metadata, in key/value pairs. *)
  metageneration : string option;  (** The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object. *)
  name : string option;  (** The name of the object. Required if not specified by URL parameter. *)
  owner : object__owner option;  (** The owner of the object. This will always be the uploader of the object. *)
  restore_token : string option;  (** Restore token used to differentiate deleted objects with the same name and generation. This field is only returned for deleted objects in hierarchical namespace buckets. *)
  retention : object__retention option;  (** A collection of object level retention parameters. *)
  retention_expiration_time : string option;  (** A server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold). *)
  self_link : string option;  (** The link to this object. *)
  size : string option;  (** Content-Length of the data in bytes. *)
  soft_delete_time : string option;  (** The time at which the object became soft-deleted in RFC 3339 format. *)
  storage_class : string option;  (** Storage class of the object. *)
  temporary_hold : bool option;  (** Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object. *)
  time_created : string option;  (** The creation time of the object in RFC 3339 format. *)
  time_deleted : string option;  (** The time at which the object became noncurrent in RFC 3339 format. Will be returned if and only if this version of the object has been deleted. *)
  time_finalized : string option;  (** The time when the object was finalized. *)
  time_storage_class_updated : string option;  (** The time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated. *)
  updated : string option;  (** The modification time of the object metadata in RFC 3339 format. Set initially to object creation time and then updated whenever any metadata of the object changes. This includes changes made by a requester, such as modifying custom metadata, as well as changes made by Cloud Storage on behalf of a requester, such as changing the storage class based on an Object Lifecycle Configuration. *)
}

and object_access_control_project_team = {
  project_number : string option;  (** The project number. *)
  team : string option;  (** The team. *)
}

(** An access-control entry. *)
and object_access_control = {
  bucket : string option;  (** The name of the bucket. *)
  domain : string option;  (** The domain associated with the entity, if any. *)
  email : string option;  (** The email address associated with the entity, if any. *)
  entity : string option;  (** The entity holding the permission, in one of the following forms:
    - user-userId
    - user-email
    - group-groupId
    - group-email
    - domain-domain
    - project-team-projectId
    - allUsers
    - allAuthenticatedUsers Examples:
    - The user liz\@example.com would be user-liz\@example.com.
    - The group example\@googlegroups.com would be group-example\@googlegroups.com.
    - To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com. *)
  entity_id : string option;  (** The ID for the entity, if any. *)
  etag : string option;  (** HTTP 1.1 Entity tag for the access-control entry. *)
  generation : string option;  (** The content generation of the object, if applied to an object. *)
  id : string option;  (** The ID of the access-control entry. *)
  kind : string option;  (** The kind of item this is. For object access control entries, this is always storage#objectAccessControl. *)
  object_ : string option;  (** The name of the object, if applied to an object. *)
  project_team : object_access_control_project_team option;  (** The project team associated with the entity, if any. *)
  role : string option;  (** The access permission for the entity. *)
  self_link : string option;  (** The link to this access-control entry. *)
}

(** An access-control list. *)
and object_access_controls = {
  items : object_access_control list option;  (** The list of items. *)
  kind : string option;  (** The kind of item this is. For lists of object access control entries, this is always storage#objectAccessControls. *)
}

(** The payload of a single user-defined object context. *)
and object_custom_context_payload = {
  create_time : string option;  (** The time at which the object context was created in RFC 3339 format. *)
  extended_data_type_url : string option;  (** The type URL of the object context's extended data. *)
  update_time : string option;  (** The time at which the object context was last updated in RFC 3339 format. *)
  value : string option;  (** The value of the object context. *)
}

(** A full representation of an object context. *)
and object_full_context = {
  create_time : string option;  (** The time at which the object context was created. This value is in RFC 3339 format. *)
  extended_data : (string * Yojson.Safe.t) list option;  (** The extended data of the object context. *)
  key : string option;  (** The key of the object context. *)
  kind : string option;  (** The kind of item this is. For ObjectFullContext, this is always storage#objectFullContext. *)
  type_ : [ `Custom | `Unrecognized of string ] option;  (** The type of the object context. *)
  update_time : string option;  (** The time at which the object context was last updated. This value is in RFC 3339 format. *)
  value : string option;  (** The value of the object context. *)
}

(** A list of objects. *)
and objects = {
  items : object_ list option;  (** The list of items. *)
  kind : string option;  (** The kind of item this is. For lists of objects, this is always storage#objects. *)
  next_page_token : string option;  (** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. *)
  prefixes : string list option;  (** The list of prefixes of objects matching-but-not-listed up to and including the requested delimiter. *)
}

and policy_bindings_item = {
  condition : expr option;  (** The condition that is associated with this binding. NOTE: an unsatisfied condition will not allow user access via current binding. Different bindings, including their conditions, are examined independently. *)
  members : string list option;  (** A collection of identifiers for members who may assume the provided role. Recognized identifiers are as follows:
    - allUsers - A special identifier that represents anyone on the internet; with or without a Google account.
    - allAuthenticatedUsers - A special identifier that represents anyone who is authenticated with a Google account or a service account.
    - user:emailid - An email address that represents a specific account. For example, user:alice\@gmail.com or user:joe\@example.com.
    - serviceAccount:emailid - An email address that represents a service account. For example,  serviceAccount:my-other-app\@appspot.gserviceaccount.com .
    - group:emailid - An email address that represents a Google group. For example, group:admins\@example.com.
    - domain:domain - A Google Apps domain name that represents all the users of that domain. For example, domain:google.com or domain:example.com.
    - projectOwner:projectid - Owners of the given project. For example, projectOwner:my-example-project
    - projectEditor:projectid - Editors of the given project. For example, projectEditor:my-example-project
    - projectViewer:projectid - Viewers of the given project. For example, projectViewer:my-example-project *)
  role : string option;  (** The role to which members belong. Two types of roles are supported: new IAM roles, which grant permissions that do not map directly to those provided by ACLs, and legacy IAM roles, which do map directly to ACL permissions. All roles are of the format roles/storage.specificRole.
    The new IAM roles are:
    - roles/storage.admin - Full control of Google Cloud Storage resources.
    - roles/storage.objectViewer - Read-Only access to Google Cloud Storage objects.
    - roles/storage.objectCreator - Access to create objects in Google Cloud Storage.
    - roles/storage.objectAdmin - Full control of Google Cloud Storage objects.   The legacy IAM roles are:
    - roles/storage.legacyObjectReader - Read-only access to objects without listing. Equivalent to an ACL entry on an object with the READER role.
    - roles/storage.legacyObjectOwner - Read/write access to existing objects without listing. Equivalent to an ACL entry on an object with the OWNER role.
    - roles/storage.legacyBucketReader - Read access to buckets with object listing. Equivalent to an ACL entry on a bucket with the READER role.
    - roles/storage.legacyBucketWriter - Read access to buckets with object listing/creation/deletion. Equivalent to an ACL entry on a bucket with the WRITER role.
    - roles/storage.legacyBucketOwner - Read and write access to existing buckets with object listing/creation/deletion. Equivalent to an ACL entry on a bucket with the OWNER role. *)
}

(** A bucket/object/managedFolder IAM policy. *)
and policy = {
  bindings : policy_bindings_item list option;  (** An association between a role, which comes with a set of permissions, and members who may assume that role. *)
  etag : string option;  (** HTTP 1.1  Entity tag for the policy. *)
  kind : string option;  (** The kind of item this is. For policies, this is always storage#policy. This field is ignored on input. *)
  resource_id : string option;  (** The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input. *)
  version : int option;  (** The IAM policy format version. *)
}

(** A Rapid Cache instance. *)
and rapid_cache = {
  admission_policy : string option;  (** The cache-level entry admission policy. *)
  bucket : string option;  (** The name of the bucket containing this cache instance. *)
  cache_type : string option;  (** The type of Rapid Cache this represents. Valid values include: 'rapid-cache' and 'rapid-cache-ultra'. *)
  create_time : string option;  (** The creation time of the cache instance in RFC 3339 format. *)
  id : string option;  (** The ID of the resource, including the project number, bucket name and rapid cache ID. *)
  ingest_on_write : bool option;  (** Specifies whether objects are ingested into the cache upon write. *)
  kind : string option;  (** The kind of item this is. For Rapid Cache, this is always storage#rapidCache. *)
  pending_update : bool option;  (** True if the cache instance has an active Update long-running operation. *)
  rapid_cache_id : string option;  (** The ID of the Rapid cache instance. *)
  self_link : string option;  (** The link to this cache instance. *)
  state : string option;  (** The current state of the cache instance. *)
  ttl : string option;  (** The TTL of all cache entries in whole seconds. e.g., '7200s'. *)
  update_time : string option;  (** The modification time of the cache instance metadata in RFC 3339 format. *)
  zone : string option;  (** The zone in which the cache instance is running. For example, us-central1-a. *)
}

(** Configuration options for the rapid cache of a managed folder. *)
and rapid_cache_config = {
  policies : (string * rapid_cache_policy) list option;  (** A map of rapid cache IDs to the corresponding `RapidCachePolicy` configurations for a managed folder. *)
}

(** The rapid cache policy configuration for a managed folder. *)
and rapid_cache_policy = {
  ingest_on_write : [ `Enabled | `Unspecified | `Unrecognized of string ] option;  (** The ingest-on-write policy for objects in the managed folder. When set to `enabled`, objects are automatically ingested into the cache when they are written to the managed folder. *)
  rapid_cache_id : string option;  (** The unique identifier of the rapid cache. *)
}

(** A list of Rapid Caches. *)
and rapid_caches = {
  items : rapid_cache list option;  (** The list of items. *)
  kind : string option;  (** The kind of item this is. For lists of Rapid Caches, this is always storage#rapidCaches. *)
  next_page_token : string option;  (** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. *)
}

and relocate_bucket_request_destination_custom_placement_config = {
  data_locations : string list option;  (** The list of regional locations in which data is placed. *)
}

(** A Relocate Bucket request. *)
and relocate_bucket_request = {
  destination_custom_placement_config : relocate_bucket_request_destination_custom_placement_config option;  (** The bucket's new custom placement configuration if relocating to a Custom Dual Region. *)
  destination_kms_key_name : string option;  (** Resource name of a Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key. If set, is used to encrypt all objects in the destination bucket. *)
  destination_location : string option;  (** The new location the bucket will be relocated to. *)
  validate_only : bool option;  (** If true, validate the operation, but do not actually relocate the bucket. *)
}

(** A rewrite response. *)
and rewrite_response = {
  done_ : bool option;  (** true if the copy is finished; otherwise, false if the copy is in progress. This property is always present in the response. *)
  kind : string option;  (** The kind of item this is. *)
  object_size : string option;  (** The total size of the object being copied in bytes. This property is always present in the response. *)
  resource : object_ option;  (** A resource containing the metadata for the copied-to object. This property is present in the response only when copying completes. *)
  rewrite_token : string option;  (** A token to use in subsequent requests to continue copying data. This token is present in the response only when there is more data to copy. *)
  total_bytes_rewritten : string option;  (** The total bytes written so far, which can be used to provide a waiting user with a progress indicator. This property is always present in the response. *)
}

(** A subscription to receive Google PubSub notifications. *)
and service_account = {
  email_address : string option;  (** The ID of the notification. *)
  kind : string option;  (** The kind of item this is. For notifications, this is always storage#notification. *)
}

(** A storage.(buckets|objects|managedFolders).testIamPermissions response. *)
and test_iam_permissions_response = {
  kind : string option;  (** The kind of item this is. *)
  permissions : string list option;  (** The permissions held by the caller. Permissions are always of the format storage.resource.capability, where resource is one of buckets, objects, or managedFolders. The supported permissions are as follows:
    - storage.buckets.delete - Delete bucket.
    - storage.buckets.get - Read bucket metadata.
    - storage.buckets.getIamPolicy - Read bucket IAM policy.
    - storage.buckets.create - Create bucket.
    - storage.buckets.list - List buckets.
    - storage.buckets.setIamPolicy - Update bucket IAM policy.
    - storage.buckets.update - Update bucket metadata.
    - storage.objects.delete - Delete object.
    - storage.objects.get - Read object data and metadata.
    - storage.objects.getIamPolicy - Read object IAM policy.
    - storage.objects.create - Create object.
    - storage.objects.list - List objects.
    - storage.objects.setIamPolicy - Update object IAM policy.
    - storage.objects.update - Update object metadata.
    - storage.managedFolders.delete - Delete managed folder.
    - storage.managedFolders.get - Read managed folder metadata.
    - storage.managedFolders.getIamPolicy - Read managed folder IAM policy.
    - storage.managedFolders.create - Create managed folder.
    - storage.managedFolders.list - List managed folders.
    - storage.managedFolders.setIamPolicy - Update managed folder IAM policy. *)
}

val advance_relocate_bucket_operation_request_of_yojson : Yojson.Safe.t -> advance_relocate_bucket_operation_request
val yojson_of_advance_relocate_bucket_operation_request : advance_relocate_bucket_operation_request -> Yojson.Safe.t

val make_advance_relocate_bucket_operation_request :
  ?expire_time:string ->
  ?ttl:string ->
  unit ->
  advance_relocate_bucket_operation_request

val anywhere_cache_of_yojson : Yojson.Safe.t -> anywhere_cache
val yojson_of_anywhere_cache : anywhere_cache -> Yojson.Safe.t

val make_anywhere_cache :
  ?admission_policy:string ->
  ?anywhere_cache_id:string ->
  ?bucket:string ->
  ?create_time:string ->
  ?id:string ->
  ?ingest_on_write:bool ->
  ?kind:string ->
  ?pending_update:bool ->
  ?self_link:string ->
  ?state:string ->
  ?ttl:string ->
  ?update_time:string ->
  ?zone:string ->
  unit ->
  anywhere_cache

val anywhere_caches_of_yojson : Yojson.Safe.t -> anywhere_caches
val yojson_of_anywhere_caches : anywhere_caches -> Yojson.Safe.t

val make_anywhere_caches :
  ?items:anywhere_cache list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  anywhere_caches

val bucket_autoclass_of_yojson : Yojson.Safe.t -> bucket_autoclass
val yojson_of_bucket_autoclass : bucket_autoclass -> Yojson.Safe.t

val make_bucket_autoclass :
  ?enabled:bool ->
  ?terminal_storage_class:string ->
  ?terminal_storage_class_update_time:string ->
  ?toggle_time:string ->
  unit ->
  bucket_autoclass

val bucket_billing_of_yojson : Yojson.Safe.t -> bucket_billing
val yojson_of_bucket_billing : bucket_billing -> Yojson.Safe.t

val make_bucket_billing :
  ?requester_pays:bool ->
  unit ->
  bucket_billing

val bucket_cors_item_of_yojson : Yojson.Safe.t -> bucket_cors_item
val yojson_of_bucket_cors_item : bucket_cors_item -> Yojson.Safe.t

val make_bucket_cors_item :
  ?max_age_seconds:int ->
  ?method_:string list ->
  ?origin:string list ->
  ?response_header:string list ->
  unit ->
  bucket_cors_item

val bucket_custom_placement_config_of_yojson : Yojson.Safe.t -> bucket_custom_placement_config
val yojson_of_bucket_custom_placement_config : bucket_custom_placement_config -> Yojson.Safe.t

val make_bucket_custom_placement_config :
  ?data_locations:string list ->
  unit ->
  bucket_custom_placement_config

val bucket_encryption_customer_managed_encryption_enforcement_config_of_yojson : Yojson.Safe.t -> bucket_encryption_customer_managed_encryption_enforcement_config
val yojson_of_bucket_encryption_customer_managed_encryption_enforcement_config : bucket_encryption_customer_managed_encryption_enforcement_config -> Yojson.Safe.t

val make_bucket_encryption_customer_managed_encryption_enforcement_config :
  ?effective_time:string ->
  ?restriction_mode:[ `Not_restricted | `Fully_restricted | `Unrecognized of string ] ->
  unit ->
  bucket_encryption_customer_managed_encryption_enforcement_config

val bucket_encryption_customer_supplied_encryption_enforcement_config_of_yojson : Yojson.Safe.t -> bucket_encryption_customer_supplied_encryption_enforcement_config
val yojson_of_bucket_encryption_customer_supplied_encryption_enforcement_config : bucket_encryption_customer_supplied_encryption_enforcement_config -> Yojson.Safe.t

val make_bucket_encryption_customer_supplied_encryption_enforcement_config :
  ?effective_time:string ->
  ?restriction_mode:[ `Not_restricted | `Fully_restricted | `Unrecognized of string ] ->
  unit ->
  bucket_encryption_customer_supplied_encryption_enforcement_config

val bucket_encryption_google_managed_encryption_enforcement_config_of_yojson : Yojson.Safe.t -> bucket_encryption_google_managed_encryption_enforcement_config
val yojson_of_bucket_encryption_google_managed_encryption_enforcement_config : bucket_encryption_google_managed_encryption_enforcement_config -> Yojson.Safe.t

val make_bucket_encryption_google_managed_encryption_enforcement_config :
  ?effective_time:string ->
  ?restriction_mode:[ `Not_restricted | `Fully_restricted | `Unrecognized of string ] ->
  unit ->
  bucket_encryption_google_managed_encryption_enforcement_config

val bucket_encryption_of_yojson : Yojson.Safe.t -> bucket_encryption
val yojson_of_bucket_encryption : bucket_encryption -> Yojson.Safe.t

val make_bucket_encryption :
  ?customer_managed_encryption_enforcement_config:bucket_encryption_customer_managed_encryption_enforcement_config ->
  ?customer_supplied_encryption_enforcement_config:bucket_encryption_customer_supplied_encryption_enforcement_config ->
  ?default_kms_key_name:string ->
  ?google_managed_encryption_enforcement_config:bucket_encryption_google_managed_encryption_enforcement_config ->
  unit ->
  bucket_encryption

val bucket_hierarchical_namespace_of_yojson : Yojson.Safe.t -> bucket_hierarchical_namespace
val yojson_of_bucket_hierarchical_namespace : bucket_hierarchical_namespace -> Yojson.Safe.t

val make_bucket_hierarchical_namespace :
  ?enabled:bool ->
  unit ->
  bucket_hierarchical_namespace

val bucket_iam_configuration_bucket_policy_only_of_yojson : Yojson.Safe.t -> bucket_iam_configuration_bucket_policy_only
val yojson_of_bucket_iam_configuration_bucket_policy_only : bucket_iam_configuration_bucket_policy_only -> Yojson.Safe.t

val make_bucket_iam_configuration_bucket_policy_only :
  ?enabled:bool ->
  ?locked_time:string ->
  unit ->
  bucket_iam_configuration_bucket_policy_only

val bucket_iam_configuration_uniform_bucket_level_access_of_yojson : Yojson.Safe.t -> bucket_iam_configuration_uniform_bucket_level_access
val yojson_of_bucket_iam_configuration_uniform_bucket_level_access : bucket_iam_configuration_uniform_bucket_level_access -> Yojson.Safe.t

val make_bucket_iam_configuration_uniform_bucket_level_access :
  ?enabled:bool ->
  ?locked_time:string ->
  unit ->
  bucket_iam_configuration_uniform_bucket_level_access

val bucket_iam_configuration_of_yojson : Yojson.Safe.t -> bucket_iam_configuration
val yojson_of_bucket_iam_configuration : bucket_iam_configuration -> Yojson.Safe.t

val make_bucket_iam_configuration :
  ?bucket_policy_only:bucket_iam_configuration_bucket_policy_only ->
  ?public_access_prevention:string ->
  ?uniform_bucket_level_access:bucket_iam_configuration_uniform_bucket_level_access ->
  unit ->
  bucket_iam_configuration

val bucket_ip_filter_public_network_source_of_yojson : Yojson.Safe.t -> bucket_ip_filter_public_network_source
val yojson_of_bucket_ip_filter_public_network_source : bucket_ip_filter_public_network_source -> Yojson.Safe.t

val make_bucket_ip_filter_public_network_source :
  ?allowed_ip_cidr_ranges:string list ->
  unit ->
  bucket_ip_filter_public_network_source

val bucket_ip_filter_vpc_network_sources_item_of_yojson : Yojson.Safe.t -> bucket_ip_filter_vpc_network_sources_item
val yojson_of_bucket_ip_filter_vpc_network_sources_item : bucket_ip_filter_vpc_network_sources_item -> Yojson.Safe.t

val make_bucket_ip_filter_vpc_network_sources_item :
  ?allowed_ip_cidr_ranges:string list ->
  ?network:string ->
  unit ->
  bucket_ip_filter_vpc_network_sources_item

val bucket_ip_filter_of_yojson : Yojson.Safe.t -> bucket_ip_filter
val yojson_of_bucket_ip_filter : bucket_ip_filter -> Yojson.Safe.t

val make_bucket_ip_filter :
  ?allow_all_service_agent_access:bool ->
  ?allow_cross_org_vpcs:bool ->
  ?mode:string ->
  ?public_network_source:bucket_ip_filter_public_network_source ->
  ?vpc_network_sources:bucket_ip_filter_vpc_network_sources_item list ->
  unit ->
  bucket_ip_filter

val bucket_lifecycle_rule_item_action_of_yojson : Yojson.Safe.t -> bucket_lifecycle_rule_item_action
val yojson_of_bucket_lifecycle_rule_item_action : bucket_lifecycle_rule_item_action -> Yojson.Safe.t

val make_bucket_lifecycle_rule_item_action :
  ?storage_class:string ->
  ?type_:string ->
  unit ->
  bucket_lifecycle_rule_item_action

val bucket_lifecycle_rule_item_condition_of_yojson : Yojson.Safe.t -> bucket_lifecycle_rule_item_condition
val yojson_of_bucket_lifecycle_rule_item_condition : bucket_lifecycle_rule_item_condition -> Yojson.Safe.t

val make_bucket_lifecycle_rule_item_condition :
  ?age:int ->
  ?created_before:string ->
  ?custom_time_before:string ->
  ?days_since_custom_time:int ->
  ?days_since_noncurrent_time:int ->
  ?is_live:bool ->
  ?matches_pattern:string ->
  ?matches_prefix:string list ->
  ?matches_storage_class:string list ->
  ?matches_suffix:string list ->
  ?noncurrent_time_before:string ->
  ?num_newer_versions:int ->
  ?size_above_bytes:string ->
  ?size_below_bytes:string ->
  unit ->
  bucket_lifecycle_rule_item_condition

val bucket_lifecycle_rule_item_of_yojson : Yojson.Safe.t -> bucket_lifecycle_rule_item
val yojson_of_bucket_lifecycle_rule_item : bucket_lifecycle_rule_item -> Yojson.Safe.t

val make_bucket_lifecycle_rule_item :
  ?action:bucket_lifecycle_rule_item_action ->
  ?condition:bucket_lifecycle_rule_item_condition ->
  unit ->
  bucket_lifecycle_rule_item

val bucket_lifecycle_of_yojson : Yojson.Safe.t -> bucket_lifecycle
val yojson_of_bucket_lifecycle : bucket_lifecycle -> Yojson.Safe.t

val make_bucket_lifecycle :
  ?rule:bucket_lifecycle_rule_item list ->
  unit ->
  bucket_lifecycle

val bucket_logging_of_yojson : Yojson.Safe.t -> bucket_logging
val yojson_of_bucket_logging : bucket_logging -> Yojson.Safe.t

val make_bucket_logging :
  ?log_bucket:string ->
  ?log_object_prefix:string ->
  unit ->
  bucket_logging

val bucket_object_retention_of_yojson : Yojson.Safe.t -> bucket_object_retention
val yojson_of_bucket_object_retention : bucket_object_retention -> Yojson.Safe.t

val make_bucket_object_retention :
  ?mode:string ->
  unit ->
  bucket_object_retention

val bucket_owner_of_yojson : Yojson.Safe.t -> bucket_owner
val yojson_of_bucket_owner : bucket_owner -> Yojson.Safe.t

val make_bucket_owner :
  ?entity:string ->
  ?entity_id:string ->
  unit ->
  bucket_owner

val bucket_retention_policy_of_yojson : Yojson.Safe.t -> bucket_retention_policy
val yojson_of_bucket_retention_policy : bucket_retention_policy -> Yojson.Safe.t

val make_bucket_retention_policy :
  ?effective_time:string ->
  ?is_locked:bool ->
  ?retention_period:string ->
  unit ->
  bucket_retention_policy

val bucket_soft_delete_policy_hard_delete_pause_of_yojson : Yojson.Safe.t -> bucket_soft_delete_policy_hard_delete_pause
val yojson_of_bucket_soft_delete_policy_hard_delete_pause : bucket_soft_delete_policy_hard_delete_pause -> Yojson.Safe.t

val make_bucket_soft_delete_policy_hard_delete_pause :
  ?effective_time:string ->
  ?enabled:bool ->
  unit ->
  bucket_soft_delete_policy_hard_delete_pause

val bucket_soft_delete_policy_of_yojson : Yojson.Safe.t -> bucket_soft_delete_policy
val yojson_of_bucket_soft_delete_policy : bucket_soft_delete_policy -> Yojson.Safe.t

val make_bucket_soft_delete_policy :
  ?effective_time:string ->
  ?hard_delete_pause:bucket_soft_delete_policy_hard_delete_pause ->
  ?retention_duration_seconds:string ->
  unit ->
  bucket_soft_delete_policy

val bucket_versioning_of_yojson : Yojson.Safe.t -> bucket_versioning
val yojson_of_bucket_versioning : bucket_versioning -> Yojson.Safe.t

val make_bucket_versioning :
  ?enabled:bool ->
  unit ->
  bucket_versioning

val bucket_website_of_yojson : Yojson.Safe.t -> bucket_website
val yojson_of_bucket_website : bucket_website -> Yojson.Safe.t

val make_bucket_website :
  ?main_page_suffix:string ->
  ?not_found_page:string ->
  unit ->
  bucket_website

val bucket_of_yojson : Yojson.Safe.t -> bucket
val yojson_of_bucket : bucket -> Yojson.Safe.t

val make_bucket :
  ?acl:bucket_access_control list ->
  ?autoclass:bucket_autoclass ->
  ?billing:bucket_billing ->
  ?cors:bucket_cors_item list ->
  ?custom_placement_config:bucket_custom_placement_config ->
  ?default_event_based_hold:bool ->
  ?default_object_acl:object_access_control list ->
  ?encryption:bucket_encryption ->
  ?etag:string ->
  ?generation:string ->
  ?hard_delete_time:string ->
  ?hierarchical_namespace:bucket_hierarchical_namespace ->
  ?iam_configuration:bucket_iam_configuration ->
  ?id:string ->
  ?ip_filter:bucket_ip_filter ->
  ?kind:string ->
  ?labels:(string * string) list ->
  ?lifecycle:bucket_lifecycle ->
  ?location:string ->
  ?location_type:string ->
  ?logging:bucket_logging ->
  ?metageneration:string ->
  ?name:string ->
  ?object_retention:bucket_object_retention ->
  ?owner:bucket_owner ->
  ?project_number:string ->
  ?retention_policy:bucket_retention_policy ->
  ?rpo:string ->
  ?satisfies_pzi:bool ->
  ?satisfies_pzs:bool ->
  ?self_link:string ->
  ?soft_delete_policy:bucket_soft_delete_policy ->
  ?soft_delete_time:string ->
  ?storage_class:string ->
  ?time_created:string ->
  ?updated:string ->
  ?versioning:bucket_versioning ->
  ?website:bucket_website ->
  unit ->
  bucket

val bucket_access_control_project_team_of_yojson : Yojson.Safe.t -> bucket_access_control_project_team
val yojson_of_bucket_access_control_project_team : bucket_access_control_project_team -> Yojson.Safe.t

val make_bucket_access_control_project_team :
  ?project_number:string ->
  ?team:string ->
  unit ->
  bucket_access_control_project_team

val bucket_access_control_of_yojson : Yojson.Safe.t -> bucket_access_control
val yojson_of_bucket_access_control : bucket_access_control -> Yojson.Safe.t

val make_bucket_access_control :
  ?bucket:string ->
  ?domain:string ->
  ?email:string ->
  ?entity:string ->
  ?entity_id:string ->
  ?etag:string ->
  ?id:string ->
  ?kind:string ->
  ?project_team:bucket_access_control_project_team ->
  ?role:string ->
  ?self_link:string ->
  unit ->
  bucket_access_control

val bucket_access_controls_of_yojson : Yojson.Safe.t -> bucket_access_controls
val yojson_of_bucket_access_controls : bucket_access_controls -> Yojson.Safe.t

val make_bucket_access_controls :
  ?items:bucket_access_control list ->
  ?kind:string ->
  unit ->
  bucket_access_controls

val bucket_storage_layout_custom_placement_config_of_yojson : Yojson.Safe.t -> bucket_storage_layout_custom_placement_config
val yojson_of_bucket_storage_layout_custom_placement_config : bucket_storage_layout_custom_placement_config -> Yojson.Safe.t

val make_bucket_storage_layout_custom_placement_config :
  ?data_locations:string list ->
  unit ->
  bucket_storage_layout_custom_placement_config

val bucket_storage_layout_hierarchical_namespace_of_yojson : Yojson.Safe.t -> bucket_storage_layout_hierarchical_namespace
val yojson_of_bucket_storage_layout_hierarchical_namespace : bucket_storage_layout_hierarchical_namespace -> Yojson.Safe.t

val make_bucket_storage_layout_hierarchical_namespace :
  ?enabled:bool ->
  unit ->
  bucket_storage_layout_hierarchical_namespace

val bucket_storage_layout_of_yojson : Yojson.Safe.t -> bucket_storage_layout
val yojson_of_bucket_storage_layout : bucket_storage_layout -> Yojson.Safe.t

val make_bucket_storage_layout :
  ?bucket:string ->
  ?custom_placement_config:bucket_storage_layout_custom_placement_config ->
  ?hierarchical_namespace:bucket_storage_layout_hierarchical_namespace ->
  ?kind:string ->
  ?location:string ->
  ?location_type:string ->
  unit ->
  bucket_storage_layout

val buckets_of_yojson : Yojson.Safe.t -> buckets
val yojson_of_buckets : buckets -> Yojson.Safe.t

val make_buckets :
  ?items:bucket list ->
  ?kind:string ->
  ?next_page_token:string ->
  ?unreachable:string list ->
  unit ->
  buckets

val bulk_restore_objects_request_of_yojson : Yojson.Safe.t -> bulk_restore_objects_request
val yojson_of_bulk_restore_objects_request : bulk_restore_objects_request -> Yojson.Safe.t

val make_bulk_restore_objects_request :
  ?allow_overwrite:bool ->
  ?copy_source_acl:bool ->
  ?created_after_time:string ->
  ?created_before_time:string ->
  ?match_globs:string list ->
  ?soft_deleted_after_time:string ->
  ?soft_deleted_before_time:string ->
  unit ->
  bulk_restore_objects_request

val compose_request_source_objects_item_object_preconditions_of_yojson : Yojson.Safe.t -> compose_request_source_objects_item_object_preconditions
val yojson_of_compose_request_source_objects_item_object_preconditions : compose_request_source_objects_item_object_preconditions -> Yojson.Safe.t

val make_compose_request_source_objects_item_object_preconditions :
  ?if_generation_match:string ->
  unit ->
  compose_request_source_objects_item_object_preconditions

val compose_request_source_objects_item_of_yojson : Yojson.Safe.t -> compose_request_source_objects_item
val yojson_of_compose_request_source_objects_item : compose_request_source_objects_item -> Yojson.Safe.t

val make_compose_request_source_objects_item :
  ?generation:string ->
  ?name:string ->
  ?object_preconditions:compose_request_source_objects_item_object_preconditions ->
  unit ->
  compose_request_source_objects_item

val compose_request_of_yojson : Yojson.Safe.t -> compose_request
val yojson_of_compose_request : compose_request -> Yojson.Safe.t

val make_compose_request :
  ?delete_source_objects:bool ->
  ?destination:object_ ->
  ?kind:string ->
  ?source_objects:compose_request_source_objects_item list ->
  unit ->
  compose_request

val expr_of_yojson : Yojson.Safe.t -> expr
val yojson_of_expr : expr -> Yojson.Safe.t

val make_expr :
  ?description:string ->
  ?expression:string ->
  ?location:string ->
  ?title:string ->
  unit ->
  expr

val folder_pending_rename_info_of_yojson : Yojson.Safe.t -> folder_pending_rename_info
val yojson_of_folder_pending_rename_info : folder_pending_rename_info -> Yojson.Safe.t

val make_folder_pending_rename_info :
  ?operation_id:string ->
  unit ->
  folder_pending_rename_info

val folder_of_yojson : Yojson.Safe.t -> folder
val yojson_of_folder : folder -> Yojson.Safe.t

val make_folder :
  ?bucket:string ->
  ?create_time:string ->
  ?id:string ->
  ?kind:string ->
  ?metageneration:string ->
  ?name:string ->
  ?pending_rename_info:folder_pending_rename_info ->
  ?self_link:string ->
  ?update_time:string ->
  unit ->
  folder

val folders_of_yojson : Yojson.Safe.t -> folders
val yojson_of_folders : folders -> Yojson.Safe.t

val make_folders :
  ?items:folder list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  folders

val google_longrunning_list_operations_response_of_yojson : Yojson.Safe.t -> google_longrunning_list_operations_response
val yojson_of_google_longrunning_list_operations_response : google_longrunning_list_operations_response -> Yojson.Safe.t

val make_google_longrunning_list_operations_response :
  ?kind:string ->
  ?next_page_token:string ->
  ?operations:google_longrunning_operation list ->
  unit ->
  google_longrunning_list_operations_response

val google_longrunning_operation_of_yojson : Yojson.Safe.t -> google_longrunning_operation
val yojson_of_google_longrunning_operation : google_longrunning_operation -> Yojson.Safe.t

val make_google_longrunning_operation :
  ?done_:bool ->
  ?error:google_rpc_status ->
  ?kind:string ->
  ?metadata:(string * Yojson.Safe.t) list ->
  ?name:string ->
  ?response:(string * Yojson.Safe.t) list ->
  ?self_link:string ->
  unit ->
  google_longrunning_operation

val google_rpc_status_of_yojson : Yojson.Safe.t -> google_rpc_status
val yojson_of_google_rpc_status : google_rpc_status -> Yojson.Safe.t

val make_google_rpc_status :
  ?code:int ->
  ?details:(string * Yojson.Safe.t) list list ->
  ?message:string ->
  unit ->
  google_rpc_status

val hmac_key_of_yojson : Yojson.Safe.t -> hmac_key
val yojson_of_hmac_key : hmac_key -> Yojson.Safe.t

val make_hmac_key :
  ?kind:string ->
  ?metadata:hmac_key_metadata ->
  ?secret:string ->
  unit ->
  hmac_key

val hmac_key_metadata_of_yojson : Yojson.Safe.t -> hmac_key_metadata
val yojson_of_hmac_key_metadata : hmac_key_metadata -> Yojson.Safe.t

val make_hmac_key_metadata :
  ?access_id:string ->
  ?etag:string ->
  ?id:string ->
  ?kind:string ->
  ?project_id:string ->
  ?self_link:string ->
  ?service_account_email:string ->
  ?state:string ->
  ?time_created:string ->
  ?updated:string ->
  unit ->
  hmac_key_metadata

val hmac_keys_metadata_of_yojson : Yojson.Safe.t -> hmac_keys_metadata
val yojson_of_hmac_keys_metadata : hmac_keys_metadata -> Yojson.Safe.t

val make_hmac_keys_metadata :
  ?items:hmac_key_metadata list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  hmac_keys_metadata

val managed_folder_of_yojson : Yojson.Safe.t -> managed_folder
val yojson_of_managed_folder : managed_folder -> Yojson.Safe.t

val make_managed_folder :
  ?bucket:string ->
  ?create_time:string ->
  ?id:string ->
  ?kind:string ->
  ?metageneration:string ->
  ?name:string ->
  ?rapid_cache_config:rapid_cache_config ->
  ?self_link:string ->
  ?update_time:string ->
  unit ->
  managed_folder

val managed_folders_of_yojson : Yojson.Safe.t -> managed_folders
val yojson_of_managed_folders : managed_folders -> Yojson.Safe.t

val make_managed_folders :
  ?items:managed_folder list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  managed_folders

val notification_of_yojson : Yojson.Safe.t -> notification
val yojson_of_notification : notification -> Yojson.Safe.t

val make_notification :
  ?custom_attributes:(string * string) list ->
  ?etag:string ->
  ?event_types:string list ->
  ?id:string ->
  ?kind:string ->
  ?object_name_prefix:string ->
  ?payload_format:string ->
  ?self_link:string ->
  ?topic:string ->
  unit ->
  notification

val notifications_of_yojson : Yojson.Safe.t -> notifications
val yojson_of_notifications : notifications -> Yojson.Safe.t

val make_notifications :
  ?items:notification list ->
  ?kind:string ->
  unit ->
  notifications

val object__contexts_of_yojson : Yojson.Safe.t -> object__contexts
val yojson_of_object__contexts : object__contexts -> Yojson.Safe.t

val make_object__contexts :
  ?custom:(string * object_custom_context_payload) list ->
  unit ->
  object__contexts

val object__customer_encryption_of_yojson : Yojson.Safe.t -> object__customer_encryption
val yojson_of_object__customer_encryption : object__customer_encryption -> Yojson.Safe.t

val make_object__customer_encryption :
  ?encryption_algorithm:string ->
  ?key_sha256:string ->
  unit ->
  object__customer_encryption

val object__owner_of_yojson : Yojson.Safe.t -> object__owner
val yojson_of_object__owner : object__owner -> Yojson.Safe.t

val make_object__owner :
  ?entity:string ->
  ?entity_id:string ->
  unit ->
  object__owner

val object__retention_of_yojson : Yojson.Safe.t -> object__retention
val yojson_of_object__retention : object__retention -> Yojson.Safe.t

val make_object__retention :
  ?mode:string ->
  ?retain_until_time:string ->
  unit ->
  object__retention

val object__of_yojson : Yojson.Safe.t -> object_
val yojson_of_object_ : object_ -> Yojson.Safe.t

val make_object_ :
  ?acl:object_access_control list ->
  ?bucket:string ->
  ?cache_control:string ->
  ?component_count:int ->
  ?content_disposition:string ->
  ?content_encoding:string ->
  ?content_language:string ->
  ?content_type:string ->
  ?contexts:object__contexts ->
  ?crc32c:string ->
  ?custom_time:string ->
  ?customer_encryption:object__customer_encryption ->
  ?etag:string ->
  ?event_based_hold:bool ->
  ?generation:string ->
  ?hard_delete_time:string ->
  ?id:string ->
  ?kind:string ->
  ?kms_key_name:string ->
  ?md5_hash:string ->
  ?media_link:string ->
  ?metadata:(string * string) list ->
  ?metageneration:string ->
  ?name:string ->
  ?owner:object__owner ->
  ?restore_token:string ->
  ?retention:object__retention ->
  ?retention_expiration_time:string ->
  ?self_link:string ->
  ?size:string ->
  ?soft_delete_time:string ->
  ?storage_class:string ->
  ?temporary_hold:bool ->
  ?time_created:string ->
  ?time_deleted:string ->
  ?time_finalized:string ->
  ?time_storage_class_updated:string ->
  ?updated:string ->
  unit ->
  object_

val object_access_control_project_team_of_yojson : Yojson.Safe.t -> object_access_control_project_team
val yojson_of_object_access_control_project_team : object_access_control_project_team -> Yojson.Safe.t

val make_object_access_control_project_team :
  ?project_number:string ->
  ?team:string ->
  unit ->
  object_access_control_project_team

val object_access_control_of_yojson : Yojson.Safe.t -> object_access_control
val yojson_of_object_access_control : object_access_control -> Yojson.Safe.t

val make_object_access_control :
  ?bucket:string ->
  ?domain:string ->
  ?email:string ->
  ?entity:string ->
  ?entity_id:string ->
  ?etag:string ->
  ?generation:string ->
  ?id:string ->
  ?kind:string ->
  ?object_:string ->
  ?project_team:object_access_control_project_team ->
  ?role:string ->
  ?self_link:string ->
  unit ->
  object_access_control

val object_access_controls_of_yojson : Yojson.Safe.t -> object_access_controls
val yojson_of_object_access_controls : object_access_controls -> Yojson.Safe.t

val make_object_access_controls :
  ?items:object_access_control list ->
  ?kind:string ->
  unit ->
  object_access_controls

val object_custom_context_payload_of_yojson : Yojson.Safe.t -> object_custom_context_payload
val yojson_of_object_custom_context_payload : object_custom_context_payload -> Yojson.Safe.t

val make_object_custom_context_payload :
  ?create_time:string ->
  ?extended_data_type_url:string ->
  ?update_time:string ->
  ?value:string ->
  unit ->
  object_custom_context_payload

val object_full_context_of_yojson : Yojson.Safe.t -> object_full_context
val yojson_of_object_full_context : object_full_context -> Yojson.Safe.t

val make_object_full_context :
  ?create_time:string ->
  ?extended_data:(string * Yojson.Safe.t) list ->
  ?key:string ->
  ?kind:string ->
  ?type_:[ `Custom | `Unrecognized of string ] ->
  ?update_time:string ->
  ?value:string ->
  unit ->
  object_full_context

val objects_of_yojson : Yojson.Safe.t -> objects
val yojson_of_objects : objects -> Yojson.Safe.t

val make_objects :
  ?items:object_ list ->
  ?kind:string ->
  ?next_page_token:string ->
  ?prefixes:string list ->
  unit ->
  objects

val policy_bindings_item_of_yojson : Yojson.Safe.t -> policy_bindings_item
val yojson_of_policy_bindings_item : policy_bindings_item -> Yojson.Safe.t

val make_policy_bindings_item :
  ?condition:expr ->
  ?members:string list ->
  ?role:string ->
  unit ->
  policy_bindings_item

val policy_of_yojson : Yojson.Safe.t -> policy
val yojson_of_policy : policy -> Yojson.Safe.t

val make_policy :
  ?bindings:policy_bindings_item list ->
  ?etag:string ->
  ?kind:string ->
  ?resource_id:string ->
  ?version:int ->
  unit ->
  policy

val rapid_cache_of_yojson : Yojson.Safe.t -> rapid_cache
val yojson_of_rapid_cache : rapid_cache -> Yojson.Safe.t

val make_rapid_cache :
  ?admission_policy:string ->
  ?bucket:string ->
  ?cache_type:string ->
  ?create_time:string ->
  ?id:string ->
  ?ingest_on_write:bool ->
  ?kind:string ->
  ?pending_update:bool ->
  ?rapid_cache_id:string ->
  ?self_link:string ->
  ?state:string ->
  ?ttl:string ->
  ?update_time:string ->
  ?zone:string ->
  unit ->
  rapid_cache

val rapid_cache_config_of_yojson : Yojson.Safe.t -> rapid_cache_config
val yojson_of_rapid_cache_config : rapid_cache_config -> Yojson.Safe.t

val make_rapid_cache_config :
  ?policies:(string * rapid_cache_policy) list ->
  unit ->
  rapid_cache_config

val rapid_cache_policy_of_yojson : Yojson.Safe.t -> rapid_cache_policy
val yojson_of_rapid_cache_policy : rapid_cache_policy -> Yojson.Safe.t

val make_rapid_cache_policy :
  ?ingest_on_write:[ `Enabled | `Unspecified | `Unrecognized of string ] ->
  ?rapid_cache_id:string ->
  unit ->
  rapid_cache_policy

val rapid_caches_of_yojson : Yojson.Safe.t -> rapid_caches
val yojson_of_rapid_caches : rapid_caches -> Yojson.Safe.t

val make_rapid_caches :
  ?items:rapid_cache list ->
  ?kind:string ->
  ?next_page_token:string ->
  unit ->
  rapid_caches

val relocate_bucket_request_destination_custom_placement_config_of_yojson : Yojson.Safe.t -> relocate_bucket_request_destination_custom_placement_config
val yojson_of_relocate_bucket_request_destination_custom_placement_config : relocate_bucket_request_destination_custom_placement_config -> Yojson.Safe.t

val make_relocate_bucket_request_destination_custom_placement_config :
  ?data_locations:string list ->
  unit ->
  relocate_bucket_request_destination_custom_placement_config

val relocate_bucket_request_of_yojson : Yojson.Safe.t -> relocate_bucket_request
val yojson_of_relocate_bucket_request : relocate_bucket_request -> Yojson.Safe.t

val make_relocate_bucket_request :
  ?destination_custom_placement_config:relocate_bucket_request_destination_custom_placement_config ->
  ?destination_kms_key_name:string ->
  ?destination_location:string ->
  ?validate_only:bool ->
  unit ->
  relocate_bucket_request

val rewrite_response_of_yojson : Yojson.Safe.t -> rewrite_response
val yojson_of_rewrite_response : rewrite_response -> Yojson.Safe.t

val make_rewrite_response :
  ?done_:bool ->
  ?kind:string ->
  ?object_size:string ->
  ?resource:object_ ->
  ?rewrite_token:string ->
  ?total_bytes_rewritten:string ->
  unit ->
  rewrite_response

val service_account_of_yojson : Yojson.Safe.t -> service_account
val yojson_of_service_account : service_account -> Yojson.Safe.t

val make_service_account :
  ?email_address:string ->
  ?kind:string ->
  unit ->
  service_account

val test_iam_permissions_response_of_yojson : Yojson.Safe.t -> test_iam_permissions_response
val yojson_of_test_iam_permissions_response : test_iam_permissions_response -> Yojson.Safe.t

val make_test_iam_permissions_response :
  ?kind:string ->
  ?permissions:string list ->
  unit ->
  test_iam_permissions_response

val base_url : string
val batch_endpoint : Uri.t

val batch :
  access_token:string ->
  'a Google_api.Call.t list ->
  (('a, Google_api.Error.t) result list, Google_api.Error.t) result
(** {!Google_api.Batch.execute} on {!batch_endpoint}. *)

module Anywhere_caches : sig
  val disable :
    bucket:string ->
    anywhere_cache_id:string ->
    unit ->
    anywhere_cache Google_api.Call.t
  (** Disables an Anywhere Cache instance.

      [POST b/{bucket}/anywhereCaches/{anywhereCacheId}/disable]

      - [bucket]: Name of the parent bucket.
      - [anywhere_cache_id]: The ID of requested Anywhere Cache instance. *)

  val get :
    bucket:string ->
    anywhere_cache_id:string ->
    unit ->
    anywhere_cache Google_api.Call.t
  (** Returns the metadata of an Anywhere Cache instance.

      [GET b/{bucket}/anywhereCaches/{anywhereCacheId}]

      - [bucket]: Name of the parent bucket.
      - [anywhere_cache_id]: The ID of requested Anywhere Cache instance. *)

  val insert :
    bucket:string ->
    body:anywhere_cache ->
    unit ->
    google_longrunning_operation Google_api.Call.t
  (** Creates an Anywhere Cache instance.

      [POST b/{bucket}/anywhereCaches]

      - [bucket]: Name of the parent bucket. *)

  val list :
    bucket:string ->
    ?page_size:int ->
    ?page_token:string ->
    unit ->
    anywhere_caches Google_api.Call.t
  (** Returns a list of Anywhere Cache instances of the bucket matching the criteria.

      [GET b/{bucket}/anywhereCaches]

      - [bucket]: Name of the parent bucket.
      - [page_size]: Maximum number of items to return in a single page of responses. Maximum 1000.
      - [page_token]: A previously-returned page token representing part of the larger set of results to view. *)

  val pause :
    bucket:string ->
    anywhere_cache_id:string ->
    unit ->
    anywhere_cache Google_api.Call.t
  (** Pauses an Anywhere Cache instance.

      [POST b/{bucket}/anywhereCaches/{anywhereCacheId}/pause]

      - [bucket]: Name of the parent bucket.
      - [anywhere_cache_id]: The ID of requested Anywhere Cache instance. *)

  val resume :
    bucket:string ->
    anywhere_cache_id:string ->
    unit ->
    anywhere_cache Google_api.Call.t
  (** Resumes a paused or disabled Anywhere Cache instance.

      [POST b/{bucket}/anywhereCaches/{anywhereCacheId}/resume]

      - [bucket]: Name of the parent bucket.
      - [anywhere_cache_id]: The ID of requested Anywhere Cache instance. *)

  val update :
    bucket:string ->
    anywhere_cache_id:string ->
    body:anywhere_cache ->
    unit ->
    google_longrunning_operation Google_api.Call.t
  (** Updates the config of an Anywhere Cache instance.

      [PATCH b/{bucket}/anywhereCaches/{anywhereCacheId}]

      - [bucket]: Name of the parent bucket.
      - [anywhere_cache_id]: The ID of requested Anywhere Cache instance. *)
end

module Bucket_access_controls : sig
  val delete :
    bucket:string ->
    entity:string ->
    ?user_project:string ->
    unit ->
    unit Google_api.Call.t
  (** Permanently deletes the ACL entry for the specified entity on the specified bucket.

      [DELETE b/{bucket}/acl/{entity}]

      - [bucket]: Name of a bucket.
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val get :
    bucket:string ->
    entity:string ->
    ?user_project:string ->
    unit ->
    bucket_access_control Google_api.Call.t
  (** Returns the ACL entry for the specified entity on the specified bucket.

      [GET b/{bucket}/acl/{entity}]

      - [bucket]: Name of a bucket.
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val insert :
    bucket:string ->
    body:bucket_access_control ->
    ?user_project:string ->
    unit ->
    bucket_access_control Google_api.Call.t
  (** Creates a new ACL entry on the specified bucket.

      [POST b/{bucket}/acl]

      - [bucket]: Name of a bucket.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val list :
    bucket:string ->
    ?user_project:string ->
    unit ->
    bucket_access_controls Google_api.Call.t
  (** Retrieves ACL entries on the specified bucket.

      [GET b/{bucket}/acl]

      - [bucket]: Name of a bucket.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val patch :
    bucket:string ->
    entity:string ->
    body:bucket_access_control ->
    ?user_project:string ->
    unit ->
    bucket_access_control Google_api.Call.t
  (** Patches an ACL entry on the specified bucket.

      [PATCH b/{bucket}/acl/{entity}]

      - [bucket]: Name of a bucket.
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val update :
    bucket:string ->
    entity:string ->
    body:bucket_access_control ->
    ?user_project:string ->
    unit ->
    bucket_access_control Google_api.Call.t
  (** Updates an ACL entry on the specified bucket.

      [PUT b/{bucket}/acl/{entity}]

      - [bucket]: Name of a bucket.
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)
end

module Buckets : sig
  val delete :
    bucket:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?user_project:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes an empty bucket. Deletions are permanent unless soft delete is enabled on the bucket.

      [DELETE b/{bucket}]

      - [bucket]: Name of a bucket.
      - [if_metageneration_match]: If set, only deletes the bucket if its metageneration matches this value.
      - [if_metageneration_not_match]: If set, only deletes the bucket if its metageneration does not match this value.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val get :
    bucket:string ->
    ?generation:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?soft_deleted:bool ->
    ?user_project:string ->
    unit ->
    bucket Google_api.Call.t
  (** Returns metadata for the specified bucket.

      [GET b/{bucket}]

      - [bucket]: Name of a bucket.
      - [generation]: If present, specifies the generation of the bucket. This is required if softDeleted is true.
      - [if_metageneration_match]: Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.
      - [projection]: Set of properties to return. Defaults to noAcl.
      - [soft_deleted]: If true, return the soft-deleted version of this bucket. The default is false. For more information, see \[Soft Delete\](https://cloud.google.com/storage/docs/soft-delete).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val get_iam_policy :
    bucket:string ->
    ?options_requested_policy_version:int ->
    ?user_project:string ->
    unit ->
    policy Google_api.Call.t
  (** Returns an IAM policy for the specified bucket.

      [GET b/{bucket}/iam]

      - [bucket]: Name of a bucket.
      - [options_requested_policy_version]: The IAM policy format version to be returned. If the optionsRequestedPolicyVersion is for an older version that doesn't support part of the requested IAM policy, the request fails.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val get_storage_layout :
    bucket:string ->
    ?prefix:string ->
    unit ->
    bucket_storage_layout Google_api.Call.t
  (** Returns the storage layout configuration for the specified bucket. Note that this operation requires storage.objects.list permission.

      [GET b/{bucket}/storageLayout]

      - [bucket]: Name of a bucket.
      - [prefix]: An optional prefix used for permission check. It is useful when the caller only has storage.objects.list permission under a specific prefix. *)

  val insert :
    project:string ->
    body:bucket ->
    ?enable_object_retention:bool ->
    ?predefined_acl:[ `Authenticated_read | `Private | `Project_private | `Public_read | `Public_read_write | `Unrecognized of string ] ->
    ?predefined_default_object_acl:[ `Authenticated_read | `Bucket_owner_full_control | `Bucket_owner_read | `Private | `Project_private | `Public_read | `Unrecognized of string ] ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?user_project:string ->
    unit ->
    bucket Google_api.Call.t
  (** Creates a new bucket.

      [POST b]

      - [project]: A valid API project identifier.
      - [enable_object_retention]: When set to true, object retention is enabled for this bucket.
      - [predefined_acl]: Apply a predefined set of access controls to this bucket.
      - [predefined_default_object_acl]: Apply a predefined set of default object access controls to this bucket.
      - [projection]: Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.
      - [user_project]: The project to be billed for this request. *)

  val list :
    project:string ->
    ?max_results:int ->
    ?page_token:string ->
    ?prefix:string ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?return_partial_success:bool ->
    ?soft_deleted:bool ->
    ?user_project:string ->
    unit ->
    buckets Google_api.Call.t
  (** Retrieves a list of buckets for a given project.

      [GET b]

      - [project]: A valid API project identifier.
      - [max_results]: Maximum number of buckets to return in a single response. The service will use this parameter or 1,000 items, whichever is smaller.
      - [page_token]: A previously-returned page token representing part of the larger set of results to view.
      - [prefix]: Filter results to buckets whose names begin with this prefix.
      - [projection]: Set of properties to return. Defaults to noAcl.
      - [return_partial_success]: If true, return a list of bucket resource names for buckets that are in unreachable locations.
      - [soft_deleted]: If true, only soft-deleted bucket versions will be returned. The default is false. For more information, see \[Soft Delete\](https://cloud.google.com/storage/docs/soft-delete).
      - [user_project]: The project to be billed for this request. *)

  val lock_retention_policy :
    bucket:string ->
    if_metageneration_match:string ->
    ?user_project:string ->
    unit ->
    bucket Google_api.Call.t
  (** Locks retention policy on a bucket.

      [POST b/{bucket}/lockRetentionPolicy]

      - [bucket]: Name of a bucket.
      - [if_metageneration_match]: Makes the operation conditional on whether bucket's current metageneration matches the given value.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val patch :
    bucket:string ->
    body:bucket ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?predefined_acl:[ `Authenticated_read | `Private | `Project_private | `Public_read | `Public_read_write | `Unrecognized of string ] ->
    ?predefined_default_object_acl:[ `Authenticated_read | `Bucket_owner_full_control | `Bucket_owner_read | `Private | `Project_private | `Public_read | `Unrecognized of string ] ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?user_project:string ->
    unit ->
    bucket Google_api.Call.t
  (** Patches a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.

      [PATCH b/{bucket}]

      - [bucket]: Name of a bucket.
      - [if_metageneration_match]: Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.
      - [predefined_acl]: Apply a predefined set of access controls to this bucket.
      - [predefined_default_object_acl]: Apply a predefined set of default object access controls to this bucket.
      - [projection]: Set of properties to return. Defaults to full.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val relocate :
    bucket:string ->
    body:relocate_bucket_request ->
    unit ->
    google_longrunning_operation Google_api.Call.t
  (** Initiates a long-running Relocate Bucket operation on the specified bucket.

      [POST b/{bucket}/relocate]

      - [bucket]: Name of the bucket to be moved. *)

  val restore :
    bucket:string ->
    generation:string ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?user_project:string ->
    unit ->
    bucket Google_api.Call.t
  (** Restores a soft-deleted bucket.

      [POST b/{bucket}/restore]

      - [bucket]: Name of a bucket.
      - [generation]: Generation of a bucket.
      - [projection]: Set of properties to return. Defaults to full.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val set_iam_policy :
    bucket:string ->
    body:policy ->
    ?user_project:string ->
    unit ->
    policy Google_api.Call.t
  (** Updates an IAM policy for the specified bucket.

      [PUT b/{bucket}/iam]

      - [bucket]: Name of a bucket.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val test_iam_permissions :
    bucket:string ->
    permissions:string list ->
    ?user_project:string ->
    unit ->
    test_iam_permissions_response Google_api.Call.t
  (** Tests a set of permissions on the given bucket to see which, if any, are held by the caller.

      [GET b/{bucket}/iam/testPermissions]

      - [bucket]: Name of a bucket.
      - [permissions]: Permissions to test.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val update :
    bucket:string ->
    body:bucket ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?predefined_acl:[ `Authenticated_read | `Private | `Project_private | `Public_read | `Public_read_write | `Unrecognized of string ] ->
    ?predefined_default_object_acl:[ `Authenticated_read | `Bucket_owner_full_control | `Bucket_owner_read | `Private | `Project_private | `Public_read | `Unrecognized of string ] ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?user_project:string ->
    unit ->
    bucket Google_api.Call.t
  (** Updates a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.

      [PUT b/{bucket}]

      - [bucket]: Name of a bucket.
      - [if_metageneration_match]: Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.
      - [predefined_acl]: Apply a predefined set of access controls to this bucket.
      - [predefined_default_object_acl]: Apply a predefined set of default object access controls to this bucket.
      - [projection]: Set of properties to return. Defaults to full.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)
end

module Default_object_access_controls : sig
  val delete :
    bucket:string ->
    entity:string ->
    ?user_project:string ->
    unit ->
    unit Google_api.Call.t
  (** Permanently deletes the default object ACL entry for the specified entity on the specified bucket.

      [DELETE b/{bucket}/defaultObjectAcl/{entity}]

      - [bucket]: Name of a bucket.
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val get :
    bucket:string ->
    entity:string ->
    ?user_project:string ->
    unit ->
    object_access_control Google_api.Call.t
  (** Returns the default object ACL entry for the specified entity on the specified bucket.

      [GET b/{bucket}/defaultObjectAcl/{entity}]

      - [bucket]: Name of a bucket.
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val insert :
    bucket:string ->
    body:object_access_control ->
    ?user_project:string ->
    unit ->
    object_access_control Google_api.Call.t
  (** Creates a new default object ACL entry on the specified bucket.

      [POST b/{bucket}/defaultObjectAcl]

      - [bucket]: Name of a bucket.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val list :
    bucket:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?user_project:string ->
    unit ->
    object_access_controls Google_api.Call.t
  (** Retrieves default object ACL entries on the specified bucket.

      [GET b/{bucket}/defaultObjectAcl]

      - [bucket]: Name of a bucket.
      - [if_metageneration_match]: If present, only return default ACL listing if the bucket's current metageneration matches this value.
      - [if_metageneration_not_match]: If present, only return default ACL listing if the bucket's current metageneration does not match the given value.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val patch :
    bucket:string ->
    entity:string ->
    body:object_access_control ->
    ?user_project:string ->
    unit ->
    object_access_control Google_api.Call.t
  (** Patches a default object ACL entry on the specified bucket.

      [PATCH b/{bucket}/defaultObjectAcl/{entity}]

      - [bucket]: Name of a bucket.
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val update :
    bucket:string ->
    entity:string ->
    body:object_access_control ->
    ?user_project:string ->
    unit ->
    object_access_control Google_api.Call.t
  (** Updates a default object ACL entry on the specified bucket.

      [PUT b/{bucket}/defaultObjectAcl/{entity}]

      - [bucket]: Name of a bucket.
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)
end

module Folders : sig
  val delete :
    bucket:string ->
    folder:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    unit ->
    unit Google_api.Call.t
  (** Permanently deletes a folder. Only applicable to buckets with hierarchical namespace enabled.

      [DELETE b/{bucket}/folders/{folder}]

      - [bucket]: Name of the bucket in which the folder resides.
      - [folder]: Name of a folder.
      - [if_metageneration_match]: If set, only deletes the folder if its metageneration matches this value.
      - [if_metageneration_not_match]: If set, only deletes the folder if its metageneration does not match this value. *)

  val delete_recursive :
    bucket:string ->
    folder:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    unit ->
    google_longrunning_operation Google_api.Call.t
  (** Deletes a folder recursively. Only applicable to buckets with hierarchical namespace enabled.

      [POST b/{bucket}/folders/{folder}/deleteRecursive]

      - [bucket]: Name of the bucket in which the folder resides.
      - [folder]: Name of a folder.
      - [if_metageneration_match]: If set, only deletes the folder if its metageneration matches this value.
      - [if_metageneration_not_match]: If set, only deletes the folder if its metageneration does not match this value. *)

  val get :
    bucket:string ->
    folder:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    unit ->
    folder Google_api.Call.t
  (** Returns metadata for the specified folder. Only applicable to buckets with hierarchical namespace enabled.

      [GET b/{bucket}/folders/{folder}]

      - [bucket]: Name of the bucket in which the folder resides.
      - [folder]: Name of a folder.
      - [if_metageneration_match]: Makes the return of the folder metadata conditional on whether the folder's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the return of the folder metadata conditional on whether the folder's current metageneration does not match the given value. *)

  val insert :
    bucket:string ->
    body:folder ->
    ?recursive:bool ->
    unit ->
    folder Google_api.Call.t
  (** Creates a new folder. Only applicable to buckets with hierarchical namespace enabled.

      [POST b/{bucket}/folders]

      - [bucket]: Name of the bucket in which the folder resides.
      - [recursive]: If true, any parent folder which doesn't exist will be created automatically. *)

  val list :
    bucket:string ->
    ?delimiter:string ->
    ?end_offset:string ->
    ?page_size:int ->
    ?page_token:string ->
    ?prefix:string ->
    ?start_offset:string ->
    unit ->
    folders Google_api.Call.t
  (** Retrieves a list of folders matching the criteria. Only applicable to buckets with hierarchical namespace enabled.

      [GET b/{bucket}/folders]

      - [bucket]: Name of the bucket in which to look for folders.
      - [delimiter]: Returns results in a directory-like mode. The only supported value is '/'. If set, items will only contain folders that either exactly match the prefix, or are one level below the prefix.
      - [end_offset]: Filter results to folders whose names are lexicographically before endOffset. If startOffset is also set, the folders listed will have names between startOffset (inclusive) and endOffset (exclusive).
      - [page_size]: Maximum number of items to return in a single page of responses.
      - [page_token]: A previously-returned page token representing part of the larger set of results to view.
      - [prefix]: Filter results to folders whose paths begin with this prefix. If set, the value must either be an empty string or end with a '/'.
      - [start_offset]: Filter results to folders whose names are lexicographically equal to or after startOffset. If endOffset is also set, the folders listed will have names between startOffset (inclusive) and endOffset (exclusive). *)

  val rename :
    bucket:string ->
    source_folder:string ->
    destination_folder:string ->
    ?if_source_metageneration_match:string ->
    ?if_source_metageneration_not_match:string ->
    unit ->
    google_longrunning_operation Google_api.Call.t
  (** Renames a source folder to a destination folder. Only applicable to buckets with hierarchical namespace enabled.

      [POST b/{bucket}/folders/{sourceFolder}/renameTo/folders/{destinationFolder}]

      - [bucket]: Name of the bucket in which the folders are in.
      - [source_folder]: Name of the source folder.
      - [destination_folder]: Name of the destination folder.
      - [if_source_metageneration_match]: Makes the operation conditional on whether the source object's current metageneration matches the given value.
      - [if_source_metageneration_not_match]: Makes the operation conditional on whether the source object's current metageneration does not match the given value. *)
end

module Managed_folders : sig
  val delete :
    bucket:string ->
    managed_folder:string ->
    ?allow_non_empty:bool ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    unit ->
    unit Google_api.Call.t
  (** Permanently deletes a managed folder.

      [DELETE b/{bucket}/managedFolders/{managedFolder}]

      - [bucket]: Name of the bucket containing the managed folder.
      - [managed_folder]: The managed folder name/path.
      - [allow_non_empty]: Allows the deletion of a managed folder even if it is not empty. A managed folder is empty if there are no objects or managed folders that it applies to. Callers must have storage.managedFolders.setIamPolicy permission.
      - [if_metageneration_match]: If set, only deletes the managed folder if its metageneration matches this value.
      - [if_metageneration_not_match]: If set, only deletes the managed folder if its metageneration does not match this value. *)

  val get :
    bucket:string ->
    managed_folder:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    unit ->
    managed_folder Google_api.Call.t
  (** Returns metadata of the specified managed folder.

      [GET b/{bucket}/managedFolders/{managedFolder}]

      - [bucket]: Name of the bucket containing the managed folder.
      - [managed_folder]: The managed folder name/path.
      - [if_metageneration_match]: Makes the return of the managed folder metadata conditional on whether the managed folder's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the return of the managed folder metadata conditional on whether the managed folder's current metageneration does not match the given value. *)

  val get_iam_policy :
    bucket:string ->
    managed_folder:string ->
    ?options_requested_policy_version:int ->
    ?user_project:string ->
    unit ->
    policy Google_api.Call.t
  (** Returns an IAM policy for the specified managed folder.

      [GET b/{bucket}/managedFolders/{managedFolder}/iam]

      - [bucket]: Name of the bucket containing the managed folder.
      - [managed_folder]: The managed folder name/path.
      - [options_requested_policy_version]: The IAM policy format version to be returned. If the optionsRequestedPolicyVersion is for an older version that doesn't support part of the requested IAM policy, the request fails.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val insert :
    bucket:string ->
    body:managed_folder ->
    unit ->
    managed_folder Google_api.Call.t
  (** Creates a new managed folder.

      [POST b/{bucket}/managedFolders]

      - [bucket]: Name of the bucket containing the managed folder. *)

  val list :
    bucket:string ->
    ?page_size:int ->
    ?page_token:string ->
    ?prefix:string ->
    unit ->
    managed_folders Google_api.Call.t
  (** Lists managed folders in the given bucket.

      [GET b/{bucket}/managedFolders]

      - [bucket]: Name of the bucket containing the managed folder.
      - [page_size]: Maximum number of items to return in a single page of responses.
      - [page_token]: A previously-returned page token representing part of the larger set of results to view.
      - [prefix]: The managed folder name/path prefix to filter the output list of results. *)

  val set_iam_policy :
    bucket:string ->
    managed_folder:string ->
    body:policy ->
    ?user_project:string ->
    unit ->
    policy Google_api.Call.t
  (** Updates an IAM policy for the specified managed folder.

      [PUT b/{bucket}/managedFolders/{managedFolder}/iam]

      - [bucket]: Name of the bucket containing the managed folder.
      - [managed_folder]: The managed folder name/path.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val test_iam_permissions :
    bucket:string ->
    managed_folder:string ->
    permissions:string list ->
    ?user_project:string ->
    unit ->
    test_iam_permissions_response Google_api.Call.t
  (** Tests a set of permissions on the given managed folder to see which, if any, are held by the caller.

      [GET b/{bucket}/managedFolders/{managedFolder}/iam/testPermissions]

      - [bucket]: Name of the bucket containing the managed folder.
      - [managed_folder]: The managed folder name/path.
      - [permissions]: Permissions to test.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val update :
    bucket:string ->
    managed_folder:string ->
    body:managed_folder ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    unit ->
    managed_folder Google_api.Call.t
  (** Updates a managed folder using patch semantics.

      [PATCH b/{bucket}/managedFolders/{managedFolder}]

      - [bucket]: The name of the bucket containing the managed folder.
      - [managed_folder]: The name of the managed folder.
      - [if_metageneration_match]: Makes the operation conditional on whether the metageneration of the managed folder matches the specified value.
      - [if_metageneration_not_match]: Makes the operation conditional on whether the metageneration of the managed folder doesn't match the specified value. *)
end

module Notifications : sig
  val delete :
    bucket:string ->
    notification:string ->
    ?user_project:string ->
    unit ->
    unit Google_api.Call.t
  (** Permanently deletes a notification subscription.

      [DELETE b/{bucket}/notificationConfigs/{notification}]

      - [bucket]: The parent bucket of the notification.
      - [notification]: ID of the notification to delete.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val get :
    bucket:string ->
    notification:string ->
    ?user_project:string ->
    unit ->
    notification Google_api.Call.t
  (** View a notification configuration.

      [GET b/{bucket}/notificationConfigs/{notification}]

      - [bucket]: The parent bucket of the notification.
      - [notification]: Notification ID
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val insert :
    bucket:string ->
    body:notification ->
    ?user_project:string ->
    unit ->
    notification Google_api.Call.t
  (** Creates a notification subscription for a given bucket.

      [POST b/{bucket}/notificationConfigs]

      - [bucket]: The parent bucket of the notification.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val list :
    bucket:string ->
    ?user_project:string ->
    unit ->
    notifications Google_api.Call.t
  (** Retrieves a list of notification subscriptions for a given bucket.

      [GET b/{bucket}/notificationConfigs]

      - [bucket]: Name of a Google Cloud Storage bucket.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)
end

module Object_access_controls : sig
  val delete :
    bucket:string ->
    object_:string ->
    entity:string ->
    ?generation:string ->
    ?user_project:string ->
    unit ->
    unit Google_api.Call.t
  (** Permanently deletes the ACL entry for the specified entity on the specified object.

      [DELETE b/{bucket}/o/{object}/acl/{entity}]

      - [bucket]: Name of a bucket.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val get :
    bucket:string ->
    object_:string ->
    entity:string ->
    ?generation:string ->
    ?user_project:string ->
    unit ->
    object_access_control Google_api.Call.t
  (** Returns the ACL entry for the specified entity on the specified object.

      [GET b/{bucket}/o/{object}/acl/{entity}]

      - [bucket]: Name of a bucket.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val insert :
    bucket:string ->
    object_:string ->
    body:object_access_control ->
    ?generation:string ->
    ?user_project:string ->
    unit ->
    object_access_control Google_api.Call.t
  (** Creates a new ACL entry on the specified object.

      [POST b/{bucket}/o/{object}/acl]

      - [bucket]: Name of a bucket.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val list :
    bucket:string ->
    object_:string ->
    ?generation:string ->
    ?user_project:string ->
    unit ->
    object_access_controls Google_api.Call.t
  (** Retrieves ACL entries on the specified object.

      [GET b/{bucket}/o/{object}/acl]

      - [bucket]: Name of a bucket.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val patch :
    bucket:string ->
    object_:string ->
    entity:string ->
    body:object_access_control ->
    ?generation:string ->
    ?user_project:string ->
    unit ->
    object_access_control Google_api.Call.t
  (** Patches an ACL entry on the specified object.

      [PATCH b/{bucket}/o/{object}/acl/{entity}]

      - [bucket]: Name of a bucket.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val update :
    bucket:string ->
    object_:string ->
    entity:string ->
    body:object_access_control ->
    ?generation:string ->
    ?user_project:string ->
    unit ->
    object_access_control Google_api.Call.t
  (** Updates an ACL entry on the specified object.

      [PUT b/{bucket}/o/{object}/acl/{entity}]

      - [bucket]: Name of a bucket.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [entity]: The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)
end

module Objects : sig
  val bulk_restore :
    bucket:string ->
    body:bulk_restore_objects_request ->
    unit ->
    google_longrunning_operation Google_api.Call.t
  (** Initiates a long-running bulk restore operation on the specified bucket.

      [POST b/{bucket}/o/bulkRestore]

      - [bucket]: Name of the bucket in which the object resides. *)

  val compose :
    destination_bucket:string ->
    destination_object:string ->
    body:compose_request ->
    ?destination_predefined_acl:[ `Authenticated_read | `Bucket_owner_full_control | `Bucket_owner_read | `Private | `Project_private | `Public_read | `Unrecognized of string ] ->
    ?drop_context_groups:string list ->
    ?if_generation_match:string ->
    ?if_metageneration_match:string ->
    ?kms_key_name:string ->
    ?user_project:string ->
    unit ->
    object_ Google_api.Call.t
  (** Concatenates a list of existing objects into a new object in the same bucket.

      [POST b/{destinationBucket}/o/{destinationObject}/compose]

      - [destination_bucket]: Name of the bucket containing the source objects. The destination object is stored in this bucket.
      - [destination_object]: Name of the new object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [destination_predefined_acl]: Apply a predefined set of access controls to the destination object.
      - [drop_context_groups]: Specifies which object context groups to drop from the source object(s) during a compose operation. The accepted value is 'custom'.
      Destination contexts behave as follows:
      - When request body contexts are provided, they override all source contexts.
      - When no request body contexts are provided, source contexts are preserved unless 'dropContextGroups' contains 'custom', in which case all contexts are dropped.
      - [if_generation_match]: Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
      - [if_metageneration_match]: Makes the operation conditional on whether the object's current metageneration matches the given value.
      - [kms_key_name]: Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val copy :
    source_bucket:string ->
    source_object:string ->
    destination_bucket:string ->
    destination_object:string ->
    body:object_ ->
    ?destination_kms_key_name:string ->
    ?destination_predefined_acl:[ `Authenticated_read | `Bucket_owner_full_control | `Bucket_owner_read | `Private | `Project_private | `Public_read | `Unrecognized of string ] ->
    ?if_generation_match:string ->
    ?if_generation_not_match:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?if_source_generation_match:string ->
    ?if_source_generation_not_match:string ->
    ?if_source_metageneration_match:string ->
    ?if_source_metageneration_not_match:string ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?source_generation:string ->
    ?user_project:string ->
    unit ->
    object_ Google_api.Call.t
  (** Copies a source object to a destination object. Optionally overrides metadata.

      [POST b/{sourceBucket}/o/{sourceObject}/copyTo/b/{destinationBucket}/o/{destinationObject}]

      - [source_bucket]: Name of the bucket in which to find the source object.
      - [source_object]: Name of the source object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [destination_bucket]: Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any.For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [destination_object]: Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any.
      - [destination_kms_key_name]: Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any.
      - [destination_predefined_acl]: Apply a predefined set of access controls to the destination object.
      - [if_generation_match]: Makes the operation conditional on whether the destination object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
      - [if_generation_not_match]: Makes the operation conditional on whether the destination object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
      - [if_metageneration_match]: Makes the operation conditional on whether the destination object's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the operation conditional on whether the destination object's current metageneration does not match the given value.
      - [if_source_generation_match]: Makes the operation conditional on whether the source object's current generation matches the given value.
      - [if_source_generation_not_match]: Makes the operation conditional on whether the source object's current generation does not match the given value.
      - [if_source_metageneration_match]: Makes the operation conditional on whether the source object's current metageneration matches the given value.
      - [if_source_metageneration_not_match]: Makes the operation conditional on whether the source object's current metageneration does not match the given value.
      - [projection]: Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
      - [source_generation]: If present, selects a specific revision of the source object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val delete :
    bucket:string ->
    object_:string ->
    ?generation:string ->
    ?if_generation_match:string ->
    ?if_generation_not_match:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?user_project:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes an object and its metadata. Deletions are permanent if versioning is not enabled for the bucket, or if the generation parameter is used.

      [DELETE b/{bucket}/o/{object}]

      - [bucket]: Name of the bucket in which the object resides.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [generation]: If present, permanently deletes a specific revision of this object (as opposed to the latest version, the default).
      - [if_generation_match]: Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
      - [if_generation_not_match]: Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
      - [if_metageneration_match]: Makes the operation conditional on whether the object's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the operation conditional on whether the object's current metageneration does not match the given value.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val get :
    bucket:string ->
    object_:string ->
    ?generation:string ->
    ?if_generation_match:string ->
    ?if_generation_not_match:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?restore_token:string ->
    ?soft_deleted:bool ->
    ?user_project:string ->
    unit ->
    object_ Google_api.Call.t
  (** Retrieves an object or its metadata.

      [GET b/{bucket}/o/{object}]

      - [bucket]: Name of the bucket in which the object resides.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [if_generation_match]: Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
      - [if_generation_not_match]: Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
      - [if_metageneration_match]: Makes the operation conditional on whether the object's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the operation conditional on whether the object's current metageneration does not match the given value.
      - [projection]: Set of properties to return. Defaults to noAcl.
      - [restore_token]: Restore token used to differentiate soft-deleted objects with the same name and generation. Only applicable for hierarchical namespace buckets and if softDeleted is set to true. This parameter is optional, and is only required in the rare case when there are multiple soft-deleted objects with the same name and generation.
      - [soft_deleted]: If true, only soft-deleted object versions will be listed. The default is false. For more information, see \[Soft Delete\](https://cloud.google.com/storage/docs/soft-delete).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val get_media :
    bucket:string ->
    object_:string ->
    ?generation:string ->
    ?if_generation_match:string ->
    ?if_generation_not_match:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?restore_token:string ->
    ?soft_deleted:bool ->
    ?user_project:string ->
    unit ->
    string Google_api.Call.t
  (** Retrieves an object or its metadata.

      Downloads the content: the response body, as is.

      [GET b/{bucket}/o/{object}?alt=media]

      - [bucket]: Name of the bucket in which the object resides.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [if_generation_match]: Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
      - [if_generation_not_match]: Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
      - [if_metageneration_match]: Makes the operation conditional on whether the object's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the operation conditional on whether the object's current metageneration does not match the given value.
      - [projection]: Set of properties to return. Defaults to noAcl.
      - [restore_token]: Restore token used to differentiate soft-deleted objects with the same name and generation. Only applicable for hierarchical namespace buckets and if softDeleted is set to true. This parameter is optional, and is only required in the rare case when there are multiple soft-deleted objects with the same name and generation.
      - [soft_deleted]: If true, only soft-deleted object versions will be listed. The default is false. For more information, see \[Soft Delete\](https://cloud.google.com/storage/docs/soft-delete).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val get_iam_policy :
    bucket:string ->
    object_:string ->
    ?generation:string ->
    ?user_project:string ->
    unit ->
    policy Google_api.Call.t
  (** Returns an IAM policy for the specified object.

      [GET b/{bucket}/o/{object}/iam]

      - [bucket]: Name of the bucket in which the object resides.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val insert :
    bucket:string ->
    body:object_ ->
    ?content_encoding:string ->
    ?if_generation_match:string ->
    ?if_generation_not_match:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?kms_key_name:string ->
    ?name:string ->
    ?predefined_acl:[ `Authenticated_read | `Bucket_owner_full_control | `Bucket_owner_read | `Private | `Project_private | `Public_read | `Unrecognized of string ] ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?user_project:string ->
    unit ->
    object_ Google_api.Call.t
  (** Stores a new object and metadata.

      [POST b/{bucket}/o]

      - [bucket]: Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any.
      - [content_encoding]: If set, sets the contentEncoding property of the final object to this value. Setting this parameter is equivalent to setting the contentEncoding metadata property. This can be useful when uploading an object with uploadType=media to indicate the encoding of the content being uploaded.
      - [if_generation_match]: Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
      - [if_generation_not_match]: Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
      - [if_metageneration_match]: Makes the operation conditional on whether the object's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the operation conditional on whether the object's current metageneration does not match the given value.
      - [kms_key_name]: Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any.
      - [name]: Name of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [predefined_acl]: Apply a predefined set of access controls to this object.
      - [projection]: Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val list :
    bucket:string ->
    ?delimiter:string ->
    ?end_offset:string ->
    ?filter:string ->
    ?include_folders_as_prefixes:bool ->
    ?include_trailing_delimiter:bool ->
    ?match_glob:string ->
    ?max_results:int ->
    ?page_token:string ->
    ?prefix:string ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?soft_deleted:bool ->
    ?start_offset:string ->
    ?user_project:string ->
    ?versions:bool ->
    unit ->
    objects Google_api.Call.t
  (** Retrieves a list of objects matching the criteria.

      [GET b/{bucket}/o]

      - [bucket]: Name of the bucket in which to look for objects.
      - [delimiter]: Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted.
      - [end_offset]: Filter results to objects whose names are lexicographically before endOffset. If startOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
      - [filter]: Filter the returned objects. Currently only supported for the contexts field. If delimiter is set, the returned prefixes are exempt from this filter.
      - [include_folders_as_prefixes]: Only applicable if delimiter is set to '/'. If true, will also include folders and managed folders (besides objects) in the returned prefixes.
      - [include_trailing_delimiter]: If true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition to prefixes.
      - [match_glob]: Filter results to objects and prefixes that match this glob pattern.
      - [max_results]: Maximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, fewer total results may be returned than requested. The service will use this parameter or 1,000 items, whichever is smaller.
      - [page_token]: A previously-returned page token representing part of the larger set of results to view.
      - [prefix]: Filter results to objects whose names begin with this prefix.
      - [projection]: Set of properties to return. Defaults to noAcl.
      - [soft_deleted]: If true, only soft-deleted object versions will be listed. The default is false. For more information, see \[Soft Delete\](https://cloud.google.com/storage/docs/soft-delete).
      - [start_offset]: Filter results to objects whose names are lexicographically equal to or after startOffset. If endOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets.
      - [versions]: If true, lists all versions of an object as distinct results. The default is false. For more information, see \[Object Versioning\](https://cloud.google.com/storage/docs/object-versioning). *)

  val move :
    bucket:string ->
    source_object:string ->
    destination_object:string ->
    ?if_generation_match:string ->
    ?if_generation_not_match:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?if_source_generation_match:string ->
    ?if_source_generation_not_match:string ->
    ?if_source_metageneration_match:string ->
    ?if_source_metageneration_not_match:string ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?user_project:string ->
    unit ->
    object_ Google_api.Call.t
  (** Moves the source object to the destination object in the same bucket.

      [POST b/{bucket}/o/{sourceObject}/moveTo/o/{destinationObject}]

      - [bucket]: Name of the bucket in which the object resides.
      - [source_object]: Name of the source object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [destination_object]: Name of the destination object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [if_generation_match]: Makes the operation conditional on whether the destination object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object. `ifGenerationMatch` and `ifGenerationNotMatch` conditions are mutually exclusive: it's an error for both of them to be set in the request.
      - [if_generation_not_match]: Makes the operation conditional on whether the destination object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.`ifGenerationMatch` and `ifGenerationNotMatch` conditions are mutually exclusive: it's an error for both of them to be set in the request.
      - [if_metageneration_match]: Makes the operation conditional on whether the destination object's current metageneration matches the given value. `ifMetagenerationMatch` and `ifMetagenerationNotMatch` conditions are mutually exclusive: it's an error for both of them to be set in the request.
      - [if_metageneration_not_match]: Makes the operation conditional on whether the destination object's current metageneration does not match the given value. `ifMetagenerationMatch` and `ifMetagenerationNotMatch` conditions are mutually exclusive: it's an error for both of them to be set in the request.
      - [if_source_generation_match]: Makes the operation conditional on whether the source object's current generation matches the given value. `ifSourceGenerationMatch` and `ifSourceGenerationNotMatch` conditions are mutually exclusive: it's an error for both of them to be set in the request.
      - [if_source_generation_not_match]: Makes the operation conditional on whether the source object's current generation does not match the given value. `ifSourceGenerationMatch` and `ifSourceGenerationNotMatch` conditions are mutually exclusive: it's an error for both of them to be set in the request.
      - [if_source_metageneration_match]: Makes the operation conditional on whether the source object's current metageneration matches the given value. `ifSourceMetagenerationMatch` and `ifSourceMetagenerationNotMatch` conditions are mutually exclusive: it's an error for both of them to be set in the request.
      - [if_source_metageneration_not_match]: Makes the operation conditional on whether the source object's current metageneration does not match the given value. `ifSourceMetagenerationMatch` and `ifSourceMetagenerationNotMatch` conditions are mutually exclusive: it's an error for both of them to be set in the request.
      - [projection]: Set of properties to return. Defaults to noAcl.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val patch :
    bucket:string ->
    object_:string ->
    body:object_ ->
    ?generation:string ->
    ?if_generation_match:string ->
    ?if_generation_not_match:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?override_unlocked_retention:bool ->
    ?predefined_acl:[ `Authenticated_read | `Bucket_owner_full_control | `Bucket_owner_read | `Private | `Project_private | `Public_read | `Unrecognized of string ] ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?user_project:string ->
    unit ->
    object_ Google_api.Call.t
  (** Patches an object's metadata.

      [PATCH b/{bucket}/o/{object}]

      - [bucket]: Name of the bucket in which the object resides.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [if_generation_match]: Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
      - [if_generation_not_match]: Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
      - [if_metageneration_match]: Makes the operation conditional on whether the object's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the operation conditional on whether the object's current metageneration does not match the given value.
      - [override_unlocked_retention]: Must be true to remove the retention configuration, reduce its unlocked retention period, or change its mode from unlocked to locked.
      - [predefined_acl]: Apply a predefined set of access controls to this object.
      - [projection]: Set of properties to return. Defaults to full.
      - [user_project]: The project to be billed for this request, for Requester Pays buckets. *)

  val restore :
    bucket:string ->
    object_:string ->
    generation:string ->
    ?copy_source_acl:bool ->
    ?if_generation_match:string ->
    ?if_generation_not_match:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?restore_token:string ->
    ?user_project:string ->
    unit ->
    object_ Google_api.Call.t
  (** Restores a soft-deleted object.

      [POST b/{bucket}/o/{object}/restore]

      - [bucket]: Name of the bucket in which the object resides.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [generation]: Selects a specific revision of this object.
      - [copy_source_acl]: If true, copies the source object's ACL; otherwise, uses the bucket's default object ACL. The default is false.
      - [if_generation_match]: Makes the operation conditional on whether the object's one live generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
      - [if_generation_not_match]: Makes the operation conditional on whether none of the object's live generations match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
      - [if_metageneration_match]: Makes the operation conditional on whether the object's one live metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the operation conditional on whether none of the object's live metagenerations match the given value.
      - [projection]: Set of properties to return. Defaults to full.
      - [restore_token]: Restore token used to differentiate sof-deleted objects with the same name and generation. Only applicable for hierarchical namespace buckets. This parameter is optional, and is only required in the rare case when there are multiple soft-deleted objects with the same name and generation.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val rewrite :
    source_bucket:string ->
    source_object:string ->
    destination_bucket:string ->
    destination_object:string ->
    body:object_ ->
    ?destination_kms_key_name:string ->
    ?destination_predefined_acl:[ `Authenticated_read | `Bucket_owner_full_control | `Bucket_owner_read | `Private | `Project_private | `Public_read | `Unrecognized of string ] ->
    ?drop_context_groups:string list ->
    ?if_generation_match:string ->
    ?if_generation_not_match:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?if_source_generation_match:string ->
    ?if_source_generation_not_match:string ->
    ?if_source_metageneration_match:string ->
    ?if_source_metageneration_not_match:string ->
    ?max_bytes_rewritten_per_call:string ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?rewrite_token:string ->
    ?source_generation:string ->
    ?user_project:string ->
    unit ->
    rewrite_response Google_api.Call.t
  (** Rewrites a source object to a destination object. Optionally overrides metadata.

      [POST b/{sourceBucket}/o/{sourceObject}/rewriteTo/b/{destinationBucket}/o/{destinationObject}]

      - [source_bucket]: Name of the bucket in which to find the source object.
      - [source_object]: Name of the source object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [destination_bucket]: Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any.
      - [destination_object]: Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [destination_kms_key_name]: Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any.
      - [destination_predefined_acl]: Apply a predefined set of access controls to the destination object.
      - [drop_context_groups]: Specifies which object context groups to drop from the source object during a copy operation. The accepted value is 'custom'.
      Destination contexts behave as follows:
      - When request body contexts are provided, they override all source contexts.
      - When no request body contexts are provided, source contexts are preserved unless 'dropContextGroups' contains 'custom', in which case all contexts are dropped.
      - [if_generation_match]: Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
      - [if_generation_not_match]: Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
      - [if_metageneration_match]: Makes the operation conditional on whether the destination object's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the operation conditional on whether the destination object's current metageneration does not match the given value.
      - [if_source_generation_match]: Makes the operation conditional on whether the source object's current generation matches the given value.
      - [if_source_generation_not_match]: Makes the operation conditional on whether the source object's current generation does not match the given value.
      - [if_source_metageneration_match]: Makes the operation conditional on whether the source object's current metageneration matches the given value.
      - [if_source_metageneration_not_match]: Makes the operation conditional on whether the source object's current metageneration does not match the given value.
      - [max_bytes_rewritten_per_call]: The maximum number of bytes that will be rewritten per rewrite request. Most callers shouldn't need to specify this parameter - it is primarily in place to support testing. If specified the value must be an integral multiple of 1 MiB (1048576). Also, this only applies to requests where the source and destination span locations and/or storage classes. Finally, this value must not change across rewrite calls else you'll get an error that the rewriteToken is invalid.
      - [projection]: Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
      - [rewrite_token]: Include this field (from the previous rewrite response) on each rewrite request after the first one, until the rewrite response 'done' flag is true. Calls that provide a rewriteToken can omit all other request fields, but if included those fields must match the values provided in the first rewrite request.
      - [source_generation]: If present, selects a specific revision of the source object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val set_iam_policy :
    bucket:string ->
    object_:string ->
    body:policy ->
    ?generation:string ->
    ?user_project:string ->
    unit ->
    policy Google_api.Call.t
  (** Updates an IAM policy for the specified object.

      [PUT b/{bucket}/o/{object}/iam]

      - [bucket]: Name of the bucket in which the object resides.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val test_iam_permissions :
    bucket:string ->
    object_:string ->
    permissions:string list ->
    ?generation:string ->
    ?user_project:string ->
    unit ->
    test_iam_permissions_response Google_api.Call.t
  (** Tests a set of permissions on the given object to see which, if any, are held by the caller.

      [GET b/{bucket}/o/{object}/iam/testPermissions]

      - [bucket]: Name of the bucket in which the object resides.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [permissions]: Permissions to test.
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val update :
    bucket:string ->
    object_:string ->
    body:object_ ->
    ?generation:string ->
    ?if_generation_match:string ->
    ?if_generation_not_match:string ->
    ?if_metageneration_match:string ->
    ?if_metageneration_not_match:string ->
    ?override_unlocked_retention:bool ->
    ?predefined_acl:[ `Authenticated_read | `Bucket_owner_full_control | `Bucket_owner_read | `Private | `Project_private | `Public_read | `Unrecognized of string ] ->
    ?projection:[ `Full | `No_acl | `Unrecognized of string ] ->
    ?user_project:string ->
    unit ->
    object_ Google_api.Call.t
  (** Updates an object's metadata.

      [PUT b/{bucket}/o/{object}]

      - [bucket]: Name of the bucket in which the object resides.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [if_generation_match]: Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
      - [if_generation_not_match]: Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
      - [if_metageneration_match]: Makes the operation conditional on whether the object's current metageneration matches the given value.
      - [if_metageneration_not_match]: Makes the operation conditional on whether the object's current metageneration does not match the given value.
      - [override_unlocked_retention]: Must be true to remove the retention configuration, reduce its unlocked retention period, or change its mode from unlocked to locked.
      - [predefined_acl]: Apply a predefined set of access controls to this object.
      - [projection]: Set of properties to return. Defaults to full.
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)

  val view_full_context :
    bucket:string ->
    object_:string ->
    context_key:string ->
    ?generation:string ->
    ?user_project:string ->
    unit ->
    object_full_context Google_api.Call.t
  (** Retrieves a specific object context with its extended data for a given object.

      [GET b/{bucket}/o/{object}/viewFullContext]

      - [bucket]: Name of the bucket in which the object resides.
      - [object_]: Name of the object. For information about how to URL encode object names to be path safe, see \[Encoding URI Path Parts\](https://cloud.google.com/storage/docs/request-endpoints#encoding).
      - [context_key]: Key identifying the object context to retrieve.
      - [generation]: If present, selects a specific revision of this object (as opposed to the latest version, the default).
      - [user_project]: The project to be billed for this request. Required for Requester Pays buckets. *)
end

module Operations : sig
  val advance_relocate_bucket :
    bucket:string ->
    operation_id:string ->
    body:advance_relocate_bucket_operation_request ->
    unit ->
    unit Google_api.Call.t
  (** Starts asynchronous advancement of the relocate bucket operation in the case of required write downtime, to allow it to lock the bucket at the source location, and proceed with the bucket location swap. The server makes a best effort to advance the relocate bucket operation, but success is not guaranteed.

      [POST b/{bucket}/operations/{operationId}/advanceRelocateBucket]

      - [bucket]: Name of the bucket to advance the relocate for.
      - [operation_id]: ID of the operation resource. *)

  val cancel :
    bucket:string ->
    operation_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed.

      [POST b/{bucket}/operations/{operationId}/cancel]

      - [bucket]: The parent bucket of the operation resource.
      - [operation_id]: The ID of the operation resource. *)

  val get :
    bucket:string ->
    operation_id:string ->
    unit ->
    google_longrunning_operation Google_api.Call.t
  (** Gets the latest state of a long-running operation.

      [GET b/{bucket}/operations/{operationId}]

      - [bucket]: The parent bucket of the operation resource.
      - [operation_id]: The ID of the operation resource. *)

  val list :
    bucket:string ->
    ?filter:string ->
    ?page_size:int ->
    ?page_token:string ->
    unit ->
    google_longrunning_list_operations_response Google_api.Call.t
  (** Lists operations that match the specified filter in the request.

      [GET b/{bucket}/operations]

      - [bucket]: Name of the bucket in which to look for operations.
      - [filter]: A filter to narrow down results to a preferred subset. The filtering language is documented in more detail in \[AIP-160\](https://google.aip.dev/160).
      - [page_size]: Maximum number of items to return in a single page of responses. Fewer total results may be returned than requested. The service uses this parameter or 100 items, whichever is smaller.
      - [page_token]: A previously-returned page token representing part of the larger set of results to view. *)
end

module Projects : sig
  module Hmac_keys : sig
    val create :
      project_id:string ->
      service_account_email:string ->
      ?user_project:string ->
      unit ->
      hmac_key Google_api.Call.t
    (** Creates a new HMAC key for the specified service account.

        [POST projects/{projectId}/hmacKeys]

        - [project_id]: Project ID owning the service account.
        - [service_account_email]: Email address of the service account.
        - [user_project]: The project to be billed for this request. *)

    val delete :
      project_id:string ->
      access_id:string ->
      ?user_project:string ->
      unit ->
      unit Google_api.Call.t
    (** Deletes an HMAC key.

        [DELETE projects/{projectId}/hmacKeys/{accessId}]

        - [project_id]: Project ID owning the requested key
        - [access_id]: Name of the HMAC key to be deleted.
        - [user_project]: The project to be billed for this request. *)

    val get :
      project_id:string ->
      access_id:string ->
      ?user_project:string ->
      unit ->
      hmac_key_metadata Google_api.Call.t
    (** Retrieves an HMAC key's metadata

        [GET projects/{projectId}/hmacKeys/{accessId}]

        - [project_id]: Project ID owning the service account of the requested key.
        - [access_id]: Name of the HMAC key.
        - [user_project]: The project to be billed for this request. *)

    val list :
      project_id:string ->
      ?max_results:int ->
      ?page_token:string ->
      ?service_account_email:string ->
      ?show_deleted_keys:bool ->
      ?user_project:string ->
      unit ->
      hmac_keys_metadata Google_api.Call.t
    (** Retrieves a list of HMAC keys matching the criteria.

        [GET projects/{projectId}/hmacKeys]

        - [project_id]: Name of the project in which to look for HMAC keys.
        - [max_results]: Maximum number of items to return in a single page of responses. The service uses this parameter or 250 items, whichever is smaller. The max number of items per page will also be limited by the number of distinct service accounts in the response. If the number of service accounts in a single response is too high, the page will truncated and a next page token will be returned.
        - [page_token]: A previously-returned page token representing part of the larger set of results to view.
        - [service_account_email]: If present, only keys for the given service account are returned.
        - [show_deleted_keys]: Whether or not to show keys in the DELETED state.
        - [user_project]: The project to be billed for this request. *)

    val update :
      project_id:string ->
      access_id:string ->
      body:hmac_key_metadata ->
      ?user_project:string ->
      unit ->
      hmac_key_metadata Google_api.Call.t
    (** Updates the state of an HMAC key. See the \[HMAC Key resource descriptor\](https://cloud.google.com/storage/docs/json_api/v1/projects/hmacKeys/update#request-body) for valid states.

        [PUT projects/{projectId}/hmacKeys/{accessId}]

        - [project_id]: Project ID owning the service account of the updated key.
        - [access_id]: Name of the HMAC key being updated.
        - [user_project]: The project to be billed for this request. *)
  end

  module Service_account : sig
    val get :
      project_id:string ->
      ?user_project:string ->
      unit ->
      service_account Google_api.Call.t
    (** Get the email address of this project's Google Cloud Storage service account.

        [GET projects/{projectId}/serviceAccount]

        - [project_id]: Project ID
        - [user_project]: The project to be billed for this request. *)
  end
end

module Rapid_caches : sig
  val disable :
    bucket:string ->
    rapid_cache_id:string ->
    unit ->
    google_longrunning_operation Google_api.Call.t
  (** Disables a Rapid Cache instance.

      [POST b/{bucket}/rapidCaches/{rapidCacheId}/disable]

      - [bucket]: Name of the parent bucket.
      - [rapid_cache_id]: The ID of the requested Rapid Cache instance. *)

  val get :
    bucket:string ->
    rapid_cache_id:string ->
    unit ->
    rapid_cache Google_api.Call.t
  (** Returns the metadata of a Rapid Cache instance.

      [GET b/{bucket}/rapidCaches/{rapidCacheId}]

      - [bucket]: Name of the parent bucket.
      - [rapid_cache_id]: The ID of the requested Rapid Cache instance. *)

  val insert :
    bucket:string ->
    body:rapid_cache ->
    unit ->
    google_longrunning_operation Google_api.Call.t
  (** Creates a Rapid Cache instance.

      [POST b/{bucket}/rapidCaches]

      - [bucket]: Name of the parent bucket. *)

  val list :
    bucket:string ->
    ?page_size:int ->
    ?page_token:string ->
    unit ->
    rapid_caches Google_api.Call.t
  (** Returns a list of Rapid Cache instances of the bucket.

      [GET b/{bucket}/rapidCaches]

      - [bucket]: Name of the parent bucket.
      - [page_size]: Maximum number of items to return in a single page of responses.
      - [page_token]: A previously-returned page token representing part of the larger set of results to view. *)

  val update :
    bucket:string ->
    rapid_cache_id:string ->
    body:rapid_cache ->
    unit ->
    google_longrunning_operation Google_api.Call.t
  (** Updates the configuration of a Rapid Cache instance.

      [PATCH b/{bucket}/rapidCaches/{rapidCacheId}]

      - [bucket]: Name of the parent bucket.
      - [rapid_cache_id]: The ID of the requested Rapid Cache instance. *)
end
