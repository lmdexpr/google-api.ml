(* Generated from the Discovery document of pubsub v1 (revision 20261002). Do not edit. *)

[@@@alert "-internal"]

type ai_inference = {
  endpoint : string option;
  service_account_email : string option;
  unstructured_inference : unstructured_inference option;
}

and acknowledge_request = {
  ack_ids : string list option;
}

and analytics_hub_subscription_info = {
  listing : string option;
  subscription : string option;
}

and avro_config = {
  use_topic_schema : bool option;
  write_metadata : bool option;
}

and avro_format = Yojson.Safe.t

and aws_kinesis = {
  aws_role_arn : string option;
  consumer_arn : string option;
  gcp_service_account : string option;
  state : [ `State_unspecified | `Active | `Kinesis_permission_denied | `Publish_permission_denied | `Stream_not_found | `Consumer_not_found | `Conflicting_region_constraints | `Unrecognized of string ] option;
  stream_arn : string option;
}

and aws_msk = {
  aws_role_arn : string option;
  cluster_arn : string option;
  gcp_service_account : string option;
  state : [ `State_unspecified | `Active | `Msk_permission_denied | `Publish_permission_denied | `Cluster_not_found | `Topic_not_found | `Conflicting_region_constraints | `Unrecognized of string ] option;
  topic : string option;
}

and azure_event_hubs = {
  client_id : string option;
  event_hub : string option;
  gcp_service_account : string option;
  namespace : string option;
  resource_group : string option;
  state : [ `State_unspecified | `Active | `Event_hubs_permission_denied | `Publish_permission_denied | `Namespace_not_found | `Event_hub_not_found | `Subscription_not_found | `Resource_group_not_found | `Conflicting_region_constraints | `Unrecognized of string ] option;
  subscription_id : string option;
  tenant_id : string option;
}

and big_query_config = {
  drop_unknown_fields : bool option;
  service_account_email : string option;
  state : [ `State_unspecified | `Active | `Permission_denied | `Not_found | `Schema_mismatch | `In_transit_location_restriction | `Vertex_ai_location_restriction | `Unrecognized of string ] option;
  table : string option;
  use_table_schema : bool option;
  use_topic_schema : bool option;
  write_metadata : bool option;
}

and bigtable_config = {
  app_profile_id : string option;
  column_family_mapping : column_family_mapping option;
  service_account_email : string option;
  state : [ `State_unspecified | `Active | `Not_found | `App_profile_misconfigured | `Permission_denied | `Schema_mismatch | `In_transit_location_restriction | `Vertex_ai_location_restriction | `Unrecognized of string ] option;
  table : string option;
  write_metadata : bool option;
}

and binding = {
  condition : expr option;
  members : string list option;
  role : string option;
}

and cloud_storage = {
  avro_format : avro_format option;
  bucket : string option;
  match_glob : string option;
  minimum_object_create_time : string option;
  pubsub_avro_format : pub_sub_avro_format option;
  state : [ `State_unspecified | `Active | `Cloud_storage_permission_denied | `Publish_permission_denied | `Bucket_not_found | `Too_many_objects | `Conflicting_region_constraints | `Unrecognized of string ] option;
  text_format : text_format option;
}

and cloud_storage_config = {
  avro_config : avro_config option;
  bucket : string option;
  filename_datetime_format : string option;
  filename_prefix : string option;
  filename_suffix : string option;
  max_bytes : string option;
  max_duration : string option;
  max_messages : string option;
  service_account_email : string option;
  state : [ `State_unspecified | `Active | `Permission_denied | `Not_found | `In_transit_location_restriction | `Schema_mismatch | `Vertex_ai_location_restriction | `Unrecognized of string ] option;
  text_config : text_config option;
}

and column_family_mapping = {
  delimited_key : delimited_key option;
  row_key_schema : row_key_schema option;
}

and commit_schema_request = {
  schema : schema option;
}

and compiled_proto_schema = {
  compiled_bytes : string option;
  root_message : string option;
}

and compression = {
  compression_algorithm : [ `Compression_algorithm_unspecified | `Zlib | `Unrecognized of string ] option;
  compression_mode : [ `Compression_mode_unspecified | `Compress | `Decompress | `Unrecognized of string ] option;
}

and confluent_cloud = {
  bootstrap_server : string option;
  cluster_id : string option;
  gcp_service_account : string option;
  identity_pool_id : string option;
  state : [ `State_unspecified | `Active | `Confluent_cloud_permission_denied | `Publish_permission_denied | `Unreachable_bootstrap_server | `Cluster_not_found | `Topic_not_found | `Conflicting_region_constraints | `Unrecognized of string ] option;
  topic : string option;
}

and create_snapshot_request = {
  labels : (string * string) list option;
  subscription : string option;
  tags : (string * string) list option;
}

and dead_letter_policy = {
  dead_letter_topic : string option;
  max_delivery_attempts : int option;
}

and delimited_key = {
  delimiter : string option;
  key_fields : string list option;
}

and detach_subscription_response = Yojson.Safe.t

and empty = Yojson.Safe.t

and expiration_policy = {
  ttl : string option;
}

and expr = {
  description : string option;
  expression : string option;
  location : string option;
  title : string option;
}

and ingestion_data_source_settings = {
  aws_kinesis : aws_kinesis option;
  aws_msk : aws_msk option;
  azure_event_hubs : azure_event_hubs option;
  cloud_storage : cloud_storage option;
  confluent_cloud : confluent_cloud option;
  platform_logs_settings : platform_logs_settings option;
}

and java_script_udf = {
  code : string option;
  function_name : string option;
}

and list_schema_revisions_response = {
  next_page_token : string option;
  schemas : schema list option;
}

and list_schemas_response = {
  next_page_token : string option;
  schemas : schema list option;
}

and list_snapshots_response = {
  next_page_token : string option;
  snapshots : snapshot list option;
}

and list_subscriptions_response = {
  next_page_token : string option;
  subscriptions : subscription list option;
}

and list_topic_snapshots_response = {
  next_page_token : string option;
  snapshots : string list option;
}

and list_topic_subscriptions_response = {
  next_page_token : string option;
  subscriptions : string list option;
}

and list_topics_response = {
  next_page_token : string option;
  topics : topic list option;
}

and message_storage_policy = {
  allowed_persistence_regions : string list option;
  enforce_in_transit : bool option;
}

and message_transform = {
  ai_inference : ai_inference option;
  compression : compression option;
  disabled : bool option;
  enabled : bool option;
  javascript_udf : java_script_udf option;
}

and modify_ack_deadline_request = {
  ack_deadline_seconds : int option;
  ack_ids : string list option;
}

and modify_push_config_request = {
  push_config : push_config option;
}

and no_wrapper = {
  write_metadata : bool option;
}

and oidc_token = {
  audience : string option;
  service_account_email : string option;
}

and platform_logs_settings = {
  severity : [ `Severity_unspecified | `Disabled | `Debug | `Info | `Warning | `Error | `Unrecognized of string ] option;
}

and policy = {
  bindings : binding list option;
  etag : string option;
  version : int option;
}

and pub_sub_avro_format = Yojson.Safe.t

and publish_operation = {
  hedged_attempt_count : int option;
  publish_start_time : string option;
}

and publish_request = {
  messages : pubsub_message list option;
}

and publish_response = {
  message_ids : string list option;
}

and pubsub_client_telemetry = {
  publish_operation : publish_operation option;
}

and pubsub_message = {
  attributes : (string * string) list option;
  data : string option;
  message_id : string option;
  ordering_key : string option;
  publish_time : string option;
}

and pubsub_wrapper = Yojson.Safe.t

and pull_request = {
  max_messages : int option;
  return_immediately : bool option;
}

and pull_response = {
  received_messages : received_message list option;
}

and push_config = {
  attributes : (string * string) list option;
  no_wrapper : no_wrapper option;
  oidc_token : oidc_token option;
  pubsub_wrapper : pubsub_wrapper option;
  push_endpoint : string option;
}

and received_message = {
  ack_id : string option;
  delivery_attempt : int option;
  message : pubsub_message option;
}

and retry_policy = {
  maximum_backoff : string option;
  minimum_backoff : string option;
}

and rollback_schema_request = {
  revision_id : string option;
}

and row_key_schema = Yojson.Safe.t

and schema = {
  compiled_proto_schema : compiled_proto_schema option;
  definition : string option;
  name : string option;
  revision_create_time : string option;
  revision_id : string option;
  type_ : [ `Type_unspecified | `Protocol_buffer | `Avro | `Unrecognized of string ] option;
}

and schema_settings = {
  encoding : [ `Encoding_unspecified | `Json | `Binary | `Unrecognized of string ] option;
  first_revision_id : string option;
  last_revision_id : string option;
  schema : string option;
}

and seek_request = {
  snapshot : string option;
  time : string option;
}

and seek_response = Yojson.Safe.t

and set_iam_policy_request = {
  policy : policy option;
}

and snapshot = {
  expire_time : string option;
  labels : (string * string) list option;
  name : string option;
  topic : string option;
}

and subscription = {
  ack_deadline_seconds : int option;
  analytics_hub_subscription_info : analytics_hub_subscription_info option;
  bigquery_config : big_query_config option;
  bigtable_config : bigtable_config option;
  cloud_storage_config : cloud_storage_config option;
  dead_letter_policy : dead_letter_policy option;
  detached : bool option;
  enable_exactly_once_delivery : bool option;
  enable_message_ordering : bool option;
  expiration_policy : expiration_policy option;
  filter : string option;
  labels : (string * string) list option;
  message_retention_duration : string option;
  message_transforms : message_transform list option;
  name : string option;
  push_config : push_config option;
  retain_acked_messages : bool option;
  retry_policy : retry_policy option;
  state : [ `State_unspecified | `Active | `Resource_error | `Unrecognized of string ] option;
  tags : (string * string) list option;
  topic : string option;
  topic_message_retention_duration : string option;
}

and test_iam_permissions_request = {
  permissions : string list option;
}

and test_iam_permissions_response = {
  permissions : string list option;
}

and text_config = Yojson.Safe.t

and text_format = {
  delimiter : string option;
}

