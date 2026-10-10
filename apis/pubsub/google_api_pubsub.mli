(* Generated from the Discovery document of pubsub v1 (revision 20261002). Do not edit. *)

(** Cloud Pub/Sub API (pubsub v1, revision 20261002).

    Provides reliable, many-to-many, asynchronous messaging between applications.

    {{:https://cloud.google.com/pubsub/docs}Documentation} *)

(** Configuration for making inference requests against Vertex AI models. *)
type ai_inference = {
  endpoint : string option;  (** Required. An endpoint to a Vertex AI model of the form `projects/\{project\}/locations/\{location\}/endpoints/\{endpoint\}` or `projects/\{project\}/locations/\{location\}/publishers/\{publisher\}/models/\{model\}`. Vertex AI API requests will be sent to this endpoint. *)
  service_account_email : string option;  (** Optional. The service account to use to make prediction requests against endpoints. The resource creator or updater that specifies this field must have `iam.serviceAccounts.actAs` permission on the service account. If not specified, the Pub/Sub \[service agent\](https://cloud.google.com/iam/docs/service-agents), service-\{project_number\}\@gcp-sa-pubsub.iam.gserviceaccount.com, is used. *)
  unstructured_inference : unstructured_inference option;  (** Optional. Requests and responses can be any arbitrary JSON object. *)
}

(** Request for the Acknowledge method. *)
and acknowledge_request = {
  ack_ids : string list option;  (** Required. The acknowledgment ID for the messages being acknowledged that was returned by the Pub/Sub system in the `Pull` response. Must not be empty. *)
}

(** Information about an associated \[Analytics Hub subscription\](https://cloud.google.com/bigquery/docs/analytics-hub-manage-subscriptions). *)
and analytics_hub_subscription_info = {
  listing : string option;  (** Optional. The name of the associated Analytics Hub listing resource. Pattern: 'projects/\{project\}/locations/\{location\}/dataExchanges/\{data_exchange\}/listings/\{listing\}' *)
  subscription : string option;  (** Optional. The name of the associated Analytics Hub subscription resource. Pattern: 'projects/\{project\}/locations/\{location\}/subscriptions/\{subscription\}' *)
}

(** Configuration for writing message data in Avro format. Message payloads and metadata will be written to files as an Avro binary. *)
and avro_config = {
  use_topic_schema : bool option;  (** Optional. When true, the output Cloud Storage file will be serialized using the topic schema, if it exists. *)
  write_metadata : bool option;  (** Optional. When true, write the subscription name, message_id, publish_time, attributes, and ordering_key as additional fields in the output. The subscription name, message_id, and publish_time fields are put in their own fields while all other message properties other than data (for example, an ordering_key, if present) are added as entries in the attributes map. *)
}

(** Configuration for reading Cloud Storage data in Avro binary format. The bytes of each object will be set to the `data` field of a Pub/Sub message. *)
and avro_format = Yojson.Safe.t

(** Ingestion settings for Amazon Kinesis Data Streams. *)
and aws_kinesis = {
  aws_role_arn : string option;  (** Required. AWS role ARN to be used for Federated Identity authentication with Kinesis. Check the Pub/Sub docs for how to set up this role and the required permissions that need to be attached to it. *)
  consumer_arn : string option;  (** Required. The Kinesis consumer ARN to used for ingestion in Enhanced Fan-Out mode. The consumer must be already created and ready to be used. *)
  gcp_service_account : string option;  (** Required. The GCP service account to be used for Federated Identity authentication with Kinesis (via a `AssumeRoleWithWebIdentity` call for the provided role). The `aws_role_arn` must be set up with `accounts.google.com:sub` equals to this service account number. *)
  state : [ `State_unspecified | `Active | `Kinesis_permission_denied | `Publish_permission_denied | `Stream_not_found | `Consumer_not_found | `Conflicting_region_constraints | `Unrecognized of string ] option;  (** Output only. An output-only field that indicates the state of the Kinesis ingestion source. *)
  stream_arn : string option;  (** Required. The Kinesis stream ARN to ingest data from. *)
}

(** Ingestion settings for Amazon MSK. *)
and aws_msk = {
  aws_role_arn : string option;  (** Required. AWS role ARN to be used for Federated Identity authentication with Amazon MSK. Check the Pub/Sub docs for how to set up this role and the required permissions that need to be attached to it. *)
  cluster_arn : string option;  (** Required. The Amazon Resource Name (ARN) that uniquely identifies the cluster. *)
  gcp_service_account : string option;  (** Required. The GCP service account to be used for Federated Identity authentication with Amazon MSK (via a `AssumeRoleWithWebIdentity` call for the provided role). The `aws_role_arn` must be set up with `accounts.google.com:sub` equals to this service account number. *)
  state : [ `State_unspecified | `Active | `Msk_permission_denied | `Publish_permission_denied | `Cluster_not_found | `Topic_not_found | `Conflicting_region_constraints | `Unrecognized of string ] option;  (** Output only. An output-only field that indicates the state of the Amazon MSK ingestion source. *)
  topic : string option;  (** Required. The name of the topic in the Amazon MSK cluster that Pub/Sub will import from. *)
}

(** Ingestion settings for Azure Event Hubs. *)
and azure_event_hubs = {
  client_id : string option;  (** Optional. The client id of the Azure application that is being used to authenticate Pub/Sub. *)
  event_hub : string option;  (** Optional. The name of the Event Hub. *)
  gcp_service_account : string option;  (** Optional. The GCP service account to be used for Federated Identity authentication. *)
  namespace : string option;  (** Optional. The name of the Event Hubs namespace. *)
  resource_group : string option;  (** Optional. Name of the resource group within the azure subscription. *)
  state : [ `State_unspecified | `Active | `Event_hubs_permission_denied | `Publish_permission_denied | `Namespace_not_found | `Event_hub_not_found | `Subscription_not_found | `Resource_group_not_found | `Conflicting_region_constraints | `Unrecognized of string ] option;  (** Output only. An output-only field that indicates the state of the Event Hubs ingestion source. *)
  subscription_id : string option;  (** Optional. The Azure subscription id. *)
  tenant_id : string option;  (** Optional. The tenant id of the Azure application that is being used to authenticate Pub/Sub. *)
}

(** Configuration for a BigQuery subscription. *)
and big_query_config = {
  drop_unknown_fields : bool option;  (** Optional. If true and `use_topic_schema` is true, drops any fields that are part of the topic schema that are not part of the BigQuery table schema when writing to BigQuery. Otherwise, the schemas must be kept in sync and any messages with extra fields are not written and remain in the subscription's backlog. If true and `use_table_schema` is true, drops any fields in the message that are not part of the BigQuery table schema when writing to BigQuery. Otherwise, the write to BigQuery will fail. *)
  service_account_email : string option;  (** Optional. The service account to use to write to BigQuery. The subscription creator or updater that specifies this field must have `iam.serviceAccounts.actAs` permission on the service account. If not specified, the Pub/Sub \[service agent\](https://cloud.google.com/iam/docs/service-agents), service-\{project_number\}\@gcp-sa-pubsub.iam.gserviceaccount.com, is used. *)
  state : [ `State_unspecified | `Active | `Permission_denied | `Not_found | `Schema_mismatch | `In_transit_location_restriction | `Vertex_ai_location_restriction | `Unrecognized of string ] option;  (** Output only. An output-only field that indicates whether or not the subscription can receive messages. *)
  table : string option;  (** Optional. The name of the table to which to write data, of the form \{projectId\}.\{datasetId\}.\{tableId\} *)
  use_table_schema : bool option;  (** Optional. When true, use the BigQuery table's schema as the columns to write to in BigQuery. `use_table_schema` and `use_topic_schema` cannot be enabled at the same time. *)
  use_topic_schema : bool option;  (** Optional. When true, use the topic's schema as the columns to write to in BigQuery, if it exists. `use_topic_schema` and `use_table_schema` cannot be enabled at the same time. *)
  write_metadata : bool option;  (** Optional. When true, write the subscription name, message_id, publish_time, attributes, and ordering_key to additional columns in the table. The subscription name, message_id, and publish_time fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column. *)
}

(** Configuration for a Bigtable subscription, which will write a Pub/Sub message to a Bigtable row. See the ColumnFamilyMapping documentation below for details on how the row keys and columns will be written. *)
and bigtable_config = {
  app_profile_id : string option;  (** Optional. The app profile to use for the Bigtable writes. If not specified, the 'default' application profile will be used. The app profile must use single-cluster routing. *)
  column_family_mapping : column_family_mapping option;  (** Optional. Configuration that allows writing row keys and/or columns based on fields in the input message. The input message format must be JSON if this field is set. *)
  service_account_email : string option;  (** Optional. The service account to use to write to Bigtable. The subscription creator or updater that specifies this field must have `iam.serviceAccounts.actAs` permission on the service account. If not specified, the Pub/Sub \[service agent\](https://cloud.google.com/iam/docs/service-agents), service-\{project_number\}\@gcp-sa-pubsub.iam.gserviceaccount.com, is used. *)
  state : [ `State_unspecified | `Active | `Not_found | `App_profile_misconfigured | `Permission_denied | `Schema_mismatch | `In_transit_location_restriction | `Vertex_ai_location_restriction | `Unrecognized of string ] option;  (** Output only. An output-only field that indicates whether or not the subscription can receive messages. *)
  table : string option;  (** Optional. The unique name of the table to write messages to. Values are of the form `projects//instances//tables/`. *)
  write_metadata : bool option;  (** Optional. When true, write the subscription name, message_id, publish_time, attributes, and ordering_key to additional columns in the table under the pubsub_metadata column family. The subscription name, message_id, and publish_time fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column. *)
}

(** Associates `members`, or principals, with a `role`. *)
and binding = {
  condition : expr option;  (** The condition that is associated with this binding. If the condition evaluates to `true`, then this binding applies to the current request. If the condition evaluates to `false`, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)
  members : string list option;  (** Specifies the principals requesting access for a Google Cloud resource. `members` can have the following values: * `allUsers`: A special identifier that represents anyone who is on the internet; with or without a Google account. * `allAuthenticatedUsers`: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * `user:\{emailid\}`: An email address that represents a specific Google account. For example, `alice\@example.com` . * `serviceAccount:\{emailid\}`: An email address that represents a Google service account. For example, `my-other-app\@appspot.gserviceaccount.com`. * `serviceAccount:\{projectid\}.svc.id.goog\[\{namespace\}/\{kubernetes-sa\}\]`: An identifier for a \[Kubernetes service account\](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-project.svc.id.goog\[my-namespace/my-kubernetes-sa\]`. * `group:\{emailid\}`: An email address that represents a Google group. For example, `admins\@example.com`. * `domain:\{domain\}`: The G Suite domain (primary) that represents all the users of that domain. For example, `google.com` or `example.com`. * `principal://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/subject/\{subject_attribute_value\}`: A single identity in a workforce identity pool. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/group/\{group_id\}`: All workforce identities in a group. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/attribute.\{attribute_name\}/\{attribute_value\}`: All workforce identities with a specific attribute value. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/*`: All identities in a workforce identity pool. * `principal://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/subject/\{subject_attribute_value\}`: A single identity in a workload identity pool. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/group/\{group_id\}`: A workload identity pool group. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/attribute.\{attribute_name\}/\{attribute_value\}`: All identities in a workload identity pool with a certain attribute. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/*`: All identities in a workload identity pool. * `deleted:user:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a user that has been recently deleted. For example, `alice\@example.com?uid=123456789012345678901`. If the user is recovered, this value reverts to `user:\{emailid\}` and the recovered user retains the role in the binding. * `deleted:serviceAccount:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, `my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901`. If the service account is undeleted, this value reverts to `serviceAccount:\{emailid\}` and the undeleted service account retains the role in the binding. * `deleted:group:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, `admins\@example.com?uid=123456789012345678901`. If the group is recovered, this value reverts to `group:\{emailid\}` and the recovered group retains the role in the binding. * `deleted:principal://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/subject/\{subject_attribute_value\}`: Deleted single identity in a workforce identity pool. For example, `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`. *)
  role : string option;  (** Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM roles and permissions, see the \[IAM documentation\](https://cloud.google.com/iam/docs/roles-overview). For a list of the available pre-defined roles, see \[here\](https://cloud.google.com/iam/docs/understanding-roles). *)
}

(** Ingestion settings for Cloud Storage. *)
and cloud_storage = {
  avro_format : avro_format option;  (** Optional. Data from Cloud Storage will be interpreted in Avro format. *)
  bucket : string option;  (** Optional. Cloud Storage bucket. The bucket name must be without any prefix like 'gs://'. See the \[bucket naming requirements\] (https://cloud.google.com/storage/docs/buckets#naming). *)
  match_glob : string option;  (** Optional. Glob pattern used to match objects that will be ingested. If unset, all objects will be ingested. See the \[supported patterns\](https://cloud.google.com/storage/docs/json_api/v1/objects/list#list-objects-and-prefixes-using-glob). *)
  minimum_object_create_time : string option;  (** Optional. Only objects with a larger or equal creation timestamp will be ingested. *)
  pubsub_avro_format : pub_sub_avro_format option;  (** Optional. It will be assumed data from Cloud Storage was written via \[Cloud Storage subscriptions\](https://cloud.google.com/pubsub/docs/cloudstorage). *)
  state : [ `State_unspecified | `Active | `Cloud_storage_permission_denied | `Publish_permission_denied | `Bucket_not_found | `Too_many_objects | `Conflicting_region_constraints | `Unrecognized of string ] option;  (** Output only. An output-only field that indicates the state of the Cloud Storage ingestion source. *)
  text_format : text_format option;  (** Optional. Data from Cloud Storage will be interpreted as text. *)
}

(** Configuration for a Cloud Storage subscription. *)
and cloud_storage_config = {
  avro_config : avro_config option;  (** Optional. If set, message data will be written to Cloud Storage in Avro format. *)
  bucket : string option;  (** Required. User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like 'gs://'. See the \[bucket naming requirements\] (https://cloud.google.com/storage/docs/buckets#naming). *)
  filename_datetime_format : string option;  (** Optional. User-provided format string specifying how to represent datetimes in Cloud Storage filenames. See the \[datetime format guidance\](https://cloud.google.com/pubsub/docs/create-cloudstorage-subscription#file_names). *)
  filename_prefix : string option;  (** Optional. User-provided prefix for Cloud Storage filename. See the \[object naming requirements\](https://cloud.google.com/storage/docs/objects#naming). *)
  filename_suffix : string option;  (** Optional. User-provided suffix for Cloud Storage filename. See the \[object naming requirements\](https://cloud.google.com/storage/docs/objects#naming). Must not end in '/'. *)
  max_bytes : string option;  (** Optional. The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB. The max_bytes limit may be exceeded in cases where messages are larger than the limit. *)
  max_duration : string option;  (** Optional. The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes. May not exceed the subscription's acknowledgment deadline. *)
  max_messages : string option;  (** Optional. The maximum number of messages that can be written to a Cloud Storage file before a new file is created. Min 1000 messages. *)
  service_account_email : string option;  (** Optional. The service account to use to write to Cloud Storage. The subscription creator or updater that specifies this field must have `iam.serviceAccounts.actAs` permission on the service account. If not specified, the Pub/Sub \[service agent\](https://cloud.google.com/iam/docs/service-agents), service-\{project_number\}\@gcp-sa-pubsub.iam.gserviceaccount.com, is used. *)
  state : [ `State_unspecified | `Active | `Permission_denied | `Not_found | `In_transit_location_restriction | `Schema_mismatch | `Vertex_ai_location_restriction | `Unrecognized of string ] option;  (** Output only. An output-only field that indicates whether or not the subscription can receive messages. *)
  text_config : text_config option;  (** Optional. If set, message data will be written to Cloud Storage in text format. *)
}

(** Configuration for writing a Pub/Sub message to a Bigtable row with a user-defined key and writing to column families. If this field is set: - The subscription messages must be formatted as JSON. - The row key mapping is configured in the `key_definition` section. - The top-level fields will be written either: - By default, they will be written to the `data` column family with the field name as the column qualifier. - But if the field name matches an existing column family (except for the default `data` column), then that field will be written to that column family, either as a scalar or its next level nested fields if it's a JSON object. - The cell timestamp will be the message publish timestamp. If the field is not set, the default behavior is to write: - row key: subscription name, message ID hash, and message ID delimited by `#`. - columns: message bytes written to a single column family `data` with an empty-string column qualifier. - cell timestamp: the message publish timestamp. *)
and column_family_mapping = {
  delimited_key : delimited_key option;  (** Optional. If set, the row key is constructed from the given key fields and delimiter. All key fields must be present in the message; otherwise, the message remains in the subscription backlog. *)
  row_key_schema : row_key_schema option;  (** Optional. If set, the row key is constructed from the field names of the table's structured row key (\{$universe.dns_names.final_documentation_domain\}/bigtable/docs/manage-row-key-schemas). Note that if the field is nullable in the structured row key, then it need not be present in the message; null will be used instead. *)
}

(** Request for CommitSchema method. *)
and commit_schema_request = {
  schema : schema option;  (** Required. The schema revision to commit. *)
}

(** Configuration specific to compiled Protocol Buffer schemas. *)
and compiled_proto_schema = {
  compiled_bytes : string option;  (** Required. The compiled FileDescriptorSet binary. *)
  root_message : string option;  (** Required. The name of the root message type in the schema. *)
}

(** Configuration for compressing/decompressing message data using a user-specified compression algorithm. *)
and compression = {
  compression_algorithm : [ `Compression_algorithm_unspecified | `Zlib | `Unrecognized of string ] option;  (** Required. Specifies the compression algorithm to use. *)
  compression_mode : [ `Compression_mode_unspecified | `Compress | `Decompress | `Unrecognized of string ] option;  (** Required. Specifies whether to compress or decompress the message. *)
}

(** Ingestion settings for Confluent Cloud. *)
and confluent_cloud = {
  bootstrap_server : string option;  (** Required. The address of the bootstrap server. The format is url:port. *)
  cluster_id : string option;  (** Required. The id of the cluster. *)
  gcp_service_account : string option;  (** Required. The GCP service account to be used for Federated Identity authentication with `identity_pool_id`. *)
  identity_pool_id : string option;  (** Required. The id of the identity pool to be used for Federated Identity authentication with Confluent Cloud. See https://docs.confluent.io/cloud/current/security/authenticate/workload-identities/identity-providers/oauth/identity-pools.html#add-oauth-identity-pools. *)
  state : [ `State_unspecified | `Active | `Confluent_cloud_permission_denied | `Publish_permission_denied | `Unreachable_bootstrap_server | `Cluster_not_found | `Topic_not_found | `Conflicting_region_constraints | `Unrecognized of string ] option;  (** Output only. An output-only field that indicates the state of the Confluent Cloud ingestion source. *)
  topic : string option;  (** Required. The name of the topic in the Confluent Cloud cluster that Pub/Sub will import from. *)
}

(** Request for the `CreateSnapshot` method. *)
and create_snapshot_request = {
  labels : (string * string) list option;  (** Optional. See \[Creating and managing labels\](https://cloud.google.com/pubsub/docs/labels). *)
  subscription : string option;  (** Required. The subscription whose backlog the snapshot retains. Specifically, the created snapshot is guaranteed to retain: (a) The existing backlog on the subscription. More precisely, this is defined as the messages in the subscription's backlog that are unacknowledged upon the successful completion of the `CreateSnapshot` request; as well as: (b) Any messages published to the subscription's topic following the successful completion of the CreateSnapshot request. Format is `projects/\{project\}/subscriptions/\{sub\}`. *)
  tags : (string * string) list option;  (** Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: '123/environment': 'production', '123/costCenter': 'marketing' See https://\{$universe.dns_names.final_documentation_domain\}/pubsub/docs/tags for more information on using tags with Pub/Sub resources. *)
}

(** Dead lettering is done on a best effort basis. The same message might be dead lettered multiple times. If validation on any of the fields fails at subscription creation/updation, the create/update subscription request will fail. *)
and dead_letter_policy = {
  dead_letter_topic : string option;  (** Optional. The name of the topic to which dead letter messages should be published. Format is `projects/\{project\}/topics/\{topic\}`.The Pub/Sub service account associated with the enclosing subscription's parent project (i.e., service-\{project_number\}\@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Publish() to this topic. The operation will fail if the topic does not exist. Users should ensure that there is a subscription attached to this topic since messages published to a topic with no subscriptions are lost. *)
  max_delivery_attempts : int option;  (** Optional. The maximum number of delivery attempts for any message. The value must be between 5 and 100. The number of delivery attempts is defined as 1 + (the sum of number of NACKs and number of times the acknowledgment deadline has been exceeded for the message). A NACK is any call to ModifyAckDeadline with a 0 deadline. Note that client libraries may automatically extend ack_deadlines. This field will be honored on a best effort basis. If this parameter is 0, a default value of 5 is used. *)
}

(** Row key definition based on fields from the message. *)
and delimited_key = {
  delimiter : string option;  (** Optional. Byte sequence used to delimit concatenated fields. Must be specified if multiple key fields are used. The delimiter must contain at least 1 character and at most 50 characters. *)
  key_fields : string list option;  (** Optional. The key fields to construct from the row key. The fields must be present in the message as a top-level field, i.e. JSON path expressions will not traverse into nested objects. *)
}

(** Response for the DetachSubscription method. Reserved for future use. *)
and detach_subscription_response = Yojson.Safe.t

(** A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo \{ rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); \} *)
and empty = Yojson.Safe.t

(** A policy that specifies the conditions for resource expiration (i.e., automatic resource deletion). *)
and expiration_policy = {
  ttl : string option;  (** Optional. Specifies the 'time-to-live' duration for an associated resource. The resource expires if it is not active for a period of `ttl`. The definition of 'activity' depends on the type of the associated resource. The minimum and maximum allowed values for `ttl` depend on the type of the associated resource, as well. If `ttl` is not set, the associated resource never expires. *)
}

(** Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: 'Summary size limit' description: 'Determines if a summary is less than 100 chars' expression: 'document.summary.size() < 100' Example (Equality): title: 'Requestor is owner' description: 'Determines if requestor is the document owner' expression: 'document.owner == request.auth.claims.email' Example (Logic): title: 'Public documents' description: 'Determine whether the document should be publicly visible' expression: 'document.type != 'private' && document.type != 'internal'' Example (Data Manipulation): title: 'Notification string' description: 'Create a notification string with a timestamp.' expression: ''New message received at ' + string(document.create_time)' The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information. *)
and expr = {
  description : string option;  (** Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. *)
  expression : string option;  (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string option;  (** Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. *)
  title : string option;  (** Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. *)
}

(** Settings for an ingestion data source on a topic. *)
and ingestion_data_source_settings = {
  aws_kinesis : aws_kinesis option;  (** Optional. Amazon Kinesis Data Streams. *)
  aws_msk : aws_msk option;  (** Optional. Amazon MSK. *)
  azure_event_hubs : azure_event_hubs option;  (** Optional. Azure Event Hubs. *)
  cloud_storage : cloud_storage option;  (** Optional. Cloud Storage. *)
  confluent_cloud : confluent_cloud option;  (** Optional. Confluent Cloud. *)
  platform_logs_settings : platform_logs_settings option;  (** Optional. Platform Logs settings. If unset, no Platform Logs will be generated. *)
}

(** User-defined JavaScript function that can transform or filter a Pub/Sub message. *)
and java_script_udf = {
  code : string option;  (** Required. JavaScript code that contains a function `function_name` with the below signature: ``` /** * Transforms a Pub/Sub message. * \@return \{(Object)>|null)\} - To * filter a message, return `null`. To transform a message return a map * with the following keys: * - (required) 'data' : \{string\} * - (optional) 'attributes' : \{Object\} * Returning empty `attributes` will remove all attributes from the * message. * * \@param \{(Object)>\} Pub/Sub * message. Keys: * - (required) 'data' : \{string\} * - (required) 'attributes' : \{Object\} * * \@param \{Object\} metadata - Pub/Sub message metadata. * Keys: * - (optional) 'message_id' : \{string\} * - (optional) 'publish_time': \{string\} YYYY-MM-DDTHH:MM:SSZ format * - (optional) 'ordering_key': \{string\} */ function (message, metadata) \{ \} ``` *)
  function_name : string option;  (** Required. Name of the JavasScript function that should applied to Pub/Sub messages. *)
}

(** Response for the `ListSchemaRevisions` method. *)
and list_schema_revisions_response = {
  next_page_token : string option;  (** A token that can be sent as `page_token` to retrieve the next page. If this field is empty, there are no subsequent pages. *)
  schemas : schema list option;  (** The revisions of the schema. *)
}

(** Response for the `ListSchemas` method. *)
and list_schemas_response = {
  next_page_token : string option;  (** If not empty, indicates that there may be more schemas that match the request; this value should be passed in a new `ListSchemasRequest`. *)
  schemas : schema list option;  (** The resulting schemas. *)
}

(** Response for the `ListSnapshots` method. *)
and list_snapshots_response = {
  next_page_token : string option;  (** Optional. If not empty, indicates that there may be more snapshot that match the request; this value should be passed in a new `ListSnapshotsRequest`. *)
  snapshots : snapshot list option;  (** Optional. The resulting snapshots. *)
}

(** Response for the `ListSubscriptions` method. *)
and list_subscriptions_response = {
  next_page_token : string option;  (** Optional. If not empty, indicates that there may be more subscriptions that match the request; this value should be passed in a new `ListSubscriptionsRequest` to get more subscriptions. *)
  subscriptions : subscription list option;  (** Optional. The subscriptions that match the request. *)
}

(** Response for the `ListTopicSnapshots` method. *)
and list_topic_snapshots_response = {
  next_page_token : string option;  (** Optional. If not empty, indicates that there may be more snapshots that match the request; this value should be passed in a new `ListTopicSnapshotsRequest` to get more snapshots. *)
  snapshots : string list option;  (** Optional. The names of the snapshots that match the request. *)
}

(** Response for the `ListTopicSubscriptions` method. *)
and list_topic_subscriptions_response = {
  next_page_token : string option;  (** Optional. If not empty, indicates that there may be more subscriptions that match the request; this value should be passed in a new `ListTopicSubscriptionsRequest` to get more subscriptions. *)
  subscriptions : string list option;  (** Optional. The names of subscriptions attached to the topic specified in the request. *)
}

(** Response for the `ListTopics` method. *)
and list_topics_response = {
  next_page_token : string option;  (** Optional. If not empty, indicates that there may be more topics that match the request; this value should be passed in a new `ListTopicsRequest`. *)
  topics : topic list option;  (** Optional. The resulting topics. *)
}

(** A policy constraining the storage of messages published to the topic. *)
and message_storage_policy = {
  allowed_persistence_regions : string list option;  (** Optional. A list of IDs of Google Cloud regions where messages that are published to the topic may be persisted in storage. Messages published by publishers running in non-allowed Google Cloud regions (or running outside of Google Cloud altogether) are routed for storage in one of the allowed regions. An empty list means that no regions are allowed, and is not a valid configuration. *)
  enforce_in_transit : bool option;  (** Optional. If true, `allowed_persistence_regions` is also used to enforce in-transit guarantees for messages. That is, Pub/Sub will fail Publish operations on this topic and subscribe operations on any subscription attached to this topic in any region that is not in `allowed_persistence_regions`. *)
}

(** All supported message transforms types. *)
and message_transform = {
  ai_inference : ai_inference option;  (** Optional. AI Inference. Specifies the Vertex AI endpoint that inference requests built from the Pub/Sub message data and provided parameters will be sent to. *)
  compression : compression option;  (** Optional. Compression/Decompression. *)
  disabled : bool option;  (** Optional. If true, the transform is disabled and will not be applied to messages. Defaults to `false`. *)
  enabled : bool option;  (** Optional. This field is deprecated, use the `disabled` field to disable transforms. *)
  javascript_udf : java_script_udf option;  (** Optional. JavaScript User Defined Function. If multiple JavaScriptUDF's are specified on a resource, each must have a unique `function_name`. *)
}

(** Request for the ModifyAckDeadline method. *)
and modify_ack_deadline_request = {
  ack_deadline_seconds : int option;  (** Required. The new ack deadline with respect to the time this request was sent to the Pub/Sub system. For example, if the value is 10, the new ack deadline will expire 10 seconds after the `ModifyAckDeadline` call was made. Specifying zero might immediately make the message available for delivery to another subscriber client. This typically results in an increase in the rate of message redeliveries (that is, duplicates). The minimum deadline you can specify is 0 seconds. The maximum deadline you can specify in a single request is 600 seconds (10 minutes). *)
  ack_ids : string list option;  (** Required. List of acknowledgment IDs. *)
}

(** Request for the ModifyPushConfig method. *)
and modify_push_config_request = {
  push_config : push_config option;  (** Required. The push configuration for future deliveries. An empty `pushConfig` indicates that the Pub/Sub system should stop pushing messages from the given subscription and allow messages to be pulled and acknowledged - effectively pausing the subscription if `Pull` or `StreamingPull` is not called. *)
}

(** Sets the `data` field as the HTTP body for delivery. *)
and no_wrapper = {
  write_metadata : bool option;  (** Optional. When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:` headers of the HTTP request. Writes the Pub/Sub message attributes to `:` headers of the HTTP request. *)
}

(** Contains information needed for generating an \[OpenID Connect token\](https://developers.google.com/identity/protocols/OpenIDConnect). *)
and oidc_token = {
  audience : string option;  (** Optional. Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for. The audience value is a single case-sensitive string. Having multiple values (array) for the audience field is not supported. More info about the OIDC JWT token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified, the Push endpoint URL will be used. *)
  service_account_email : string option;  (** Optional. \[Service account email\](https://cloud.google.com/iam/docs/service-accounts) used for generating the OIDC token. For more information on setting up authentication, see \[Push subscriptions\](https://cloud.google.com/pubsub/docs/push). *)
}

(** Settings for Platform Logs produced by Pub/Sub. *)
and platform_logs_settings = {
  severity : [ `Severity_unspecified | `Disabled | `Debug | `Info | `Warning | `Error | `Unrecognized of string ] option;  (** Optional. The minimum severity level of Platform Logs that will be written. *)
}

(** An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` \{ 'bindings': \[ \{ 'role': 'roles/resourcemanager.organizationAdmin', 'members': \[ 'user:mike\@example.com', 'group:admins\@example.com', 'domain:google.com', 'serviceAccount:my-project-id\@appspot.gserviceaccount.com' \] \}, \{ 'role': 'roles/resourcemanager.organizationViewer', 'members': \[ 'user:eve\@example.com' \], 'condition': \{ 'title': 'expirable access', 'description': 'Does not grant access after Sep 2020', 'expression': 'request.time < timestamp('2020-10-01T00:00:00.000Z')', \} \} \], 'etag': 'BwWWja0YfJA=', 'version': 3 \} ``` **YAML example:** ``` bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the \[IAM documentation\](https://cloud.google.com/iam/docs/). *)
and policy = {
  bindings : binding list option;  (** Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice\@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`. *)
  etag : string option;  (** `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. *)
  version : int option;  (** Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)
}

(** Configuration for reading Cloud Storage data written via \[Cloud Storage subscriptions\](https://cloud.google.com/pubsub/docs/cloudstorage). The data and attributes fields of the originally exported Pub/Sub message will be restored when publishing. *)
and pub_sub_avro_format = Yojson.Safe.t

(** Telemetry about a `Publish` operation which may or may not be common across individual RPCs. *)
and publish_operation = {
  hedged_attempt_count : int option;  (** Optional. If the publisher client is using publish hedging, provides the attempt count for the hedge (starting at 1). A value of 0 indicates that the request was not hedged. *)
  publish_start_time : string option;  (** Optional. Time at which the `publish()` call was initiated in the client library, meaning across all RPC retry attempts, see \[grpc retries\](https://grpc.io/docs/guides/retry/). Provides a sense of the end-to-end publish duration from the client perspective, across retries. *)
}

(** Request for the Publish method. *)
and publish_request = {
  messages : pubsub_message list option;  (** Required. The messages to publish. *)
}

(** Response for the `Publish` method. *)
and publish_response = {
  message_ids : string list option;  (** Optional. The server-assigned ID of each published message, in the same order as the messages in the request. IDs are guaranteed to be unique within the topic. *)
}

(** Client-side telemetry about Pub/Sub requests, useful for debugging purposes. If the client opts to provide this information, it will be passed as a serialized proto in the `x-goog-pubsub-client-telemetry` header. *)
and pubsub_client_telemetry = {
  publish_operation : publish_operation option;  (** Optional. Telemetry about a `Publish` operation. *)
}

(** A message that is published by publishers and consumed by subscribers. The message must contain either a non-empty data field or at least one attribute. Note that client libraries represent this object differently depending on the language. See the corresponding \[client library documentation\](https://cloud.google.com/pubsub/docs/reference/libraries) for more information. See \[quotas and limits\] (https://cloud.google.com/pubsub/quotas) for more information about message limits. *)
and pubsub_message = {
  attributes : (string * string) list option;  (** Optional. Attributes for this message. If this field is empty, the message must contain non-empty data. This can be used to filter messages on the subscription. *)
  data : string option;  (** Optional. The message data field. If this field is empty, the message must contain at least one attribute. *)
  message_id : string option;  (** ID of this message, assigned by the server when the message is published. Guaranteed to be unique within the topic. This value may be read by a subscriber that receives a `PubsubMessage` via a `Pull` call or a push delivery. It must not be populated by the publisher in a `Publish` call. *)
  ordering_key : string option;  (** Optional. If non-empty, identifies related messages for which publish order should be respected. If a `Subscription` has `enable_message_ordering` set to `true`, messages published with the same non-empty `ordering_key` value will be delivered to subscribers in the order in which they are received by the Pub/Sub system. All `PubsubMessage`s published in a given `PublishRequest` must specify the same `ordering_key` value. For more information, see \[ordering messages\](https://cloud.google.com/pubsub/docs/ordering). *)
  publish_time : string option;  (** The time at which the message was published, populated by the server when it receives the `Publish` call. It must not be populated by the publisher in a `Publish` call. *)
}

(** The payload to the push endpoint is in the form of the JSON representation of a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage). *)
and pubsub_wrapper = Yojson.Safe.t

(** Request for the `Pull` method. *)
and pull_request = {
  max_messages : int option;  (** Required. The maximum number of messages to return for this request. Must be a positive integer. The Pub/Sub system may return fewer than the number specified. *)
  return_immediately : bool option;  (** Optional. If this field set to true, the system will respond immediately even if it there are no messages available to return in the `Pull` response. Otherwise, the system may wait (for a bounded amount of time) until at least one message is available, rather than returning no messages. Warning: setting this field to `true` is discouraged because it adversely impacts the performance of `Pull` operations. We recommend that users do not set this field. *)
}

(** Response for the `Pull` method. *)
and pull_response = {
  received_messages : received_message list option;  (** Optional. Received Pub/Sub messages. The list will be empty if there are no more messages available in the backlog, or if no messages could be returned before the request timeout. For JSON, the response can be entirely empty. The Pub/Sub system may return fewer than the `maxMessages` requested even if there are more messages available in the backlog. *)
}

(** Configuration for a push delivery endpoint. *)
and push_config = {
  attributes : (string * string) list option;  (** Optional. Endpoint configuration attributes that can be used to control different aspects of the message delivery. The only currently supported attribute is `x-goog-version`, which you can use to change the format of the pushed message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the pushed message (i.e., its fields and metadata). If not present during the `CreateSubscription` call, it will default to the version of the Pub/Sub API used to make such call. If not present in a `ModifyPushConfig` call, its value will not be changed. `GetSubscription` calls will always return a valid version, even if the subscription was created without this attribute. The only supported values for the `x-goog-version` attribute are: * `v1beta1`: uses the push format defined in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub API. For example: `attributes \{ 'x-goog-version': 'v1' \}` *)
  no_wrapper : no_wrapper option;  (** Optional. When set, the payload to the push endpoint is not wrapped. *)
  oidc_token : oidc_token option;  (** Optional. If specified, Pub/Sub will generate and attach an OIDC JWT token as an `Authorization` header in the HTTP request for every pushed message. *)
  pubsub_wrapper : pubsub_wrapper option;  (** Optional. When set, the payload to the push endpoint is in the form of the JSON representation of a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage). *)
  push_endpoint : string option;  (** Optional. A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use `https://example.com/push`. *)
}

(** A message and its corresponding acknowledgment ID. *)
and received_message = {
  ack_id : string option;  (** Optional. This ID can be used to acknowledge the received message. *)
  delivery_attempt : int option;  (** Optional. The approximate number of times that Pub/Sub has attempted to deliver the associated message to a subscriber. More precisely, this is 1 + (number of NACKs) + (number of ack_deadline exceeds) for this message. A NACK is any call to ModifyAckDeadline with a 0 deadline. An ack_deadline exceeds event is whenever a message is not acknowledged within ack_deadline. Note that ack_deadline is initially Subscription.ackDeadlineSeconds, but may get extended automatically by the client library. Upon the first delivery of a given message, `delivery_attempt` will have a value of 1. The value is calculated at best effort and is approximate. If a DeadLetterPolicy is not set on the subscription, this will be 0. *)
  message : pubsub_message option;  (** Optional. The message. *)
}

(** A policy that specifies how Pub/Sub retries message delivery. Retry delay will be exponential based on provided minimum and maximum backoffs. https://en.wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be triggered on NACKs or acknowledgment deadline exceeded events for a given message. Retry Policy is implemented on a best effort basis. At times, the delay between consecutive deliveries may not match the configuration. That is, delay can be more or less than configured backoff. *)
and retry_policy = {
  maximum_backoff : string option;  (** Optional. The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds. *)
  minimum_backoff : string option;  (** Optional. The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds. *)
}

(** Request for the `RollbackSchema` method. *)
and rollback_schema_request = {
  revision_id : string option;  (** Required. The revision ID to roll back to. It must be a revision of the same schema. Example: c7cfa2a8 *)
}

(** Row key definition that reads the input message fields based on the field names of the table's structured row key (\{$universe.dns_names.final_documentation_domain\}/bigtable/docs/manage-row-key-schemas). Note that if the field is nullable in the structured row key, then it need not be present in the message; null will be used instead. *)
and row_key_schema = Yojson.Safe.t

(** A schema resource. *)
and schema = {
  compiled_proto_schema : compiled_proto_schema option;  (** Optional. Configuration for a schema provided as a pre-compiled Protocol Buffer FileDescriptorSet. The `type` field above must be set to PROTOCOL_BUFFER. *)
  definition : string option;  (** The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`. *)
  name : string option;  (** Required. Name of the schema. Format is `projects/\{project\}/schemas/\{schema\}`. *)
  revision_create_time : string option;  (** Output only. The timestamp that the revision was created. *)
  revision_id : string option;  (** Output only. Immutable. The revision ID of the schema. *)
  type_ : [ `Type_unspecified | `Protocol_buffer | `Avro | `Unrecognized of string ] option;  (** The type of the schema definition. *)
}

(** Settings for validating messages published against a schema. *)
and schema_settings = {
  encoding : [ `Encoding_unspecified | `Json | `Binary | `Unrecognized of string ] option;  (** Optional. The encoding of messages validated against `schema`. *)
  first_revision_id : string option;  (** Optional. The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against last_revision or any revision created before. *)
  last_revision_id : string option;  (** Optional. The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against first_revision or any revision created after. *)
  schema : string option;  (** Required. The name of the schema that messages published should be validated against. Format is `projects/\{project\}/schemas/\{schema\}`. The value of this field will be `_deleted-schema_` if the schema has been deleted. *)
}

(** Request for the `Seek` method. *)
and seek_request = {
  snapshot : string option;  (** Optional. The snapshot to seek to. The snapshot's topic must be the same as that of the provided subscription. Format is `projects/\{project\}/snapshots/\{snap\}`. *)
  time : string option;  (** Optional. The time to seek to. Messages retained in the subscription that were published before this time are marked as acknowledged, and messages retained in the subscription that were published after this time are marked as unacknowledged. Note that this operation affects only those messages retained in the subscription (configured by the combination of `message_retention_duration` and `retain_acked_messages`). For example, if `time` corresponds to a point before the message retention window (or to a point before the system's notion of the subscription creation time), only retained messages will be marked as unacknowledged, and already-expunged messages will not be restored. *)
}

(** Response for the `Seek` method (this response is empty). *)
and seek_response = Yojson.Safe.t

(** Request message for `SetIamPolicy` method. *)
and set_iam_policy_request = {
  policy : policy option;  (** REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them. *)
}

(** A snapshot resource. Snapshots are used in \[Seek\](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. *)
and snapshot = {
  expire_time : string option;  (** Optional. The snapshot is guaranteed to exist up until this time. A newly-created snapshot expires no later than 7 days from the time of its creation. Its exact lifetime is determined at creation by the existing backlog in the source subscription. Specifically, the lifetime of the snapshot is `7 days - (age of oldest unacked message in the subscription)`. For example, consider a subscription whose oldest unacked message is 3 days old. If a snapshot is created from this subscription, the snapshot -- which will always capture this 3-day-old backlog as long as the snapshot exists -- will expire in 4 days. The service will refuse to create a snapshot that would expire in less than 1 hour after creation. *)
  labels : (string * string) list option;  (** Optional. See \[Creating and managing labels\] (https://cloud.google.com/pubsub/docs/labels). *)
  name : string option;  (** Optional. The name of the snapshot. *)
  topic : string option;  (** Optional. The name of the topic from which this snapshot is retaining messages. *)
}

(** A subscription resource. If none of `push_config`, `bigquery_config`, `cloud_storage_config`, or `bigtable_config` is set, then the subscriber will pull and ack messages using API methods. At most one of these fields may be set. *)
and subscription = {
  ack_deadline_seconds : int option;  (** Optional. The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to acknowledge receipt before resending the message. In the interval after the message is delivered and before it is acknowledged, it is considered to be _outstanding_. During that time period, the message will not be redelivered (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using non-streaming pull or send the `ack_id` in a `StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used. For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message. *)
  analytics_hub_subscription_info : analytics_hub_subscription_info option;  (** Output only. Information about the associated Analytics Hub subscription. Only set if the subscription is created by Analytics Hub. *)
  bigquery_config : big_query_config option;  (** Optional. If delivery to BigQuery is used with this subscription, this field is used to configure it. *)
  bigtable_config : bigtable_config option;  (** Optional. If delivery to Bigtable is used with this subscription, this field is used to configure it. *)
  cloud_storage_config : cloud_storage_config option;  (** Optional. If delivery to Google Cloud Storage is used with this subscription, this field is used to configure it. *)
  dead_letter_policy : dead_letter_policy option;  (** Optional. A policy that specifies the conditions for dead lettering messages in this subscription. If dead_letter_policy is not set, dead lettering is disabled. The Pub/Sub service account associated with this subscriptions's parent project (i.e., service-\{project_number\}\@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Acknowledge() messages on this subscription. *)
  detached : bool option;  (** Optional. Indicates whether the subscription is detached from its topic. Detached subscriptions don't receive messages from their topic and don't retain any backlog. `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will not be made. *)
  enable_exactly_once_delivery : bool option;  (** Optional. If true, Pub/Sub provides the following guarantees for the delivery of a message with a given value of `message_id` on this subscription: * The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgment deadline expires. * An acknowledged message will not be resent to a subscriber. Note that subscribers may still receive multiple copies of a message when `enable_exactly_once_delivery` is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct `message_id` values. *)
  enable_message_ordering : bool option;  (** Optional. If true, messages published with the same `ordering_key` in `PubsubMessage` will be delivered to the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they may be delivered in any order. *)
  expiration_policy : expiration_policy option;  (** Optional. A policy that specifies the conditions for this subscription's expiration. A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If `expiration_policy` is not set, a *default policy* with `ttl` of 31 days will be used. The minimum allowed value for `expiration_policy.ttl` is 1 day. If `expiration_policy` is set, but `expiration_policy.ttl` is not set, the subscription never expires. *)
  filter : string option;  (** Optional. An expression written in the Pub/Sub \[filter language\](https://cloud.google.com/pubsub/docs/filtering). If non-empty, then only `PubsubMessage`s whose `attributes` field matches the filter are delivered on this subscription. If empty, then no messages are filtered out. *)
  labels : (string * string) list option;  (** Optional. See \[Creating and managing labels\](https://cloud.google.com/pubsub/docs/labels). *)
  message_retention_duration : string option;  (** Optional. How long to retain unacknowledged messages in the subscription's backlog, from the moment a message is published. If `retain_acked_messages` is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a `Seek` can be done. Defaults to 7 days. Cannot be more than 31 days or less than 10 minutes. *)
  message_transforms : message_transform list option;  (** Optional. Transforms to be applied to messages before they are delivered to subscribers. Transforms are applied in the order specified. *)
  name : string option;  (** Required. Identifier. The name of the subscription. It must have the format `'projects/\{project\}/subscriptions/\{subscription\}'`. `\{subscription\}` must start with a letter, and contain only letters (`\[A-Za-z\]`), numbers (`\[0-9\]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `'goog'`. *)
  push_config : push_config option;  (** Optional. If push delivery is used with this subscription, this field is used to configure it. *)
  retain_acked_messages : bool option;  (** Optional. Indicates whether to retain acknowledged messages. If true, then messages are not expunged from the subscription's backlog, even if they are acknowledged, until they fall out of the `message_retention_duration` window. This must be true if you would like to \[`Seek` to a timestamp\] (https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) in the past to replay previously-acknowledged messages. *)
  retry_policy : retry_policy option;  (** Optional. A policy that specifies how Pub/Sub retries message delivery for this subscription. If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers. RetryPolicy will be triggered on NACKs or acknowledgment deadline exceeded events for a given message. *)
  state : [ `State_unspecified | `Active | `Resource_error | `Unrecognized of string ] option;  (** Output only. An output-only field indicating whether or not the subscription can receive messages. *)
  tags : (string * string) list option;  (** Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: '123/environment': 'production', '123/costCenter': 'marketing' See https://\{$universe.dns_names.final_documentation_domain\}/pubsub/docs/tags for more information on using tags with Pub/Sub resources. *)
  topic : string option;  (** Required. The name of the topic from which this subscription is receiving messages. Format is `projects/\{project\}/topics/\{topic\}`. The value of this field will be `_deleted-topic_` if the topic has been deleted. *)
  topic_message_retention_duration : string option;  (** Output only. Indicates the minimum duration for which a message is retained after it is published to the subscription's topic. If this field is set, messages published to the subscription's topic in the last `topic_message_retention_duration` are always available to subscribers. See the `message_retention_duration` field in `Topic`. This field is set only in responses from the server; it is ignored if it is set in any requests. *)
}

(** Request message for `TestIamPermissions` method. *)
and test_iam_permissions_request = {
  permissions : string list option;  (** The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `storage.*`) are not allowed. For more information see \[IAM Overview\](https://cloud.google.com/iam/docs/overview#permissions). *)
}

(** Response message for `TestIamPermissions` method. *)
and test_iam_permissions_response = {
  permissions : string list option;  (** A subset of `TestPermissionsRequest.permissions` that the caller is allowed. *)
}

(** Configuration for writing message data in text format. Message payloads will be written to files as raw text, separated by a newline. *)
and text_config = Yojson.Safe.t

(** Configuration for reading Cloud Storage data in text format. Each line of text as specified by the delimiter will be set to the `data` field of a Pub/Sub message. *)
and text_format = {
  delimiter : string option;  (** Optional. When unset, '\\n' is used. *)
}

(** A topic resource. *)
and topic = {
  ingestion_data_source_settings : ingestion_data_source_settings option;  (** Optional. Settings for ingestion from a data source into this topic. *)
  kms_key_name : string option;  (** Optional. The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic. The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`. *)
  labels : (string * string) list option;  (** Optional. See \[Creating and managing labels\] (https://cloud.google.com/pubsub/docs/labels). *)
  message_retention_duration : string option;  (** Optional. Indicates the minimum duration to retain a message after it is published to the topic. If this field is set, messages published to the topic in the last `message_retention_duration` are always available to subscribers. For instance, it allows any attached subscription to \[seek to a timestamp\](https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) that is up to `message_retention_duration` in the past. If this field is not set, message retention is controlled by settings on individual subscriptions. Cannot be more than 31 days or less than 10 minutes. *)
  message_storage_policy : message_storage_policy option;  (** Optional. Policy constraining the set of Google Cloud Platform regions where messages published to the topic may be stored. If not present, then no constraints are in effect. *)
  message_transforms : message_transform list option;  (** Optional. Transforms to be applied to messages published to the topic. Transforms are applied in the order specified. *)
  name : string option;  (** Required. Identifier. The name of the topic. It must have the format `'projects/\{project\}/topics/\{topic\}'`. `\{topic\}` must start with a letter, and contain only letters (`\[A-Za-z\]`), numbers (`\[0-9\]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `'goog'`. *)
  satisfies_pzs : bool option;  (** Optional. Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests. *)
  schema_settings : schema_settings option;  (** Optional. Settings for validating messages published against a schema. *)
  state : [ `State_unspecified | `Active | `Ingestion_resource_error | `Unrecognized of string ] option;  (** Output only. An output-only field indicating the state of the topic. *)
  tags : (string * string) list option;  (** Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: '123/environment': 'production', '123/costCenter': 'marketing' See https://\{$universe.dns_names.final_documentation_domain\}/pubsub/docs/tags for more information on using tags with Pub/Sub resources. *)
}

(** Configuration for making inferences using arbitrary JSON payloads. *)
and unstructured_inference = {
  parameters : (string * Yojson.Safe.t) list option;  (** Optional. A parameters object to be included in each inference request. The parameters object is combined with the data field of the Pub/Sub message to form the inference request. *)
}

(** Request for the UpdateSnapshot method. *)
and update_snapshot_request = {
  snapshot : snapshot option;  (** Required. The updated snapshot object. *)
  update_mask : string option;  (** Required. Indicates which fields in the provided snapshot to update. Must be specified and non-empty. *)
}

(** Request for the UpdateSubscription method. *)
and update_subscription_request = {
  subscription : subscription option;  (** Required. The updated subscription object. *)
  update_mask : string option;  (** Required. Indicates which fields in the provided subscription to update. Must be specified and non-empty. *)
}

(** Request for the UpdateTopic method. *)
and update_topic_request = {
  topic : topic option;  (** Required. The updated topic object. *)
  update_mask : string option;  (** Required. Indicates which fields in the provided topic to update. Must be specified and non-empty. Note that if `update_mask` contains 'message_storage_policy' but the `message_storage_policy` is not set in the `topic` provided above, then the updated value is determined by the policy configured at the project or organization level. *)
}

(** Request for the `ValidateMessage` method. *)
and validate_message_request = {
  encoding : [ `Encoding_unspecified | `Json | `Binary | `Unrecognized of string ] option;  (** The encoding expected for messages *)
  message : string option;  (** Message to validate against the provided `schema_spec`. *)
  name : string option;  (** Name of the schema against which to validate. Format is `projects/\{project\}/schemas/\{schema\}`. *)
  schema : schema option;  (** Ad-hoc schema against which to validate *)
}

(** Response for the `ValidateMessage` method. Empty for now. *)
and validate_message_response = Yojson.Safe.t

(** Request for the `ValidateSchema` method. *)
and validate_schema_request = {
  schema : schema option;  (** Required. The schema object to validate. *)
}

(** Response for the `ValidateSchema` method. Empty for now. *)
and validate_schema_response = Yojson.Safe.t

val ai_inference_of_yojson : Yojson.Safe.t -> ai_inference
val yojson_of_ai_inference : ai_inference -> Yojson.Safe.t

val make_ai_inference :
  ?endpoint:string ->
  ?service_account_email:string ->
  ?unstructured_inference:unstructured_inference ->
  unit ->
  ai_inference

val acknowledge_request_of_yojson : Yojson.Safe.t -> acknowledge_request
val yojson_of_acknowledge_request : acknowledge_request -> Yojson.Safe.t

val make_acknowledge_request :
  ?ack_ids:string list ->
  unit ->
  acknowledge_request

val analytics_hub_subscription_info_of_yojson : Yojson.Safe.t -> analytics_hub_subscription_info
val yojson_of_analytics_hub_subscription_info : analytics_hub_subscription_info -> Yojson.Safe.t

val make_analytics_hub_subscription_info :
  ?listing:string ->
  ?subscription:string ->
  unit ->
  analytics_hub_subscription_info

val avro_config_of_yojson : Yojson.Safe.t -> avro_config
val yojson_of_avro_config : avro_config -> Yojson.Safe.t

val make_avro_config :
  ?use_topic_schema:bool ->
  ?write_metadata:bool ->
  unit ->
  avro_config

val avro_format_of_yojson : Yojson.Safe.t -> avro_format
val yojson_of_avro_format : avro_format -> Yojson.Safe.t

val aws_kinesis_of_yojson : Yojson.Safe.t -> aws_kinesis
val yojson_of_aws_kinesis : aws_kinesis -> Yojson.Safe.t

val make_aws_kinesis :
  ?aws_role_arn:string ->
  ?consumer_arn:string ->
  ?gcp_service_account:string ->
  ?state:[ `State_unspecified | `Active | `Kinesis_permission_denied | `Publish_permission_denied | `Stream_not_found | `Consumer_not_found | `Conflicting_region_constraints | `Unrecognized of string ] ->
  ?stream_arn:string ->
  unit ->
  aws_kinesis

val aws_msk_of_yojson : Yojson.Safe.t -> aws_msk
val yojson_of_aws_msk : aws_msk -> Yojson.Safe.t

val make_aws_msk :
  ?aws_role_arn:string ->
  ?cluster_arn:string ->
  ?gcp_service_account:string ->
  ?state:[ `State_unspecified | `Active | `Msk_permission_denied | `Publish_permission_denied | `Cluster_not_found | `Topic_not_found | `Conflicting_region_constraints | `Unrecognized of string ] ->
  ?topic:string ->
  unit ->
  aws_msk

val azure_event_hubs_of_yojson : Yojson.Safe.t -> azure_event_hubs
val yojson_of_azure_event_hubs : azure_event_hubs -> Yojson.Safe.t

val make_azure_event_hubs :
  ?client_id:string ->
  ?event_hub:string ->
  ?gcp_service_account:string ->
  ?namespace:string ->
  ?resource_group:string ->
  ?state:[ `State_unspecified | `Active | `Event_hubs_permission_denied | `Publish_permission_denied | `Namespace_not_found | `Event_hub_not_found | `Subscription_not_found | `Resource_group_not_found | `Conflicting_region_constraints | `Unrecognized of string ] ->
  ?subscription_id:string ->
  ?tenant_id:string ->
  unit ->
  azure_event_hubs

val big_query_config_of_yojson : Yojson.Safe.t -> big_query_config
val yojson_of_big_query_config : big_query_config -> Yojson.Safe.t

val make_big_query_config :
  ?drop_unknown_fields:bool ->
  ?service_account_email:string ->
  ?state:[ `State_unspecified | `Active | `Permission_denied | `Not_found | `Schema_mismatch | `In_transit_location_restriction | `Vertex_ai_location_restriction | `Unrecognized of string ] ->
  ?table:string ->
  ?use_table_schema:bool ->
  ?use_topic_schema:bool ->
  ?write_metadata:bool ->
  unit ->
  big_query_config

val bigtable_config_of_yojson : Yojson.Safe.t -> bigtable_config
val yojson_of_bigtable_config : bigtable_config -> Yojson.Safe.t

val make_bigtable_config :
  ?app_profile_id:string ->
  ?column_family_mapping:column_family_mapping ->
  ?service_account_email:string ->
  ?state:[ `State_unspecified | `Active | `Not_found | `App_profile_misconfigured | `Permission_denied | `Schema_mismatch | `In_transit_location_restriction | `Vertex_ai_location_restriction | `Unrecognized of string ] ->
  ?table:string ->
  ?write_metadata:bool ->
  unit ->
  bigtable_config

val binding_of_yojson : Yojson.Safe.t -> binding
val yojson_of_binding : binding -> Yojson.Safe.t

val make_binding :
  ?condition:expr ->
  ?members:string list ->
  ?role:string ->
  unit ->
  binding

val cloud_storage_of_yojson : Yojson.Safe.t -> cloud_storage
val yojson_of_cloud_storage : cloud_storage -> Yojson.Safe.t

val make_cloud_storage :
  ?avro_format:avro_format ->
  ?bucket:string ->
  ?match_glob:string ->
  ?minimum_object_create_time:string ->
  ?pubsub_avro_format:pub_sub_avro_format ->
  ?state:[ `State_unspecified | `Active | `Cloud_storage_permission_denied | `Publish_permission_denied | `Bucket_not_found | `Too_many_objects | `Conflicting_region_constraints | `Unrecognized of string ] ->
  ?text_format:text_format ->
  unit ->
  cloud_storage

val cloud_storage_config_of_yojson : Yojson.Safe.t -> cloud_storage_config
val yojson_of_cloud_storage_config : cloud_storage_config -> Yojson.Safe.t

val make_cloud_storage_config :
  ?avro_config:avro_config ->
  ?bucket:string ->
  ?filename_datetime_format:string ->
  ?filename_prefix:string ->
  ?filename_suffix:string ->
  ?max_bytes:string ->
  ?max_duration:string ->
  ?max_messages:string ->
  ?service_account_email:string ->
  ?state:[ `State_unspecified | `Active | `Permission_denied | `Not_found | `In_transit_location_restriction | `Schema_mismatch | `Vertex_ai_location_restriction | `Unrecognized of string ] ->
  ?text_config:text_config ->
  unit ->
  cloud_storage_config

val column_family_mapping_of_yojson : Yojson.Safe.t -> column_family_mapping
val yojson_of_column_family_mapping : column_family_mapping -> Yojson.Safe.t

val make_column_family_mapping :
  ?delimited_key:delimited_key ->
  ?row_key_schema:row_key_schema ->
  unit ->
  column_family_mapping

val commit_schema_request_of_yojson : Yojson.Safe.t -> commit_schema_request
val yojson_of_commit_schema_request : commit_schema_request -> Yojson.Safe.t

val make_commit_schema_request :
  ?schema:schema ->
  unit ->
  commit_schema_request

val compiled_proto_schema_of_yojson : Yojson.Safe.t -> compiled_proto_schema
val yojson_of_compiled_proto_schema : compiled_proto_schema -> Yojson.Safe.t

val make_compiled_proto_schema :
  ?compiled_bytes:string ->
  ?root_message:string ->
  unit ->
  compiled_proto_schema

val compression_of_yojson : Yojson.Safe.t -> compression
val yojson_of_compression : compression -> Yojson.Safe.t

val make_compression :
  ?compression_algorithm:[ `Compression_algorithm_unspecified | `Zlib | `Unrecognized of string ] ->
  ?compression_mode:[ `Compression_mode_unspecified | `Compress | `Decompress | `Unrecognized of string ] ->
  unit ->
  compression

val confluent_cloud_of_yojson : Yojson.Safe.t -> confluent_cloud
val yojson_of_confluent_cloud : confluent_cloud -> Yojson.Safe.t

val make_confluent_cloud :
  ?bootstrap_server:string ->
  ?cluster_id:string ->
  ?gcp_service_account:string ->
  ?identity_pool_id:string ->
  ?state:[ `State_unspecified | `Active | `Confluent_cloud_permission_denied | `Publish_permission_denied | `Unreachable_bootstrap_server | `Cluster_not_found | `Topic_not_found | `Conflicting_region_constraints | `Unrecognized of string ] ->
  ?topic:string ->
  unit ->
  confluent_cloud

val create_snapshot_request_of_yojson : Yojson.Safe.t -> create_snapshot_request
val yojson_of_create_snapshot_request : create_snapshot_request -> Yojson.Safe.t

val make_create_snapshot_request :
  ?labels:(string * string) list ->
  ?subscription:string ->
  ?tags:(string * string) list ->
  unit ->
  create_snapshot_request

val dead_letter_policy_of_yojson : Yojson.Safe.t -> dead_letter_policy
val yojson_of_dead_letter_policy : dead_letter_policy -> Yojson.Safe.t

val make_dead_letter_policy :
  ?dead_letter_topic:string ->
  ?max_delivery_attempts:int ->
  unit ->
  dead_letter_policy

val delimited_key_of_yojson : Yojson.Safe.t -> delimited_key
val yojson_of_delimited_key : delimited_key -> Yojson.Safe.t

val make_delimited_key :
  ?delimiter:string ->
  ?key_fields:string list ->
  unit ->
  delimited_key

val detach_subscription_response_of_yojson : Yojson.Safe.t -> detach_subscription_response
val yojson_of_detach_subscription_response : detach_subscription_response -> Yojson.Safe.t

val empty_of_yojson : Yojson.Safe.t -> empty
val yojson_of_empty : empty -> Yojson.Safe.t

val expiration_policy_of_yojson : Yojson.Safe.t -> expiration_policy
val yojson_of_expiration_policy : expiration_policy -> Yojson.Safe.t

val make_expiration_policy :
  ?ttl:string ->
  unit ->
  expiration_policy

val expr_of_yojson : Yojson.Safe.t -> expr
val yojson_of_expr : expr -> Yojson.Safe.t

val make_expr :
  ?description:string ->
  ?expression:string ->
  ?location:string ->
  ?title:string ->
  unit ->
  expr

val ingestion_data_source_settings_of_yojson : Yojson.Safe.t -> ingestion_data_source_settings
val yojson_of_ingestion_data_source_settings : ingestion_data_source_settings -> Yojson.Safe.t

val make_ingestion_data_source_settings :
  ?aws_kinesis:aws_kinesis ->
  ?aws_msk:aws_msk ->
  ?azure_event_hubs:azure_event_hubs ->
  ?cloud_storage:cloud_storage ->
  ?confluent_cloud:confluent_cloud ->
  ?platform_logs_settings:platform_logs_settings ->
  unit ->
  ingestion_data_source_settings

val java_script_udf_of_yojson : Yojson.Safe.t -> java_script_udf
val yojson_of_java_script_udf : java_script_udf -> Yojson.Safe.t

val make_java_script_udf :
  ?code:string ->
  ?function_name:string ->
  unit ->
  java_script_udf

val list_schema_revisions_response_of_yojson : Yojson.Safe.t -> list_schema_revisions_response
val yojson_of_list_schema_revisions_response : list_schema_revisions_response -> Yojson.Safe.t

val make_list_schema_revisions_response :
  ?next_page_token:string ->
  ?schemas:schema list ->
  unit ->
  list_schema_revisions_response

val list_schemas_response_of_yojson : Yojson.Safe.t -> list_schemas_response
val yojson_of_list_schemas_response : list_schemas_response -> Yojson.Safe.t

val make_list_schemas_response :
  ?next_page_token:string ->
  ?schemas:schema list ->
  unit ->
  list_schemas_response

val list_snapshots_response_of_yojson : Yojson.Safe.t -> list_snapshots_response
val yojson_of_list_snapshots_response : list_snapshots_response -> Yojson.Safe.t

val make_list_snapshots_response :
  ?next_page_token:string ->
  ?snapshots:snapshot list ->
  unit ->
  list_snapshots_response

val list_subscriptions_response_of_yojson : Yojson.Safe.t -> list_subscriptions_response
val yojson_of_list_subscriptions_response : list_subscriptions_response -> Yojson.Safe.t

val make_list_subscriptions_response :
  ?next_page_token:string ->
  ?subscriptions:subscription list ->
  unit ->
  list_subscriptions_response

val list_topic_snapshots_response_of_yojson : Yojson.Safe.t -> list_topic_snapshots_response
val yojson_of_list_topic_snapshots_response : list_topic_snapshots_response -> Yojson.Safe.t

val make_list_topic_snapshots_response :
  ?next_page_token:string ->
  ?snapshots:string list ->
  unit ->
  list_topic_snapshots_response

val list_topic_subscriptions_response_of_yojson : Yojson.Safe.t -> list_topic_subscriptions_response
val yojson_of_list_topic_subscriptions_response : list_topic_subscriptions_response -> Yojson.Safe.t

val make_list_topic_subscriptions_response :
  ?next_page_token:string ->
  ?subscriptions:string list ->
  unit ->
  list_topic_subscriptions_response

val list_topics_response_of_yojson : Yojson.Safe.t -> list_topics_response
val yojson_of_list_topics_response : list_topics_response -> Yojson.Safe.t

val make_list_topics_response :
  ?next_page_token:string ->
  ?topics:topic list ->
  unit ->
  list_topics_response

val message_storage_policy_of_yojson : Yojson.Safe.t -> message_storage_policy
val yojson_of_message_storage_policy : message_storage_policy -> Yojson.Safe.t

val make_message_storage_policy :
  ?allowed_persistence_regions:string list ->
  ?enforce_in_transit:bool ->
  unit ->
  message_storage_policy

val message_transform_of_yojson : Yojson.Safe.t -> message_transform
val yojson_of_message_transform : message_transform -> Yojson.Safe.t

val make_message_transform :
  ?ai_inference:ai_inference ->
  ?compression:compression ->
  ?disabled:bool ->
  ?enabled:bool ->
  ?javascript_udf:java_script_udf ->
  unit ->
  message_transform

val modify_ack_deadline_request_of_yojson : Yojson.Safe.t -> modify_ack_deadline_request
val yojson_of_modify_ack_deadline_request : modify_ack_deadline_request -> Yojson.Safe.t

val make_modify_ack_deadline_request :
  ?ack_deadline_seconds:int ->
  ?ack_ids:string list ->
  unit ->
  modify_ack_deadline_request

val modify_push_config_request_of_yojson : Yojson.Safe.t -> modify_push_config_request
val yojson_of_modify_push_config_request : modify_push_config_request -> Yojson.Safe.t

val make_modify_push_config_request :
  ?push_config:push_config ->
  unit ->
  modify_push_config_request

val no_wrapper_of_yojson : Yojson.Safe.t -> no_wrapper
val yojson_of_no_wrapper : no_wrapper -> Yojson.Safe.t

val make_no_wrapper :
  ?write_metadata:bool ->
  unit ->
  no_wrapper

val oidc_token_of_yojson : Yojson.Safe.t -> oidc_token
val yojson_of_oidc_token : oidc_token -> Yojson.Safe.t

val make_oidc_token :
  ?audience:string ->
  ?service_account_email:string ->
  unit ->
  oidc_token

val platform_logs_settings_of_yojson : Yojson.Safe.t -> platform_logs_settings
val yojson_of_platform_logs_settings : platform_logs_settings -> Yojson.Safe.t

val make_platform_logs_settings :
  ?severity:[ `Severity_unspecified | `Disabled | `Debug | `Info | `Warning | `Error | `Unrecognized of string ] ->
  unit ->
  platform_logs_settings

val policy_of_yojson : Yojson.Safe.t -> policy
val yojson_of_policy : policy -> Yojson.Safe.t

val make_policy :
  ?bindings:binding list ->
  ?etag:string ->
  ?version:int ->
  unit ->
  policy

val pub_sub_avro_format_of_yojson : Yojson.Safe.t -> pub_sub_avro_format
val yojson_of_pub_sub_avro_format : pub_sub_avro_format -> Yojson.Safe.t

val publish_operation_of_yojson : Yojson.Safe.t -> publish_operation
val yojson_of_publish_operation : publish_operation -> Yojson.Safe.t

val make_publish_operation :
  ?hedged_attempt_count:int ->
  ?publish_start_time:string ->
  unit ->
  publish_operation

val publish_request_of_yojson : Yojson.Safe.t -> publish_request
val yojson_of_publish_request : publish_request -> Yojson.Safe.t

val make_publish_request :
  ?messages:pubsub_message list ->
  unit ->
  publish_request

val publish_response_of_yojson : Yojson.Safe.t -> publish_response
val yojson_of_publish_response : publish_response -> Yojson.Safe.t

val make_publish_response :
  ?message_ids:string list ->
  unit ->
  publish_response

val pubsub_client_telemetry_of_yojson : Yojson.Safe.t -> pubsub_client_telemetry
val yojson_of_pubsub_client_telemetry : pubsub_client_telemetry -> Yojson.Safe.t

val make_pubsub_client_telemetry :
  ?publish_operation:publish_operation ->
  unit ->
  pubsub_client_telemetry

val pubsub_message_of_yojson : Yojson.Safe.t -> pubsub_message
val yojson_of_pubsub_message : pubsub_message -> Yojson.Safe.t

val make_pubsub_message :
  ?attributes:(string * string) list ->
  ?data:string ->
  ?message_id:string ->
  ?ordering_key:string ->
  ?publish_time:string ->
  unit ->
  pubsub_message

val pubsub_wrapper_of_yojson : Yojson.Safe.t -> pubsub_wrapper
val yojson_of_pubsub_wrapper : pubsub_wrapper -> Yojson.Safe.t

val pull_request_of_yojson : Yojson.Safe.t -> pull_request
val yojson_of_pull_request : pull_request -> Yojson.Safe.t

val make_pull_request :
  ?max_messages:int ->
  ?return_immediately:bool ->
  unit ->
  pull_request

val pull_response_of_yojson : Yojson.Safe.t -> pull_response
val yojson_of_pull_response : pull_response -> Yojson.Safe.t

val make_pull_response :
  ?received_messages:received_message list ->
  unit ->
  pull_response

val push_config_of_yojson : Yojson.Safe.t -> push_config
val yojson_of_push_config : push_config -> Yojson.Safe.t

val make_push_config :
  ?attributes:(string * string) list ->
  ?no_wrapper:no_wrapper ->
  ?oidc_token:oidc_token ->
  ?pubsub_wrapper:pubsub_wrapper ->
  ?push_endpoint:string ->
  unit ->
  push_config

val received_message_of_yojson : Yojson.Safe.t -> received_message
val yojson_of_received_message : received_message -> Yojson.Safe.t

val make_received_message :
  ?ack_id:string ->
  ?delivery_attempt:int ->
  ?message:pubsub_message ->
  unit ->
  received_message

val retry_policy_of_yojson : Yojson.Safe.t -> retry_policy
val yojson_of_retry_policy : retry_policy -> Yojson.Safe.t

val make_retry_policy :
  ?maximum_backoff:string ->
  ?minimum_backoff:string ->
  unit ->
  retry_policy

val rollback_schema_request_of_yojson : Yojson.Safe.t -> rollback_schema_request
val yojson_of_rollback_schema_request : rollback_schema_request -> Yojson.Safe.t

val make_rollback_schema_request :
  ?revision_id:string ->
  unit ->
  rollback_schema_request

val row_key_schema_of_yojson : Yojson.Safe.t -> row_key_schema
val yojson_of_row_key_schema : row_key_schema -> Yojson.Safe.t

val schema_of_yojson : Yojson.Safe.t -> schema
val yojson_of_schema : schema -> Yojson.Safe.t

val make_schema :
  ?compiled_proto_schema:compiled_proto_schema ->
  ?definition:string ->
  ?name:string ->
  ?revision_create_time:string ->
  ?revision_id:string ->
  ?type_:[ `Type_unspecified | `Protocol_buffer | `Avro | `Unrecognized of string ] ->
  unit ->
  schema

val schema_settings_of_yojson : Yojson.Safe.t -> schema_settings
val yojson_of_schema_settings : schema_settings -> Yojson.Safe.t

val make_schema_settings :
  ?encoding:[ `Encoding_unspecified | `Json | `Binary | `Unrecognized of string ] ->
  ?first_revision_id:string ->
  ?last_revision_id:string ->
  ?schema:string ->
  unit ->
  schema_settings

val seek_request_of_yojson : Yojson.Safe.t -> seek_request
val yojson_of_seek_request : seek_request -> Yojson.Safe.t

val make_seek_request :
  ?snapshot:string ->
  ?time:string ->
  unit ->
  seek_request

val seek_response_of_yojson : Yojson.Safe.t -> seek_response
val yojson_of_seek_response : seek_response -> Yojson.Safe.t

val set_iam_policy_request_of_yojson : Yojson.Safe.t -> set_iam_policy_request
val yojson_of_set_iam_policy_request : set_iam_policy_request -> Yojson.Safe.t

val make_set_iam_policy_request :
  ?policy:policy ->
  unit ->
  set_iam_policy_request

val snapshot_of_yojson : Yojson.Safe.t -> snapshot
val yojson_of_snapshot : snapshot -> Yojson.Safe.t

val make_snapshot :
  ?expire_time:string ->
  ?labels:(string * string) list ->
  ?name:string ->
  ?topic:string ->
  unit ->
  snapshot

val subscription_of_yojson : Yojson.Safe.t -> subscription
val yojson_of_subscription : subscription -> Yojson.Safe.t

val make_subscription :
  ?ack_deadline_seconds:int ->
  ?analytics_hub_subscription_info:analytics_hub_subscription_info ->
  ?bigquery_config:big_query_config ->
  ?bigtable_config:bigtable_config ->
  ?cloud_storage_config:cloud_storage_config ->
  ?dead_letter_policy:dead_letter_policy ->
  ?detached:bool ->
  ?enable_exactly_once_delivery:bool ->
  ?enable_message_ordering:bool ->
  ?expiration_policy:expiration_policy ->
  ?filter:string ->
  ?labels:(string * string) list ->
  ?message_retention_duration:string ->
  ?message_transforms:message_transform list ->
  ?name:string ->
  ?push_config:push_config ->
  ?retain_acked_messages:bool ->
  ?retry_policy:retry_policy ->
  ?state:[ `State_unspecified | `Active | `Resource_error | `Unrecognized of string ] ->
  ?tags:(string * string) list ->
  ?topic:string ->
  ?topic_message_retention_duration:string ->
  unit ->
  subscription

val test_iam_permissions_request_of_yojson : Yojson.Safe.t -> test_iam_permissions_request
val yojson_of_test_iam_permissions_request : test_iam_permissions_request -> Yojson.Safe.t

val make_test_iam_permissions_request :
  ?permissions:string list ->
  unit ->
  test_iam_permissions_request

val test_iam_permissions_response_of_yojson : Yojson.Safe.t -> test_iam_permissions_response
val yojson_of_test_iam_permissions_response : test_iam_permissions_response -> Yojson.Safe.t

val make_test_iam_permissions_response :
  ?permissions:string list ->
  unit ->
  test_iam_permissions_response

val text_config_of_yojson : Yojson.Safe.t -> text_config
val yojson_of_text_config : text_config -> Yojson.Safe.t

val text_format_of_yojson : Yojson.Safe.t -> text_format
val yojson_of_text_format : text_format -> Yojson.Safe.t

val make_text_format :
  ?delimiter:string ->
  unit ->
  text_format

val topic_of_yojson : Yojson.Safe.t -> topic
val yojson_of_topic : topic -> Yojson.Safe.t

val make_topic :
  ?ingestion_data_source_settings:ingestion_data_source_settings ->
  ?kms_key_name:string ->
  ?labels:(string * string) list ->
  ?message_retention_duration:string ->
  ?message_storage_policy:message_storage_policy ->
  ?message_transforms:message_transform list ->
  ?name:string ->
  ?satisfies_pzs:bool ->
  ?schema_settings:schema_settings ->
  ?state:[ `State_unspecified | `Active | `Ingestion_resource_error | `Unrecognized of string ] ->
  ?tags:(string * string) list ->
  unit ->
  topic

val unstructured_inference_of_yojson : Yojson.Safe.t -> unstructured_inference
val yojson_of_unstructured_inference : unstructured_inference -> Yojson.Safe.t

val make_unstructured_inference :
  ?parameters:(string * Yojson.Safe.t) list ->
  unit ->
  unstructured_inference

val update_snapshot_request_of_yojson : Yojson.Safe.t -> update_snapshot_request
val yojson_of_update_snapshot_request : update_snapshot_request -> Yojson.Safe.t

val make_update_snapshot_request :
  ?snapshot:snapshot ->
  ?update_mask:string ->
  unit ->
  update_snapshot_request

val update_subscription_request_of_yojson : Yojson.Safe.t -> update_subscription_request
val yojson_of_update_subscription_request : update_subscription_request -> Yojson.Safe.t

val make_update_subscription_request :
  ?subscription:subscription ->
  ?update_mask:string ->
  unit ->
  update_subscription_request

val update_topic_request_of_yojson : Yojson.Safe.t -> update_topic_request
val yojson_of_update_topic_request : update_topic_request -> Yojson.Safe.t

val make_update_topic_request :
  ?topic:topic ->
  ?update_mask:string ->
  unit ->
  update_topic_request

val validate_message_request_of_yojson : Yojson.Safe.t -> validate_message_request
val yojson_of_validate_message_request : validate_message_request -> Yojson.Safe.t

val make_validate_message_request :
  ?encoding:[ `Encoding_unspecified | `Json | `Binary | `Unrecognized of string ] ->
  ?message:string ->
  ?name:string ->
  ?schema:schema ->
  unit ->
  validate_message_request

val validate_message_response_of_yojson : Yojson.Safe.t -> validate_message_response
val yojson_of_validate_message_response : validate_message_response -> Yojson.Safe.t

val validate_schema_request_of_yojson : Yojson.Safe.t -> validate_schema_request
val yojson_of_validate_schema_request : validate_schema_request -> Yojson.Safe.t

val make_validate_schema_request :
  ?schema:schema ->
  unit ->
  validate_schema_request

val validate_schema_response_of_yojson : Yojson.Safe.t -> validate_schema_response
val yojson_of_validate_schema_response : validate_schema_response -> Yojson.Safe.t

val base_url : string
val batch_endpoint : Uri.t

val batch :
  access_token:string ->
  'a Google_api.Call.t list ->
  (('a, Google_api.Error.t) result list, Google_api.Error.t) result
(** {!Google_api.Batch.execute} on {!batch_endpoint}. *)

module Projects : sig
  module Schemas : sig
    val commit :
      name:string ->
      body:commit_schema_request ->
      unit ->
      schema Google_api.Call.t
    (** Commits a new schema revision to an existing schema.

        [POST v1/{+name}:commit]

        - [name]: Required. The name of the schema we are revising. Format is `projects/\{project\}/schemas/\{schema\}`. *)

    val create :
      parent:string ->
      body:schema ->
      ?schema_id:string ->
      unit ->
      schema Google_api.Call.t
    (** Creates a schema.

        [POST v1/{+parent}/schemas]

        - [parent]: Required. The name of the project in which to create the schema. Format is `projects/\{project-id\}`.
        - [schema_id]: The ID to use for the schema, which will become the final component of the schema's resource name. See https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names for resource name constraints. *)

    val delete :
      name:string ->
      unit ->
      empty Google_api.Call.t
    (** Deletes a schema.

        [DELETE v1/{+name}]

        - [name]: Required. Name of the schema to delete. Format is `projects/\{project\}/schemas/\{schema\}`. *)

    val delete_revision :
      name:string ->
      ?revision_id:string ->
      unit ->
      schema Google_api.Call.t
    (** Deletes a specific schema revision.

        [DELETE v1/{+name}:deleteRevision]

        - [name]: Required. The name of the schema revision to be deleted, with a revision ID explicitly included. Example: `projects/123/schemas/my-schema\@c7cfa2a8`
        - [revision_id]: Optional. This field is deprecated and should not be used for specifying the revision ID. The revision ID should be specified via the `name` parameter. *)

    val get :
      name:string ->
      ?view:[ `Schema_view_unspecified | `Basic | `Full | `Unrecognized of string ] ->
      unit ->
      schema Google_api.Call.t
    (** Gets a schema.

        [GET v1/{+name}]

        - [name]: Required. The name of the schema to get. Format is `projects/\{project\}/schemas/\{schema\}`.
        - [view]: The set of fields to return in the response. If not set, returns a Schema with all fields filled out. Set to `BASIC` to omit the `definition`. *)

    val get_iam_policy :
      resource:string ->
      ?options_requested_policy_version:int ->
      unit ->
      policy Google_api.Call.t
    (** Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

        [GET v1/{+resource}:getIamPolicy]

        - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
        - [options_requested_policy_version]: Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)

    val list :
      parent:string ->
      ?page_size:int ->
      ?page_token:string ->
      ?view:[ `Schema_view_unspecified | `Basic | `Full | `Unrecognized of string ] ->
      unit ->
      list_schemas_response Google_api.Call.t
    (** Lists schemas in a project.

        [GET v1/{+parent}/schemas]

        - [parent]: Required. The name of the project in which to list schemas. Format is `projects/\{project-id\}`.
        - [page_size]: Maximum number of schemas to return.
        - [page_token]: The value returned by the last `ListSchemasResponse`; indicates that this is a continuation of a prior `ListSchemas` call, and that the system should return the next page of data.
        - [view]: The set of Schema fields to return in the response. If not set, returns Schemas with `name` and `type`, but not `definition`. Set to `FULL` to retrieve all fields. *)

    val list_revisions :
      name:string ->
      ?page_size:int ->
      ?page_token:string ->
      ?view:[ `Schema_view_unspecified | `Basic | `Full | `Unrecognized of string ] ->
      unit ->
      list_schema_revisions_response Google_api.Call.t
    (** Lists all schema revisions for the named schema.

        [GET v1/{+name}:listRevisions]

        - [name]: Required. The name of the schema to list revisions for.
        - [page_size]: The maximum number of revisions to return per page.
        - [page_token]: The page token, received from a previous ListSchemaRevisions call. Provide this to retrieve the subsequent page.
        - [view]: The set of Schema fields to return in the response. If not set, returns Schemas with `name` and `type`, but not `definition`. Set to `FULL` to retrieve all fields. *)

    val rollback :
      name:string ->
      body:rollback_schema_request ->
      unit ->
      schema Google_api.Call.t
    (** Creates a new schema revision that is a copy of the provided revision_id.

        [POST v1/{+name}:rollback]

        - [name]: Required. The schema being rolled back with revision id. *)

    val set_iam_policy :
      resource:string ->
      body:set_iam_policy_request ->
      unit ->
      policy Google_api.Call.t
    (** Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

        [POST v1/{+resource}:setIamPolicy]

        - [resource]: REQUIRED: The resource for which the policy is being specified. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

    val test_iam_permissions :
      resource:string ->
      body:test_iam_permissions_request ->
      unit ->
      test_iam_permissions_response Google_api.Call.t
    (** Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may 'fail open' without warning.

        [POST v1/{+resource}:testIamPermissions]

        - [resource]: REQUIRED: The resource for which the policy detail is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

    val validate :
      parent:string ->
      body:validate_schema_request ->
      unit ->
      validate_schema_response Google_api.Call.t
    (** Validates a schema.

        [POST v1/{+parent}/schemas:validate]

        - [parent]: Required. The name of the project in which to validate schemas. Format is `projects/\{project-id\}`. *)

    val validate_message :
      parent:string ->
      body:validate_message_request ->
      unit ->
      validate_message_response Google_api.Call.t
    (** Validates a message against a schema.

        [POST v1/{+parent}/schemas:validateMessage]

        - [parent]: Required. The name of the project in which to validate schemas. Format is `projects/\{project-id\}`. *)
  end

  module Snapshots : sig
    val create :
      name:string ->
      body:create_snapshot_request ->
      unit ->
      snapshot Google_api.Call.t
    (** Creates a snapshot from the requested subscription. Snapshots are used in \[Seek\](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. If the snapshot already exists, returns `ALREADY_EXISTS`. If the requested subscription doesn't exist, returns `NOT_FOUND`. If the backlog in the subscription is too old -- and the resulting snapshot would expire in less than 1 hour -- then `FAILED_PRECONDITION` is returned. See also the `Snapshot.expire_time` field. If the name is not provided in the request, the server will assign a random name for this snapshot on the same project as the subscription, conforming to the \[resource name format\] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). The generated name is populated in the returned Snapshot object. Note that for REST API requests, you must specify a name in the request.

        [PUT v1/{+name}]

        - [name]: Required. User-provided name for this snapshot. If the name is not provided in the request, the server will assign a random name for this snapshot on the same project as the subscription. Note that for REST API requests, you must specify a name. See the \[resource name rules\](https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). Format is `projects/\{project\}/snapshots/\{snap\}`. *)

    val delete :
      snapshot:string ->
      unit ->
      empty Google_api.Call.t
    (** Removes an existing snapshot. Snapshots are used in \[Seek\] (https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. When the snapshot is deleted, all messages retained in the snapshot are immediately dropped. After a snapshot is deleted, a new one may be created with the same name, but the new one has no association with the old snapshot or its subscription, unless the same subscription is specified.

        [DELETE v1/{+snapshot}]

        - [snapshot]: Required. The name of the snapshot to delete. Format is `projects/\{project\}/snapshots/\{snap\}`. *)

    val get :
      snapshot:string ->
      unit ->
      snapshot Google_api.Call.t
    (** Gets the configuration details of a snapshot. Snapshots are used in \[Seek\](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.

        [GET v1/{+snapshot}]

        - [snapshot]: Required. The name of the snapshot to get. Format is `projects/\{project\}/snapshots/\{snap\}`. *)

    val get_iam_policy :
      resource:string ->
      ?options_requested_policy_version:int ->
      unit ->
      policy Google_api.Call.t
    (** Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

        [GET v1/{+resource}:getIamPolicy]

        - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
        - [options_requested_policy_version]: Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)

    val list :
      project:string ->
      ?page_size:int ->
      ?page_token:string ->
      unit ->
      list_snapshots_response Google_api.Call.t
    (** Lists the existing snapshots. Snapshots are used in \[Seek\]( https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.

        [GET v1/{+project}/snapshots]

        - [project]: Required. The name of the project in which to list snapshots. Format is `projects/\{project-id\}`.
        - [page_size]: Optional. Maximum number of snapshots to return.
        - [page_token]: Optional. The value returned by the last `ListSnapshotsResponse`; indicates that this is a continuation of a prior `ListSnapshots` call, and that the system should return the next page of data. *)

    val patch :
      name:string ->
      body:update_snapshot_request ->
      unit ->
      snapshot Google_api.Call.t
    (** Updates an existing snapshot by updating the fields specified in the update mask. Snapshots are used in \[Seek\](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.

        [PATCH v1/{+name}]

        - [name]: Optional. The name of the snapshot. *)

    val set_iam_policy :
      resource:string ->
      body:set_iam_policy_request ->
      unit ->
      policy Google_api.Call.t
    (** Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

        [POST v1/{+resource}:setIamPolicy]

        - [resource]: REQUIRED: The resource for which the policy is being specified. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

    val test_iam_permissions :
      resource:string ->
      body:test_iam_permissions_request ->
      unit ->
      test_iam_permissions_response Google_api.Call.t
    (** Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may 'fail open' without warning.

        [POST v1/{+resource}:testIamPermissions]

        - [resource]: REQUIRED: The resource for which the policy detail is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)
  end

  module Subscriptions : sig
    val acknowledge :
      subscription:string ->
      body:acknowledge_request ->
      unit ->
      empty Google_api.Call.t
    (** Acknowledges the messages associated with the `ack_ids` in the `AcknowledgeRequest`. The Pub/Sub system can remove the relevant messages from the subscription. Acknowledging a message whose ack deadline has expired may succeed, but such a message may be redelivered later. Acknowledging a message more than once will not result in an error.

        [POST v1/{+subscription}:acknowledge]

        - [subscription]: Required. The subscription whose message is being acknowledged. Format is `projects/\{project\}/subscriptions/\{sub\}`. *)

    val create :
      name:string ->
      body:subscription ->
      unit ->
      subscription Google_api.Call.t
    (** Creates a subscription to a given topic. See the \[resource name rules\] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). If the subscription already exists, returns `ALREADY_EXISTS`. If the corresponding topic doesn't exist, returns `NOT_FOUND`. If the name is not provided in the request, the server will assign a random name for this subscription on the same project as the topic, conforming to the \[resource name format\] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). The generated name is populated in the returned Subscription object. Note that for REST API requests, you must specify a name in the request.

        [PUT v1/{+name}]

        - [name]: Required. Identifier. The name of the subscription. It must have the format `'projects/\{project\}/subscriptions/\{subscription\}'`. `\{subscription\}` must start with a letter, and contain only letters (`\[A-Za-z\]`), numbers (`\[0-9\]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `'goog'`. *)

    val delete :
      subscription:string ->
      unit ->
      empty Google_api.Call.t
    (** Deletes an existing subscription. All messages retained in the subscription are immediately dropped. Calls to `Pull` after deletion will return `NOT_FOUND`. After a subscription is deleted, a new one may be created with the same name, but the new one has no association with the old subscription or its topic unless the same topic is specified.

        [DELETE v1/{+subscription}]

        - [subscription]: Required. The subscription to delete. Format is `projects/\{project\}/subscriptions/\{sub\}`. *)

    val detach :
      subscription:string ->
      unit ->
      detach_subscription_response Google_api.Call.t
    (** Detaches a subscription from this topic. All messages retained in the subscription are dropped. Subsequent `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will stop.

        [POST v1/{+subscription}:detach]

        - [subscription]: Required. The subscription to detach. Format is `projects/\{project\}/subscriptions/\{subscription\}`. *)

    val get :
      subscription:string ->
      unit ->
      subscription Google_api.Call.t
    (** Gets the configuration details of a subscription.

        [GET v1/{+subscription}]

        - [subscription]: Required. The name of the subscription to get. Format is `projects/\{project\}/subscriptions/\{sub\}`. *)

    val get_iam_policy :
      resource:string ->
      ?options_requested_policy_version:int ->
      unit ->
      policy Google_api.Call.t
    (** Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

        [GET v1/{+resource}:getIamPolicy]

        - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
        - [options_requested_policy_version]: Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)

    val list :
      project:string ->
      ?page_size:int ->
      ?page_token:string ->
      unit ->
      list_subscriptions_response Google_api.Call.t
    (** Lists matching subscriptions.

        [GET v1/{+project}/subscriptions]

        - [project]: Required. The name of the project in which to list subscriptions. Format is `projects/\{project-id\}`.
        - [page_size]: Optional. Maximum number of subscriptions to return.
        - [page_token]: Optional. The value returned by the last `ListSubscriptionsResponse`; indicates that this is a continuation of a prior `ListSubscriptions` call, and that the system should return the next page of data. *)

    val modify_ack_deadline :
      subscription:string ->
      body:modify_ack_deadline_request ->
      unit ->
      empty Google_api.Call.t
    (** Modifies the ack deadline for a specific message. This method is useful to indicate that more time is needed to process a message by the subscriber, or to make the message available for redelivery if the processing was interrupted. Note that this does not modify the subscription-level `ackDeadlineSeconds` used for subsequent messages.

        [POST v1/{+subscription}:modifyAckDeadline]

        - [subscription]: Required. The name of the subscription. Format is `projects/\{project\}/subscriptions/\{sub\}`. *)

    val modify_push_config :
      subscription:string ->
      body:modify_push_config_request ->
      unit ->
      empty Google_api.Call.t
    (** Modifies the `PushConfig` for a specified subscription. This may be used to change a push subscription to a pull one (signified by an empty `PushConfig`) or vice versa, or change the endpoint URL and other attributes of a push subscription. Messages will accumulate for delivery continuously through the call regardless of changes to the `PushConfig`.

        [POST v1/{+subscription}:modifyPushConfig]

        - [subscription]: Required. The name of the subscription. Format is `projects/\{project\}/subscriptions/\{sub\}`. *)

    val patch :
      name:string ->
      body:update_subscription_request ->
      unit ->
      subscription Google_api.Call.t
    (** Updates an existing subscription by updating the fields specified in the update mask. Note that certain properties of a subscription, such as its topic, are not modifiable.

        [PATCH v1/{+name}]

        - [name]: Required. Identifier. The name of the subscription. It must have the format `'projects/\{project\}/subscriptions/\{subscription\}'`. `\{subscription\}` must start with a letter, and contain only letters (`\[A-Za-z\]`), numbers (`\[0-9\]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `'goog'`. *)

    val pull :
      subscription:string ->
      body:pull_request ->
      unit ->
      pull_response Google_api.Call.t
    (** Pulls messages from the server.

        [POST v1/{+subscription}:pull]

        - [subscription]: Required. The subscription from which messages should be pulled. Format is `projects/\{project\}/subscriptions/\{sub\}`. *)

    val seek :
      subscription:string ->
      body:seek_request ->
      unit ->
      seek_response Google_api.Call.t
    (** Seeks an existing subscription to a point in time or to a given snapshot, whichever is provided in the request. Snapshots are used in \[Seek\] (https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. Note that both the subscription and the snapshot must be on the same topic.

        [POST v1/{+subscription}:seek]

        - [subscription]: Required. The subscription to affect. *)

    val set_iam_policy :
      resource:string ->
      body:set_iam_policy_request ->
      unit ->
      policy Google_api.Call.t
    (** Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

        [POST v1/{+resource}:setIamPolicy]

        - [resource]: REQUIRED: The resource for which the policy is being specified. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

    val test_iam_permissions :
      resource:string ->
      body:test_iam_permissions_request ->
      unit ->
      test_iam_permissions_response Google_api.Call.t
    (** Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may 'fail open' without warning.

        [POST v1/{+resource}:testIamPermissions]

        - [resource]: REQUIRED: The resource for which the policy detail is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)
  end

  module Topics : sig
    val create :
      name:string ->
      body:topic ->
      unit ->
      topic Google_api.Call.t
    (** Creates the given topic with the given name. See the \[resource name rules\] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names).

        [PUT v1/{+name}]

        - [name]: Required. Identifier. The name of the topic. It must have the format `'projects/\{project\}/topics/\{topic\}'`. `\{topic\}` must start with a letter, and contain only letters (`\[A-Za-z\]`), numbers (`\[0-9\]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `'goog'`. *)

    val delete :
      topic:string ->
      unit ->
      empty Google_api.Call.t
    (** Deletes the topic with the given name. Returns `NOT_FOUND` if the topic does not exist. After a topic is deleted, a new topic may be created with the same name; this is an entirely new topic with none of the old configuration or subscriptions. Existing subscriptions to this topic are not deleted, but their `topic` field is set to `_deleted-topic_`.

        [DELETE v1/{+topic}]

        - [topic]: Required. Name of the topic to delete. Format is `projects/\{project\}/topics/\{topic\}`. *)

    val get :
      topic:string ->
      unit ->
      topic Google_api.Call.t
    (** Gets the configuration of a topic.

        [GET v1/{+topic}]

        - [topic]: Required. The name of the topic to get. Format is `projects/\{project\}/topics/\{topic\}`. *)

    val get_iam_policy :
      resource:string ->
      ?options_requested_policy_version:int ->
      unit ->
      policy Google_api.Call.t
    (** Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

        [GET v1/{+resource}:getIamPolicy]

        - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
        - [options_requested_policy_version]: Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)

    val list :
      project:string ->
      ?page_size:int ->
      ?page_token:string ->
      unit ->
      list_topics_response Google_api.Call.t
    (** Lists matching topics.

        [GET v1/{+project}/topics]

        - [project]: Required. The name of the project in which to list topics. Format is `projects/\{project-id\}`.
        - [page_size]: Optional. Maximum number of topics to return.
        - [page_token]: Optional. The value returned by the last `ListTopicsResponse`; indicates that this is a continuation of a prior `ListTopics` call, and that the system should return the next page of data. *)

    val patch :
      name:string ->
      body:update_topic_request ->
      unit ->
      topic Google_api.Call.t
    (** Updates an existing topic by updating the fields specified in the update mask. Note that certain properties of a topic are not modifiable.

        [PATCH v1/{+name}]

        - [name]: Required. Identifier. The name of the topic. It must have the format `'projects/\{project\}/topics/\{topic\}'`. `\{topic\}` must start with a letter, and contain only letters (`\[A-Za-z\]`), numbers (`\[0-9\]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `'goog'`. *)

    val publish :
      topic:string ->
      body:publish_request ->
      unit ->
      publish_response Google_api.Call.t
    (** Adds one or more messages to the topic. Returns `NOT_FOUND` if the topic does not exist.

        [POST v1/{+topic}:publish]

        - [topic]: Required. The messages in the request will be published on this topic. Format is `projects/\{project\}/topics/\{topic\}`. *)

    val set_iam_policy :
      resource:string ->
      body:set_iam_policy_request ->
      unit ->
      policy Google_api.Call.t
    (** Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

        [POST v1/{+resource}:setIamPolicy]

        - [resource]: REQUIRED: The resource for which the policy is being specified. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

    val test_iam_permissions :
      resource:string ->
      body:test_iam_permissions_request ->
      unit ->
      test_iam_permissions_response Google_api.Call.t
    (** Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may 'fail open' without warning.

        [POST v1/{+resource}:testIamPermissions]

        - [resource]: REQUIRED: The resource for which the policy detail is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

    module Snapshots : sig
      val list :
        topic:string ->
        ?page_size:int ->
        ?page_token:string ->
        unit ->
        list_topic_snapshots_response Google_api.Call.t
      (** Lists the names of the snapshots on this topic. Snapshots are used in \[Seek\](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.

          [GET v1/{+topic}/snapshots]

          - [topic]: Required. The name of the topic that snapshots are attached to. Format is `projects/\{project\}/topics/\{topic\}`.
          - [page_size]: Optional. Maximum number of snapshot names to return.
          - [page_token]: Optional. The value returned by the last `ListTopicSnapshotsResponse`; indicates that this is a continuation of a prior `ListTopicSnapshots` call, and that the system should return the next page of data. *)
    end

    module Subscriptions : sig
      val list :
        topic:string ->
        ?page_size:int ->
        ?page_token:string ->
        unit ->
        list_topic_subscriptions_response Google_api.Call.t
      (** Lists the names of the attached subscriptions on this topic.

          [GET v1/{+topic}/subscriptions]

          - [topic]: Required. The name of the topic that subscriptions are attached to. Format is `projects/\{project\}/topics/\{topic\}`.
          - [page_size]: Optional. Maximum number of subscription names to return.
          - [page_token]: Optional. The value returned by the last `ListTopicSubscriptionsResponse`; indicates that this is a continuation of a prior `ListTopicSubscriptions` call, and that the system should return the next page of data. *)
    end
  end
end