and topic = {
  ingestion_data_source_settings : ingestion_data_source_settings option;
  kms_key_name : string option;
  labels : (string * string) list option;
  message_retention_duration : string option;
  message_storage_policy : message_storage_policy option;
  message_transforms : message_transform list option;
  name : string option;
  satisfies_pzs : bool option;
  schema_settings : schema_settings option;
  state : [ `State_unspecified | `Active | `Ingestion_resource_error | `Unrecognized of string ] option;
  tags : (string * string) list option;
}

and unstructured_inference = {
  parameters : (string * Yojson.Safe.t) list option;
}

and update_snapshot_request = {
  snapshot : snapshot option;
  update_mask : string option;
}

and update_subscription_request = {
  subscription : subscription option;
  update_mask : string option;
}

and update_topic_request = {
  topic : topic option;
  update_mask : string option;
}

and validate_message_request = {
  encoding : [ `Encoding_unspecified | `Json | `Binary | `Unrecognized of string ] option;
  message : string option;
  name : string option;
  schema : schema option;
}

and validate_message_response = Yojson.Safe.t

and validate_schema_request = {
  schema : schema option;
}

and validate_schema_response = Yojson.Safe.t

let rec ai_inference_of_yojson json : ai_inference =
  let open Yojson.Safe.Util in
  {
    endpoint = member "endpoint" json |> to_option to_string;
    service_account_email = member "serviceAccountEmail" json |> to_option to_string;
    unstructured_inference = member "unstructuredInference" json |> to_option unstructured_inference_of_yojson;
  }

and yojson_of_ai_inference (value : ai_inference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("endpoint", (fun value -> `String value) field)) value.endpoint;
         Option.map (fun field -> ("serviceAccountEmail", (fun value -> `String value) field)) value.service_account_email;
         Option.map (fun field -> ("unstructuredInference", yojson_of_unstructured_inference field)) value.unstructured_inference;
       ])

and acknowledge_request_of_yojson json : acknowledge_request =
  let open Yojson.Safe.Util in
  {
    ack_ids = member "ackIds" json |> to_option (convert_each to_string);
  }

and yojson_of_acknowledge_request (value : acknowledge_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ackIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.ack_ids;
       ])

and analytics_hub_subscription_info_of_yojson json : analytics_hub_subscription_info =
  let open Yojson.Safe.Util in
  {
    listing = member "listing" json |> to_option to_string;
    subscription = member "subscription" json |> to_option to_string;
  }

and yojson_of_analytics_hub_subscription_info (value : analytics_hub_subscription_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("listing", (fun value -> `String value) field)) value.listing;
         Option.map (fun field -> ("subscription", (fun value -> `String value) field)) value.subscription;
       ])

and avro_config_of_yojson json : avro_config =
  let open Yojson.Safe.Util in
  {
    use_topic_schema = member "useTopicSchema" json |> to_option to_bool;
    write_metadata = member "writeMetadata" json |> to_option to_bool;
  }

and yojson_of_avro_config (value : avro_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("useTopicSchema", (fun value -> `Bool value) field)) value.use_topic_schema;
         Option.map (fun field -> ("writeMetadata", (fun value -> `Bool value) field)) value.write_metadata;
       ])

and avro_format_of_yojson json : avro_format =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_avro_format (value : avro_format) : Yojson.Safe.t = Fun.id value

and aws_kinesis_of_yojson json : aws_kinesis =
  let open Yojson.Safe.Util in
  {
    aws_role_arn = member "awsRoleArn" json |> to_option to_string;
    consumer_arn = member "consumerArn" json |> to_option to_string;
    gcp_service_account = member "gcpServiceAccount" json |> to_option to_string;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "ACTIVE" -> `Active | "KINESIS_PERMISSION_DENIED" -> `Kinesis_permission_denied | "PUBLISH_PERMISSION_DENIED" -> `Publish_permission_denied | "STREAM_NOT_FOUND" -> `Stream_not_found | "CONSUMER_NOT_FOUND" -> `Consumer_not_found | "CONFLICTING_REGION_CONSTRAINTS" -> `Conflicting_region_constraints | value -> `Unrecognized value);
    stream_arn = member "streamArn" json |> to_option to_string;
  }

and yojson_of_aws_kinesis (value : aws_kinesis) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("awsRoleArn", (fun value -> `String value) field)) value.aws_role_arn;
         Option.map (fun field -> ("consumerArn", (fun value -> `String value) field)) value.consumer_arn;
         Option.map (fun field -> ("gcpServiceAccount", (fun value -> `String value) field)) value.gcp_service_account;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Active -> "ACTIVE" | `Kinesis_permission_denied -> "KINESIS_PERMISSION_DENIED" | `Publish_permission_denied -> "PUBLISH_PERMISSION_DENIED" | `Stream_not_found -> "STREAM_NOT_FOUND" | `Consumer_not_found -> "CONSUMER_NOT_FOUND" | `Conflicting_region_constraints -> "CONFLICTING_REGION_CONSTRAINTS" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("streamArn", (fun value -> `String value) field)) value.stream_arn;
       ])

and aws_msk_of_yojson json : aws_msk =
  let open Yojson.Safe.Util in
  {
    aws_role_arn = member "awsRoleArn" json |> to_option to_string;
    cluster_arn = member "clusterArn" json |> to_option to_string;
    gcp_service_account = member "gcpServiceAccount" json |> to_option to_string;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "ACTIVE" -> `Active | "MSK_PERMISSION_DENIED" -> `Msk_permission_denied | "PUBLISH_PERMISSION_DENIED" -> `Publish_permission_denied | "CLUSTER_NOT_FOUND" -> `Cluster_not_found | "TOPIC_NOT_FOUND" -> `Topic_not_found | "CONFLICTING_REGION_CONSTRAINTS" -> `Conflicting_region_constraints | value -> `Unrecognized value);
    topic = member "topic" json |> to_option to_string;
  }

and yojson_of_aws_msk (value : aws_msk) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("awsRoleArn", (fun value -> `String value) field)) value.aws_role_arn;
         Option.map (fun field -> ("clusterArn", (fun value -> `String value) field)) value.cluster_arn;
         Option.map (fun field -> ("gcpServiceAccount", (fun value -> `String value) field)) value.gcp_service_account;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Active -> "ACTIVE" | `Msk_permission_denied -> "MSK_PERMISSION_DENIED" | `Publish_permission_denied -> "PUBLISH_PERMISSION_DENIED" | `Cluster_not_found -> "CLUSTER_NOT_FOUND" | `Topic_not_found -> "TOPIC_NOT_FOUND" | `Conflicting_region_constraints -> "CONFLICTING_REGION_CONSTRAINTS" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("topic", (fun value -> `String value) field)) value.topic;
       ])

and azure_event_hubs_of_yojson json : azure_event_hubs =
  let open Yojson.Safe.Util in
  {
    client_id = member "clientId" json |> to_option to_string;
    event_hub = member "eventHub" json |> to_option to_string;
    gcp_service_account = member "gcpServiceAccount" json |> to_option to_string;
    namespace = member "namespace" json |> to_option to_string;
    resource_group = member "resourceGroup" json |> to_option to_string;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "ACTIVE" -> `Active | "EVENT_HUBS_PERMISSION_DENIED" -> `Event_hubs_permission_denied | "PUBLISH_PERMISSION_DENIED" -> `Publish_permission_denied | "NAMESPACE_NOT_FOUND" -> `Namespace_not_found | "EVENT_HUB_NOT_FOUND" -> `Event_hub_not_found | "SUBSCRIPTION_NOT_FOUND" -> `Subscription_not_found | "RESOURCE_GROUP_NOT_FOUND" -> `Resource_group_not_found | "CONFLICTING_REGION_CONSTRAINTS" -> `Conflicting_region_constraints | value -> `Unrecognized value);
    subscription_id = member "subscriptionId" json |> to_option to_string;
    tenant_id = member "tenantId" json |> to_option to_string;
  }

and yojson_of_azure_event_hubs (value : azure_event_hubs) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("clientId", (fun value -> `String value) field)) value.client_id;
         Option.map (fun field -> ("eventHub", (fun value -> `String value) field)) value.event_hub;
         Option.map (fun field -> ("gcpServiceAccount", (fun value -> `String value) field)) value.gcp_service_account;
         Option.map (fun field -> ("namespace", (fun value -> `String value) field)) value.namespace;
         Option.map (fun field -> ("resourceGroup", (fun value -> `String value) field)) value.resource_group;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Active -> "ACTIVE" | `Event_hubs_permission_denied -> "EVENT_HUBS_PERMISSION_DENIED" | `Publish_permission_denied -> "PUBLISH_PERMISSION_DENIED" | `Namespace_not_found -> "NAMESPACE_NOT_FOUND" | `Event_hub_not_found -> "EVENT_HUB_NOT_FOUND" | `Subscription_not_found -> "SUBSCRIPTION_NOT_FOUND" | `Resource_group_not_found -> "RESOURCE_GROUP_NOT_FOUND" | `Conflicting_region_constraints -> "CONFLICTING_REGION_CONSTRAINTS" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("subscriptionId", (fun value -> `String value) field)) value.subscription_id;
         Option.map (fun field -> ("tenantId", (fun value -> `String value) field)) value.tenant_id;
       ])

and big_query_config_of_yojson json : big_query_config =
  let open Yojson.Safe.Util in
  {
    drop_unknown_fields = member "dropUnknownFields" json |> to_option to_bool;
    service_account_email = member "serviceAccountEmail" json |> to_option to_string;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "ACTIVE" -> `Active | "PERMISSION_DENIED" -> `Permission_denied | "NOT_FOUND" -> `Not_found | "SCHEMA_MISMATCH" -> `Schema_mismatch | "IN_TRANSIT_LOCATION_RESTRICTION" -> `In_transit_location_restriction | "VERTEX_AI_LOCATION_RESTRICTION" -> `Vertex_ai_location_restriction | value -> `Unrecognized value);
    table = member "table" json |> to_option to_string;
    use_table_schema = member "useTableSchema" json |> to_option to_bool;
    use_topic_schema = member "useTopicSchema" json |> to_option to_bool;
    write_metadata = member "writeMetadata" json |> to_option to_bool;
  }

and yojson_of_big_query_config (value : big_query_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dropUnknownFields", (fun value -> `Bool value) field)) value.drop_unknown_fields;
         Option.map (fun field -> ("serviceAccountEmail", (fun value -> `String value) field)) value.service_account_email;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Active -> "ACTIVE" | `Permission_denied -> "PERMISSION_DENIED" | `Not_found -> "NOT_FOUND" | `Schema_mismatch -> "SCHEMA_MISMATCH" | `In_transit_location_restriction -> "IN_TRANSIT_LOCATION_RESTRICTION" | `Vertex_ai_location_restriction -> "VERTEX_AI_LOCATION_RESTRICTION" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("table", (fun value -> `String value) field)) value.table;
         Option.map (fun field -> ("useTableSchema", (fun value -> `Bool value) field)) value.use_table_schema;
         Option.map (fun field -> ("useTopicSchema", (fun value -> `Bool value) field)) value.use_topic_schema;
         Option.map (fun field -> ("writeMetadata", (fun value -> `Bool value) field)) value.write_metadata;
       ])

and bigtable_config_of_yojson json : bigtable_config =
  let open Yojson.Safe.Util in
  {
    app_profile_id = member "appProfileId" json |> to_option to_string;
    column_family_mapping = member "columnFamilyMapping" json |> to_option column_family_mapping_of_yojson;
    service_account_email = member "serviceAccountEmail" json |> to_option to_string;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "ACTIVE" -> `Active | "NOT_FOUND" -> `Not_found | "APP_PROFILE_MISCONFIGURED" -> `App_profile_misconfigured | "PERMISSION_DENIED" -> `Permission_denied | "SCHEMA_MISMATCH" -> `Schema_mismatch | "IN_TRANSIT_LOCATION_RESTRICTION" -> `In_transit_location_restriction | "VERTEX_AI_LOCATION_RESTRICTION" -> `Vertex_ai_location_restriction | value -> `Unrecognized value);
    table = member "table" json |> to_option to_string;
    write_metadata = member "writeMetadata" json |> to_option to_bool;
  }

and yojson_of_bigtable_config (value : bigtable_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("appProfileId", (fun value -> `String value) field)) value.app_profile_id;
         Option.map (fun field -> ("columnFamilyMapping", yojson_of_column_family_mapping field)) value.column_family_mapping;
         Option.map (fun field -> ("serviceAccountEmail", (fun value -> `String value) field)) value.service_account_email;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Active -> "ACTIVE" | `Not_found -> "NOT_FOUND" | `App_profile_misconfigured -> "APP_PROFILE_MISCONFIGURED" | `Permission_denied -> "PERMISSION_DENIED" | `Schema_mismatch -> "SCHEMA_MISMATCH" | `In_transit_location_restriction -> "IN_TRANSIT_LOCATION_RESTRICTION" | `Vertex_ai_location_restriction -> "VERTEX_AI_LOCATION_RESTRICTION" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("table", (fun value -> `String value) field)) value.table;
         Option.map (fun field -> ("writeMetadata", (fun value -> `Bool value) field)) value.write_metadata;
       ])

and binding_of_yojson json : binding =
  let open Yojson.Safe.Util in
  {
    condition = member "condition" json |> to_option expr_of_yojson;
    members = member "members" json |> to_option (convert_each to_string);
    role = member "role" json |> to_option to_string;
  }

and yojson_of_binding (value : binding) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("condition", yojson_of_expr field)) value.condition;
         Option.map (fun field -> ("members", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.members;
         Option.map (fun field -> ("role", (fun value -> `String value) field)) value.role;
       ])

and cloud_storage_of_yojson json : cloud_storage =
  let open Yojson.Safe.Util in
  {
    avro_format = member "avroFormat" json |> to_option avro_format_of_yojson;
    bucket = member "bucket" json |> to_option to_string;
    match_glob = member "matchGlob" json |> to_option to_string;
    minimum_object_create_time = member "minimumObjectCreateTime" json |> to_option to_string;
    pubsub_avro_format = member "pubsubAvroFormat" json |> to_option pub_sub_avro_format_of_yojson;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "ACTIVE" -> `Active | "CLOUD_STORAGE_PERMISSION_DENIED" -> `Cloud_storage_permission_denied | "PUBLISH_PERMISSION_DENIED" -> `Publish_permission_denied | "BUCKET_NOT_FOUND" -> `Bucket_not_found | "TOO_MANY_OBJECTS" -> `Too_many_objects | "CONFLICTING_REGION_CONSTRAINTS" -> `Conflicting_region_constraints | value -> `Unrecognized value);
    text_format = member "textFormat" json |> to_option text_format_of_yojson;
  }

and yojson_of_cloud_storage (value : cloud_storage) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("avroFormat", yojson_of_avro_format field)) value.avro_format;
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("matchGlob", (fun value -> `String value) field)) value.match_glob;
         Option.map (fun field -> ("minimumObjectCreateTime", (fun value -> `String value) field)) value.minimum_object_create_time;
         Option.map (fun field -> ("pubsubAvroFormat", yojson_of_pub_sub_avro_format field)) value.pubsub_avro_format;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Active -> "ACTIVE" | `Cloud_storage_permission_denied -> "CLOUD_STORAGE_PERMISSION_DENIED" | `Publish_permission_denied -> "PUBLISH_PERMISSION_DENIED" | `Bucket_not_found -> "BUCKET_NOT_FOUND" | `Too_many_objects -> "TOO_MANY_OBJECTS" | `Conflicting_region_constraints -> "CONFLICTING_REGION_CONSTRAINTS" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("textFormat", yojson_of_text_format field)) value.text_format;
       ])

and cloud_storage_config_of_yojson json : cloud_storage_config =
  let open Yojson.Safe.Util in
  {
    avro_config = member "avroConfig" json |> to_option avro_config_of_yojson;
    bucket = member "bucket" json |> to_option to_string;
    filename_datetime_format = member "filenameDatetimeFormat" json |> to_option to_string;
    filename_prefix = member "filenamePrefix" json |> to_option to_string;
    filename_suffix = member "filenameSuffix" json |> to_option to_string;
    max_bytes = member "maxBytes" json |> to_option to_string;
    max_duration = member "maxDuration" json |> to_option to_string;
    max_messages = member "maxMessages" json |> to_option to_string;
    service_account_email = member "serviceAccountEmail" json |> to_option to_string;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "ACTIVE" -> `Active | "PERMISSION_DENIED" -> `Permission_denied | "NOT_FOUND" -> `Not_found | "IN_TRANSIT_LOCATION_RESTRICTION" -> `In_transit_location_restriction | "SCHEMA_MISMATCH" -> `Schema_mismatch | "VERTEX_AI_LOCATION_RESTRICTION" -> `Vertex_ai_location_restriction | value -> `Unrecognized value);
    text_config = member "textConfig" json |> to_option text_config_of_yojson;
  }

and yojson_of_cloud_storage_config (value : cloud_storage_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("avroConfig", yojson_of_avro_config field)) value.avro_config;
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("filenameDatetimeFormat", (fun value -> `String value) field)) value.filename_datetime_format;
         Option.map (fun field -> ("filenamePrefix", (fun value -> `String value) field)) value.filename_prefix;
         Option.map (fun field -> ("filenameSuffix", (fun value -> `String value) field)) value.filename_suffix;
         Option.map (fun field -> ("maxBytes", (fun value -> `String value) field)) value.max_bytes;
         Option.map (fun field -> ("maxDuration", (fun value -> `String value) field)) value.max_duration;
         Option.map (fun field -> ("maxMessages", (fun value -> `String value) field)) value.max_messages;
         Option.map (fun field -> ("serviceAccountEmail", (fun value -> `String value) field)) value.service_account_email;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Active -> "ACTIVE" | `Permission_denied -> "PERMISSION_DENIED" | `Not_found -> "NOT_FOUND" | `In_transit_location_restriction -> "IN_TRANSIT_LOCATION_RESTRICTION" | `Schema_mismatch -> "SCHEMA_MISMATCH" | `Vertex_ai_location_restriction -> "VERTEX_AI_LOCATION_RESTRICTION" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("textConfig", yojson_of_text_config field)) value.text_config;
       ])

and column_family_mapping_of_yojson json : column_family_mapping =
  let open Yojson.Safe.Util in
  {
    delimited_key = member "delimitedKey" json |> to_option delimited_key_of_yojson;
    row_key_schema = member "rowKeySchema" json |> to_option row_key_schema_of_yojson;
  }

and yojson_of_column_family_mapping (value : column_family_mapping) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("delimitedKey", yojson_of_delimited_key field)) value.delimited_key;
         Option.map (fun field -> ("rowKeySchema", yojson_of_row_key_schema field)) value.row_key_schema;
       ])

and commit_schema_request_of_yojson json : commit_schema_request =
  let open Yojson.Safe.Util in
  {
    schema = member "schema" json |> to_option schema_of_yojson;
  }

and yojson_of_commit_schema_request (value : commit_schema_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("schema", yojson_of_schema field)) value.schema;
       ])

and compiled_proto_schema_of_yojson json : compiled_proto_schema =
  let open Yojson.Safe.Util in
  {
    compiled_bytes = member "compiledBytes" json |> to_option to_string;
    root_message = member "rootMessage" json |> to_option to_string;
  }

and yojson_of_compiled_proto_schema (value : compiled_proto_schema) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("compiledBytes", (fun value -> `String value) field)) value.compiled_bytes;
         Option.map (fun field -> ("rootMessage", (fun value -> `String value) field)) value.root_message;
       ])

and compression_of_yojson json : compression =
  let open Yojson.Safe.Util in
  {
    compression_algorithm = member "compressionAlgorithm" json |> to_option (fun json -> match to_string json with "COMPRESSION_ALGORITHM_UNSPECIFIED" -> `Compression_algorithm_unspecified | "ZLIB" -> `Zlib | value -> `Unrecognized value);
    compression_mode = member "compressionMode" json |> to_option (fun json -> match to_string json with "COMPRESSION_MODE_UNSPECIFIED" -> `Compression_mode_unspecified | "COMPRESS" -> `Compress | "DECOMPRESS" -> `Decompress | value -> `Unrecognized value);
  }

and yojson_of_compression (value : compression) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("compressionAlgorithm", (fun value -> `String ((function `Compression_algorithm_unspecified -> "COMPRESSION_ALGORITHM_UNSPECIFIED" | `Zlib -> "ZLIB" | `Unrecognized value -> value) value)) field)) value.compression_algorithm;
         Option.map (fun field -> ("compressionMode", (fun value -> `String ((function `Compression_mode_unspecified -> "COMPRESSION_MODE_UNSPECIFIED" | `Compress -> "COMPRESS" | `Decompress -> "DECOMPRESS" | `Unrecognized value -> value) value)) field)) value.compression_mode;
       ])

and confluent_cloud_of_yojson json : confluent_cloud =
  let open Yojson.Safe.Util in
  {
    bootstrap_server = member "bootstrapServer" json |> to_option to_string;
    cluster_id = member "clusterId" json |> to_option to_string;
    gcp_service_account = member "gcpServiceAccount" json |> to_option to_string;
    identity_pool_id = member "identityPoolId" json |> to_option to_string;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "ACTIVE" -> `Active | "CONFLUENT_CLOUD_PERMISSION_DENIED" -> `Confluent_cloud_permission_denied | "PUBLISH_PERMISSION_DENIED" -> `Publish_permission_denied | "UNREACHABLE_BOOTSTRAP_SERVER" -> `Unreachable_bootstrap_server | "CLUSTER_NOT_FOUND" -> `Cluster_not_found | "TOPIC_NOT_FOUND" -> `Topic_not_found | "CONFLICTING_REGION_CONSTRAINTS" -> `Conflicting_region_constraints | value -> `Unrecognized value);
    topic = member "topic" json |> to_option to_string;
  }

and yojson_of_confluent_cloud (value : confluent_cloud) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bootstrapServer", (fun value -> `String value) field)) value.bootstrap_server;
         Option.map (fun field -> ("clusterId", (fun value -> `String value) field)) value.cluster_id;
         Option.map (fun field -> ("gcpServiceAccount", (fun value -> `String value) field)) value.gcp_service_account;
         Option.map (fun field -> ("identityPoolId", (fun value -> `String value) field)) value.identity_pool_id;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Active -> "ACTIVE" | `Confluent_cloud_permission_denied -> "CONFLUENT_CLOUD_PERMISSION_DENIED" | `Publish_permission_denied -> "PUBLISH_PERMISSION_DENIED" | `Unreachable_bootstrap_server -> "UNREACHABLE_BOOTSTRAP_SERVER" | `Cluster_not_found -> "CLUSTER_NOT_FOUND" | `Topic_not_found -> "TOPIC_NOT_FOUND" | `Conflicting_region_constraints -> "CONFLICTING_REGION_CONSTRAINTS" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("topic", (fun value -> `String value) field)) value.topic;
       ])

and create_snapshot_request_of_yojson json : create_snapshot_request =
  let open Yojson.Safe.Util in
  {
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    subscription = member "subscription" json |> to_option to_string;
    tags = member "tags" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
  }

and yojson_of_create_snapshot_request (value : create_snapshot_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("subscription", (fun value -> `String value) field)) value.subscription;
         Option.map (fun field -> ("tags", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.tags;
       ])

and dead_letter_policy_of_yojson json : dead_letter_policy =
  let open Yojson.Safe.Util in
  {
    dead_letter_topic = member "deadLetterTopic" json |> to_option to_string;
    max_delivery_attempts = member "maxDeliveryAttempts" json |> to_option to_int;
  }

and yojson_of_dead_letter_policy (value : dead_letter_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deadLetterTopic", (fun value -> `String value) field)) value.dead_letter_topic;
         Option.map (fun field -> ("maxDeliveryAttempts", (fun value -> `Int value) field)) value.max_delivery_attempts;
       ])

and delimited_key_of_yojson json : delimited_key =
  let open Yojson.Safe.Util in
  {
    delimiter = member "delimiter" json |> to_option to_string;
    key_fields = member "keyFields" json |> to_option (convert_each to_string);
  }

and yojson_of_delimited_key (value : delimited_key) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("delimiter", (fun value -> `String value) field)) value.delimiter;
         Option.map (fun field -> ("keyFields", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.key_fields;
       ])

and detach_subscription_response_of_yojson json : detach_subscription_response =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_detach_subscription_response (value : detach_subscription_response) : Yojson.Safe.t = Fun.id value

and empty_of_yojson json : empty =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_empty (value : empty) : Yojson.Safe.t = Fun.id value

and expiration_policy_of_yojson json : expiration_policy =
  let open Yojson.Safe.Util in
  {
    ttl = member "ttl" json |> to_option to_string;
  }

and yojson_of_expiration_policy (value : expiration_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ttl", (fun value -> `String value) field)) value.ttl;
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

and ingestion_data_source_settings_of_yojson json : ingestion_data_source_settings =
  let open Yojson.Safe.Util in
  {
    aws_kinesis = member "awsKinesis" json |> to_option aws_kinesis_of_yojson;
    aws_msk = member "awsMsk" json |> to_option aws_msk_of_yojson;
    azure_event_hubs = member "azureEventHubs" json |> to_option azure_event_hubs_of_yojson;
    cloud_storage = member "cloudStorage" json |> to_option cloud_storage_of_yojson;
    confluent_cloud = member "confluentCloud" json |> to_option confluent_cloud_of_yojson;
    platform_logs_settings = member "platformLogsSettings" json |> to_option platform_logs_settings_of_yojson;
  }

and yojson_of_ingestion_data_source_settings (value : ingestion_data_source_settings) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("awsKinesis", yojson_of_aws_kinesis field)) value.aws_kinesis;
         Option.map (fun field -> ("awsMsk", yojson_of_aws_msk field)) value.aws_msk;
         Option.map (fun field -> ("azureEventHubs", yojson_of_azure_event_hubs field)) value.azure_event_hubs;
         Option.map (fun field -> ("cloudStorage", yojson_of_cloud_storage field)) value.cloud_storage;
         Option.map (fun field -> ("confluentCloud", yojson_of_confluent_cloud field)) value.confluent_cloud;
         Option.map (fun field -> ("platformLogsSettings", yojson_of_platform_logs_settings field)) value.platform_logs_settings;
       ])

and java_script_udf_of_yojson json : java_script_udf =
  let open Yojson.Safe.Util in
  {
    code = member "code" json |> to_option to_string;
    function_name = member "functionName" json |> to_option to_string;
  }

and yojson_of_java_script_udf (value : java_script_udf) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("code", (fun value -> `String value) field)) value.code;
         Option.map (fun field -> ("functionName", (fun value -> `String value) field)) value.function_name;
       ])

and list_schema_revisions_response_of_yojson json : list_schema_revisions_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    schemas = member "schemas" json |> to_option (convert_each schema_of_yojson);
  }

and yojson_of_list_schema_revisions_response (value : list_schema_revisions_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("schemas", (fun items -> `List (List.map yojson_of_schema items)) field)) value.schemas;
       ])

and list_schemas_response_of_yojson json : list_schemas_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    schemas = member "schemas" json |> to_option (convert_each schema_of_yojson);
  }

and yojson_of_list_schemas_response (value : list_schemas_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("schemas", (fun items -> `List (List.map yojson_of_schema items)) field)) value.schemas;
       ])

and list_snapshots_response_of_yojson json : list_snapshots_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    snapshots = member "snapshots" json |> to_option (convert_each snapshot_of_yojson);
  }

and yojson_of_list_snapshots_response (value : list_snapshots_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("snapshots", (fun items -> `List (List.map yojson_of_snapshot items)) field)) value.snapshots;
       ])

and list_subscriptions_response_of_yojson json : list_subscriptions_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    subscriptions = member "subscriptions" json |> to_option (convert_each subscription_of_yojson);
  }

and yojson_of_list_subscriptions_response (value : list_subscriptions_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("subscriptions", (fun items -> `List (List.map yojson_of_subscription items)) field)) value.subscriptions;
       ])

and list_topic_snapshots_response_of_yojson json : list_topic_snapshots_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    snapshots = member "snapshots" json |> to_option (convert_each to_string);
  }

and yojson_of_list_topic_snapshots_response (value : list_topic_snapshots_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("snapshots", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.snapshots;
       ])

and list_topic_subscriptions_response_of_yojson json : list_topic_subscriptions_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    subscriptions = member "subscriptions" json |> to_option (convert_each to_string);
  }

and yojson_of_list_topic_subscriptions_response (value : list_topic_subscriptions_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("subscriptions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.subscriptions;
       ])

and list_topics_response_of_yojson json : list_topics_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    topics = member "topics" json |> to_option (convert_each topic_of_yojson);
  }

and yojson_of_list_topics_response (value : list_topics_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("topics", (fun items -> `List (List.map yojson_of_topic items)) field)) value.topics;
       ])

and message_storage_policy_of_yojson json : message_storage_policy =
  let open Yojson.Safe.Util in
  {
    allowed_persistence_regions = member "allowedPersistenceRegions" json |> to_option (convert_each to_string);
    enforce_in_transit = member "enforceInTransit" json |> to_option to_bool;
  }

and yojson_of_message_storage_policy (value : message_storage_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowedPersistenceRegions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.allowed_persistence_regions;
         Option.map (fun field -> ("enforceInTransit", (fun value -> `Bool value) field)) value.enforce_in_transit;
       ])

and message_transform_of_yojson json : message_transform =
  let open Yojson.Safe.Util in
  {
    ai_inference = member "aiInference" json |> to_option ai_inference_of_yojson;
    compression = member "compression" json |> to_option compression_of_yojson;
    disabled = member "disabled" json |> to_option to_bool;
    enabled = member "enabled" json |> to_option to_bool;
    javascript_udf = member "javascriptUdf" json |> to_option java_script_udf_of_yojson;
  }

and yojson_of_message_transform (value : message_transform) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("aiInference", yojson_of_ai_inference field)) value.ai_inference;
         Option.map (fun field -> ("compression", yojson_of_compression field)) value.compression;
         Option.map (fun field -> ("disabled", (fun value -> `Bool value) field)) value.disabled;
         Option.map (fun field -> ("enabled", (fun value -> `Bool value) field)) value.enabled;
         Option.map (fun field -> ("javascriptUdf", yojson_of_java_script_udf field)) value.javascript_udf;
       ])

and modify_ack_deadline_request_of_yojson json : modify_ack_deadline_request =
  let open Yojson.Safe.Util in
  {
    ack_deadline_seconds = member "ackDeadlineSeconds" json |> to_option to_int;
    ack_ids = member "ackIds" json |> to_option (convert_each to_string);
  }

and yojson_of_modify_ack_deadline_request (value : modify_ack_deadline_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ackDeadlineSeconds", (fun value -> `Int value) field)) value.ack_deadline_seconds;
         Option.map (fun field -> ("ackIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.ack_ids;
       ])

and modify_push_config_request_of_yojson json : modify_push_config_request =
  let open Yojson.Safe.Util in
  {
    push_config = member "pushConfig" json |> to_option push_config_of_yojson;
  }

and yojson_of_modify_push_config_request (value : modify_push_config_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("pushConfig", yojson_of_push_config field)) value.push_config;
       ])

and no_wrapper_of_yojson json : no_wrapper =
  let open Yojson.Safe.Util in
  {
    write_metadata = member "writeMetadata" json |> to_option to_bool;
  }

and yojson_of_no_wrapper (value : no_wrapper) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("writeMetadata", (fun value -> `Bool value) field)) value.write_metadata;
       ])

and oidc_token_of_yojson json : oidc_token =
  let open Yojson.Safe.Util in
  {
    audience = member "audience" json |> to_option to_string;
    service_account_email = member "serviceAccountEmail" json |> to_option to_string;
  }

and yojson_of_oidc_token (value : oidc_token) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("audience", (fun value -> `String value) field)) value.audience;
         Option.map (fun field -> ("serviceAccountEmail", (fun value -> `String value) field)) value.service_account_email;
       ])

and platform_logs_settings_of_yojson json : platform_logs_settings =
  let open Yojson.Safe.Util in
  {
    severity = member "severity" json |> to_option (fun json -> match to_string json with "SEVERITY_UNSPECIFIED" -> `Severity_unspecified | "DISABLED" -> `Disabled | "DEBUG" -> `Debug | "INFO" -> `Info | "WARNING" -> `Warning | "ERROR" -> `Error | value -> `Unrecognized value);
  }

and yojson_of_platform_logs_settings (value : platform_logs_settings) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("severity", (fun value -> `String ((function `Severity_unspecified -> "SEVERITY_UNSPECIFIED" | `Disabled -> "DISABLED" | `Debug -> "DEBUG" | `Info -> "INFO" | `Warning -> "WARNING" | `Error -> "ERROR" | `Unrecognized value -> value) value)) field)) value.severity;
       ])

and policy_of_yojson json : policy =
  let open Yojson.Safe.Util in
  {
    bindings = member "bindings" json |> to_option (convert_each binding_of_yojson);
    etag = member "etag" json |> to_option to_string;
    version = member "version" json |> to_option to_int;
  }

and yojson_of_policy (value : policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bindings", (fun items -> `List (List.map yojson_of_binding items)) field)) value.bindings;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("version", (fun value -> `Int value) field)) value.version;
       ])

and pub_sub_avro_format_of_yojson json : pub_sub_avro_format =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_pub_sub_avro_format (value : pub_sub_avro_format) : Yojson.Safe.t = Fun.id value

and publish_operation_of_yojson json : publish_operation =
  let open Yojson.Safe.Util in
  {
    hedged_attempt_count = member "hedgedAttemptCount" json |> to_option to_int;
    publish_start_time = member "publishStartTime" json |> to_option to_string;
  }

and yojson_of_publish_operation (value : publish_operation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("hedgedAttemptCount", (fun value -> `Int value) field)) value.hedged_attempt_count;
         Option.map (fun field -> ("publishStartTime", (fun value -> `String value) field)) value.publish_start_time;
       ])

and publish_request_of_yojson json : publish_request =
  let open Yojson.Safe.Util in
  {
    messages = member "messages" json |> to_option (convert_each pubsub_message_of_yojson);
  }

and yojson_of_publish_request (value : publish_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("messages", (fun items -> `List (List.map yojson_of_pubsub_message items)) field)) value.messages;
       ])

and publish_response_of_yojson json : publish_response =
  let open Yojson.Safe.Util in
  {
    message_ids = member "messageIds" json |> to_option (convert_each to_string);
  }

and yojson_of_publish_response (value : publish_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("messageIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.message_ids;
       ])

and pubsub_client_telemetry_of_yojson json : pubsub_client_telemetry =
  let open Yojson.Safe.Util in
  {
    publish_operation = member "publishOperation" json |> to_option publish_operation_of_yojson;
  }

and yojson_of_pubsub_client_telemetry (value : pubsub_client_telemetry) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("publishOperation", yojson_of_publish_operation field)) value.publish_operation;
       ])

and pubsub_message_of_yojson json : pubsub_message =
  let open Yojson.Safe.Util in
  {
    attributes = member "attributes" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    data = member "data" json |> to_option to_string;
    message_id = member "messageId" json |> to_option to_string;
    ordering_key = member "orderingKey" json |> to_option to_string;
    publish_time = member "publishTime" json |> to_option to_string;
  }

and yojson_of_pubsub_message (value : pubsub_message) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("attributes", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.attributes;
         Option.map (fun field -> ("data", (fun value -> `String value) field)) value.data;
         Option.map (fun field -> ("messageId", (fun value -> `String value) field)) value.message_id;
         Option.map (fun field -> ("orderingKey", (fun value -> `String value) field)) value.ordering_key;
         Option.map (fun field -> ("publishTime", (fun value -> `String value) field)) value.publish_time;
       ])

and pubsub_wrapper_of_yojson json : pubsub_wrapper =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_pubsub_wrapper (value : pubsub_wrapper) : Yojson.Safe.t = Fun.id value

and pull_request_of_yojson json : pull_request =
  let open Yojson.Safe.Util in
  {
    max_messages = member "maxMessages" json |> to_option to_int;
    return_immediately = member "returnImmediately" json |> to_option to_bool;
  }

and yojson_of_pull_request (value : pull_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("maxMessages", (fun value -> `Int value) field)) value.max_messages;
         Option.map (fun field -> ("returnImmediately", (fun value -> `Bool value) field)) value.return_immediately;
       ])

and pull_response_of_yojson json : pull_response =
  let open Yojson.Safe.Util in
  {
    received_messages = member "receivedMessages" json |> to_option (convert_each received_message_of_yojson);
  }

and yojson_of_pull_response (value : pull_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("receivedMessages", (fun items -> `List (List.map yojson_of_received_message items)) field)) value.received_messages;
       ])

and push_config_of_yojson json : push_config =
  let open Yojson.Safe.Util in
  {
    attributes = member "attributes" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    no_wrapper = member "noWrapper" json |> to_option no_wrapper_of_yojson;
    oidc_token = member "oidcToken" json |> to_option oidc_token_of_yojson;
    pubsub_wrapper = member "pubsubWrapper" json |> to_option pubsub_wrapper_of_yojson;
    push_endpoint = member "pushEndpoint" json |> to_option to_string;
  }

and yojson_of_push_config (value : push_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("attributes", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.attributes;
         Option.map (fun field -> ("noWrapper", yojson_of_no_wrapper field)) value.no_wrapper;
         Option.map (fun field -> ("oidcToken", yojson_of_oidc_token field)) value.oidc_token;
         Option.map (fun field -> ("pubsubWrapper", yojson_of_pubsub_wrapper field)) value.pubsub_wrapper;
         Option.map (fun field -> ("pushEndpoint", (fun value -> `String value) field)) value.push_endpoint;
       ])

and received_message_of_yojson json : received_message =
  let open Yojson.Safe.Util in
  {
    ack_id = member "ackId" json |> to_option to_string;
    delivery_attempt = member "deliveryAttempt" json |> to_option to_int;
    message = member "message" json |> to_option pubsub_message_of_yojson;
  }

and yojson_of_received_message (value : received_message) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ackId", (fun value -> `String value) field)) value.ack_id;
         Option.map (fun field -> ("deliveryAttempt", (fun value -> `Int value) field)) value.delivery_attempt;
         Option.map (fun field -> ("message", yojson_of_pubsub_message field)) value.message;
       ])

and retry_policy_of_yojson json : retry_policy =
  let open Yojson.Safe.Util in
  {
    maximum_backoff = member "maximumBackoff" json |> to_option to_string;
    minimum_backoff = member "minimumBackoff" json |> to_option to_string;
  }

and yojson_of_retry_policy (value : retry_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("maximumBackoff", (fun value -> `String value) field)) value.maximum_backoff;
         Option.map (fun field -> ("minimumBackoff", (fun value -> `String value) field)) value.minimum_backoff;
       ])

and rollback_schema_request_of_yojson json : rollback_schema_request =
  let open Yojson.Safe.Util in
  {
    revision_id = member "revisionId" json |> to_option to_string;
  }

and yojson_of_rollback_schema_request (value : rollback_schema_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("revisionId", (fun value -> `String value) field)) value.revision_id;
       ])

and row_key_schema_of_yojson json : row_key_schema =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_row_key_schema (value : row_key_schema) : Yojson.Safe.t = Fun.id value

and schema_of_yojson json : schema =
  let open Yojson.Safe.Util in
  {
    compiled_proto_schema = member "compiledProtoSchema" json |> to_option compiled_proto_schema_of_yojson;
    definition = member "definition" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    revision_create_time = member "revisionCreateTime" json |> to_option to_string;
    revision_id = member "revisionId" json |> to_option to_string;
    type_ = member "type" json |> to_option (fun json -> match to_string json with "TYPE_UNSPECIFIED" -> `Type_unspecified | "PROTOCOL_BUFFER" -> `Protocol_buffer | "AVRO" -> `Avro | value -> `Unrecognized value);
  }

and yojson_of_schema (value : schema) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("compiledProtoSchema", yojson_of_compiled_proto_schema field)) value.compiled_proto_schema;
         Option.map (fun field -> ("definition", (fun value -> `String value) field)) value.definition;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("revisionCreateTime", (fun value -> `String value) field)) value.revision_create_time;
         Option.map (fun field -> ("revisionId", (fun value -> `String value) field)) value.revision_id;
         Option.map (fun field -> ("type", (fun value -> `String ((function `Type_unspecified -> "TYPE_UNSPECIFIED" | `Protocol_buffer -> "PROTOCOL_BUFFER" | `Avro -> "AVRO" | `Unrecognized value -> value) value)) field)) value.type_;
       ])

and schema_settings_of_yojson json : schema_settings =
  let open Yojson.Safe.Util in
  {
    encoding = member "encoding" json |> to_option (fun json -> match to_string json with "ENCODING_UNSPECIFIED" -> `Encoding_unspecified | "JSON" -> `Json | "BINARY" -> `Binary | value -> `Unrecognized value);
    first_revision_id = member "firstRevisionId" json |> to_option to_string;
    last_revision_id = member "lastRevisionId" json |> to_option to_string;
    schema = member "schema" json |> to_option to_string;
  }

and yojson_of_schema_settings (value : schema_settings) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("encoding", (fun value -> `String ((function `Encoding_unspecified -> "ENCODING_UNSPECIFIED" | `Json -> "JSON" | `Binary -> "BINARY" | `Unrecognized value -> value) value)) field)) value.encoding;
         Option.map (fun field -> ("firstRevisionId", (fun value -> `String value) field)) value.first_revision_id;
         Option.map (fun field -> ("lastRevisionId", (fun value -> `String value) field)) value.last_revision_id;
         Option.map (fun field -> ("schema", (fun value -> `String value) field)) value.schema;
       ])

and seek_request_of_yojson json : seek_request =
  let open Yojson.Safe.Util in
  {
    snapshot = member "snapshot" json |> to_option to_string;
    time = member "time" json |> to_option to_string;
  }

and yojson_of_seek_request (value : seek_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("snapshot", (fun value -> `String value) field)) value.snapshot;
         Option.map (fun field -> ("time", (fun value -> `String value) field)) value.time;
       ])

and seek_response_of_yojson json : seek_response =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_seek_response (value : seek_response) : Yojson.Safe.t = Fun.id value

and set_iam_policy_request_of_yojson json : set_iam_policy_request =
  let open Yojson.Safe.Util in
  {
    policy = member "policy" json |> to_option policy_of_yojson;
  }

and yojson_of_set_iam_policy_request (value : set_iam_policy_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("policy", yojson_of_policy field)) value.policy;
       ])

and snapshot_of_yojson json : snapshot =
  let open Yojson.Safe.Util in
  {
    expire_time = member "expireTime" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    name = member "name" json |> to_option to_string;
    topic = member "topic" json |> to_option to_string;
  }

and yojson_of_snapshot (value : snapshot) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("topic", (fun value -> `String value) field)) value.topic;
       ])

and subscription_of_yojson json : subscription =
  let open Yojson.Safe.Util in
  {
    ack_deadline_seconds = member "ackDeadlineSeconds" json |> to_option to_int;
    analytics_hub_subscription_info = member "analyticsHubSubscriptionInfo" json |> to_option analytics_hub_subscription_info_of_yojson;
    bigquery_config = member "bigqueryConfig" json |> to_option big_query_config_of_yojson;
    bigtable_config = member "bigtableConfig" json |> to_option bigtable_config_of_yojson;
    cloud_storage_config = member "cloudStorageConfig" json |> to_option cloud_storage_config_of_yojson;
    dead_letter_policy = member "deadLetterPolicy" json |> to_option dead_letter_policy_of_yojson;
    detached = member "detached" json |> to_option to_bool;
    enable_exactly_once_delivery = member "enableExactlyOnceDelivery" json |> to_option to_bool;
    enable_message_ordering = member "enableMessageOrdering" json |> to_option to_bool;
    expiration_policy = member "expirationPolicy" json |> to_option expiration_policy_of_yojson;
    filter = member "filter" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    message_retention_duration = member "messageRetentionDuration" json |> to_option to_string;
    message_transforms = member "messageTransforms" json |> to_option (convert_each message_transform_of_yojson);
    name = member "name" json |> to_option to_string;
    push_config = member "pushConfig" json |> to_option push_config_of_yojson;
    retain_acked_messages = member "retainAckedMessages" json |> to_option to_bool;
    retry_policy = member "retryPolicy" json |> to_option retry_policy_of_yojson;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "ACTIVE" -> `Active | "RESOURCE_ERROR" -> `Resource_error | value -> `Unrecognized value);
    tags = member "tags" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    topic = member "topic" json |> to_option to_string;
    topic_message_retention_duration = member "topicMessageRetentionDuration" json |> to_option to_string;
  }

and yojson_of_subscription (value : subscription) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ackDeadlineSeconds", (fun value -> `Int value) field)) value.ack_deadline_seconds;
         Option.map (fun field -> ("analyticsHubSubscriptionInfo", yojson_of_analytics_hub_subscription_info field)) value.analytics_hub_subscription_info;
         Option.map (fun field -> ("bigqueryConfig", yojson_of_big_query_config field)) value.bigquery_config;
         Option.map (fun field -> ("bigtableConfig", yojson_of_bigtable_config field)) value.bigtable_config;
         Option.map (fun field -> ("cloudStorageConfig", yojson_of_cloud_storage_config field)) value.cloud_storage_config;
         Option.map (fun field -> ("deadLetterPolicy", yojson_of_dead_letter_policy field)) value.dead_letter_policy;
         Option.map (fun field -> ("detached", (fun value -> `Bool value) field)) value.detached;
         Option.map (fun field -> ("enableExactlyOnceDelivery", (fun value -> `Bool value) field)) value.enable_exactly_once_delivery;
         Option.map (fun field -> ("enableMessageOrdering", (fun value -> `Bool value) field)) value.enable_message_ordering;
         Option.map (fun field -> ("expirationPolicy", yojson_of_expiration_policy field)) value.expiration_policy;
         Option.map (fun field -> ("filter", (fun value -> `String value) field)) value.filter;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("messageRetentionDuration", (fun value -> `String value) field)) value.message_retention_duration;
         Option.map (fun field -> ("messageTransforms", (fun items -> `List (List.map yojson_of_message_transform items)) field)) value.message_transforms;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("pushConfig", yojson_of_push_config field)) value.push_config;
         Option.map (fun field -> ("retainAckedMessages", (fun value -> `Bool value) field)) value.retain_acked_messages;
         Option.map (fun field -> ("retryPolicy", yojson_of_retry_policy field)) value.retry_policy;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Active -> "ACTIVE" | `Resource_error -> "RESOURCE_ERROR" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("tags", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.tags;
         Option.map (fun field -> ("topic", (fun value -> `String value) field)) value.topic;
         Option.map (fun field -> ("topicMessageRetentionDuration", (fun value -> `String value) field)) value.topic_message_retention_duration;
       ])

and test_iam_permissions_request_of_yojson json : test_iam_permissions_request =
  let open Yojson.Safe.Util in
  {
    permissions = member "permissions" json |> to_option (convert_each to_string);
  }

and yojson_of_test_iam_permissions_request (value : test_iam_permissions_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("permissions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.permissions;
       ])

and test_iam_permissions_response_of_yojson json : test_iam_permissions_response =
  let open Yojson.Safe.Util in
  {
    permissions = member "permissions" json |> to_option (convert_each to_string);
  }

and yojson_of_test_iam_permissions_response (value : test_iam_permissions_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("permissions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.permissions;
       ])

and text_config_of_yojson json : text_config =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_text_config (value : text_config) : Yojson.Safe.t = Fun.id value

and text_format_of_yojson json : text_format =
  let open Yojson.Safe.Util in
  {
    delimiter = member "delimiter" json |> to_option to_string;
  }

and yojson_of_text_format (value : text_format) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("delimiter", (fun value -> `String value) field)) value.delimiter;
       ])

and topic_of_yojson json : topic =
  let open Yojson.Safe.Util in
  {
    ingestion_data_source_settings = member "ingestionDataSourceSettings" json |> to_option ingestion_data_source_settings_of_yojson;
    kms_key_name = member "kmsKeyName" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    message_retention_duration = member "messageRetentionDuration" json |> to_option to_string;
    message_storage_policy = member "messageStoragePolicy" json |> to_option message_storage_policy_of_yojson;
    message_transforms = member "messageTransforms" json |> to_option (convert_each message_transform_of_yojson);
    name = member "name" json |> to_option to_string;
    satisfies_pzs = member "satisfiesPzs" json |> to_option to_bool;
    schema_settings = member "schemaSettings" json |> to_option schema_settings_of_yojson;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "ACTIVE" -> `Active | "INGESTION_RESOURCE_ERROR" -> `Ingestion_resource_error | value -> `Unrecognized value);
    tags = member "tags" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
  }

and yojson_of_topic (value : topic) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ingestionDataSourceSettings", yojson_of_ingestion_data_source_settings field)) value.ingestion_data_source_settings;
         Option.map (fun field -> ("kmsKeyName", (fun value -> `String value) field)) value.kms_key_name;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("messageRetentionDuration", (fun value -> `String value) field)) value.message_retention_duration;
         Option.map (fun field -> ("messageStoragePolicy", yojson_of_message_storage_policy field)) value.message_storage_policy;
         Option.map (fun field -> ("messageTransforms", (fun items -> `List (List.map yojson_of_message_transform items)) field)) value.message_transforms;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("satisfiesPzs", (fun value -> `Bool value) field)) value.satisfies_pzs;
         Option.map (fun field -> ("schemaSettings", yojson_of_schema_settings field)) value.schema_settings;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Active -> "ACTIVE" | `Ingestion_resource_error -> "INGESTION_RESOURCE_ERROR" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("tags", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.tags;
       ])

and unstructured_inference_of_yojson json : unstructured_inference =
  let open Yojson.Safe.Util in
  {
    parameters = member "parameters" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
  }

and yojson_of_unstructured_inference (value : unstructured_inference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("parameters", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.parameters;
       ])

and update_snapshot_request_of_yojson json : update_snapshot_request =
  let open Yojson.Safe.Util in
  {
    snapshot = member "snapshot" json |> to_option snapshot_of_yojson;
    update_mask = member "updateMask" json |> to_option to_string;
  }

and yojson_of_update_snapshot_request (value : update_snapshot_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("snapshot", yojson_of_snapshot field)) value.snapshot;
         Option.map (fun field -> ("updateMask", (fun value -> `String value) field)) value.update_mask;
       ])

and update_subscription_request_of_yojson json : update_subscription_request =
  let open Yojson.Safe.Util in
  {
    subscription = member "subscription" json |> to_option subscription_of_yojson;
    update_mask = member "updateMask" json |> to_option to_string;
  }

and yojson_of_update_subscription_request (value : update_subscription_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("subscription", yojson_of_subscription field)) value.subscription;
         Option.map (fun field -> ("updateMask", (fun value -> `String value) field)) value.update_mask;
       ])

and update_topic_request_of_yojson json : update_topic_request =
  let open Yojson.Safe.Util in
  {
    topic = member "topic" json |> to_option topic_of_yojson;
    update_mask = member "updateMask" json |> to_option to_string;
  }

and yojson_of_update_topic_request (value : update_topic_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("topic", yojson_of_topic field)) value.topic;
         Option.map (fun field -> ("updateMask", (fun value -> `String value) field)) value.update_mask;
       ])

and validate_message_request_of_yojson json : validate_message_request =
  let open Yojson.Safe.Util in
  {
    encoding = member "encoding" json |> to_option (fun json -> match to_string json with "ENCODING_UNSPECIFIED" -> `Encoding_unspecified | "JSON" -> `Json | "BINARY" -> `Binary | value -> `Unrecognized value);
    message = member "message" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    schema = member "schema" json |> to_option schema_of_yojson;
  }

and yojson_of_validate_message_request (value : validate_message_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("encoding", (fun value -> `String ((function `Encoding_unspecified -> "ENCODING_UNSPECIFIED" | `Json -> "JSON" | `Binary -> "BINARY" | `Unrecognized value -> value) value)) field)) value.encoding;
         Option.map (fun field -> ("message", (fun value -> `String value) field)) value.message;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("schema", yojson_of_schema field)) value.schema;
       ])

and validate_message_response_of_yojson json : validate_message_response =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_validate_message_response (value : validate_message_response) : Yojson.Safe.t = Fun.id value

and validate_schema_request_of_yojson json : validate_schema_request =
  let open Yojson.Safe.Util in
  {
    schema = member "schema" json |> to_option schema_of_yojson;
  }

and yojson_of_validate_schema_request (value : validate_schema_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("schema", yojson_of_schema field)) value.schema;
       ])

and validate_schema_response_of_yojson json : validate_schema_response =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_validate_schema_response (value : validate_schema_response) : Yojson.Safe.t = Fun.id value

let make_ai_inference ?endpoint ?service_account_email ?unstructured_inference () : ai_inference = { endpoint; service_account_email; unstructured_inference }

let make_acknowledge_request ?ack_ids () : acknowledge_request = { ack_ids }

let make_analytics_hub_subscription_info ?listing ?subscription () : analytics_hub_subscription_info = { listing; subscription }

let make_avro_config ?use_topic_schema ?write_metadata () : avro_config = { use_topic_schema; write_metadata }

let make_aws_kinesis ?aws_role_arn ?consumer_arn ?gcp_service_account ?state ?stream_arn () : aws_kinesis = { aws_role_arn; consumer_arn; gcp_service_account; state; stream_arn }

let make_aws_msk ?aws_role_arn ?cluster_arn ?gcp_service_account ?state ?topic () : aws_msk = { aws_role_arn; cluster_arn; gcp_service_account; state; topic }

let make_azure_event_hubs ?client_id ?event_hub ?gcp_service_account ?namespace ?resource_group ?state ?subscription_id ?tenant_id () : azure_event_hubs = { client_id; event_hub; gcp_service_account; namespace; resource_group; state; subscription_id; tenant_id }

let make_big_query_config ?drop_unknown_fields ?service_account_email ?state ?table ?use_table_schema ?use_topic_schema ?write_metadata () : big_query_config = { drop_unknown_fields; service_account_email; state; table; use_table_schema; use_topic_schema; write_metadata }

let make_bigtable_config ?app_profile_id ?column_family_mapping ?service_account_email ?state ?table ?write_metadata () : bigtable_config = { app_profile_id; column_family_mapping; service_account_email; state; table; write_metadata }

let make_binding ?condition ?members ?role () : binding = { condition; members; role }

let make_cloud_storage ?avro_format ?bucket ?match_glob ?minimum_object_create_time ?pubsub_avro_format ?state ?text_format () : cloud_storage = { avro_format; bucket; match_glob; minimum_object_create_time; pubsub_avro_format; state; text_format }

let make_cloud_storage_config ?avro_config ?bucket ?filename_datetime_format ?filename_prefix ?filename_suffix ?max_bytes ?max_duration ?max_messages ?service_account_email ?state ?text_config () : cloud_storage_config = { avro_config; bucket; filename_datetime_format; filename_prefix; filename_suffix; max_bytes; max_duration; max_messages; service_account_email; state; text_config }

let make_column_family_mapping ?delimited_key ?row_key_schema () : column_family_mapping = { delimited_key; row_key_schema }

let make_commit_schema_request ?schema () : commit_schema_request = { schema }

let make_compiled_proto_schema ?compiled_bytes ?root_message () : compiled_proto_schema = { compiled_bytes; root_message }

let make_compression ?compression_algorithm ?compression_mode () : compression = { compression_algorithm; compression_mode }

let make_confluent_cloud ?bootstrap_server ?cluster_id ?gcp_service_account ?identity_pool_id ?state ?topic () : confluent_cloud = { bootstrap_server; cluster_id; gcp_service_account; identity_pool_id; state; topic }

let make_create_snapshot_request ?labels ?subscription ?tags () : create_snapshot_request = { labels; subscription; tags }

let make_dead_letter_policy ?dead_letter_topic ?max_delivery_attempts () : dead_letter_policy = { dead_letter_topic; max_delivery_attempts }

let make_delimited_key ?delimiter ?key_fields () : delimited_key = { delimiter; key_fields }

let make_expiration_policy ?ttl () : expiration_policy = { ttl }

let make_expr ?description ?expression ?location ?title () : expr = { description; expression; location; title }

let make_ingestion_data_source_settings ?aws_kinesis ?aws_msk ?azure_event_hubs ?cloud_storage ?confluent_cloud ?platform_logs_settings () : ingestion_data_source_settings = { aws_kinesis; aws_msk; azure_event_hubs; cloud_storage; confluent_cloud; platform_logs_settings }

let make_java_script_udf ?code ?function_name () : java_script_udf = { code; function_name }

let make_list_schema_revisions_response ?next_page_token ?schemas () : list_schema_revisions_response = { next_page_token; schemas }

let make_list_schemas_response ?next_page_token ?schemas () : list_schemas_response = { next_page_token; schemas }

let make_list_snapshots_response ?next_page_token ?snapshots () : list_snapshots_response = { next_page_token; snapshots }

let make_list_subscriptions_response ?next_page_token ?subscriptions () : list_subscriptions_response = { next_page_token; subscriptions }

let make_list_topic_snapshots_response ?next_page_token ?snapshots () : list_topic_snapshots_response = { next_page_token; snapshots }

let make_list_topic_subscriptions_response ?next_page_token ?subscriptions () : list_topic_subscriptions_response = { next_page_token; subscriptions }

let make_list_topics_response ?next_page_token ?topics () : list_topics_response = { next_page_token; topics }

let make_message_storage_policy ?allowed_persistence_regions ?enforce_in_transit () : message_storage_policy = { allowed_persistence_regions; enforce_in_transit }

let make_message_transform ?ai_inference ?compression ?disabled ?enabled ?javascript_udf () : message_transform = { ai_inference; compression; disabled; enabled; javascript_udf }

let make_modify_ack_deadline_request ?ack_deadline_seconds ?ack_ids () : modify_ack_deadline_request = { ack_deadline_seconds; ack_ids }

let make_modify_push_config_request ?push_config () : modify_push_config_request = { push_config }

let make_no_wrapper ?write_metadata () : no_wrapper = { write_metadata }

let make_oidc_token ?audience ?service_account_email () : oidc_token = { audience; service_account_email }

let make_platform_logs_settings ?severity () : platform_logs_settings = { severity }

let make_policy ?bindings ?etag ?version () : policy = { bindings; etag; version }

let make_publish_operation ?hedged_attempt_count ?publish_start_time () : publish_operation = { hedged_attempt_count; publish_start_time }

let make_publish_request ?messages () : publish_request = { messages }

let make_publish_response ?message_ids () : publish_response = { message_ids }

let make_pubsub_client_telemetry ?publish_operation () : pubsub_client_telemetry = { publish_operation }

let make_pubsub_message ?attributes ?data ?message_id ?ordering_key ?publish_time () : pubsub_message = { attributes; data; message_id; ordering_key; publish_time }

let make_pull_request ?max_messages ?return_immediately () : pull_request = { max_messages; return_immediately }

let make_pull_response ?received_messages () : pull_response = { received_messages }

let make_push_config ?attributes ?no_wrapper ?oidc_token ?pubsub_wrapper ?push_endpoint () : push_config = { attributes; no_wrapper; oidc_token; pubsub_wrapper; push_endpoint }

let make_received_message ?ack_id ?delivery_attempt ?message () : received_message = { ack_id; delivery_attempt; message }

let make_retry_policy ?maximum_backoff ?minimum_backoff () : retry_policy = { maximum_backoff; minimum_backoff }

let make_rollback_schema_request ?revision_id () : rollback_schema_request = { revision_id }

let make_schema ?compiled_proto_schema ?definition ?name ?revision_create_time ?revision_id ?type_ () : schema = { compiled_proto_schema; definition; name; revision_create_time; revision_id; type_ }

let make_schema_settings ?encoding ?first_revision_id ?last_revision_id ?schema () : schema_settings = { encoding; first_revision_id; last_revision_id; schema }

let make_seek_request ?snapshot ?time () : seek_request = { snapshot; time }

let make_set_iam_policy_request ?policy () : set_iam_policy_request = { policy }

let make_snapshot ?expire_time ?labels ?name ?topic () : snapshot = { expire_time; labels; name; topic }

let make_subscription ?ack_deadline_seconds ?analytics_hub_subscription_info ?bigquery_config ?bigtable_config ?cloud_storage_config ?dead_letter_policy ?detached ?enable_exactly_once_delivery ?enable_message_ordering ?expiration_policy ?filter ?labels ?message_retention_duration ?message_transforms ?name ?push_config ?retain_acked_messages ?retry_policy ?state ?tags ?topic ?topic_message_retention_duration () : subscription = { ack_deadline_seconds; analytics_hub_subscription_info; bigquery_config; bigtable_config; cloud_storage_config; dead_letter_policy; detached; enable_exactly_once_delivery; enable_message_ordering; expiration_policy; filter; labels; message_retention_duration; message_transforms; name; push_config; retain_acked_messages; retry_policy; state; tags; topic; topic_message_retention_duration }

let make_test_iam_permissions_request ?permissions () : test_iam_permissions_request = { permissions }

let make_test_iam_permissions_response ?permissions () : test_iam_permissions_response = { permissions }

let make_text_format ?delimiter () : text_format = { delimiter }

let make_topic ?ingestion_data_source_settings ?kms_key_name ?labels ?message_retention_duration ?message_storage_policy ?message_transforms ?name ?satisfies_pzs ?schema_settings ?state ?tags () : topic = { ingestion_data_source_settings; kms_key_name; labels; message_retention_duration; message_storage_policy; message_transforms; name; satisfies_pzs; schema_settings; state; tags }

let make_unstructured_inference ?parameters () : unstructured_inference = { parameters }

let make_update_snapshot_request ?snapshot ?update_mask () : update_snapshot_request = { snapshot; update_mask }

let make_update_subscription_request ?subscription ?update_mask () : update_subscription_request = { subscription; update_mask }

let make_update_topic_request ?topic ?update_mask () : update_topic_request = { topic; update_mask }

let make_validate_message_request ?encoding ?message ?name ?schema () : validate_message_request = { encoding; message; name; schema }

let make_validate_schema_request ?schema () : validate_schema_request = { schema }

let base_url = "https://pubsub.googleapis.com/"
let batch_endpoint = Uri.of_string "https://pubsub.googleapis.com/batch"
let batch ~access_token calls = Google_api.Batch.execute ~access_token ~endpoint:batch_endpoint calls

module Projects = struct
  module Schemas = struct
    let commit ~name ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":commit"))
        ~body:(yojson_of_commit_schema_request body)
        (Google_api_runtime.Call.json schema_of_yojson)

    let create ~parent ~body ?schema_id () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/schemas"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "schemaId" Fun.id schema_id;
                ]))
        ~body:(yojson_of_schema body)
        (Google_api_runtime.Call.json schema_of_yojson)

    let delete ~name () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        (Google_api_runtime.Call.json empty_of_yojson)

    let delete_revision ~name ?revision_id () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":deleteRevision"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "revisionId" Fun.id revision_id;
                ]))
        (Google_api_runtime.Call.json schema_of_yojson)

    let get ~name ?view () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
             (List.concat
                [
                  Google_api_runtime.Query.optional "view" (function `Schema_view_unspecified -> "SCHEMA_VIEW_UNSPECIFIED" | `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) view;
                ]))
        (Google_api_runtime.Call.json schema_of_yojson)

    let get_iam_policy ~resource ?options_requested_policy_version () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":getIamPolicy"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "options.requestedPolicyVersion" string_of_int options_requested_policy_version;
                ]))
        (Google_api_runtime.Call.json policy_of_yojson)

    let list ~parent ?page_size ?page_token ?view () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/schemas"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  Google_api_runtime.Query.optional "view" (function `Schema_view_unspecified -> "SCHEMA_VIEW_UNSPECIFIED" | `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) view;
                ]))
        (Google_api_runtime.Call.json list_schemas_response_of_yojson)

    let list_revisions ~name ?page_size ?page_token ?view () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":listRevisions"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  Google_api_runtime.Query.optional "view" (function `Schema_view_unspecified -> "SCHEMA_VIEW_UNSPECIFIED" | `Basic -> "BASIC" | `Full -> "FULL" | `Unrecognized value -> value) view;
                ]))
        (Google_api_runtime.Call.json list_schema_revisions_response_of_yojson)

    let rollback ~name ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":rollback"))
        ~body:(yojson_of_rollback_schema_request body)
        (Google_api_runtime.Call.json schema_of_yojson)

    let set_iam_policy ~resource ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":setIamPolicy"))
        ~body:(yojson_of_set_iam_policy_request body)
        (Google_api_runtime.Call.json policy_of_yojson)

    let test_iam_permissions ~resource ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":testIamPermissions"))
        ~body:(yojson_of_test_iam_permissions_request body)
        (Google_api_runtime.Call.json test_iam_permissions_response_of_yojson)

    let validate ~parent ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/schemas:validate"))
        ~body:(yojson_of_validate_schema_request body)
        (Google_api_runtime.Call.json validate_schema_response_of_yojson)

    let validate_message ~parent ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/schemas:validateMessage"))
        ~body:(yojson_of_validate_message_request body)
        (Google_api_runtime.Call.json validate_message_response_of_yojson)
  end

  module Snapshots = struct
    let create ~name ~body () =
      Google_api_runtime.Call.make ~meth:`PUT
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        ~body:(yojson_of_create_snapshot_request body)
        (Google_api_runtime.Call.json snapshot_of_yojson)

    let delete ~snapshot () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) snapshot))
        (Google_api_runtime.Call.json empty_of_yojson)

    let get ~snapshot () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) snapshot))
        (Google_api_runtime.Call.json snapshot_of_yojson)

    let get_iam_policy ~resource ?options_requested_policy_version () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":getIamPolicy"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "options.requestedPolicyVersion" string_of_int options_requested_policy_version;
                ]))
        (Google_api_runtime.Call.json policy_of_yojson)

    let list ~project ?page_size ?page_token () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project ^ "/snapshots"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                ]))
        (Google_api_runtime.Call.json list_snapshots_response_of_yojson)

    let patch ~name ~body () =
      Google_api_runtime.Call.make ~meth:`PATCH
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        ~body:(yojson_of_update_snapshot_request body)
        (Google_api_runtime.Call.json snapshot_of_yojson)

    let set_iam_policy ~resource ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":setIamPolicy"))
        ~body:(yojson_of_set_iam_policy_request body)
        (Google_api_runtime.Call.json policy_of_yojson)

    let test_iam_permissions ~resource ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":testIamPermissions"))
        ~body:(yojson_of_test_iam_permissions_request body)
        (Google_api_runtime.Call.json test_iam_permissions_response_of_yojson)
  end

  module Subscriptions = struct
    let acknowledge ~subscription ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) subscription ^ ":acknowledge"))
        ~body:(yojson_of_acknowledge_request body)
        (Google_api_runtime.Call.json empty_of_yojson)

    let create ~name ~body () =
      Google_api_runtime.Call.make ~meth:`PUT
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        ~body:(yojson_of_subscription body)
        (Google_api_runtime.Call.json subscription_of_yojson)

    let delete ~subscription () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) subscription))
        (Google_api_runtime.Call.json empty_of_yojson)

    let detach ~subscription () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) subscription ^ ":detach"))
        (Google_api_runtime.Call.json detach_subscription_response_of_yojson)

    let get ~subscription () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) subscription))
        (Google_api_runtime.Call.json subscription_of_yojson)

    let get_iam_policy ~resource ?options_requested_policy_version () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":getIamPolicy"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "options.requestedPolicyVersion" string_of_int options_requested_policy_version;
                ]))
        (Google_api_runtime.Call.json policy_of_yojson)

    let list ~project ?page_size ?page_token () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project ^ "/subscriptions"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                ]))
        (Google_api_runtime.Call.json list_subscriptions_response_of_yojson)

    let modify_ack_deadline ~subscription ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) subscription ^ ":modifyAckDeadline"))
        ~body:(yojson_of_modify_ack_deadline_request body)
        (Google_api_runtime.Call.json empty_of_yojson)

    let modify_push_config ~subscription ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) subscription ^ ":modifyPushConfig"))
        ~body:(yojson_of_modify_push_config_request body)
        (Google_api_runtime.Call.json empty_of_yojson)

    let patch ~name ~body () =
      Google_api_runtime.Call.make ~meth:`PATCH
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        ~body:(yojson_of_update_subscription_request body)
        (Google_api_runtime.Call.json subscription_of_yojson)

    let pull ~subscription ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) subscription ^ ":pull"))
        ~body:(yojson_of_pull_request body)
        (Google_api_runtime.Call.json pull_response_of_yojson)

    let seek ~subscription ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) subscription ^ ":seek"))
        ~body:(yojson_of_seek_request body)
        (Google_api_runtime.Call.json seek_response_of_yojson)

    let set_iam_policy ~resource ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":setIamPolicy"))
        ~body:(yojson_of_set_iam_policy_request body)
        (Google_api_runtime.Call.json policy_of_yojson)

    let test_iam_permissions ~resource ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":testIamPermissions"))
        ~body:(yojson_of_test_iam_permissions_request body)
        (Google_api_runtime.Call.json test_iam_permissions_response_of_yojson)
  end

  module Topics = struct
    let create ~name ~body () =
      Google_api_runtime.Call.make ~meth:`PUT
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        ~body:(yojson_of_topic body)
        (Google_api_runtime.Call.json topic_of_yojson)

    let delete ~topic () =
      Google_api_runtime.Call.make ~meth:`DELETE
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) topic))
        (Google_api_runtime.Call.json empty_of_yojson)

    let get ~topic () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) topic))
        (Google_api_runtime.Call.json topic_of_yojson)

    let get_iam_policy ~resource ?options_requested_policy_version () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":getIamPolicy"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "options.requestedPolicyVersion" string_of_int options_requested_policy_version;
                ]))
        (Google_api_runtime.Call.json policy_of_yojson)

    let list ~project ?page_size ?page_token () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project ^ "/topics"))
             (List.concat
                [
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                ]))
        (Google_api_runtime.Call.json list_topics_response_of_yojson)

    let patch ~name ~body () =
      Google_api_runtime.Call.make ~meth:`PATCH
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        ~body:(yojson_of_update_topic_request body)
        (Google_api_runtime.Call.json topic_of_yojson)

    let publish ~topic ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) topic ^ ":publish"))
        ~body:(yojson_of_publish_request body)
        (Google_api_runtime.Call.json publish_response_of_yojson)

    let set_iam_policy ~resource ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":setIamPolicy"))
        ~body:(yojson_of_set_iam_policy_request body)
        (Google_api_runtime.Call.json policy_of_yojson)

    let test_iam_permissions ~resource ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":testIamPermissions"))
        ~body:(yojson_of_test_iam_permissions_request body)
        (Google_api_runtime.Call.json test_iam_permissions_response_of_yojson)

    module Snapshots = struct
      let list ~topic ?page_size ?page_token () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) topic ^ "/snapshots"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  ]))
          (Google_api_runtime.Call.json list_topic_snapshots_response_of_yojson)
    end

    module Subscriptions = struct
      let list ~topic ?page_size ?page_token () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) topic ^ "/subscriptions"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  ]))
          (Google_api_runtime.Call.json list_topic_subscriptions_response_of_yojson)
    end
  end
end
