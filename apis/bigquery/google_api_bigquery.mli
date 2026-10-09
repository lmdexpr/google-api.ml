(* Generated from the Discovery document of bigquery v2 (revision 20260922). Do not edit. *)

(** BigQuery API (bigquery v2, revision 20260922).

    A data platform for customers to create, manage, share and query data.

    {{:https://cloud.google.com/bigquery/}Documentation} *)

(** Aggregate metrics for classification/classifier models. For multi-class models, the metrics are either macro-averaged or micro-averaged. When macro-averaged, the metrics are calculated for each label and then an unweighted average is taken of those values. When micro-averaged, the metric is calculated globally by counting the total number of correctly predicted rows. *)
type aggregate_classification_metrics = {
  accuracy : float option;  (** Accuracy is the fraction of predictions given the correct label. For multiclass this is a micro-averaged metric. *)
  f1_score : float option;  (** The F1 score is an average of recall and precision. For multiclass this is a macro-averaged metric. *)
  log_loss : float option;  (** Logarithmic Loss. For multiclass this is a macro-averaged metric. *)
  precision : float option;  (** Precision is the fraction of actual positive predictions that had positive actual labels. For multiclass this is a macro-averaged metric treating each class as a binary classifier. *)
  recall : float option;  (** Recall is the fraction of actual positive labels that were given a positive prediction. For multiclass this is a macro-averaged metric. *)
  roc_auc : float option;  (** Area Under a ROC Curve. For multiclass this is a macro-averaged metric. *)
  threshold : float option;  (** Threshold at which the metrics are computed. For binary classification models this is the positive class threshold. For multi-class classification models this is the confidence threshold. *)
}

(** Represents privacy policy associated with 'aggregation threshold' method. *)
and aggregation_threshold_policy = {
  privacy_unit_columns : string list option;  (** Optional. The privacy unit column(s) associated with this policy. For now, only one column per data source object (table, view) is allowed as a privacy unit column. Representing as a repeated field in metadata for extensibility to multiple columns in future. Duplicates and Repeated struct fields are not allowed. For nested fields, use dot notation ('outer.inner') *)
  threshold : string option;  (** Optional. The threshold for the 'aggregation threshold' policy. *)
}

(** Input/output argument of a function or a stored procedure. *)
and argument = {
  argument_kind : [ `Argument_kind_unspecified | `Fixed_type | `Any_type | `Fixed_table | `Any_table | `Unrecognized of string ] option;  (** Optional. Defaults to FIXED_TYPE. *)
  data_type : standard_sql_data_type option;  (** Set if argument_kind == FIXED_TYPE. *)
  is_aggregate : bool option;  (** Optional. Whether the argument is an aggregate function parameter. Must be Unset for routine types other than AGGREGATE_FUNCTION. For AGGREGATE_FUNCTION, if set to false, it is equivalent to adding 'NOT AGGREGATE' clause in DDL; Otherwise, it is equivalent to omitting 'NOT AGGREGATE' clause in DDL. *)
  mode : [ `Mode_unspecified | `In | `Out | `Inout | `Unrecognized of string ] option;  (** Optional. Specifies whether the argument is input or output. Can be set for procedures only. *)
  name : string option;  (** Optional. The name of this argument. Can be absent for function return argument. *)
  table_type : standard_sql_table_type option;  (** Optional. Set if argument_kind == FIXED_TABLE. *)
}

(** Arima coefficients. *)
and arima_coefficients = {
  auto_regressive_coefficients : float list option;  (** Auto-regressive coefficients, an array of double. *)
  intercept_coefficient : float option;  (** Intercept coefficient, just a double not an array. *)
  moving_average_coefficients : float list option;  (** Moving-average coefficients, an array of double. *)
}

(** ARIMA model fitting metrics. *)
and arima_fitting_metrics = {
  aic : float option;  (** AIC. *)
  log_likelihood : float option;  (** Log-likelihood. *)
  variance : float option;  (** Variance. *)
}

(** Model evaluation metrics for ARIMA forecasting models. *)
and arima_forecasting_metrics = {
  arima_fitting_metrics : arima_fitting_metrics list option;  (** Arima model fitting metrics. *)
  arima_single_model_forecasting_metrics : arima_single_model_forecasting_metrics list option;  (** Repeated as there can be many metric sets (one for each model) in auto-arima and the large-scale case. *)
  has_drift : bool list option;  (** Whether Arima model fitted with drift or not. It is always false when d is not 1. *)
  non_seasonal_order : arima_order list option;  (** Non-seasonal order. *)
  seasonal_periods : [ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list option;  (** Seasonal periods. Repeated because multiple periods are supported for one time series. *)
  time_series_id : string list option;  (** Id to differentiate different time series for the large-scale case. *)
}

(** Arima model information. *)
and arima_model_info = {
  arima_coefficients : arima_coefficients option;  (** Arima coefficients. *)
  arima_fitting_metrics : arima_fitting_metrics option;  (** Arima fitting metrics. *)
  has_drift : bool option;  (** Whether Arima model fitted with drift or not. It is always false when d is not 1. *)
  has_holiday_effect : bool option;  (** If true, holiday_effect is a part of time series decomposition result. *)
  has_spikes_and_dips : bool option;  (** If true, spikes_and_dips is a part of time series decomposition result. *)
  has_step_changes : bool option;  (** If true, step_changes is a part of time series decomposition result. *)
  non_seasonal_order : arima_order option;  (** Non-seasonal order. *)
  seasonal_periods : [ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list option;  (** Seasonal periods. Repeated because multiple periods are supported for one time series. *)
  time_series_id : string option;  (** The time_series_id value for this time series. It will be one of the unique values from the time_series_id_column specified during ARIMA model training. Only present when time_series_id_column training option was used. *)
  time_series_ids : string list option;  (** The tuple of time_series_ids identifying this time series. It will be one of the unique tuples of values present in the time_series_id_columns specified during ARIMA model training. Only present when time_series_id_columns training option was used and the order of values here are same as the order of time_series_id_columns. *)
}

(** Arima order, can be used for both non-seasonal and seasonal parts. *)
and arima_order = {
  d : string option;  (** Order of the differencing part. *)
  p : string option;  (** Order of the autoregressive part. *)
  q : string option;  (** Order of the moving-average part. *)
}

(** (Auto-)arima fitting result. Wrap everything in ArimaResult for easier refactoring if we want to use model-specific iteration results. *)
and arima_result = {
  arima_model_info : arima_model_info list option;  (** This message is repeated because there are multiple arima models fitted in auto-arima. For non-auto-arima model, its size is one. *)
  seasonal_periods : [ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list option;  (** Seasonal periods. Repeated because multiple periods are supported for one time series. *)
}

(** Model evaluation metrics for a single ARIMA forecasting model. *)
and arima_single_model_forecasting_metrics = {
  arima_fitting_metrics : arima_fitting_metrics option;  (** Arima fitting metrics. *)
  has_drift : bool option;  (** Is arima model fitted with drift or not. It is always false when d is not 1. *)
  has_holiday_effect : bool option;  (** If true, holiday_effect is a part of time series decomposition result. *)
  has_spikes_and_dips : bool option;  (** If true, spikes_and_dips is a part of time series decomposition result. *)
  has_step_changes : bool option;  (** If true, step_changes is a part of time series decomposition result. *)
  non_seasonal_order : arima_order option;  (** Non-seasonal order. *)
  seasonal_periods : [ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list option;  (** Seasonal periods. Repeated because multiple periods are supported for one time series. *)
  time_series_id : string option;  (** The time_series_id value for this time series. It will be one of the unique values from the time_series_id_column specified during ARIMA model training. Only present when time_series_id_column training option was used. *)
  time_series_ids : string list option;  (** The tuple of time_series_ids identifying this time series. It will be one of the unique tuples of values present in the time_series_id_columns specified during ARIMA model training. Only present when time_series_id_columns training option was used and the order of values here are same as the order of time_series_id_columns. *)
}

(** Arrow RecordBatch. This feature is not yet available. *)
and arrow_record_batch = {
  serialized_record_batch : string option;  (** IPC-serialized Arrow RecordBatch. *)
}

(** Arrow schema as specified in https://arrow.apache.org/docs/python/api/datatypes.html and serialized to bytes using IPC: https://arrow.apache.org/docs/format/Columnar.html#serialization-and-interprocess-communication-ipc See code samples on how this message can be deserialized. This feature is not yet available. *)
and arrow_schema = {
  serialized_schema : string option;  (** IPC serialized Arrow schema. *)
}

(** Contains options specific to Arrow Serialization. This feature is not yet available. *)
and arrow_serialization_options = {
  buffer_compression : [ `Compression_unspecified | `Lz4_frame | `Zstd | `Unrecognized of string ] option;  (** The compression codec to use for Arrow buffers in serialized record batches. *)
  picos_timestamp_precision : [ `Picos_timestamp_precision_unspecified | `Timestamp_precision_micros | `Timestamp_precision_nanos | `Timestamp_precision_picos | `Unrecognized of string ] option;  (** Optional. Set timestamp precision option. If not set, the default precision is microseconds. *)
}

(** Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: \{ 'audit_configs': \[ \{ 'service': 'allServices', 'audit_log_configs': \[ \{ 'log_type': 'DATA_READ', 'exempted_members': \[ 'user:jose\@example.com' \] \}, \{ 'log_type': 'DATA_WRITE' \}, \{ 'log_type': 'ADMIN_READ' \} \] \}, \{ 'service': 'sampleservice.googleapis.com', 'audit_log_configs': \[ \{ 'log_type': 'DATA_READ' \}, \{ 'log_type': 'DATA_WRITE', 'exempted_members': \[ 'user:aliya\@example.com' \] \} \] \} \] \} For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose\@example.com` from DATA_READ logging, and `aliya\@example.com` from DATA_WRITE logging. *)
and audit_config = {
  audit_log_configs : audit_log_config list option;  (** The configuration for logging of each type of permission. *)
  service : string option;  (** Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services. *)
}

(** Provides the configuration for logging a type of permissions. Example: \{ 'audit_log_configs': \[ \{ 'log_type': 'DATA_READ', 'exempted_members': \[ 'user:jose\@example.com' \] \}, \{ 'log_type': 'DATA_WRITE' \} \] \} This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose\@example.com from DATA_READ logging. *)
and audit_log_config = {
  exempted_members : string list option;  (** Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members. *)
  log_type : [ `Log_type_unspecified | `Admin_read | `Data_write | `Data_read | `Unrecognized of string ] option;  (** The log type that this config enables. *)
}

(** Options for external data sources. *)
and avro_options = {
  use_avro_logical_types : bool option;  (** Optional. If sourceFormat is set to 'AVRO', indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER). *)
}

(** Request message for the BatchDeleteRowAccessPoliciesRequest method. *)
and batch_delete_row_access_policies_request = {
  force : bool option;  (** If set to true, it deletes the row access policy even if it's the last row access policy on the table and the deletion will widen the access rather narrowing it. *)
  policy_ids : string list option;  (** Required. Policy IDs of the row access policies. *)
}

(** Reason why BI Engine didn't accelerate the query (or sub-query). *)
and bi_engine_reason = {
  code : [ `Code_unspecified | `No_reservation | `Insufficient_reservation | `Unsupported_sql_text | `Input_too_large | `Other_reason | `Table_excluded | `Unrecognized of string ] option;  (** Output only. High-level BI Engine reason for partial or disabled acceleration *)
  message : string option;  (** Output only. Free form human-readable reason for partial or disabled acceleration. *)
}

(** Statistics for a BI Engine specific query. Populated as part of JobStatistics2 *)
and bi_engine_statistics = {
  acceleration_mode : [ `Bi_engine_acceleration_mode_unspecified | `Bi_engine_disabled | `Partial_input | `Full_input | `Full_query | `Unrecognized of string ] option;  (** Output only. Specifies which mode of BI Engine acceleration was performed (if any). *)
  bi_engine_mode : [ `Acceleration_mode_unspecified | `Disabled | `Partial | `Full | `Unrecognized of string ] option;  (** Output only. Specifies which mode of BI Engine acceleration was performed (if any). *)
  bi_engine_reasons : bi_engine_reason list option;  (** In case of DISABLED or PARTIAL bi_engine_mode, these contain the explanatory reasons as to why BI Engine could not accelerate. In case the full query was accelerated, this field is not populated. *)
}

(** Configuration for BigQuery tables for Apache Iceberg (formerly BigLake managed tables.) *)
and big_lake_configuration = {
  connection_id : string option;  (** Optional. The connection specifying the credentials to be used to read and write to external storage, such as Cloud Storage. The connection_id can have the form `\{project\}.\{location\}.\{connection_id\}` or `projects/\{project\}/locations/\{location\}/connections/\{connection_id\}'. *)
  file_format : [ `File_format_unspecified | `Parquet | `Unrecognized of string ] option;  (** Optional. The file format the table data is stored in. *)
  storage_uri : string option;  (** Optional. The fully qualified location prefix of the external folder where table data is stored. The '*' wildcard character is not allowed. The URI should be in the format `gs://bucket/path_to_table/` *)
  table_format : [ `Table_format_unspecified | `Iceberg | `Unrecognized of string ] option;  (** Optional. The table format the metadata only snapshots are stored in. *)
}

and big_query_model_training = {
  current_iteration : int option;  (** Deprecated. *)
  expected_total_iterations : string option;  (** Deprecated. *)
}

(** Information related to a Bigtable column. *)
and bigtable_column = {
  encoding : string option;  (** Optional. The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. PROTO_BINARY - indicates values are encoded using serialized proto messages. This can only be used in combination with JSON type. 'encoding' can also be set at the column family level. However, the setting at this level takes precedence if 'encoding' is set at both levels. *)
  field_name : string option;  (** Optional. If the qualifier is not a valid BigQuery field identifier i.e. does not match a-zA-Z*, a valid identifier must be provided as the column field name and is used as field name in queries. *)
  only_read_latest : bool option;  (** Optional. If this is set, only the latest version of value in this column are exposed. 'onlyReadLatest' can also be set at the column family level. However, the setting at this level takes precedence if 'onlyReadLatest' is set at both levels. *)
  proto_config : bigtable_proto_config option;  (** Optional. Protobuf-specific configurations, only takes effect when the encoding is PROTO_BINARY. *)
  qualifier_encoded : string option;  (** \[Required\] Qualifier of the column. Columns in the parent column family that has this exact qualifier are exposed as `.` field. If the qualifier is valid UTF-8 string, it can be specified in the qualifier_string field. Otherwise, a base-64 encoded value must be set to qualifier_encoded. The column field name is the same as the column qualifier. However, if the qualifier is not a valid BigQuery field identifier i.e. does not match a-zA-Z*, a valid identifier must be provided as field_name. *)
  qualifier_string : string option;  (** Qualifier string. *)
  type_ : string option;  (** Optional. The type to convert the value in cells of this column. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): * BYTES * STRING * INTEGER * FLOAT * BOOLEAN * JSON Default type is BYTES. 'type' can also be set at the column family level. However, the setting at this level takes precedence if 'type' is set at both levels. *)
}

(** Information related to a Bigtable column family. *)
and bigtable_column_family = {
  columns : bigtable_column list option;  (** Optional. Lists of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as `.`. Other columns can be accessed as a list through the `.Column` field. *)
  encoding : string option;  (** Optional. The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. PROTO_BINARY - indicates values are encoded using serialized proto messages. This can only be used in combination with JSON type. This can be overridden for a specific column by listing that column in 'columns' and specifying an encoding for it. *)
  family_id : string option;  (** Identifier of the column family. *)
  only_read_latest : bool option;  (** Optional. If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in 'columns' and specifying a different setting for that column. *)
  proto_config : bigtable_proto_config option;  (** Optional. Protobuf-specific configurations, only takes effect when the encoding is PROTO_BINARY. *)
  type_ : string option;  (** Optional. The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): * BYTES * STRING * INTEGER * FLOAT * BOOLEAN * JSON Default type is BYTES. This can be overridden for a specific column by listing that column in 'columns' and specifying a type for it. *)
}

(** Options specific to Google Cloud Bigtable data sources. *)
and bigtable_options = {
  column_families : bigtable_column_family list option;  (** Optional. List of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable. *)
  ignore_unspecified_column_families : bool option;  (** Optional. If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false. *)
  output_column_families_as_json : bool option;  (** Optional. If field is true, then each column family will be read as a single JSON column. Otherwise they are read as a repeated cell structure containing timestamp/value tuples. The default value is false. *)
  read_rowkey_as_string : bool option;  (** Optional. If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false. *)
}

(** Information related to a Bigtable protobuf column. *)
and bigtable_proto_config = {
  proto_message_name : string option;  (** Optional. The fully qualified proto message name of the protobuf. In the format of 'foo.bar.Message'. *)
  schema_bundle_id : string option;  (** Optional. The ID of the Bigtable SchemaBundle resource associated with this protobuf. The ID should be referred to within the parent table, e.g., `foo` rather than `projects/\{project\}/instances/\{instance\}/tables/\{table\}/schemaBundles/foo`. See \[more details on Bigtable SchemaBundles\](https://docs.cloud.google.com/bigtable/docs/create-manage-protobuf-schemas). *)
}

(** Evaluation metrics for binary classification/classifier models. *)
and binary_classification_metrics = {
  aggregate_classification_metrics : aggregate_classification_metrics option;  (** Aggregate classification metrics. *)
  binary_confusion_matrix_list : binary_confusion_matrix list option;  (** Binary confusion matrix at multiple thresholds. *)
  negative_label : string option;  (** Label representing the negative class. *)
  positive_label : string option;  (** Label representing the positive class. *)
}

(** Confusion matrix for binary classification models. *)
and binary_confusion_matrix = {
  accuracy : float option;  (** The fraction of predictions given the correct label. *)
  f1_score : float option;  (** The equally weighted average of recall and precision. *)
  false_negatives : string option;  (** Number of false samples predicted as false. *)
  false_positives : string option;  (** Number of false samples predicted as true. *)
  positive_class_threshold : float option;  (** Threshold value used when computing each of the following metric. *)
  precision : float option;  (** The fraction of actual positive predictions that had positive actual labels. *)
  recall : float option;  (** The fraction of actual positive labels that were given a positive prediction. *)
  true_negatives : string option;  (** Number of true samples predicted as false. *)
  true_positives : string option;  (** Number of true samples predicted as true. *)
}

(** Associates `members`, or principals, with a `role`. *)
and binding = {
  condition : expr option;  (** The condition that is associated with this binding. If the condition evaluates to `true`, then this binding applies to the current request. If the condition evaluates to `false`, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)
  members : string list option;  (** Specifies the principals requesting access for a Google Cloud resource. `members` can have the following values: * `allUsers`: A special identifier that represents anyone who is on the internet; with or without a Google account. * `allAuthenticatedUsers`: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * `user:\{emailid\}`: An email address that represents a specific Google account. For example, `alice\@example.com` . * `serviceAccount:\{emailid\}`: An email address that represents a Google service account. For example, `my-other-app\@appspot.gserviceaccount.com`. * `serviceAccount:\{projectid\}.svc.id.goog\[\{namespace\}/\{kubernetes-sa\}\]`: An identifier for a \[Kubernetes service account\](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-project.svc.id.goog\[my-namespace/my-kubernetes-sa\]`. * `group:\{emailid\}`: An email address that represents a Google group. For example, `admins\@example.com`. * `domain:\{domain\}`: The G Suite domain (primary) that represents all the users of that domain. For example, `google.com` or `example.com`. * `principal://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/subject/\{subject_attribute_value\}`: A single identity in a workforce identity pool. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/group/\{group_id\}`: All workforce identities in a group. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/attribute.\{attribute_name\}/\{attribute_value\}`: All workforce identities with a specific attribute value. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/*`: All identities in a workforce identity pool. * `principal://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/subject/\{subject_attribute_value\}`: A single identity in a workload identity pool. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/group/\{group_id\}`: A workload identity pool group. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/attribute.\{attribute_name\}/\{attribute_value\}`: All identities in a workload identity pool with a certain attribute. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/*`: All identities in a workload identity pool. * `deleted:user:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a user that has been recently deleted. For example, `alice\@example.com?uid=123456789012345678901`. If the user is recovered, this value reverts to `user:\{emailid\}` and the recovered user retains the role in the binding. * `deleted:serviceAccount:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, `my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901`. If the service account is undeleted, this value reverts to `serviceAccount:\{emailid\}` and the undeleted service account retains the role in the binding. * `deleted:group:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, `admins\@example.com?uid=123456789012345678901`. If the group is recovered, this value reverts to `group:\{emailid\}` and the recovered group retains the role in the binding. * `deleted:principal://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/subject/\{subject_attribute_value\}`: Deleted single identity in a workforce identity pool. For example, `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`. *)
  role : string option;  (** Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM roles and permissions, see the \[IAM documentation\](https://cloud.google.com/iam/docs/roles-overview). For a list of the available pre-defined roles, see \[here\](https://cloud.google.com/iam/docs/understanding-roles). *)
}

and bqml_iteration_result = {
  duration_ms : string option;  (** Deprecated. *)
  eval_loss : float option;  (** Deprecated. *)
  index : int option;  (** Deprecated. *)
  learn_rate : float option;  (** Deprecated. *)
  training_loss : float option;  (** Deprecated. *)
}

and bqml_training_run_training_options = {
  early_stop : bool option;
  l1_reg : float option;
  l2_reg : float option;
  learn_rate : float option;
  learn_rate_strategy : string option;
  line_search_init_learn_rate : float option;
  max_iteration : string option;
  min_rel_progress : float option;
  warm_start : bool option;
}

and bqml_training_run = {
  iteration_results : bqml_iteration_result list option;  (** Deprecated. *)
  start_time : string option;  (** Deprecated. *)
  state : string option;  (** Deprecated. *)
  training_options : bqml_training_run_training_options option;  (** Deprecated. *)
}

(** Representative value of a categorical feature. *)
and categorical_value = {
  category_counts : category_count list option;  (** Counts of all categories for the categorical feature. If there are more than ten categories, we return top ten (by count) and return one more CategoryCount with category '_OTHER_' and count as aggregate counts of remaining categories. *)
}

(** Represents the count of a single category within the cluster. *)
and category_count = {
  category : string option;  (** The name of category. *)
  count : string option;  (** The count of training samples matching the category within the cluster. *)
}

(** Information about base table and clone time of a table clone. *)
and clone_definition = {
  base_table_reference : table_reference option;  (** Required. Reference describing the ID of the table that was cloned. *)
  clone_time : string option;  (** Required. The time at which the base table was cloned. This value is reported in the JSON response using RFC3339 format. *)
}

(** Message containing the information about one cluster. *)
and cluster = {
  centroid_id : string option;  (** Centroid id. *)
  count : string option;  (** Count of training data rows that were assigned to this cluster. *)
  feature_values : feature_value list option;  (** Values of highly variant features for this cluster. *)
}

(** Information about a single cluster for clustering model. *)
and cluster_info = {
  centroid_id : string option;  (** Centroid id. *)
  cluster_radius : float option;  (** Cluster radius, the average distance from centroid to each point assigned to the cluster. *)
  cluster_size : string option;  (** Cluster size, the total number of points assigned to the cluster. *)
}

(** Configures table clustering. *)
and clustering = {
  fields : string list option;  (** One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type fields are supported. The ordering of the clustering fields should be prioritized from most to least important for filtering purposes. For additional information, see \[Introduction to clustered tables\](https://cloud.google.com/bigquery/docs/clustered-tables#limitations). *)
}

(** Evaluation metrics for clustering models. *)
and clustering_metrics = {
  clusters : cluster list option;  (** Information for all clusters. *)
  davies_bouldin_index : float option;  (** Davies-Bouldin index. *)
  mean_squared_distance : float option;  (** Mean of squared distances between each sample to its cluster centroid. *)
}

(** Confusion matrix for multi-class classification models. *)
and confusion_matrix = {
  confidence_threshold : float option;  (** Confidence threshold used when computing the entries of the confusion matrix. *)
  rows : row list option;  (** One row per actual label. *)
}

(** A connection-level property to customize query behavior. Under JDBC, these correspond directly to connection properties passed to the DriverManager. Under ODBC, these correspond to properties in the connection string. Currently supported connection properties: * **dataset_project_id**: represents the default project for datasets that are used in the query. Setting the system variable `\@\@dataset_project_id` achieves the same behavior. For more information about system variables, see: https://cloud.google.com/bigquery/docs/reference/system-variables * **time_zone**: represents the default timezone used to run the query. * **session_id**: associates the query with a given session. * **query_label**: associates the query with a given job label. If set, all subsequent queries in a script or session will have this label. For the format in which a you can specify a query label, see labels in the JobConfiguration resource type: https://cloud.google.com/bigquery/docs/reference/rest/v2/Job#jobconfiguration * **service_account**: indicates the service account to use to run a continuous query. If set, the query job uses the service account to access Google Cloud resources. Service account access is bounded by the IAM permissions that you have granted to the service account. Additional properties are allowed, but ignored. Specifying multiple connection properties with the same key returns an error. *)
and connection_property = {
  key : string option;  (** The key of the property to set. *)
  value : string option;  (** The value of the property to set. *)
}

(** Information related to a CSV data source. *)
and csv_options = {
  allow_jagged_rows : bool option;  (** Optional. Indicates if BigQuery should accept rows that are missing trailing optional columns. If true, BigQuery treats missing trailing columns as null values. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. *)
  allow_quoted_newlines : bool option;  (** Optional. Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false. *)
  encoding : string option;  (** Optional. The character encoding of the data. The supported values are UTF-8, ISO-8859-1, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties. *)
  field_delimiter : string option;  (** Optional. The separator character for fields in a CSV file. The separator is interpreted as a single byte. For files encoded in ISO-8859-1, any single character can be used as a separator. For files encoded in UTF-8, characters represented in decimal range 1-127 (U+0001-U+007F) can be used without any modification. UTF-8 characters encoded with multiple bytes (i.e. U+0080 and above) will have only the first byte used for separating fields. The remaining bytes will be treated as a part of the field. BigQuery also supports the escape sequence '\\t' (U+0009) to specify a tab separator. The default value is comma (',', U+002C). *)
  null_marker : string option;  (** Optional. Specifies a string that represents a null value in a CSV file. For example, if you specify '\\N', BigQuery interprets '\\N' as a null value when querying a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as an empty value. *)
  null_markers : string list option;  (** Optional. A list of strings represented as SQL NULL value in a CSV file. null_marker and null_markers can't be set at the same time. If null_marker is set, null_markers has to be not set. If null_markers is set, null_marker has to be not set. If both null_marker and null_markers are set at the same time, a user error would be thrown. Any strings listed in null_markers, including empty string would be interpreted as SQL NULL. This applies to all column types. *)
  preserve_ascii_control_characters : bool option;  (** Optional. Indicates if the embedded ASCII control characters (the first 32 characters in the ASCII-table, from '\\x00' to '\\x1F') are preserved. *)
  quote : string option;  (** Optional. The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true. To include the specific quote character within a quoted value, precede it with an additional matching quote character. For example, if you want to escape the default character ' ' ', use ' '' '. *)
  skip_leading_rows : string option;  (** Optional. The number of rows at the top of a CSV file that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. When autodetect is on, the behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema. *)
  source_column_match : string option;  (** Optional. Controls the strategy used to match loaded columns to the schema. If not set, a sensible default is chosen based on how the schema is provided. If autodetect is used, then columns are matched by name. Otherwise, columns are matched by position. This is done to keep the behavior backward-compatible. Acceptable values are: POSITION - matches by position. This assumes that the columns are ordered the same way as the schema. NAME - matches by name. This reads the header row as column names and reorders columns to match the field names in the schema. *)
}

(** Options for data format adjustments. *)
and data_format_options = {
  timestamp_output_format : [ `Timestamp_output_format_unspecified | `Float64 | `Int64 | `Iso8601_string | `Unrecognized of string ] option;  (** Optional. The API output format for a timestamp. This offers more explicit control over the timestamp output format as compared to the existing `use_int64_timestamp` option. *)
  use_int64_timestamp : bool option;  (** Optional. Output timestamp as usec int64. Default is false. *)
}

(** Statistics for data-masking. *)
and data_masking_statistics = {
  data_masking_applied : bool option;  (** Whether any accessed data was protected by the data masking. *)
}

(** A list of data policy options. For more information, see \[Mask data by applying data policies to a column\](https://docs.cloud.google.com/bigquery/docs/column-data-masking#data-policies-on-column). *)
and data_policy_list = {
  data_policies : data_policy_option list option;  (** Contains a list of data policy options. At most 9 data policies are allowed per field. *)
}

(** Data policy option. For more information, see \[Mask data by applying data policies to a column\](https://docs.cloud.google.com/bigquery/docs/column-data-masking#data-policies-on-column). *)
and data_policy_option = {
  name : string option;  (** Data policy resource name in the form of projects/project_id/locations/location_id/dataPolicies/data_policy_id. *)
}

(** Data split result. This contains references to the training and evaluation data tables that were used to train the model. *)
and data_split_result = {
  evaluation_table : table_reference option;  (** Table reference of the evaluation data after split. *)
  test_table : table_reference option;  (** Table reference of the test data after split. *)
  training_table : table_reference option;  (** Table reference of the training data after split. *)
}

and dataset_access_item = {
  condition : expr option;  (** Optional. condition for the binding. If CEL expression in this field is true, this access binding will be considered *)
  dataset : dataset_access_entry option;  (** \[Pick one\] A grant authorizing all resources of a particular type in a particular dataset access to this dataset. Only views are supported for now. The role field is not required when this field is set. If that dataset is deleted and re-created, its access needs to be granted again via an update operation. *)
  domain : string option;  (** \[Pick one\] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: 'example.com'. Maps to IAM policy member 'domain:DOMAIN'. *)
  group_by_email : string option;  (** \[Pick one\] An email address of a Google Group to grant access to. Maps to IAM policy member 'group:GROUP'. *)
  iam_member : string option;  (** \[Pick one\] Some other type of member that appears in the IAM Policy but isn't a user, group, domain, or special group. *)
  role : string option;  (** An IAM role ID that should be granted to the user, group, or domain specified in this access entry. The following legacy mappings will be applied: * `OWNER`: `roles/bigquery.dataOwner` * `WRITER`: `roles/bigquery.dataEditor` * `READER`: `roles/bigquery.dataViewer` This field will accept any of the above formats, but will return only the legacy format. For example, if you set this field to 'roles/bigquery.dataOwner', it will be returned back as 'OWNER'. *)
  routine : routine_reference option;  (** \[Pick one\] A routine from a different dataset to grant access to. Queries executed against that routine will have read access to views/tables/routines in this dataset. Only UDF is supported for now. The role field is not required when this field is set. If that routine is updated by any user, access to the routine needs to be granted again via an update operation. *)
  special_group : string option;  (** \[Pick one\] A special group to grant access to. Possible values include: * projectOwners: Owners of the enclosing project. * projectReaders: Readers of the enclosing project. * projectWriters: Writers of the enclosing project. * allAuthenticatedUsers: All authenticated BigQuery users. Maps to similarly-named IAM members. *)
  user_by_email : string option;  (** \[Pick one\] An email address of a user to grant access to. For example: fred\@example.com. Maps to IAM policy member 'user:EMAIL' or 'serviceAccount:EMAIL'. *)
  view : table_reference option;  (** \[Pick one\] A view from a different dataset to grant access to. Queries executed against that view will have read access to views/tables/routines in this dataset. The role field is not required when this field is set. If that view is updated by any user, access to the view needs to be granted again via an update operation. *)
}

and dataset_tags_item = {
  tag_key : string option;  (** Required. The namespaced friendly name of the tag key, e.g. '12345/environment' where 12345 is org id. *)
  tag_value : string option;  (** Required. The friendly short name of the tag value, e.g. 'production'. *)
}

(** Represents a BigQuery dataset. *)
and dataset = {
  access : dataset_access_item list option;  (** Optional. An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: \[dataset creator email\]; access.role: OWNER; If you patch a dataset, then this field is overwritten by the patched dataset's access field. To add entities, you must supply the entire existing access array in addition to any new entities that you want to add. *)
  catalog_source : string option;  (** Output only. The origin of the dataset, one of: * (Unset) - Native BigQuery Dataset * BIGLAKE - Dataset is backed by a namespace stored natively in Biglake *)
  creation_time : string option;  (** Output only. The time when this dataset was created, in milliseconds since the epoch. *)
  dataset_reference : dataset_reference option;  (** Required. A reference that identifies the dataset. *)
  default_collation : string option;  (** Optional. Defines the default collation specification of future tables created in the dataset. If a table is created in this dataset without table-level default collation, then the table inherits the dataset default collation, which is applied to the string fields that do not have explicit collation specified. A change to this field affects only tables created afterwards, and does not alter the existing tables. The following values are supported: * 'und:ci': undetermined locale, case insensitive. * '': empty string. Default to case-sensitive behavior. *)
  default_encryption_configuration : encryption_configuration option;  (** The default encryption key for all tables in the dataset. After this property is set, the encryption key of all newly-created tables in the dataset is set to this value unless the table creation request or query explicitly overrides the key. *)
  default_partition_expiration_ms : string option;  (** This default partition expiration, expressed in milliseconds. When new time-partitioned tables are created in a dataset where this property is set, the table will inherit this value, propagated as the `TimePartitioning.expirationMs` property on the new table. If you set `TimePartitioning.expirationMs` explicitly when creating a table, the `defaultPartitionExpirationMs` of the containing dataset is ignored. When creating a partitioned table, if `defaultPartitionExpirationMs` is set, the `defaultTableExpirationMs` value is ignored and the table will not be inherit a table expiration deadline. *)
  default_rounding_mode : [ `Rounding_mode_unspecified | `Round_half_away_from_zero | `Round_half_even | `Unrecognized of string ] option;  (** Optional. Defines the default rounding mode specification of new tables created within this dataset. During table creation, if this field is specified, the table within this dataset will inherit the default rounding mode of the dataset. Setting the default rounding mode on a table overrides this option. Existing tables in the dataset are unaffected. If columns are defined during that table creation, they will immediately inherit the table's default rounding mode, unless otherwise specified. *)
  default_table_expiration_ms : string option;  (** Optional. The default lifetime of all tables in the dataset, in milliseconds. The minimum lifetime value is 3600000 milliseconds (one hour). To clear an existing default expiration with a PATCH request, set to 0. Once this property is set, all newly-created tables in the dataset will have an expirationTime property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the expirationTime for a given table is reached, that table will be deleted automatically. If a table's expirationTime is modified or removed before the table expires, or if you provide an explicit expirationTime when creating a table, that value takes precedence over the default expiration time indicated by this property. *)
  description : string option;  (** Optional. A user-friendly description of the dataset. *)
  etag : string option;  (** Output only. A hash of the resource. *)
  external_catalog_dataset_options : external_catalog_dataset_options option;  (** Optional. Options defining open source compatible datasets living in the BigQuery catalog. Contains metadata of open source database, schema or namespace represented by the current dataset. *)
  external_dataset_reference : external_dataset_reference option;  (** Optional. Reference to a read-only external dataset defined in data catalogs outside of BigQuery. Filled out when the dataset type is EXTERNAL. *)
  friendly_name : string option;  (** Optional. A descriptive name for the dataset. *)
  id : string option;  (** Output only. The fully-qualified unique name of the dataset in the format projectId:datasetId. The dataset name without the project name is given in the datasetId field. When creating a new dataset, leave this field blank, and instead specify the datasetId field. *)
  is_case_insensitive : bool option;  (** Optional. TRUE if the dataset and its table names are case-insensitive, otherwise FALSE. By default, this is FALSE, which means the dataset and its table names are case-sensitive. This field does not affect routine references. *)
  kind : string option;  (** Output only. The resource type. *)
  labels : (string * string) list option;  (** The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See \[Creating and Updating Dataset Labels\](https://cloud.google.com/bigquery/docs/creating-managing-labels#creating_and_updating_dataset_labels) for more information. *)
  last_modified_time : string option;  (** Output only. The date when this dataset was last modified, in milliseconds since the epoch. *)
  linked_dataset_metadata : linked_dataset_metadata option;  (** Output only. Metadata about the LinkedDataset. Filled out when the dataset type is LINKED. *)
  linked_dataset_source : linked_dataset_source option;  (** Optional. The source dataset reference when the dataset is of type LINKED. For all other dataset types it is not set. This field cannot be updated once it is set. Any attempt to update this field using Update and Patch API Operations will be ignored. *)
  location : string option;  (** The geographic location where the dataset should reside. See https://cloud.google.com/bigquery/docs/locations for supported locations. *)
  max_time_travel_hours : string option;  (** Optional. Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days). The default value is 168 hours if this is not set. *)
  resource_tags : (string * string) list option;  (** Optional. The \[tags\](https://cloud.google.com/bigquery/docs/tags) attached to this dataset. Tag keys are globally unique. Tag key is expected to be in the namespaced format, for example '123456789012/environment' where 123456789012 is the ID of the parent organization or project resource for this tag key. Tag value is expected to be the short name, for example 'Production'. See \[Tag definitions\](https://cloud.google.com/iam/docs/tags-access-control#definitions) for more details. *)
  restrictions : restriction_config option;  (** Optional. Output only. Restriction config for all tables and dataset. If set, restrict certain accesses on the dataset and all its tables based on the config. See \[Data egress\](https://cloud.google.com/bigquery/docs/analytics-hub-introduction#data_egress) for more details. *)
  satisfies_pzi : bool option;  (** Output only. Reserved for future use. *)
  satisfies_pzs : bool option;  (** Output only. Reserved for future use. *)
  self_link : string option;  (** Output only. A URL that can be used to access the resource again. You can use this URL in Get or Update requests to the resource. *)
  storage_billing_model : [ `Storage_billing_model_unspecified | `Logical | `Physical | `Unrecognized of string ] option;  (** Optional. Updates storage_billing_model for the dataset. *)
  tags : dataset_tags_item list option;  (** Output only. Tags for the dataset. To provide tags as inputs, use the `resourceTags` field. *)
  type_ : string option;  (** Output only. Same as `type` in `ListFormatDataset`. The type of the dataset, one of: * DEFAULT - only accessible by owner and authorized accounts, * PUBLIC - accessible by everyone, * LINKED - linked dataset, * EXTERNAL - dataset with definition in external metadata catalog, * BIGLAKE_ICEBERG - a Biglake dataset accessible through the Iceberg API, * BIGLAKE_HIVE - a Biglake dataset accessible through the Hive API. *)
}

(** Grants all resources of particular types in a particular dataset read access to the current dataset. Similar to how individually authorized views work, updates to any resource granted through its dataset (including creation of new resources) requires read permission to referenced resources, plus write permission to the authorizing dataset. *)
and dataset_access_entry = {
  dataset : dataset_reference option;  (** The dataset this entry applies to *)
  target_types : [ `Target_type_unspecified | `Views | `Routines | `Unrecognized of string ] list option;  (** Which resources in the dataset this entry applies to. Currently, only views are supported, but additional target types may be added in the future. *)
}

and dataset_list_datasets_item = {
  catalog_source : string option;  (** Output only. The origin of the dataset, one of: * (Unset) - Native BigQuery Dataset. * BIGLAKE - Dataset is backed by a namespace stored natively in Biglake. *)
  dataset_reference : dataset_reference option;  (** The dataset reference. Use this property to access specific parts of the dataset's ID, such as project ID or dataset ID. *)
  external_dataset_reference : external_dataset_reference option;  (** Output only. Reference to a read-only external dataset defined in data catalogs outside of BigQuery. Filled out when the dataset type is EXTERNAL. *)
  friendly_name : string option;  (** An alternate name for the dataset. The friendly name is purely decorative in nature. *)
  id : string option;  (** The fully-qualified, unique, opaque ID of the dataset. *)
  kind : string option;  (** The resource type. This property always returns the value 'bigquery#dataset' *)
  labels : (string * string) list option;  (** The labels associated with this dataset. You can use these to organize and group your datasets. *)
  location : string option;  (** The geographic location where the dataset resides. *)
  type_ : string option;  (** Output only. Same as `type` in `Dataset`. The type of the dataset, one of: * DEFAULT - only accessible by owner and authorized accounts, * PUBLIC - accessible by everyone, * LINKED - linked dataset, * EXTERNAL - dataset with definition in external metadata catalog, * BIGLAKE_ICEBERG - a Biglake dataset accessible through the Iceberg API, * BIGLAKE_HIVE - a Biglake dataset accessible through the Hive API. *)
}

(** Response format for a page of results when listing datasets. *)
and dataset_list = {
  datasets : dataset_list_datasets_item list option;  (** An array of the dataset resources in the project. Each resource contains basic information. For full information about a particular dataset resource, use the Datasets: get method. This property is omitted when there are no datasets in the project. *)
  etag : string option;  (** Output only. A hash value of the results page. You can use this property to determine if the page has changed since the last request. *)
  kind : string option;  (** Output only. The resource type. This property always returns the value 'bigquery#datasetList' *)
  next_page_token : string option;  (** A token that can be used to request the next results page. This property is omitted on the final results page. *)
  unreachable : string list option;  (** A list of skipped locations that were unreachable. For more information about BigQuery locations, see: https://cloud.google.com/bigquery/docs/locations. Example: 'europe-west5' *)
}

(** Identifier for a dataset. *)
and dataset_reference = {
  dataset_id : string option;  (** Required. A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters. *)
  project_id : string option;  (** Optional. The ID of the project containing this dataset. *)
}

(** Properties for the destination table. *)
and destination_table_properties = {
  description : string option;  (** Optional. The description for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current description is provided, the job will fail. *)
  expiration_time : string option;  (** Internal use only. *)
  friendly_name : string option;  (** Optional. Friendly name for the destination table. If the table already exists, it should be same as the existing friendly name. *)
  labels : (string * string) list option;  (** Optional. The labels associated with this table. You can use these to organize and group your tables. This will only be used if the destination table is newly created. If the table already exists and labels are different than the current labels are provided, the job will fail. *)
}

(** Represents privacy policy associated with 'differential privacy' method. *)
and differential_privacy_policy = {
  delta_budget : float option;  (** Optional. The total delta budget for all queries against the privacy-protected view. Each subscriber query against this view charges the amount of delta that is pre-defined by the contributor through the privacy policy delta_per_query field. If there is sufficient budget, then the subscriber query attempts to complete. It might still fail due to other reasons, in which case the charge is refunded. If there is insufficient budget the query is rejected. There might be multiple charge attempts if a single query references multiple views. In this case there must be sufficient budget for all charges or the query is rejected and charges are refunded in best effort. The budget does not have a refresh policy and can only be updated via ALTER VIEW or circumvented by creating a new view that can be queried with a fresh budget. *)
  delta_budget_remaining : float option;  (** Output only. The delta budget remaining. If budget is exhausted, no more queries are allowed. Note that the budget for queries that are in progress is deducted before the query executes. If the query fails or is cancelled then the budget is refunded. In this case the amount of budget remaining can increase. *)
  delta_per_query : float option;  (** Optional. The delta value that is used per query. Delta represents the probability that any row will fail to be epsilon differentially private. Indicates the risk associated with exposing aggregate rows in the result of a query. *)
  epsilon_budget : float option;  (** Optional. The total epsilon budget for all queries against the privacy-protected view. Each subscriber query against this view charges the amount of epsilon they request in their query. If there is sufficient budget, then the subscriber query attempts to complete. It might still fail due to other reasons, in which case the charge is refunded. If there is insufficient budget the query is rejected. There might be multiple charge attempts if a single query references multiple views. In this case there must be sufficient budget for all charges or the query is rejected and charges are refunded in best effort. The budget does not have a refresh policy and can only be updated via ALTER VIEW or circumvented by creating a new view that can be queried with a fresh budget. *)
  epsilon_budget_remaining : float option;  (** Output only. The epsilon budget remaining. If budget is exhausted, no more queries are allowed. Note that the budget for queries that are in progress is deducted before the query executes. If the query fails or is cancelled then the budget is refunded. In this case the amount of budget remaining can increase. *)
  max_epsilon_per_query : float option;  (** Optional. The maximum epsilon value that a query can consume. If the subscriber specifies epsilon as a parameter in a SELECT query, it must be less than or equal to this value. The epsilon parameter controls the amount of noise that is added to the groups — a higher epsilon means less noise. *)
  max_groups_contributed : string option;  (** Optional. The maximum groups contributed value that is used per query. Represents the maximum number of groups to which each protected entity can contribute. Changing this value does not improve or worsen privacy. The best value for accuracy and utility depends on the query and data. *)
  privacy_unit_column : string option;  (** Optional. The privacy unit column associated with this policy. Differential privacy policies can only have one privacy unit column per data source object (table, view). *)
}

(** Model evaluation metrics for dimensionality reduction models. *)
and dimensionality_reduction_metrics = {
  total_explained_variance_ratio : float option;  (** Total percentage of variance explained by the selected principal components. *)
}

(** Detailed statistics for DML statements *)
and dml_statistics = {
  deleted_row_count : string option;  (** Output only. Number of deleted Rows. populated by DML DELETE, MERGE and TRUNCATE statements. *)
  dml_mode : [ `Dml_mode_unspecified | `Coarse_grained_dml | `Fine_grained_dml | `Unrecognized of string ] option;  (** Output only. DML mode used. *)
  fine_grained_dml_unused_reason : [ `Fine_grained_dml_unused_reason_unspecified | `Max_partition_size_exceeded | `Table_not_enrolled | `Dml_in_multi_statement_transaction | `Unrecognized of string ] option;  (** Output only. Reason for disabling fine-grained DML if applicable. *)
  inserted_row_count : string option;  (** Output only. Number of inserted Rows. Populated by DML INSERT and MERGE statements *)
  updated_row_count : string option;  (** Output only. Number of updated Rows. Populated by DML UPDATE and MERGE statements. *)
}

(** Discrete candidates of a double hyperparameter. *)
and double_candidates = {
  candidates : float list option;  (** Candidates for the double parameter in increasing order. *)
}

(** Search space for a double hyperparameter. *)
and double_hparam_search_space = {
  candidates : double_candidates option;  (** Candidates of the double hyperparameter. *)
  range : double_range option;  (** Range of the double hyperparameter. *)
}

(** Range of a double hyperparameter. *)
and double_range = {
  max : float option;  (** Max value of the double parameter. *)
  min : float option;  (** Min value of the double parameter. *)
}

(** Configuration for Cloud KMS encryption settings. *)
and encryption_configuration = {
  kms_key_name : string option;  (** Optional. Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. The BigQuery Service Account associated with your project requires access to this encryption key. *)
}

(** A single entry in the confusion matrix. *)
and entry = {
  item_count : string option;  (** Number of items being predicted as this label. *)
  predicted_label : string option;  (** The predicted label. For confidence_threshold > 0, we will also add an entry indicating the number of items under the confidence threshold. *)
}

(** Error details. *)
and error_proto = {
  debug_info : string option;  (** Debugging information. This property is internal to Google and should not be used. *)
  location : string option;  (** Specifies where the error occurred, if present. *)
  message : string option;  (** A human-readable description of the error. *)
  reason : string option;  (** A short error code that summarizes the error. *)
}

(** Evaluation metrics of a model. These are either computed on all training data or just the eval data based on whether eval data was used during training. These are not present for imported models. *)
and evaluation_metrics = {
  arima_forecasting_metrics : arima_forecasting_metrics option;  (** Populated for ARIMA models. *)
  binary_classification_metrics : binary_classification_metrics option;  (** Populated for binary classification/classifier models. *)
  clustering_metrics : clustering_metrics option;  (** Populated for clustering models. *)
  dimensionality_reduction_metrics : dimensionality_reduction_metrics option;  (** Evaluation metrics when the model is a dimensionality reduction model, which currently includes PCA. *)
  multi_class_classification_metrics : multi_class_classification_metrics option;  (** Populated for multi-class classification/classifier models. *)
  ranking_metrics : ranking_metrics option;  (** Populated for implicit feedback type matrix factorization models. *)
  regression_metrics : regression_metrics option;  (** Populated for regression models and explicit feedback type matrix factorization models. *)
}

(** A single stage of query execution. *)
and explain_query_stage = {
  completed_parallel_inputs : string option;  (** Number of parallel input segments completed. *)
  compute_mode : [ `Compute_mode_unspecified | `Bigquery | `Bi_engine | `Unrecognized of string ] option;  (** Output only. Compute mode for this stage. *)
  compute_ms_avg : string option;  (** Milliseconds the average shard spent on CPU-bound tasks. *)
  compute_ms_max : string option;  (** Milliseconds the slowest shard spent on CPU-bound tasks. *)
  compute_ratio_avg : float option;  (** Relative amount of time the average shard spent on CPU-bound tasks. *)
  compute_ratio_max : float option;  (** Relative amount of time the slowest shard spent on CPU-bound tasks. *)
  end_ms : string option;  (** Stage end time represented as milliseconds since the epoch. *)
  id : string option;  (** Unique ID for the stage within the plan. *)
  input_stages : string list option;  (** IDs for stages that are inputs to this stage. *)
  name : string option;  (** Human-readable name for the stage. *)
  parallel_inputs : string option;  (** Number of parallel input segments to be processed *)
  read_ms_avg : string option;  (** Milliseconds the average shard spent reading input. *)
  read_ms_max : string option;  (** Milliseconds the slowest shard spent reading input. *)
  read_ratio_avg : float option;  (** Relative amount of time the average shard spent reading input. *)
  read_ratio_max : float option;  (** Relative amount of time the slowest shard spent reading input. *)
  records_read : string option;  (** Number of records read into the stage. *)
  records_written : string option;  (** Number of records written by the stage. *)
  shuffle_output_bytes : string option;  (** Total number of bytes written to shuffle. *)
  shuffle_output_bytes_spilled : string option;  (** Total number of bytes written to shuffle and spilled to disk. *)
  slot_ms : string option;  (** Slot-milliseconds used by the stage. *)
  start_ms : string option;  (** Stage start time represented as milliseconds since the epoch. *)
  status : string option;  (** Current status for this stage. *)
  steps : explain_query_step list option;  (** List of operations within the stage in dependency order (approximately chronological). *)
  wait_ms_avg : string option;  (** Milliseconds the average shard spent waiting to be scheduled. *)
  wait_ms_max : string option;  (** Milliseconds the slowest shard spent waiting to be scheduled. *)
  wait_ratio_avg : float option;  (** Relative amount of time the average shard spent waiting to be scheduled. *)
  wait_ratio_max : float option;  (** Relative amount of time the slowest shard spent waiting to be scheduled. *)
  write_ms_avg : string option;  (** Milliseconds the average shard spent on writing output. *)
  write_ms_max : string option;  (** Milliseconds the slowest shard spent on writing output. *)
  write_ratio_avg : float option;  (** Relative amount of time the average shard spent on writing output. *)
  write_ratio_max : float option;  (** Relative amount of time the slowest shard spent on writing output. *)
}

(** An operation within a stage. *)
and explain_query_step = {
  kind : string option;  (** Machine-readable operation type. *)
  substeps : string list option;  (** Human-readable description of the step(s). *)
}

(** Explanation for a single feature. *)
and explanation = {
  attribution : float option;  (** Attribution of feature. *)
  feature_name : string option;  (** The full feature name. For non-numerical features, will be formatted like `.`. Overall size of feature name will always be truncated to first 120 characters. *)
}

(** Statistics for the EXPORT DATA statement as part of Query Job. EXTRACT JOB statistics are populated in JobStatistics4. *)
and export_data_statistics = {
  file_count : string option;  (** Number of destination files generated in case of EXPORT DATA statement only. *)
  row_count : string option;  (** \[Alpha\] Number of destination rows generated in case of EXPORT DATA statement only. *)
}

(** Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: 'Summary size limit' description: 'Determines if a summary is less than 100 chars' expression: 'document.summary.size() < 100' Example (Equality): title: 'Requestor is owner' description: 'Determines if requestor is the document owner' expression: 'document.owner == request.auth.claims.email' Example (Logic): title: 'Public documents' description: 'Determine whether the document should be publicly visible' expression: 'document.type != 'private' && document.type != 'internal'' Example (Data Manipulation): title: 'Notification string' description: 'Create a notification string with a timestamp.' expression: ''New message received at ' + string(document.create_time)' The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information. *)
and expr = {
  description : string option;  (** Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. *)
  expression : string option;  (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string option;  (** Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. *)
  title : string option;  (** Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. *)
}

(** Options defining open source compatible datasets living in the BigQuery catalog. Contains metadata of open source database, schema, or namespace represented by the current dataset. *)
and external_catalog_dataset_options = {
  default_storage_location_uri : string option;  (** Optional. The storage location URI for all tables in the dataset. Equivalent to hive metastore's database locationUri. Maximum length of 1024 characters. *)
  parameters : (string * string) list option;  (** Optional. A map of key value pairs defining the parameters and properties of the open source schema. Maximum size of 2MiB. *)
}

(** Metadata about open source compatible table. The fields contained in these options correspond to Hive metastore's table-level properties. *)
and external_catalog_table_options = {
  connection_id : string option;  (** Optional. A connection ID that specifies the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or Amazon S3. This connection is needed to read the open source table from BigQuery. The connection_id format must be either `..` or `projects//locations//connections/`. *)
  parameters : (string * string) list option;  (** Optional. A map of the key-value pairs defining the parameters and properties of the open source table. Corresponds with Hive metastore table parameters. Maximum size of 4MiB. *)
  storage_descriptor : storage_descriptor option;  (** Optional. A storage descriptor containing information about the physical storage of this table. *)
}

and external_data_configuration = {
  autodetect : bool option;  (** Try to detect schema and format options automatically. Any option specified explicitly will be honored. *)
  avro_options : avro_options option;  (** Optional. Additional properties to set if sourceFormat is set to AVRO. *)
  bigtable_options : bigtable_options option;  (** Optional. Additional options if sourceFormat is set to BIGTABLE. *)
  compression : string option;  (** Optional. The compression type of the data source. Possible values include GZIP and NONE. The default value is NONE. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups, Avro, ORC and Parquet formats. An empty string is an invalid value. *)
  connection_id : string option;  (** Optional. The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connection_id can have the form `\{project_id\}.\{location_id\};\{connection_id\}` or `projects/\{project_id\}/locations/\{location_id\}/connections/\{connection_id\}`. *)
  csv_options : csv_options option;  (** Optional. Additional properties to set if sourceFormat is set to CSV. *)
  date_format : string option;  (** Optional. Format used to parse DATE values. Supports C-style and SQL-style values. *)
  datetime_format : string option;  (** Optional. Format used to parse DATETIME values. Supports C-style and SQL-style values. *)
  decimal_target_types : [ `Decimal_target_type_unspecified | `Numeric | `Bignumeric | `String | `Unrecognized of string ] list option;  (** Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is \['NUMERIC', 'BIGNUMERIC'\]. If (precision,scale) is: * (38,9) -> NUMERIC; * (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); * (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); * (76,38) -> BIGNUMERIC; * (77,38) -> BIGNUMERIC (error if value exceeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, \['BIGNUMERIC', 'NUMERIC'\] is the same as \['NUMERIC', 'BIGNUMERIC'\] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to \['NUMERIC', 'STRING'\] for ORC and \['NUMERIC'\] for the other file formats. *)
  file_set_spec_type : [ `File_set_spec_type_file_system_match | `File_set_spec_type_new_line_delimited_manifest | `Unrecognized of string ] option;  (** Optional. Specifies how source URIs are interpreted for constructing the file set to load. By default source URIs are expanded against the underlying storage. Other options include specifying manifest files. Only applicable to object storage systems. *)
  google_sheets_options : google_sheets_options option;  (** Optional. Additional options if sourceFormat is set to GOOGLE_SHEETS. *)
  hive_partitioning_options : hive_partitioning_options option;  (** Optional. When set, configures hive partitioning support. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error, as will providing an invalid specification. *)
  ignore_unknown_values : bool option;  (** Optional. Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names Google Cloud Bigtable: This setting is ignored. Google Cloud Datastore backups: This setting is ignored. Avro: This setting is ignored. ORC: This setting is ignored. Parquet: This setting is ignored. *)
  json_extension : [ `Json_extension_unspecified | `Geojson | `Unrecognized of string ] option;  (** Optional. Load option to be used together with source_format newline-delimited JSON to indicate that a variant of JSON is being loaded. To load newline-delimited GeoJSON, specify GEOJSON (and source_format must be set to NEWLINE_DELIMITED_JSON). *)
  json_options : json_options option;  (** Optional. Additional properties to set if sourceFormat is set to JSON. *)
  max_bad_records : int option;  (** Optional. The maximum number of bad records that BigQuery can ignore when reading data. If the number of bad records exceeds this value, an invalid error is returned in the job result. The default value is 0, which requires that all records are valid. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups, Avro, ORC and Parquet formats. *)
  metadata_cache_mode : [ `Metadata_cache_mode_unspecified | `Automatic | `Manual | `Unrecognized of string ] option;  (** Optional. Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source. *)
  object_metadata : [ `Object_metadata_unspecified | `Directory | `Simple | `Unrecognized of string ] option;  (** Optional. ObjectMetadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the source_uris. If ObjectMetadata is set, source_format should be omitted. Currently SIMPLE is the only supported Object Metadata type. *)
  parquet_options : parquet_options option;  (** Optional. Additional properties to set if sourceFormat is set to PARQUET. *)
  reference_file_schema_uri : string option;  (** Optional. When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC. *)
  schema : table_schema option;  (** Optional. The schema for the data. Schema is required for CSV and JSON formats if autodetect is not on. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups, Avro, ORC and Parquet formats. *)
  source_format : string option;  (** \[Required\] The data format. For CSV files, specify 'CSV'. For Google sheets, specify 'GOOGLE_SHEETS'. For newline-delimited JSON, specify 'NEWLINE_DELIMITED_JSON'. For Avro files, specify 'AVRO'. For Google Cloud Datastore backups, specify 'DATASTORE_BACKUP'. For Apache Iceberg tables, specify 'ICEBERG'. For ORC files, specify 'ORC'. For Parquet files, specify 'PARQUET'. \[Beta\] For Google Cloud Bigtable, specify 'BIGTABLE'. *)
  source_uris : string list option;  (** \[Required\] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the '*' wildcard character is not allowed. *)
  time_format : string option;  (** Optional. Format used to parse TIME values. Supports C-style and SQL-style values. *)
  time_zone : string option;  (** Optional. Time zone used when parsing timestamp values that do not have specific time zone information (e.g. 2024-04-20 12:34:56). The expected format is a IANA timezone string (e.g. America/Los_Angeles). *)
  timestamp_format : string option;  (** Optional. Format used to parse TIMESTAMP values. Supports C-style and SQL-style values. *)
  timestamp_target_precision : int list option;  (** Precisions (maximum number of total digits in base 10) for seconds of TIMESTAMP types that are allowed to the destination table for autodetection mode. Available for the formats: CSV, PARQUET, AVRO, and Iceberg External Table. Possible values include: Not Specified, \[\], or \[6\]: timestamp(6) for all auto detected TIMESTAMP columns \[6, 12\]: timestamp(6) for all auto detected TIMESTAMP columns that have less than 6 digits of subseconds. timestamp(12) for all auto detected TIMESTAMP columns that have more than 6 digits of subseconds. \[12\]: timestamp(12) for all auto detected TIMESTAMP columns. The order of the elements in this array is ignored. Inputs that have higher precision than the highest target precision in this array will be truncated. *)
}

(** Configures the access a dataset defined in an external metadata storage. *)
and external_dataset_reference = {
  connection : string option;  (** Required. The connection id that is used to access the external_source. Format: projects/\{project_id\}/locations/\{location_id\}/connections/\{connection_id\} *)
  external_source : string option;  (** Required. External source that backs this dataset. *)
}

(** Options for the runtime of the external system. *)
and external_runtime_options = {
  container_cpu : float option;  (** Optional. Amount of CPU provisioned for a Python UDF container instance. For more information, see \[Configure container limits for Python UDFs\](https://cloud.google.com/bigquery/docs/user-defined-functions-python#configure-container-limits) *)
  container_memory : string option;  (** Optional. Amount of memory provisioned for a Python UDF container instance. Format: \{number\}\{unit\} where unit is one of 'M', 'G', 'Mi' and 'Gi' (e.g. 1G, 512Mi). If not specified, the default value is 512Mi. For more information, see \[Configure container limits for Python UDFs\](https://cloud.google.com/bigquery/docs/user-defined-functions-python#configure-container-limits) *)
  container_request_concurrency : string option;  (** Optional. Maximum number of requests that a Python UDF instance can handle concurrently. If absent or if `0`, the default concurrency value is used. For more information, see \[Configure container limits for Python UDFs\](https://cloud.google.com/bigquery/docs/user-defined-functions-python#configure-container-limits). *)
  max_batching_rows : string option;  (** Optional. Maximum number of rows in each batch sent to the external runtime. If absent or if 0, BigQuery dynamically decides the number of rows in a batch. *)
  runtime_connection : string option;  (** Optional. Fully qualified name of the connection whose service account will be used to execute the code in the container. Format: ```'projects/\{project_id\}/locations/\{location_id\}/connections/\{connection_id\}'``` *)
  runtime_version : string option;  (** Optional. Language runtime version. Example: `python-3.11`. *)
  volume_mounts : external_volume_mount list option;  (** Optional. List of volume mounts for the Python UDF container that executes the managed function. *)
}

(** The external service cost is a portion of the total cost, these costs are not additive with total_bytes_billed. Moreover, this field only track external service costs that will show up as BigQuery costs (e.g. training BigQuery ML job with google cloud CAIP or Automl Tables services), not other costs which may be accrued by running the query (e.g. reading from Bigtable or Cloud Storage). The external service costs with different billing sku (e.g. CAIP job is charged based on VM usage) are converted to BigQuery billed_bytes and slot_ms with equivalent amount of US dollars. Services may not directly correlate to these metrics, but these are the equivalents for billing purposes. Output only. *)
and external_service_cost = {
  billing_method : string option;  (** The billing method used for the external job. This field, set to `SERVICES_SKU`, is only used when billing under the services SKU. Otherwise, it is unspecified for backward compatibility. *)
  bytes_billed : string option;  (** External service cost in terms of bigquery bytes billed. *)
  bytes_processed : string option;  (** External service cost in terms of bigquery bytes processed. *)
  external_service : string option;  (** External service name. *)
  reserved_slot_count : string option;  (** Non-preemptable reserved slots used for external job. For example, reserved slots for Cloua AI Platform job are the VM usages converted to BigQuery slot with equivalent mount of price. *)
  slot_ms : string option;  (** External service cost in terms of bigquery slot milliseconds. *)
}

(** Configuration of a volume mount for the Python UDF container that executes the managed function. *)
and external_volume_mount = {
  mount_path : string option;  (** Optional. The absolute path within the container where the volume should be mounted. *)
  source_path : string option;  (** Optional. The absolute path of the source to be mounted, only support Google Cloud Storage bucket or folder now. Eg: gs://bucket-xxx for Google Cloud Storage bucket, gs://bucket-xxx/folder1/folder2 for Google Cloud Storage folder. *)
}

(** Representative value of a single feature within the cluster. *)
and feature_value = {
  categorical_value : categorical_value option;  (** The categorical feature value. *)
  feature_column : string option;  (** The feature column name. *)
  numerical_value : float option;  (** The numerical feature value. This is the centroid value for this feature. *)
}

(** Metadata about the foreign data type definition such as the system in which the type is defined. *)
and foreign_type_info = {
  type_system : [ `Type_system_unspecified | `Hive | `Unrecognized of string ] option;  (** Required. Specifies the system which defines the foreign data type. *)
}

(** A view can be represented in multiple ways. Each representation has its own dialect. This message stores the metadata required for these representations. *)
and foreign_view_definition = {
  dialect : string option;  (** Optional. Represents the dialect of the query. *)
  query : string option;  (** Required. The query that defines the view. *)
}

(** Provides error statistics for the query job across all AI function calls. *)
and gen_ai_error_stats = {
  errors : string list option;  (** A list of unique errors at query level (up to 5, truncated to 100 chars) *)
}

(** Provides cache statistics for a GenAi function call. *)
and gen_ai_function_cache_stats = {
  num_cache_hit_rows : string option;  (** Number of rows served from cache. *)
}

(** Provides cost optimization statistics for a GenAi function call. *)
and gen_ai_function_cost_optimization_stats = {
  message : string option;  (** System generated message to provide insights into cost optimization state. *)
  num_cost_optimized_rows : string option;  (** Number of rows inferred via cost optimized workflow. *)
}

(** Provides error statistics for a GenAi function call. *)
and gen_ai_function_error_stats = {
  errors : string list option;  (** A list of unique errors at function level (up to 5, truncated to 100 chars). *)
  num_failed_rows : string option;  (** Number of failed rows processed by the function *)
}

(** Provides statistics for each Ai function call within a query. *)
and gen_ai_function_stats = {
  cache_stats : gen_ai_function_cache_stats option;  (** Cache stats for the function. *)
  cost_optimization_stats : gen_ai_function_cost_optimization_stats option;  (** Cost optimization stats if applied on the rows processed by the function. *)
  error_stats : gen_ai_function_error_stats option;  (** Error stats for the function. *)
  function_name : string option;  (** Name of the function. *)
  num_processed_rows : string option;  (** Number of rows processed by this GenAi function. This includes all cost_optimized, llm_inferred and failed_rows. *)
  prompt : string option;  (** User input prompt of the function (truncated to 20 chars). *)
}

(** GenAi stats for the query job. *)
and gen_ai_stats = {
  error_stats : gen_ai_error_stats option;  (** Job level error stats across all GenAi functions *)
  function_stats : gen_ai_function_stats list option;  (** Function level stats for GenAI Functions. For more information, see \[Generative AI overview\](https://docs.cloud.google.com/bigquery/docs/generative-ai-overview). *)
}

(** Optional. Definition of how values are generated for the field. Only valid for top-level schema fields (not nested fields). *)
and generated_column = {
  generated_expression_info : generated_expression_info option;  (** Definition of the expression used to generate the field. *)
  generated_mode : [ `Generated_mode_unspecified | `Generated_always | `Generated_by_default | `Unrecognized of string ] option;  (** Optional. Dictates when system generated values are used to populate the field. *)
}

(** Definition of the expression used to generate the field. *)
and generated_expression_info = {
  asynchronous : bool option;  (** Optional. Whether the column generation is done asynchronously. *)
  generation_expression : string option;  (** Optional. The generation expression (e.g. AI.EMBED(...)) used to generate the field. *)
  stored : bool option;  (** Optional. Whether the generated column is stored in the table. *)
}

(** Request message for `GetIamPolicy` method. *)
and get_iam_policy_request = {
  options : get_policy_options option;  (** OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`. *)
}

(** Encapsulates settings provided to GetIamPolicy. *)
and get_policy_options = {
  requested_policy_version : int option;  (** Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)
}

(** Response object of GetQueryResults. *)
and get_query_results_response = {
  cache_hit : bool option;  (** Whether the query result was fetched from the query cache. *)
  errors : error_proto list option;  (** Output only. The first errors or warnings encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful. For more information about error messages, see \[Error messages\](https://cloud.google.com/bigquery/docs/error-messages). *)
  etag : string option;  (** A hash of this response. *)
  job_complete : bool option;  (** Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available. *)
  job_reference : job_reference option;  (** Reference to the BigQuery Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults). *)
  kind : string option;  (** The resource type of the response. *)
  num_dml_affected_rows : string option;  (** Output only. The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE. *)
  page_token : string option;  (** A token used for paging results. When this token is non-empty, it indicates additional results are available. *)
  rows : table_row list option;  (** An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above. Present only when the query completes successfully. The REST-based representation of this data leverages a series of JSON f,v objects for indicating fields and values. *)
  schema : table_schema option;  (** The schema of the results. Present only when the query completes successfully. *)
  total_bytes_processed : string option;  (** The total number of bytes processed for this query. *)
  total_rows : string option;  (** The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. Present only when the query completes successfully. *)
}

(** Response object of GetServiceAccount *)
and get_service_account_response = {
  email : string option;  (** The service account email address. *)
  kind : string option;  (** The resource type of the response. *)
}

(** Global explanations containing the top most important features after training. *)
and global_explanation = {
  class_label : string option;  (** Class label for this set of global explanations. Will be empty/null for binary logistic and linear regression models. Sorted alphabetically in descending order. *)
  explanations : explanation list option;  (** A list of the top global explanations. Sorted by absolute value of attribution in descending order. *)
}

(** Options specific to Google Sheets data sources. *)
and google_sheets_options = {
  range : string option;  (** Optional. Range of a sheet to query from. Only used when non-empty. Typical format: sheet_name!top_left_cell_id:bottom_right_cell_id For example: sheet1!A1:B20 *)
  skip_leading_rows : string option;  (** Optional. The number of rows at the top of a sheet that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows that should be skipped. When autodetect is on, the behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema. *)
}

(** High cardinality join detailed information. *)
and high_cardinality_join = {
  left_rows : string option;  (** Output only. Count of left input rows. *)
  output_rows : string option;  (** Output only. Count of the output rows. *)
  right_rows : string option;  (** Output only. Count of right input rows. *)
  step_index : int option;  (** Output only. The index of the join operator in the ExplainQueryStep lists. *)
}

(** Options for configuring hive partitioning detect. *)
and hive_partitioning_options = {
  fields : string list option;  (** Output only. For permanent external tables, this field is populated with the hive partition keys in the order they were inferred. The types of the partition keys can be deduced by checking the table schema (which will include the partition keys). Not every API will populate this field in the output. For example, Tables.Get will populate it, but Tables.List will not contain this field. *)
  mode : string option;  (** Optional. When set, what mode of hive partitioning to use when reading data. The following modes are supported: * AUTO: automatically infer partition key name(s) and type(s). * STRINGS: automatically infer partition key name(s). All types are strings. * CUSTOM: partition key schema is encoded in the source URI prefix. Not all storage formats support hive partitioning. Requesting hive partitioning on an unsupported format will lead to an error. Currently supported formats are: JSON, CSV, ORC, Avro and Parquet. *)
  require_partition_filter : bool option;  (** Optional. If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. Note that this field should only be true when creating a permanent external table or querying a temporary external table. Hive-partitioned loads with require_partition_filter explicitly set to true will fail. *)
  source_uri_prefix : string option;  (** Optional. When hive partition detection is requested, a common prefix for all source uris must be required. The prefix must end immediately before the partition key encoding begins. For example, consider files following this data layout: gs://bucket/path_to_table/dt=2019-06-01/country=USA/id=7/file.avro gs://bucket/path_to_table/dt=2019-05-31/country=CA/id=3/file.avro When hive partitioning is requested with either AUTO or STRINGS detection, the common prefix can be either of gs://bucket/path_to_table or gs://bucket/path_to_table/. CUSTOM detection requires encoding the partitioning schema immediately after the common prefix. For CUSTOM, any of * gs://bucket/path_to_table/\{dt:DATE\}/\{country:STRING\}/\{id:INTEGER\} * gs://bucket/path_to_table/\{dt:STRING\}/\{country:STRING\}/\{id:INTEGER\} * gs://bucket/path_to_table/\{dt:DATE\}/\{country:STRING\}/\{id:STRING\} would all be valid source URI prefixes. *)
}

(** Hyperparameter search spaces. These should be a subset of training_options. *)
and hparam_search_spaces = {
  activation_fn : string_hparam_search_space option;  (** Activation functions of neural network models. *)
  batch_size : int_hparam_search_space option;  (** Mini batch sample size. *)
  booster_type : string_hparam_search_space option;  (** Booster type for boosted tree models. *)
  colsample_bylevel : double_hparam_search_space option;  (** Subsample ratio of columns for each level for boosted tree models. *)
  colsample_bynode : double_hparam_search_space option;  (** Subsample ratio of columns for each node(split) for boosted tree models. *)
  colsample_bytree : double_hparam_search_space option;  (** Subsample ratio of columns when constructing each tree for boosted tree models. *)
  dart_normalize_type : string_hparam_search_space option;  (** Dart normalization type for boosted tree models. *)
  dropout : double_hparam_search_space option;  (** Dropout probability for dnn model training and boosted tree models using dart booster. *)
  hidden_units : int_array_hparam_search_space option;  (** Hidden units for neural network models. *)
  l1_reg : double_hparam_search_space option;  (** L1 regularization coefficient. *)
  l2_reg : double_hparam_search_space option;  (** L2 regularization coefficient. *)
  learn_rate : double_hparam_search_space option;  (** Learning rate of training jobs. *)
  max_tree_depth : int_hparam_search_space option;  (** Maximum depth of a tree for boosted tree models. *)
  min_split_loss : double_hparam_search_space option;  (** Minimum split loss for boosted tree models. *)
  min_tree_child_weight : int_hparam_search_space option;  (** Minimum sum of instance weight needed in a child for boosted tree models. *)
  num_clusters : int_hparam_search_space option;  (** Number of clusters for k-means. *)
  num_factors : int_hparam_search_space option;  (** Number of latent factors to train on. *)
  num_parallel_tree : int_hparam_search_space option;  (** Number of parallel trees for boosted tree models. *)
  optimizer : string_hparam_search_space option;  (** Optimizer of TF models. *)
  subsample : double_hparam_search_space option;  (** Subsample the training data to grow tree to prevent overfitting for boosted tree models. *)
  tree_method : string_hparam_search_space option;  (** Tree construction algorithm for boosted tree models. *)
  wals_alpha : double_hparam_search_space option;  (** Hyperparameter for matrix factoration when implicit feedback type is specified. *)
}

(** Training info of a trial in \[hyperparameter tuning\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models. *)
and hparam_tuning_trial = {
  end_time_ms : string option;  (** Ending time of the trial. *)
  error_message : string option;  (** Error message for FAILED and INFEASIBLE trial. *)
  eval_loss : float option;  (** Loss computed on the eval data at the end of trial. *)
  evaluation_metrics : evaluation_metrics option;  (** Evaluation metrics of this trial calculated on the test data. Empty in Job API. *)
  hparam_tuning_evaluation_metrics : evaluation_metrics option;  (** Hyperparameter tuning evaluation metrics of this trial calculated on the eval data. Unlike evaluation_metrics, only the fields corresponding to the hparam_tuning_objectives are set. *)
  hparams : training_options option;  (** The hyperprameters selected for this trial. *)
  start_time_ms : string option;  (** Starting time of the trial. *)
  status : [ `Trial_status_unspecified | `Not_started | `Running | `Succeeded | `Failed | `Infeasible | `Stopped_early | `Unrecognized of string ] option;  (** The status of the trial. *)
  training_loss : float option;  (** Loss computed on the training data at the end of trial. *)
  trial_id : string option;  (** 1-based index of the trial. *)
}

(** Statistics related to Incremental Query Results. Populated as part of JobStatistics2. This feature is not yet available. *)
and incremental_result_stats = {
  disabled_reason : [ `Disabled_reason_unspecified | `Other | `Unsupported_operator | `Unrecognized of string ] option;  (** Output only. Reason why incremental query results are/were not written by the query. *)
  disabled_reason_details : string option;  (** Output only. Additional human-readable clarification, if available, for DisabledReason. *)
  first_incremental_row_time : string option;  (** Output only. The time at which the first incremental result was written. If the query needed to restart internally, this only describes the final attempt. *)
  incremental_row_count : string option;  (** Output only. Number of rows that were in the latest result set before query completion. *)
  last_incremental_row_time : string option;  (** Output only. The time at which the last incremental result was written. Does not include the final result written after query completion. *)
  result_set_last_modify_time : string option;  (** Output only. The time at which the result table's contents were modified. May be absent if no results have been written or the query has completed. *)
  result_set_last_replace_time : string option;  (** Output only. The time at which the result table's contents were completely replaced. May be absent if no results have been written or the query has completed. *)
}

(** Statistics for index pruning. *)
and index_pruning_stats = {
  base_table : table_reference option;  (** The base table reference. *)
  index_id : string option;  (** The index id. *)
  post_index_pruning_parallel_input_count : string option;  (** The number of parallel inputs after index pruning. *)
  pre_index_pruning_parallel_input_count : string option;  (** The number of parallel inputs before index pruning. *)
}

(** Reason about why no search index was used in the search query (or sub-query). *)
and index_unused_reason = {
  base_table : table_reference option;  (** Specifies the base table involved in the reason that no search index was used. *)
  code : [ `Code_unspecified | `Index_config_not_available | `Pending_index_creation | `Base_table_truncated | `Index_config_modified | `Time_travel_query | `No_pruning_power | `Unindexed_search_fields | `Unsupported_search_pattern | `Optimized_with_materialized_view | `Secured_by_data_masking | `Mismatched_text_analyzer | `Base_table_too_small | `Base_table_too_large | `Estimated_performance_gain_too_low | `Column_metadata_index_not_used | `Not_supported_in_standard_edition | `Index_suppressed_by_function_option | `Query_cache_hit | `Stale_index | `Internal_error | `Other_reason | `Unrecognized of string ] option;  (** Specifies the high-level reason for the scenario when no search index was used. *)
  index_name : string option;  (** Specifies the name of the unused search index, if available. *)
  message : string option;  (** Free form human-readable reason for the scenario when no search index was used. *)
}

(** Details about the input data change insight. *)
and input_data_change = {
  records_read_diff_percentage : float option;  (** Output only. Records read difference percentage compared to a previous run. *)
}

(** An array of int. *)
and int_array = {
  elements : string list option;  (** Elements in the int array. *)
}

(** Search space for int array. *)
and int_array_hparam_search_space = {
  candidates : int_array list option;  (** Candidates for the int array parameter. *)
}

(** Discrete candidates of an int hyperparameter. *)
and int_candidates = {
  candidates : string list option;  (** Candidates for the int parameter in increasing order. *)
}

(** Search space for an int hyperparameter. *)
and int_hparam_search_space = {
  candidates : int_candidates option;  (** Candidates of the int hyperparameter. *)
  range : int_range option;  (** Range of the int hyperparameter. *)
}

(** Range of an int hyperparameter. *)
and int_range = {
  max : string option;  (** Max value of the int parameter. *)
  min : string option;  (** Min value of the int parameter. *)
}

(** Information about a single iteration of the training run. *)
and iteration_result = {
  arima_result : arima_result option;  (** Arima result. *)
  cluster_infos : cluster_info list option;  (** Information about top clusters for clustering models. *)
  duration_ms : string option;  (** Time taken to run the iteration in milliseconds. *)
  eval_loss : float option;  (** Loss computed on the eval data at the end of iteration. *)
  index : int option;  (** Index of the iteration, 0 based. *)
  learn_rate : float option;  (** Learn rate used for this iteration. *)
  principal_component_infos : principal_component_info list option;  (** The information of the principal components. *)
  training_loss : float option;  (** Loss computed on the training data at the end of iteration. *)
}

and job = {
  configuration : job_configuration option;  (** Required. Describes the job configuration. *)
  etag : string option;  (** Output only. A hash of this resource. *)
  id : string option;  (** Output only. Opaque ID field of the job. *)
  job_creation_reason : job_creation_reason option;  (** Output only. The reason why a Job was created. *)
  job_reference : job_reference option;  (** Optional. Reference describing the unique-per-user name of the job. *)
  kind : string option;  (** Output only. The type of the resource. *)
  principal_subject : string option;  (** Output only. \[Full-projection-only\] String representation of identity of requesting party. Populated for both first- and third-party identities. Only present for APIs that support third-party identities. *)
  self_link : string option;  (** Output only. A URL that can be used to access the resource again. *)
  statistics : job_statistics option;  (** Output only. Information about the job, including starting time and ending time of the job. *)
  status : job_status option;  (** Output only. The status of this job. Examine this value when polling an asynchronous job to see if the job is complete. *)
  user_email : string option;  (** Output only. Email address of the user who ran the job. *)
}

(** Describes format of a jobs cancellation response. *)
and job_cancel_response = {
  job : job option;  (** The final state of the job. *)
  kind : string option;  (** The resource type of the response. *)
}

and job_configuration = {
  copy : job_configuration_table_copy option;  (** \[Pick one\] Copies a table. *)
  dry_run : bool option;  (** Optional. If set, don't actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn't a dry run. Behavior of non-query jobs is undefined. *)
  extract : job_configuration_extract option;  (** \[Pick one\] Configures an extract job. *)
  job_timeout_ms : string option;  (** Optional. Job timeout in milliseconds relative to the job creation time. If this time limit is exceeded, BigQuery attempts to stop the job, but might not always succeed in canceling it before the job completes. For example, a job that takes more than 60 seconds to complete has a better chance of being stopped than a job that takes 10 seconds to complete. *)
  job_type : string option;  (** Output only. The type of the job. Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN. *)
  labels : (string * string) list option;  (** The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key. *)
  load : job_configuration_load option;  (** \[Pick one\] Configures a load job. *)
  max_slots : int option;  (** Optional. A target limit on the rate of slot consumption by this job. If set to a value > 0, BigQuery will attempt to limit the rate of slot consumption by this job to keep it below the configured limit, even if the job is eligible for more slots based on fair scheduling. The unused slots will be available for other jobs and queries to use. Note: This feature is not yet generally available. *)
  query : job_configuration_query option;  (** \[Pick one\] Configures a query job. *)
  reservation : string option;  (** Optional. The reservation that job would use. User can specify a reservation to execute the job. If reservation is not set, reservation is determined based on the rules defined by the reservation assignments. The expected format is `projects/\{project\}/locations/\{location\}/reservations/\{reservation\}`. Forces the query to use on-demand billing when set to `none`, which requires the project or organization to have `reservation_override_mode` set to `ALLOW_ANY_OVERRIDE`. *)
}

(** JobConfigurationExtract configures a job that exports data from a BigQuery table into Google Cloud Storage. *)
and job_configuration_extract = {
  compression : string option;  (** Optional. The compression type to use for exported files. Possible values include DEFLATE, GZIP, NONE, SNAPPY, and ZSTD. The default value is NONE. Not all compression formats are support for all file formats. DEFLATE is only supported for Avro. ZSTD is only supported for Parquet. Not applicable when extracting models. *)
  destination_format : string option;  (** Optional. The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET, or AVRO for tables and ML_TF_SAVED_MODEL or ML_XGBOOST_BOOSTER for models. The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV. The default value for models is ML_TF_SAVED_MODEL. *)
  destination_uri : string option;  (** \[Pick one\] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written. *)
  destination_uris : string list option;  (** \[Pick one\] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written. *)
  field_delimiter : string option;  (** Optional. When extracting data in CSV format, this defines the delimiter to use between fields in the exported data. Default is ','. Not applicable when extracting models. *)
  model_extract_options : model_extract_options option;  (** Optional. Model extract options only applicable when extracting models. *)
  native_geography_export_enabled : bool option;  (** Optional. Applicable to formats: PARQUET. If enabled, BigQuery to Parquet export will write the native Parquet Geography type instead of the default GeoParquet type. *)
  print_header : bool option;  (** Optional. Whether to print out a header row in the results. Default is true. Not applicable when extracting models. *)
  source_model : model_reference option;  (** A reference to the model being exported. *)
  source_table : table_reference option;  (** A reference to the table being exported. *)
  use_avro_logical_types : bool option;  (** Whether to use logical types when extracting to AVRO format. Not applicable when extracting models. *)
}

(** JobConfigurationLoad contains the configuration properties for loading data into a destination table. *)
and job_configuration_load = {
  allow_jagged_rows : bool option;  (** Optional. Accept rows that are missing trailing optional columns. The missing values are treated as nulls. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats. *)
  allow_quoted_newlines : bool option;  (** Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false. *)
  autodetect : bool option;  (** Optional. Indicates if we should automatically infer the options and schema for CSV and JSON sources. *)
  clustering : clustering option;  (** Clustering specification for the destination table. *)
  column_name_character_map : [ `Column_name_character_map_unspecified | `Strict | `V1 | `V2 | `Unrecognized of string ] option;  (** Optional. Character map supported for column names in CSV/Parquet loads. Defaults to STRICT and can be overridden by Project Config Service. Using this option with unsupporting load formats will result in an error. *)
  connection_properties : connection_property list option;  (** Optional. Connection properties which can modify the load job behavior. Currently, only the 'session_id' connection property is supported, and is used to resolve _SESSION appearing as the dataset id. *)
  copy_files_only : bool option;  (** Optional. \[Experimental\] Configures the load job to copy files directly to the destination BigLake managed table, bypassing file content reading and rewriting. Copying files only is supported when all the following are true: * `source_uris` are located in the same Cloud Storage location as the destination table's `storage_uri` location. * `source_format` is `PARQUET`. * `destination_table` is an existing BigLake managed table. The table's schema does not have flexible column names. The table's columns do not have type parameters other than precision and scale. * No options other than the above are specified. *)
  create_disposition : string option;  (** Optional. Specifies whether the job is allowed to create new tables. The following values are supported: * CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. * CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion. *)
  create_session : bool option;  (** Optional. If this property is true, the job creates a new session using a randomly generated session_id. To continue using a created session with subsequent queries, pass the existing session identifier as a `ConnectionProperty` value. The session identifier is returned as part of the `SessionInfo` message within the query statistics. The new session's location will be set to `Job.JobReference.location` if it is present, otherwise it's set to the default location based on existing routing logic. *)
  date_format : string option;  (** Optional. Date format used for parsing DATE values. *)
  datetime_format : string option;  (** Optional. Date format used for parsing DATETIME values. *)
  decimal_target_types : [ `Decimal_target_type_unspecified | `Numeric | `Bignumeric | `String | `Unrecognized of string ] list option;  (** Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is \['NUMERIC', 'BIGNUMERIC'\]. If (precision,scale) is: * (38,9) -> NUMERIC; * (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); * (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); * (76,38) -> BIGNUMERIC; * (77,38) -> BIGNUMERIC (error if value exceeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, \['BIGNUMERIC', 'NUMERIC'\] is the same as \['NUMERIC', 'BIGNUMERIC'\] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to \['NUMERIC', 'STRING'\] for ORC and \['NUMERIC'\] for the other file formats. *)
  destination_encryption_configuration : encryption_configuration option;  (** Custom encryption configuration (e.g., Cloud KMS keys) *)
  destination_table : table_reference option;  (** \[Required\] The destination table to load the data into. *)
  destination_table_properties : destination_table_properties option;  (** Optional. \[Experimental\] Properties with which to create the destination table if it is new. *)
  encoding : string option;  (** Optional. The character encoding of the data. The supported values are UTF-8, ISO-8859-1, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the `quote` and `fieldDelimiter` properties. If you don't specify an encoding, or if you specify a UTF-8 encoding when the CSV file is not UTF-8 encoded, BigQuery attempts to convert the data to UTF-8. Generally, your data loads successfully, but it may not match byte-for-byte what you expect. To avoid this, specify the correct encoding by using the `--encoding` flag. If BigQuery can't convert a character other than the ASCII `0` character, BigQuery converts the character to the standard Unicode replacement character: �. *)
  field_delimiter : string option;  (** Optional. The separator character for fields in a CSV file. The separator is interpreted as a single byte. For files encoded in ISO-8859-1, any single character can be used as a separator. For files encoded in UTF-8, characters represented in decimal range 1-127 (U+0001-U+007F) can be used without any modification. UTF-8 characters encoded with multiple bytes (i.e. U+0080 and above) will have only the first byte used for separating fields. The remaining bytes will be treated as a part of the field. BigQuery also supports the escape sequence '\\t' (U+0009) to specify a tab separator. The default value is comma (',', U+002C). *)
  file_set_spec_type : [ `File_set_spec_type_file_system_match | `File_set_spec_type_new_line_delimited_manifest | `Unrecognized of string ] option;  (** Optional. Specifies how source URIs are interpreted for constructing the file set to load. By default, source URIs are expanded against the underlying storage. You can also specify manifest files to control how the file set is constructed. This option is only applicable to object storage systems. *)
  hive_partitioning_options : hive_partitioning_options option;  (** Optional. When set, configures hive partitioning support. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error, as will providing an invalid specification. *)
  ignore_unknown_values : bool option;  (** Optional. Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names in the table schema Avro, Parquet, ORC: Fields in the file schema that don't exist in the table schema. *)
  json_extension : [ `Json_extension_unspecified | `Geojson | `Unrecognized of string ] option;  (** Optional. Load option to be used together with source_format newline-delimited JSON to indicate that a variant of JSON is being loaded. To load newline-delimited GeoJSON, specify GEOJSON (and source_format must be set to NEWLINE_DELIMITED_JSON). *)
  max_bad_records : int option;  (** Optional. The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value, an invalid error is returned in the job result. The default value is 0, which requires that all records are valid. This is only supported for CSV and NEWLINE_DELIMITED_JSON file formats. *)
  null_marker : string option;  (** Optional. Specifies a string that represents a null value in a CSV file. For example, if you specify '\\N', BigQuery interprets '\\N' as a null value when loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as an empty value. *)
  null_markers : string list option;  (** Optional. A list of strings represented as SQL NULL value in a CSV file. null_marker and null_markers can't be set at the same time. If null_marker is set, null_markers has to be not set. If null_markers is set, null_marker has to be not set. If both null_marker and null_markers are set at the same time, a user error would be thrown. Any strings listed in null_markers, including empty string would be interpreted as SQL NULL. This applies to all column types. *)
  parquet_options : parquet_options option;  (** Optional. Additional properties to set if sourceFormat is set to PARQUET. *)
  preserve_ascii_control_characters : bool option;  (** Optional. When sourceFormat is set to 'CSV', this indicates whether the embedded ASCII control characters (the first 32 characters in the ASCII-table, from '\\x00' to '\\x1F') are preserved. *)
  projection_fields : string list option;  (** If sourceFormat is set to 'DATASTORE_BACKUP', indicates which entity properties to load into BigQuery from a Cloud Datastore backup. Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties. If any named property isn't found in the Cloud Datastore backup, an invalid error is returned in the job result. *)
  quote : string option;  (** Optional. The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('''). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true. To include the specific quote character within a quoted value, precede it with an additional matching quote character. For example, if you want to escape the default character ' ' ', use ' '' '. \@default ' *)
  range_partitioning : range_partitioning option;  (** Range partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified. *)
  reference_file_schema_uri : string option;  (** Optional. The user can provide a reference file with the reader schema. This file is only loaded if it is part of source URIs, but is not loaded otherwise. It is enabled for the following formats: AVRO, PARQUET, ORC. *)
  schema : table_schema option;  (** Optional. The schema for the destination table. The schema can be omitted if the destination table already exists, or if you're loading data from Google Cloud Datastore. *)
  schema_inline : string option;  (** \[Deprecated\] The inline schema. For CSV schemas, specify as 'Field1:Type1\[,Field2:Type2\]*'. For example, 'foo:STRING, bar:INTEGER, baz:FLOAT'. *)
  schema_inline_format : string option;  (** \[Deprecated\] The format of the schemaInline property. *)
  schema_update_options : string list option;  (** Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or supplied in the job configuration. Schema update options are supported in three cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE_DATA; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: * ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. * ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable. *)
  skip_leading_rows : int option;  (** Optional. The number of rows at the top of a CSV file that BigQuery will skip when loading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. When autodetect is on, the behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema. *)
  source_column_match : [ `Source_column_match_unspecified | `Position | `Name | `Unrecognized of string ] option;  (** Optional. Controls the strategy used to match loaded columns to the schema. If not set, a sensible default is chosen based on how the schema is provided. If autodetect is used, then columns are matched by name. Otherwise, columns are matched by position. This is done to keep the behavior backward-compatible. *)
  source_format : string option;  (** Optional. The format of the data files. For CSV files, specify 'CSV'. For datastore backups, specify 'DATASTORE_BACKUP'. For newline-delimited JSON, specify 'NEWLINE_DELIMITED_JSON'. For Avro, specify 'AVRO'. For parquet, specify 'PARQUET'. For orc, specify 'ORC'. The default value is CSV. *)
  source_uris : string list option;  (** \[Required\] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the '*' wildcard character is not allowed. *)
  time_format : string option;  (** Optional. Date format used for parsing TIME values. *)
  time_partitioning : time_partitioning option;  (** Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified. *)
  time_zone : string option;  (** Optional. Default time zone that will apply when parsing timestamp values that have no specific time zone. *)
  timestamp_format : string option;  (** Optional. Date format used for parsing TIMESTAMP values. *)
  timestamp_target_precision : int list option;  (** Precisions (maximum number of total digits in base 10) for seconds of TIMESTAMP types that are allowed to the destination table for autodetection mode. Available for the formats: CSV, PARQUET, AVRO, and Iceberg External Table. Possible values include: Not Specified, \[\], or \[6\]: timestamp(6) for all auto detected TIMESTAMP columns \[6, 12\]: timestamp(6) for all auto detected TIMESTAMP columns that have less than 6 digits of subseconds. timestamp(12) for all auto detected TIMESTAMP columns that have more than 6 digits of subseconds. \[12\]: timestamp(12) for all auto detected TIMESTAMP columns. The order of the elements in this array is ignored. Inputs that have higher precision than the highest target precision in this array will be truncated. *)
  use_avro_logical_types : bool option;  (** Optional. If sourceFormat is set to 'AVRO', indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER). *)
  write_disposition : string option;  (** Optional. Specifies the action that occurs if the destination table already exists. The following values are supported: * WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the data, removes the constraints and uses the schema from the load job. * WRITE_TRUNCATE_DATA: If the table already exists, BigQuery overwrites the data, but keeps the constraints and schema of the existing table. * WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. * WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_APPEND. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion. *)
}

(** JobConfigurationQuery configures a BigQuery query job. *)
and job_configuration_query = {
  allow_large_results : bool option;  (** Optional. If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance. Requires destinationTable to be set. For GoogleSQL queries, this flag is ignored and large results are always allowed. However, you must still set destinationTable when result size exceeds the allowed maximum response size. *)
  clustering : clustering option;  (** Clustering specification for the destination table. *)
  connection_properties : connection_property list option;  (** Connection properties which can modify the query behavior. *)
  continuous : bool option;  (** \[Optional\] Specifies whether the query should be executed as a continuous query. The default value is false. *)
  create_disposition : string option;  (** Optional. Specifies whether the job is allowed to create new tables. The following values are supported: * CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. * CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion. *)
  create_session : bool option;  (** If this property is true, the job creates a new session using a randomly generated session_id. To continue using a created session with subsequent queries, pass the existing session identifier as a `ConnectionProperty` value. The session identifier is returned as part of the `SessionInfo` message within the query statistics. The new session's location will be set to `Job.JobReference.location` if it is present, otherwise it's set to the default location based on existing routing logic. *)
  default_dataset : dataset_reference option;  (** Optional. Specifies the default dataset to use for unqualified table names in the query. This setting does not alter behavior of unqualified dataset names. Setting the system variable `\@\@dataset_id` achieves the same behavior. See https://cloud.google.com/bigquery/docs/reference/system-variables for more information on system variables. *)
  destination_encryption_configuration : encryption_configuration option;  (** Custom encryption configuration (e.g., Cloud KMS keys) *)
  destination_table : table_reference option;  (** Optional. Describes the table where the query results should be stored. This property must be set for large results that exceed the maximum response size. For queries that produce anonymous (cached) results, this field will be populated by BigQuery. *)
  flatten_results : bool option;  (** Optional. If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results. allowLargeResults must be true if this is set to false. For GoogleSQL queries, this flag is ignored and results are never flattened. *)
  maximum_billing_tier : int option;  (** Optional. \[Deprecated\] Maximum billing tier allowed for this query. The billing tier controls the amount of compute resources allotted to the query, and multiplies the on-demand cost of the query accordingly. A query that runs within its allotted resources will succeed and indicate its billing tier in statistics.query.billingTier, but if the query exceeds its allotted resources, it will fail with billingTierLimitExceeded. WARNING: The billed byte amount can be multiplied by an amount up to this number! Most users should not need to alter this setting, and we recommend that you avoid introducing new uses of it. *)
  maximum_bytes_billed : string option;  (** Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default. *)
  parameter_mode : string option;  (** GoogleSQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (\@myparam) query parameters in this query. *)
  preserve_nulls : bool option;  (** \[Deprecated\] This property is deprecated. *)
  priority : string option;  (** Optional. Specifies a priority for the query. Possible values include INTERACTIVE and BATCH. The default value is INTERACTIVE. *)
  query : string option;  (** \[Required\] SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or GoogleSQL. *)
  query_parameters : query_parameter list option;  (** Query parameters for GoogleSQL queries. *)
  range_partitioning : range_partitioning option;  (** Range partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified. *)
  schema_update_options : string list option;  (** Allows the schema of the destination table to be updated as a side effect of the query job. Schema update options are supported in three cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE_DATA; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: * ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. * ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable. *)
  script_options : script_options option;  (** Options controlling the execution of scripts. *)
  secure_context : secure_context option;  (** Optional. A set of key-value pairs representing the secure context. This can be used to pass sensitive or context-specific information. They can be retrieved via the SECURE_CONTEXT() function and used to modify the run-time behavior of a query. *)
  system_variables : system_variables option;  (** Output only. System variables for GoogleSQL queries. A system variable is output if the variable is settable and its value differs from the system default. '\@\@' prefix is not included in the name of the System variables. *)
  table_definitions : (string * external_data_configuration) list option;  (** Optional. You can specify external table definitions, which operate as ephemeral tables that can be queried. These definitions are configured using a JSON map, where the string key represents the table identifier, and the value is the corresponding external data configuration object. *)
  time_partitioning : time_partitioning option;  (** Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified. *)
  use_legacy_sql : bool option;  (** Optional. Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true. If set to false, the query uses BigQuery's \[GoogleSQL\](https://docs.cloud.google.com/bigquery/docs/introduction-sql). When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false. *)
  use_query_cache : bool option;  (** Optional. Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified. The default value is true. *)
  user_defined_function_resources : user_defined_function_resource list option;  (** Describes user-defined function resources used in the query. *)
  write_disposition : string option;  (** Optional. Specifies the action that occurs if the destination table already exists. The following values are supported: * WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the data, removes the constraints, and uses the schema from the query result. * WRITE_TRUNCATE_DATA: If the table already exists, BigQuery overwrites the data, but keeps the constraints and schema of the existing table. * WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. * WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion. *)
  write_incremental_results : bool option;  (** Optional. This is only supported for a SELECT query using a temporary table. If set, the query is allowed to write results incrementally to the temporary result table. This may incur a performance penalty. This option cannot be used with Legacy SQL. This feature is not yet available. *)
}

(** JobConfigurationTableCopy configures a job that copies data from one table to another. For more information on copying tables, see \[Copy a table\](https://cloud.google.com/bigquery/docs/managing-tables#copy-table). *)
and job_configuration_table_copy = {
  create_disposition : string option;  (** Optional. Specifies whether the job is allowed to create new tables. The following values are supported: * CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. * CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion. *)
  destination_encryption_configuration : encryption_configuration option;  (** Custom encryption configuration (e.g., Cloud KMS keys). *)
  destination_expiration_time : string option;  (** Optional. The time when the destination table expires. Expired tables will be deleted and their storage reclaimed. *)
  destination_table : table_reference option;  (** \[Required\] The destination table. *)
  operation_type : [ `Operation_type_unspecified | `Copy | `Snapshot | `Restore | `Clone | `Unrecognized of string ] option;  (** Optional. Supported operation types in table copy job. *)
  source_table : table_reference option;  (** \[Pick one\] Source table to copy. *)
  source_tables : table_reference list option;  (** \[Pick one\] Source tables to copy. *)
  write_disposition : string option;  (** Optional. Specifies the action that occurs if the destination table already exists. The following values are supported: * WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema and table constraints from the source table. * WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. * WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion. *)
}

(** Reason about why a Job was created from a \[`jobs.query`\](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs/query) method when used with `JOB_CREATION_OPTIONAL` Job creation mode. For \[`jobs.insert`\](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs/insert) method calls it will always be `REQUESTED`. *)
and job_creation_reason = {
  code : [ `Code_unspecified | `Requested | `Long_running | `Large_results | `Other | `Unrecognized of string ] option;  (** Output only. Specifies the high level reason why a Job was created. *)
}

and job_list_jobs_item = {
  configuration : job_configuration option;  (** Required. Describes the job configuration. *)
  error_result : error_proto option;  (** A result object that will be present only if the job has failed. *)
  id : string option;  (** Unique opaque ID of the job. *)
  job_reference : job_reference option;  (** Unique opaque ID of the job. *)
  kind : string option;  (** The resource type. *)
  principal_subject : string option;  (** \[Full-projection-only\] String representation of identity of requesting party. Populated for both first- and third-party identities. Only present for APIs that support third-party identities. *)
  state : string option;  (** Running state of the job. When the state is DONE, errorResult can be checked to determine whether the job succeeded or failed. *)
  statistics : job_statistics option;  (** Output only. Information about the job, including starting time and ending time of the job. *)
  status : job_status option;  (** \[Full-projection-only\] Describes the status of this job. *)
  user_email : string option;  (** \[Full-projection-only\] Email address of the user who ran the job. *)
}

(** JobList is the response format for a jobs.list call. *)
and job_list = {
  etag : string option;  (** A hash of this page of results. *)
  jobs : job_list_jobs_item list option;  (** List of jobs that were requested. *)
  kind : string option;  (** The resource type of the response. *)
  next_page_token : string option;  (** A token to request the next page of results. *)
  unreachable : string list option;  (** A list of skipped locations that were unreachable. For more information about BigQuery locations, see: https://cloud.google.com/bigquery/docs/locations. Example: 'europe-west5' *)
}

(** A job reference is a fully qualified identifier for referring to a job. *)
and job_reference = {
  job_id : string option;  (** Required. The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters. *)
  location : string option;  (** Optional. The geographic location of the job. The default value is US. For more information about BigQuery locations, see: https://cloud.google.com/bigquery/docs/locations *)
  project_id : string option;  (** Required. The ID of the project containing this job. *)
}

and job_statistics_reservation_usage_item = {
  name : string option;  (** Reservation name or 'unreserved' for on-demand resource usage and multi-statement queries. *)
  slot_ms : string option;  (** Total slot milliseconds used by the reservation for a particular job. *)
}

(** Statistics for a single job execution. *)
and job_statistics = {
  completion_ratio : float option;  (** Output only. \[TrustedTester\] Job progress (0.0 -> 1.0) for LOAD and EXTRACT jobs. *)
  copy : job_statistics5 option;  (** Output only. Statistics for a copy job. *)
  creation_time : string option;  (** Output only. Creation time of this job, in milliseconds since the epoch. This field will be present on all jobs. *)
  data_masking_statistics : data_masking_statistics option;  (** Output only. Statistics for data-masking. Present only for query and extract jobs. *)
  edition : [ `Reservation_edition_unspecified | `Standard | `Enterprise | `Enterprise_plus | `Unrecognized of string ] option;  (** Output only. Name of edition corresponding to the reservation for this job at the time of this update. *)
  end_time : string option;  (** Output only. End time of this job, in milliseconds since the epoch. This field will be present whenever a job is in the DONE state. *)
  extract : job_statistics4 option;  (** Output only. Statistics for an extract job. *)
  final_execution_duration_ms : string option;  (** Output only. The duration in milliseconds of the execution of the final attempt of this job, as BigQuery may internally re-attempt to execute the job. *)
  global_query_remote_regions : string list option;  (** Output only. The list of remote regions from which a global query accesses data. This field is populated only for parent global query jobs in the primary execution region. It is empty for child global query jobs and single-region queries. For more information, see \[Global queries\](https://cloud.google.com/bigquery/docs/global-queries). *)
  load : job_statistics3 option;  (** Output only. Statistics for a load job. *)
  num_child_jobs : string option;  (** Output only. Number of child jobs executed. *)
  parent_global_query_job : job_reference option;  (** Output only. Reference to the parent global query job, if this is a child global query job. This field is populated only for child global query jobs (remote subqueries or cross-region table copy jobs) executed in remote regions on behalf of a global query. It contains the project ID, job ID, and location of the parent global query job. It is unset for parent global query jobs and single-region queries. For more information, see \[Global queries\](https://cloud.google.com/bigquery/docs/global-queries). *)
  parent_job_id : string option;  (** Output only. If this is a child job, specifies the job ID of the parent. *)
  query : job_statistics2 option;  (** Output only. Statistics for a query job. *)
  quota_deferments : string list option;  (** Output only. Quotas which delayed this job's start time. *)
  reservation_group_path : string list option;  (** Output only. The reservation group path of the reservation assigned to this job. This field has a limit of 10 nested reservation groups. This is to maintain consistency between reservations info schema and jobs info schema. The first reservation group is the root reservation group and the last is the leaf or lowest level reservation group. *)
  reservation_usage : job_statistics_reservation_usage_item list option;  (** Output only. Job resource usage breakdown by reservation. This field reported misleading information and will no longer be populated. *)
  reservation_id : string option;  (** Output only. Name of the primary reservation assigned to this job. Note that this could be different than reservations reported in the reservation usage field if parent reservations were used to execute this job. *)
  row_level_security_statistics : row_level_security_statistics option;  (** Output only. Statistics for row-level security. Present only for query and extract jobs. *)
  script_statistics : script_statistics option;  (** Output only. If this a child job of a script, specifies information about the context of this job within the script. *)
  session_info : session_info option;  (** Output only. Information of the session if this job is part of one. *)
  start_time : string option;  (** Output only. Start time of this job, in milliseconds since the epoch. This field will be present when the job transitions from the PENDING state to either RUNNING or DONE. *)
  total_bytes_processed : string option;  (** Output only. Total bytes processed for the job. *)
  total_slot_ms : string option;  (** Output only. Slot-milliseconds for the job. *)
  transaction_info : transaction_info option;  (** Output only. \[Alpha\] Information of the multi-statement transaction if this job is part of one. This property is only expected on a child job or a job that is in a session. A script parent job is not part of the transaction started in the script. *)
}

and job_statistics2_reservation_usage_item = {
  name : string option;  (** Reservation name or 'unreserved' for on-demand resource usage and multi-statement queries. *)
  slot_ms : string option;  (** Total slot milliseconds used by the reservation for a particular job. *)
}

(** Statistics for a query job. *)
and job_statistics2 = {
  bi_engine_statistics : bi_engine_statistics option;  (** Output only. BI Engine specific Statistics. *)
  billing_tier : int option;  (** Output only. Billing tier for the job. This is a BigQuery-specific concept which is not related to the Google Cloud notion of 'free tier'. The value here is a measure of the query's resource consumption relative to the amount of data scanned. For on-demand queries, the limit is 100, and all queries within this limit are billed at the standard on-demand rates. On-demand queries that exceed this limit will fail with a billingTierLimitExceeded error. *)
  cache_hit : bool option;  (** Output only. Whether the query result was fetched from the query cache. *)
  dcl_target_dataset : dataset_reference option;  (** Output only. Referenced dataset for DCL statement. *)
  dcl_target_table : table_reference option;  (** Output only. Referenced table for DCL statement. *)
  dcl_target_view : table_reference option;  (** Output only. Referenced view for DCL statement. *)
  ddl_affected_row_access_policy_count : string option;  (** Output only. The number of row access policies affected by a DDL statement. Present only for DROP ALL ROW ACCESS POLICIES queries. *)
  ddl_destination_table : table_reference option;  (** Output only. The table after rename. Present only for ALTER TABLE RENAME TO query. *)
  ddl_operation_performed : string option;  (** Output only. The DDL operation performed, possibly dependent on the pre-existence of the DDL target. *)
  ddl_target_dataset : dataset_reference option;  (** Output only. The DDL target dataset. Present only for CREATE/ALTER/DROP SCHEMA(dataset) queries. *)
  ddl_target_routine : routine_reference option;  (** Output only. \[Beta\] The DDL target routine. Present only for CREATE/DROP FUNCTION/PROCEDURE queries. *)
  ddl_target_row_access_policy : row_access_policy_reference option;  (** Output only. The DDL target row access policy. Present only for CREATE/DROP ROW ACCESS POLICY queries. *)
  ddl_target_table : table_reference option;  (** Output only. The DDL target table. Present only for CREATE/DROP TABLE/VIEW and DROP ALL ROW ACCESS POLICIES queries. *)
  dml_stats : dml_statistics option;  (** Output only. Detailed statistics for DML statements INSERT, UPDATE, DELETE, MERGE or TRUNCATE. *)
  estimated_bytes_processed : string option;  (** Output only. The original estimate of bytes processed for the job. *)
  export_data_statistics : export_data_statistics option;  (** Output only. Stats for EXPORT DATA statement. *)
  external_service_costs : external_service_cost list option;  (** Output only. Job cost breakdown as bigquery internal cost and external service costs. *)
  gen_ai_stats : gen_ai_stats option;  (** Output only. Statistics related to GenAI usage in the query. *)
  incremental_result_stats : incremental_result_stats option;  (** Output only. Statistics related to incremental query results, if enabled for the query. This feature is not yet available. *)
  load_query_statistics : load_query_statistics option;  (** Output only. Statistics for a LOAD query. *)
  materialized_view_statistics : materialized_view_statistics option;  (** Output only. Statistics of materialized views of a query job. *)
  metadata_cache_statistics : metadata_cache_statistics option;  (** Output only. Statistics of metadata cache usage in a query for BigLake tables. *)
  ml_statistics : ml_statistics option;  (** Output only. Statistics of a BigQuery ML training job. *)
  model_training : big_query_model_training option;  (** Deprecated. *)
  model_training_current_iteration : int option;  (** Deprecated. *)
  model_training_expected_total_iteration : string option;  (** Deprecated. *)
  num_dml_affected_rows : string option;  (** Output only. The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE. *)
  object_storage_stats : object_storage_stats list option;  (** Output only. Storage and caching statistics per cloud provider for queries over object storage. *)
  performance_insights : performance_insights option;  (** Output only. Performance insights. *)
  query_info : query_info option;  (** Output only. Query optimization information for a QUERY job. *)
  query_plan : explain_query_stage list option;  (** Output only. Describes execution plan for the query. *)
  referenced_logical_views : table_reference list option;  (** Output only. Referenced logical views for the job. *)
  referenced_property_graphs : property_graph_reference list option;  (** Output only. Referenced property graphs for the job. Queries that reference more than 50 property graphs will not have a complete list. *)
  referenced_routines : routine_reference list option;  (** Output only. Referenced routines for the job. *)
  referenced_tables : table_reference list option;  (** Output only. Referenced tables for the job. *)
  reservation_usage : job_statistics2_reservation_usage_item list option;  (** Output only. Job resource usage breakdown by reservation. This field reported misleading information and will no longer be populated. *)
  schema : table_schema option;  (** Output only. The schema of the results. Present only for successful dry run of non-legacy SQL queries. *)
  search_statistics : search_statistics option;  (** Output only. Search query specific statistics. *)
  spark_statistics : spark_statistics option;  (** Output only. Statistics of a Spark procedure job. *)
  statement_type : string option;  (** Output only. The type of query statement, if valid. Possible values: * `SELECT`: \[`SELECT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax#select_list) statement. * `ASSERT`: \[`ASSERT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/debugging-statements#assert) statement. * `INSERT`: \[`INSERT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/dml-syntax#insert_statement) statement. * `UPDATE`: \[`UPDATE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/dml-syntax#update_statement) statement. * `DELETE`: \[`DELETE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language) statement. * `MERGE`: \[`MERGE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language) statement. * `TRUNCATE_TABLE`: \[`TRUNCATE TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/dml-syntax#truncate_table_statement) statement. * `CREATE_TABLE`: \[`CREATE TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_table_statement) statement, without `AS SELECT`. * `CREATE_TABLE_AS_SELECT`: \[`CREATE TABLE AS SELECT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_table_statement) statement. * `CREATE_VIEW`: \[`CREATE VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_view_statement) statement. * `CREATE_MODEL`: \[`CREATE MODEL`\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create#create_model_statement) statement. * `CREATE_MATERIALIZED_VIEW`: \[`CREATE MATERIALIZED VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_materialized_view_statement) statement. * `CREATE_FUNCTION`: \[`CREATE FUNCTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_function_statement) statement. * `CREATE_TABLE_FUNCTION`: \[`CREATE TABLE FUNCTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_table_function_statement) statement. * `CREATE_PROCEDURE`: \[`CREATE PROCEDURE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_procedure) statement. * `CREATE_ROW_ACCESS_POLICY`: \[`CREATE ROW ACCESS POLICY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_row_access_policy_statement) statement. * `CREATE_SCHEMA`: \[`CREATE SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_schema_statement) statement. * `CREATE_EXTERNAL_SCHEMA`: \[`CREATE EXTERNAL SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_external_schema_statement) statement. * `CREATE_EXTERNAL_TABLE`: \[`CREATE EXTERNAL TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_external_table_statement) statement. * `CREATE_SNAPSHOT_TABLE`: \[`CREATE SNAPSHOT TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_snapshot_table_statement) statement. * `CREATE_SEARCH_INDEX`: \[`CREATE SEARCH INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_search_index_statement) statement. * `CREATE_VECTOR_INDEX`: \[`CREATE VECTOR INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_vector_index_statement) statement. * `CREATE_CONNECTION`: \[`CREATE CONNECTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_connection_statement) statement. * `CREATE_DATA_POLICY`: \[`CREATE DATA_POLICY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_data_policy_statement) statement. * `CREATE_PROPERTY_GRAPH`: \[`CREATE PROPERTY GRAPH`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/graph-schema-statements#gql_create_graph) statement. * `CREATE_CAPACITY`: \[`CREATE CAPACITY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_capacity_statement) statement. * `CREATE_RESERVATION`: \[`CREATE RESERVATION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_reservation_statement) statement. * `CREATE_ASSIGNMENT`: \[`CREATE ASSIGNMENT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_assignment_statement) statement. * `DROP_TABLE`: \[`DROP TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_table_statement) statement. * `DROP_EXTERNAL_TABLE`: \[`DROP EXTERNAL TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_external_table_statement) statement. * `DROP_VIEW`: \[`DROP VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_view_statement) statement. * `DROP_MODEL`: \[`DROP MODEL`\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-drop-model) statement. * `DROP_MATERIALIZED_VIEW`: \[`DROP MATERIALIZED VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_materialized_view_statement) statement. * `DROP_FUNCTION`: \[`DROP FUNCTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_function_statement) statement. * `DROP_TABLE_FUNCTION`: \[`DROP TABLE FUNCTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_table_function) statement. * `DROP_PROCEDURE`: \[`DROP PROCEDURE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_procedure_statement) statement. * `DROP_SEARCH_INDEX`: \[`DROP SEARCH INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_search_index) statement. * `DROP_VECTOR_INDEX`: \[`DROP VECTOR INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_vector_index) statement. * `DROP_SCHEMA`: \[`DROP SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_schema_statement) statement. * `UNDROP_SCHEMA`: \[`UNDROP SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#undrop_schema_statement) statement. * `DROP_SNAPSHOT_TABLE`: \[`DROP SNAPSHOT TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_snapshot_table_statement) statement. * `DROP_ROW_ACCESS_POLICY`: \[`DROP \[ALL\] ROW ACCESS POLICY|POLICIES`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_row_access_policy_statement) statement. * `DROP_CONNECTION`: \[`DROP CONNECTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_connection_statement) statement. * `DROP_DATA_POLICY`: \[`DROP DATA_POLICY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_data_policy) statement. * `DROP_PROPERTY_GRAPH`: \[`DROP PROPERTY GRAPH`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/graph-schema-statements#gql_drop_graph) statement. * `DROP_CAPACITY`: \[`DROP CAPACITY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_capacity_statement) statement. * `DROP_RESERVATION`: \[`DROP RESERVATION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_reservation_statement) statement. * `DROP_ASSIGNMENT`: \[`DROP ASSIGNMENT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_assignment_statement) statement. * `ALTER_TABLE`: \[`ALTER TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_table_set_options_statement) statement. * `ALTER_VIEW`: \[`ALTER VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_view_set_options_statement) statement. * `ALTER_MATERIALIZED_VIEW`: \[`ALTER MATERIALIZED VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_materialized_view_set_options_statement) statement. * `ALTER_SCHEMA`: \[`ALTER SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_schema_set_options_statement) statement. * `ALTER_MODEL`: \[`ALTER MODEL`\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-alter-model) statement. * `ALTER_SEARCH_INDEX`: \[`ALTER SEARCH INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_search_index_statement) statement. * `ALTER_VECTOR_INDEX`: \[`ALTER VECTOR INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_vector_index_rebuild_statement) statement. * `ALTER_CONNECTION`: \[`ALTER CONNECTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_connection_set_options_statement) statement. * `ALTER_DATA_POLICY`: \[`ALTER DATA_POLICY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_data_policy_statement) statement. * `ALTER_PROJECT`: \[`ALTER PROJECT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_project_set_options_statement) statement. * `ALTER_ORGANIZATION`: \[`ALTER ORGANIZATION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_organization_set_options_statement) statement. * `ALTER_BI_CAPACITY`: \[`ALTER BI_CAPACITY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_bi_capacity_set_options_statement) statement. * `ALTER_CAPACITY`: \[`ALTER CAPACITY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_capacity_set_options_statement) statement. * `ALTER_RESERVATION`: \[`ALTER RESERVATION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_reservation_set_options_statement) statement. * `SCRIPT`: \[`SCRIPT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language) statement. * `CALL`: \[`CALL`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language#call) statement. * `BEGIN_TRANSACTION`: \[`BEGIN TRANSACTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language#begin_transaction) statement. * `COMMIT_TRANSACTION`: \[`COMMIT TRANSACTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language#commit_transaction) statement. * `ROLLBACK_TRANSACTION`: \[`ROLLBACK TRANSACTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language#rollback_transaction) statement. * `EXPORT_DATA`: \[`EXPORT DATA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/export-statements#export_data_statement) statement. * `EXPORT_MODEL`: \[`EXPORT MODEL`\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-export-model) statement. * `EXPORT_METADATA`: \[`EXPORT TABLE METADATA`\](https://cloud.google.com/bigquery/docs/biglake-iceberg-tables-in-bigquery) statement, for BigLake Iceberg tables. * `LOAD_DATA`: \[`LOAD DATA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/load-statements#load_data_statement) statement. * `GRANT_ON_SCHEMA`: \[`GRANT ... ON SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#grant_statement) statement. * `GRANT_ON_TABLE`: \[`GRANT ... ON TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#grant_statement) statement. Also used for `GRANT ... ON EXTERNAL TABLE`. * `GRANT_ON_VIEW`: \[`GRANT ... ON VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#grant_statement) statement. * `GRANT_ON_PROJECT`: \[`GRANT ... ON PROJECT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#grant_statement) statement. * `REVOKE_ON_SCHEMA`: \[`REVOKE ... ON SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#revoke_statement) statement. * `REVOKE_ON_TABLE`: \[`REVOKE ... ON TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#revoke_statement) statement. Also used for `REVOKE ... ON EXTERNAL TABLE`. * `REVOKE_ON_VIEW`: \[`REVOKE ... ON VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#revoke_statement) statement. * `REVOKE_ON_PROJECT`: \[`REVOKE ... ON PROJECT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#revoke_statement) statement. *)
  timeline : query_timeline_sample list option;  (** Output only. Describes a timeline of job execution. *)
  total_bytes_billed : string option;  (** Output only. If the project is configured to use on-demand pricing, then this field contains the total bytes billed for the job. If the project is configured to use flat-rate pricing, then you are not billed for bytes and this field is informational only. *)
  total_bytes_processed : string option;  (** Output only. Total bytes processed for the job. *)
  total_bytes_processed_accuracy : string option;  (** Output only. For dry-run jobs, totalBytesProcessed is an estimate and this field specifies the accuracy of the estimate. Possible values can be: UNKNOWN: accuracy of the estimate is unknown. PRECISE: estimate is precise. LOWER_BOUND: estimate is lower bound of what the query would cost. UPPER_BOUND: estimate is upper bound of what the query would cost. *)
  total_partitions_processed : string option;  (** Output only. Total number of partitions processed from all partitioned tables referenced in the job. *)
  total_services_sku_slot_ms : string option;  (** Output only. Total slot milliseconds for the job that ran on external services and billed on the services SKU. This field is only populated for jobs that have external service costs, and is the total of the usage for costs whose billing method is `'SERVICES_SKU'`. *)
  total_slot_ms : string option;  (** Output only. Slot-milliseconds for the job. *)
  transferred_bytes : string option;  (** Output only. Total bytes transferred for BigQuery Omni queries from the remote cloud back to Google Cloud. This tracks data movement over Google-managed connections (like query results). It doesn't include input data read from the external data lake (for example, S3) because that data stays within the remote cloud. *)
  undeclared_query_parameters : query_parameter list option;  (** Output only. GoogleSQL only: list of undeclared query parameters detected during a dry run validation. *)
  vector_search_statistics : vector_search_statistics option;  (** Output only. Vector Search query specific statistics. *)
}

(** Statistics for a load job. *)
and job_statistics3 = {
  bad_records : string option;  (** Output only. The number of bad records encountered. Note that if the job has failed because of more bad records encountered than the maximum allowed in the load job configuration, then this number can be less than the total number of bad records present in the input data. *)
  input_file_bytes : string option;  (** Output only. Number of bytes of source data in a load job. *)
  input_files : string option;  (** Output only. Number of source files in a load job. *)
  output_bytes : string option;  (** Output only. Size of the loaded data in bytes. Note that while a load job is in the running state, this value may change. *)
  output_rows : string option;  (** Output only. Number of rows imported in a load job. Note that while an import job is in the running state, this value may change. *)
  timeline : query_timeline_sample list option;  (** Output only. Describes a timeline of job execution. *)
}

(** Statistics for an extract job. *)
and job_statistics4 = {
  destination_uri_file_counts : string list option;  (** Output only. Number of files per destination URI or URI pattern specified in the extract configuration. These values will be in the same order as the URIs specified in the 'destinationUris' field. *)
  input_bytes : string option;  (** Output only. Number of user bytes extracted into the result. This is the byte count as computed by BigQuery for billing purposes and doesn't have any relationship with the number of actual result bytes extracted in the desired format. *)
  timeline : query_timeline_sample list option;  (** Output only. Describes a timeline of job execution. *)
}

(** Statistics for a copy job. *)
and job_statistics5 = {
  copied_logical_bytes : string option;  (** Output only. Number of logical bytes copied to the destination table. *)
  copied_rows : string option;  (** Output only. Number of rows copied to the destination table. *)
  remote_destination_region : string option;  (** Output only. Destination region for a cross-region copy job. Not set for in-region copy jobs. *)
}

and job_status = {
  error_result : error_proto option;  (** Output only. Final error result of the job. If present, indicates that the job has completed and was unsuccessful. *)
  errors : error_proto list option;  (** Output only. The first errors encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has not completed or was unsuccessful. *)
  state : string option;  (** Output only. Running state of the job. Valid states include 'PENDING', 'RUNNING', and 'DONE'. *)
}

(** Represents privacy policy associated with 'join restrictions'. Join restriction gives data providers the ability to enforce joins on the 'join_allowed_columns' when data is queried from a privacy protected view. *)
and join_restriction_policy = {
  join_allowed_columns : string list option;  (** Optional. The only columns that joins are allowed on. This field is must be specified for join_conditions JOIN_ANY and JOIN_ALL and it cannot be set for JOIN_BLOCKED. *)
  join_condition : [ `Join_condition_unspecified | `Join_any | `Join_all | `Join_not_required | `Join_blocked | `Unrecognized of string ] option;  (** Optional. Specifies if a join is required or not on queries for the view. Default is JOIN_CONDITION_UNSPECIFIED. *)
}

(** Represents a single JSON object. *)
and json_object = (string * json_value) list

(** Json Options for load and make external tables. *)
and json_options = {
  encoding : string option;  (** Optional. The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8. *)
}

and json_value = Yojson.Safe.t

(** Metadata about the Linked Dataset. *)
and linked_dataset_metadata = {
  link_state : [ `Link_state_unspecified | `Linked | `Unlinked | `Unrecognized of string ] option;  (** Output only. Specifies whether Linked Dataset is currently in a linked state or not. *)
}

(** A dataset source type which refers to another BigQuery dataset. *)
and linked_dataset_source = {
  source_dataset : dataset_reference option;  (** The source dataset reference contains project numbers and not project ids. *)
}

(** Response format for a single page when listing BigQuery ML models. *)
and list_models_response = {
  models : model list option;  (** Models in the requested dataset. Only the following fields are populated: model_reference, model_type, creation_time, last_modified_time and labels. *)
  next_page_token : string option;  (** A token to request the next page of results. *)
}

(** Describes the format of a single result page when listing routines. *)
and list_routines_response = {
  next_page_token : string option;  (** A token to request the next page of results. *)
  routines : routine list option;  (** Routines in the requested dataset. Unless read_mask is set in the request, only the following fields are populated: etag, project_id, dataset_id, routine_id, routine_type, creation_time, last_modified_time, language, and remote_function_options. *)
}

(** Response message for the ListRowAccessPolicies method. *)
and list_row_access_policies_response = {
  next_page_token : string option;  (** A token to request the next page of results. *)
  row_access_policies : row_access_policy list option;  (** Row access policies on the requested table. *)
}

(** Statistics for a LOAD query. *)
and load_query_statistics = {
  bad_records : string option;  (** Output only. The number of bad records encountered while processing a LOAD query. Note that if the job has failed because of more bad records encountered than the maximum allowed in the load job configuration, then this number can be less than the total number of bad records present in the input data. *)
  bytes_transferred : string option;  (** Output only. This field is deprecated. The number of bytes of source data copied over the network for a `LOAD` query. `transferred_bytes` has the canonical value for physical transferred bytes, which is used for BigQuery Omni billing. *)
  input_file_bytes : string option;  (** Output only. Number of bytes of source data in a LOAD query. *)
  input_files : string option;  (** Output only. Number of source files in a LOAD query. *)
  output_bytes : string option;  (** Output only. Size of the loaded data in bytes. Note that while a LOAD query is in the running state, this value may change. *)
  output_rows : string option;  (** Output only. Number of rows imported in a LOAD query. Note that while a LOAD query is in the running state, this value may change. *)
}

(** BigQuery-specific metadata about a location. This will be set on google.cloud.location.Location.metadata in Cloud Location API responses. *)
and location_metadata = {
  legacy_location_id : string option;  (** The legacy BigQuery location ID, e.g. “EU” for the “europe” location. This is for any API consumers that need the legacy “US” and “EU” locations. *)
}

(** A materialized view considered for a query job. *)
and materialized_view = {
  chosen : bool option;  (** Whether the materialized view is chosen for the query. A materialized view can be chosen to rewrite multiple parts of the same query. If a materialized view is chosen to rewrite any part of the query, then this field is true, even if the materialized view was not chosen to rewrite others parts. *)
  estimated_bytes_saved : string option;  (** If present, specifies a best-effort estimation of the bytes saved by using the materialized view rather than its base tables. *)
  rejected_reason : [ `Rejected_reason_unspecified | `No_data | `Cost | `Base_table_truncated | `Base_table_data_change | `Base_table_partition_expiration_change | `Base_table_expired_partition | `Base_table_incompatible_metadata_change | `Time_zone | `Out_of_time_travel_window | `Base_table_fine_grained_security_policy | `Base_table_too_stale | `Unrecognized of string ] option;  (** If present, specifies the reason why the materialized view was not chosen for the query. *)
  table_reference : table_reference option;  (** The candidate materialized view. *)
}

(** Definition and configuration of a materialized view. *)
and materialized_view_definition = {
  allow_non_incremental_definition : bool option;  (** Optional. This option declares the intention to construct a materialized view that isn't refreshed incrementally. Non-incremental materialized views support an expanded range of SQL queries. The `allow_non_incremental_definition` option can't be changed after the materialized view is created. *)
  enable_refresh : bool option;  (** Optional. Enable automatic refresh of the materialized view when the base table is updated. The default value is 'true'. *)
  last_refresh_time : string option;  (** Output only. The time when this materialized view was last refreshed, in milliseconds since the epoch. *)
  max_staleness : string option;  (** \[Optional\] Max staleness of data that could be returned when materizlized view is queried (formatted as Google SQL Interval type). *)
  query : string option;  (** Required. A query whose results are persisted. *)
  refresh_interval_ms : string option;  (** Optional. The maximum frequency at which this materialized view will be refreshed. The default value is '1800000' (30 minutes). *)
}

(** Statistics of materialized views considered in a query job. *)
and materialized_view_statistics = {
  materialized_view : materialized_view list option;  (** Materialized views considered for the query job. Only certain materialized views are used. For a detailed list, see the child message. If many materialized views are considered, then the list might be incomplete. *)
}

(** Status of a materialized view. The last refresh timestamp status is omitted here, but is present in the MaterializedViewDefinition message. *)
and materialized_view_status = {
  last_refresh_status : error_proto option;  (** Output only. Error result of the last automatic refresh. If present, indicates that the last automatic refresh was unsuccessful. *)
  refresh_watermark : string option;  (** Output only. Refresh watermark of materialized view. The base tables' data were collected into the materialized view cache until this time. *)
}

(** Column Metadata Index staleness detailed infnormation. *)
and metadata_cache_staleness_insight = {
  avg_previous_staleness_ms : string option;  (** Output only. Average column metadata index staleness of previous runs with the same query hash. *)
  staleness_percentage_increase : float option;  (** Output only. The percent increase in staleness between the current job and the average staleness of previous jobs with the same query hash. *)
}

(** Statistics for metadata caching in queried tables. *)
and metadata_cache_statistics = {
  table_metadata_cache_usage : table_metadata_cache_usage list option;  (** Set for the Metadata caching eligible tables referenced in the query. *)
}

(** Job statistics specific to a BigQuery ML training job. *)
and ml_statistics = {
  hparam_trials : hparam_tuning_trial list option;  (** Output only. Trials of a \[hyperparameter tuning job\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) sorted by trial_id. *)
  iteration_results : iteration_result list option;  (** Results for all completed iterations. Empty for \[hyperparameter tuning jobs\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview). *)
  max_iterations : string option;  (** Output only. Maximum number of iterations specified as max_iterations in the 'CREATE MODEL' query. The actual number of iterations may be less than this number due to early stop. *)
  model_type : [ `Model_type_unspecified | `Linear_regression | `Logistic_regression | `Kmeans | `Matrix_factorization | `Dnn_classifier | `Tensorflow | `Dnn_regressor | `Xgboost | `Boosted_tree_regressor | `Boosted_tree_classifier | `Arima | `Automl_regressor | `Automl_classifier | `Pca | `Dnn_linear_combined_classifier | `Dnn_linear_combined_regressor | `Autoencoder | `Arima_plus | `Arima_plus_xreg | `Random_forest_regressor | `Random_forest_classifier | `Tensorflow_lite | `Onnx | `Transform_only | `Contribution_analysis | `Unrecognized of string ] option;  (** Output only. The type of the model that is being trained. *)
  training_type : [ `Training_type_unspecified | `Single_training | `Hparam_tuning | `Unrecognized of string ] option;  (** Output only. Training type of the job. *)
}

and model = {
  best_trial_id : string option;  (** The best trial_id across all training runs. *)
  creation_time : string option;  (** Output only. The time when this model was created, in millisecs since the epoch. *)
  default_trial_id : string option;  (** Output only. The default trial_id to use in TVFs when the trial_id is not passed in. For single-objective \[hyperparameter tuning\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, this is the best trial ID. For multi-objective \[hyperparameter tuning\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, this is the smallest trial ID among all Pareto optimal trials. *)
  description : string option;  (** Optional. A user-friendly description of this model. *)
  encryption_configuration : encryption_configuration option;  (** Custom encryption configuration (e.g., Cloud KMS keys). This shows the encryption configuration of the model data while stored in BigQuery storage. This field can be used with PatchModel to update encryption key for an already encrypted model. *)
  etag : string option;  (** Output only. A hash of this resource. *)
  expiration_time : string option;  (** Optional. The time when this model expires, in milliseconds since the epoch. If not present, the model will persist indefinitely. Expired models will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created models. *)
  feature_columns : standard_sql_field list option;  (** Output only. Input feature columns for the model inference. If the model is trained with TRANSFORM clause, these are the input of the TRANSFORM clause. *)
  friendly_name : string option;  (** Optional. A descriptive name for this model. *)
  hparam_search_spaces : hparam_search_spaces option;  (** Output only. All hyperparameter search spaces in this model. *)
  hparam_trials : hparam_tuning_trial list option;  (** Output only. Trials of a \[hyperparameter tuning\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) model sorted by trial_id. *)
  label_columns : standard_sql_field list option;  (** Output only. Label columns that were used to train this model. The output of the model will have a 'predicted_' prefix to these columns. *)
  labels : (string * string) list option;  (** The labels associated with this model. You can use these to organize and group your models. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key. *)
  last_modified_time : string option;  (** Output only. The time when this model was last modified, in millisecs since the epoch. *)
  location : string option;  (** Output only. The geographic location where the model resides. This value is inherited from the dataset. *)
  model_reference : model_reference option;  (** Required. Unique identifier for this model. *)
  model_type : [ `Model_type_unspecified | `Linear_regression | `Logistic_regression | `Kmeans | `Matrix_factorization | `Dnn_classifier | `Tensorflow | `Dnn_regressor | `Xgboost | `Boosted_tree_regressor | `Boosted_tree_classifier | `Arima | `Automl_regressor | `Automl_classifier | `Pca | `Dnn_linear_combined_classifier | `Dnn_linear_combined_regressor | `Autoencoder | `Arima_plus | `Arima_plus_xreg | `Random_forest_regressor | `Random_forest_classifier | `Tensorflow_lite | `Onnx | `Transform_only | `Contribution_analysis | `Unrecognized of string ] option;  (** Output only. Type of the model resource. *)
  optimal_trial_ids : string list option;  (** Output only. For single-objective \[hyperparameter tuning\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, it only contains the best trial. For multi-objective \[hyperparameter tuning\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, it contains all Pareto optimal trials sorted by trial_id. *)
  remote_model_info : remote_model_info option;  (** Output only. Remote model info *)
  training_runs : training_run list option;  (** Information for all training runs in increasing order of start_time. *)
  transform_columns : transform_column list option;  (** Output only. This field will be populated if a TRANSFORM clause was used to train a model. TRANSFORM clause (if used) takes feature_columns as input and outputs transform_columns. transform_columns then are used to train the model. *)
}

and model_definition_model_options = {
  labels : string list option;
  loss_type : string option;
  model_type : string option;
}

and model_definition = {
  model_options : model_definition_model_options option;  (** Deprecated. *)
  training_runs : bqml_training_run list option;  (** Deprecated. *)
}

(** Options related to model extraction. *)
and model_extract_options = {
  trial_id : string option;  (** The 1-based ID of the trial to be exported from a hyperparameter tuning model. If not specified, the trial with id = \[Model\](https://cloud.google.com/bigquery/docs/reference/rest/v2/models#resource:-model).defaultTrialId is exported. This field is ignored for models not trained with hyperparameter tuning. *)
}

(** Id path of a model. *)
and model_reference = {
  dataset_id : string option;  (** Required. The ID of the dataset containing this model. *)
  model_id : string option;  (** Required. The ID of the model. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters. *)
  project_id : string option;  (** Required. The ID of the project containing this model. *)
}

(** Evaluation metrics for multi-class classification/classifier models. *)
and multi_class_classification_metrics = {
  aggregate_classification_metrics : aggregate_classification_metrics option;  (** Aggregate classification metrics. *)
  confusion_matrix_list : confusion_matrix list option;  (** Confusion matrix at different thresholds. *)
}

(** Storage and caching statistics for object storage. *)
and object_storage_stats = {
  cache_bytes_read : string option;  (** Total bytes read from the GCP Lakehouse-internal cache, avoiding an object storage read. *)
  cloud_provider : [ `Cloud_provider_unspecified | `Gcp | `Aws | `Azure | `Unrecognized of string ] option;  (** The cloud provider for this block of statistics. *)
  object_storage_bytes_read : string option;  (** Total bytes read directly from the cloud provider's storage. *)
}

(** Parquet Options for load and make external tables. *)
and parquet_options = {
  enable_list_inference : bool option;  (** Optional. Indicates whether to use schema inference specifically for Parquet LIST logical type. *)
  enum_as_string : bool option;  (** Optional. Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default. *)
  map_target_type : [ `Map_target_type_unspecified | `Array_of_struct | `Unrecognized of string ] option;  (** Optional. Indicates how to represent a Parquet map if present. *)
}

(** Partition skew detailed information. *)
and partition_skew = {
  skew_sources : skew_source list option;  (** Output only. Source stages which produce skewed data. *)
}

(** The partitioning column information. *)
and partitioned_column = {
  field : string option;  (** Required. The name of the partition column. *)
}

(** The partitioning information, which includes managed table, external table and metastore partitioned table partition information. *)
and partitioning_definition = {
  partitioned_column : partitioned_column list option;  (** Optional. Details about each partitioning column. This field is output only for all partitioning types other than metastore partitioned tables. BigQuery native tables only support 1 partitioning column. Other table types may support 0, 1 or more partitioning columns. For metastore partitioned tables, the order must match the definition order in the Hive Metastore, where it must match the physical layout of the table. For example, CREATE TABLE a_table(id BIGINT, name STRING) PARTITIONED BY (city STRING, state STRING). In this case the values must be \['city', 'state'\] in that order. *)
}

(** Performance insights for the job. *)
and performance_insights = {
  avg_previous_execution_ms : string option;  (** Output only. Average execution ms of previous runs. Indicates the job ran slow compared to previous executions. To find previous executions, use INFORMATION_SCHEMA tables and filter jobs with same query hash. *)
  stage_performance_change_insights : stage_performance_change_insight list option;  (** Output only. Query stage performance insights compared to previous runs, for diagnosing performance regression. *)
  stage_performance_standalone_insights : stage_performance_standalone_insight list option;  (** Output only. Standalone query stage performance insights, for exploring potential improvements. *)
  table_change_insights : table_change_insight list option;  (** Output only. Performance insights for table-level attributes that changed compared to previous runs. *)
}

(** An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` \{ 'bindings': \[ \{ 'role': 'roles/resourcemanager.organizationAdmin', 'members': \[ 'user:mike\@example.com', 'group:admins\@example.com', 'domain:google.com', 'serviceAccount:my-project-id\@appspot.gserviceaccount.com' \] \}, \{ 'role': 'roles/resourcemanager.organizationViewer', 'members': \[ 'user:eve\@example.com' \], 'condition': \{ 'title': 'expirable access', 'description': 'Does not grant access after Sep 2020', 'expression': 'request.time < timestamp('2020-10-01T00:00:00.000Z')', \} \} \], 'etag': 'BwWWja0YfJA=', 'version': 3 \} ``` **YAML example:** ``` bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the \[IAM documentation\](https://cloud.google.com/iam/docs/). *)
and policy = {
  audit_configs : audit_config list option;  (** Specifies cloud audit logging configuration for this policy. *)
  bindings : binding list option;  (** Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice\@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`. *)
  etag : string option;  (** `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. *)
  version : int option;  (** Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)
}

(** Principal component infos, used only for eigen decomposition based models, e.g., PCA. Ordered by explained_variance in the descending order. *)
and principal_component_info = {
  cumulative_explained_variance_ratio : float option;  (** The explained_variance is pre-ordered in the descending order to compute the cumulative explained variance ratio. *)
  explained_variance : float option;  (** Explained variance by this principal component, which is simply the eigenvalue. *)
  explained_variance_ratio : float option;  (** Explained_variance over the total explained variance. *)
  principal_component_id : string option;  (** Id of the principal component. *)
}

(** Represents privacy policy that contains the privacy requirements specified by the data owner. Currently, this is only supported on views. *)
and privacy_policy = {
  aggregation_threshold_policy : aggregation_threshold_policy option;  (** Optional. Policy used for aggregation thresholds. *)
  differential_privacy_policy : differential_privacy_policy option;  (** Optional. Policy used for differential privacy. *)
  join_restriction_policy : join_restriction_policy option;  (** Optional. Join restriction policy is outside of the one of policies, since this policy can be set along with other policies. This policy gives data providers the ability to enforce joins on the 'join_allowed_columns' when data is queried from a privacy protected view. *)
}

and project_list_projects_item = {
  friendly_name : string option;  (** A descriptive name for this project. A wrapper is used here because friendlyName can be set to the empty string. *)
  id : string option;  (** An opaque ID of this project. *)
  kind : string option;  (** The resource type. *)
  numeric_id : string option;  (** The numeric ID of this project. *)
  project_reference : project_reference option;  (** A unique reference to this project. *)
}

(** Response object of ListProjects *)
and project_list = {
  etag : string option;  (** A hash of the page of results. *)
  kind : string option;  (** The resource type of the response. *)
  next_page_token : string option;  (** Use this token to request the next page of results. *)
  projects : project_list_projects_item list option;  (** Projects to which the user has at least READ access. This field can be omitted if `totalItems` is 0. *)
  total_items : int option;  (** The total number of projects in the page. A wrapper is used here because the field should still be in the response when the value is 0. *)
}

(** A unique reference to a project. *)
and project_reference = {
  project_id : string option;  (** Required. ID of the project. Can be either the numeric ID or the assigned ID of the project. *)
}

(** Id path of a property graph. *)
and property_graph_reference = {
  dataset_id : string option;  (** Required. The ID of the dataset containing this property graph. *)
  project_id : string option;  (** Required. The ID of the project containing this property graph. *)
  property_graph_id : string option;  (** Required. The ID of the property graph. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters. *)
}

(** The column metadata index pruning statistics. *)
and pruning_stats = {
  post_cmeta_pruning_parallel_input_count : string option;  (** The number of parallel inputs matched. *)
  post_cmeta_pruning_partition_count : string option;  (** The number of partitions matched. *)
  pre_cmeta_pruning_parallel_input_count : string option;  (** The number of parallel inputs scanned. *)
}

(** Options for a user-defined Python function. *)
and python_options = {
  entry_point : string option;  (** Required. The name of the function defined in Python code as the entry point when the Python UDF is invoked. *)
  packages : string list option;  (** Optional. A list of Python package names along with versions to be installed. Example: \['pandas>=2.1', 'google-cloud-translate==3.11'\]. For more information, see \[Use third-party packages\](https://cloud.google.com/bigquery/docs/user-defined-functions-python#third-party-packages). *)
}

(** Query optimization information for a QUERY job. *)
and query_info = {
  optimization_details : (string * Yojson.Safe.t) list option;  (** Output only. Information about query optimizations. *)
}

(** A parameter given to a query. *)
and query_parameter = {
  name : string option;  (** Optional. If unset, this is a positional parameter. Otherwise, should be unique within a query. *)
  parameter_type : query_parameter_type option;  (** Required. The type of this parameter. *)
  parameter_value : query_parameter_value option;  (** Required. The value of this parameter. *)
}

and query_parameter_type_struct_types_item = {
  description : string option;  (** Optional. Human-oriented description of the field. *)
  name : string option;  (** Optional. The name of this field. *)
  type_ : query_parameter_type option;  (** Required. The type of this field. *)
}

(** The type of a query parameter. *)
and query_parameter_type = {
  array_type : query_parameter_type option;  (** Optional. The type of the array's elements, if this is an array. *)
  range_element_type : query_parameter_type option;  (** Optional. The element type of the range, if this is a range. *)
  struct_types : query_parameter_type_struct_types_item list option;  (** Optional. The types of the fields of this struct, in order, if this is a struct. *)
  timestamp_precision : string option;  (** Optional. Precision (maximum number of total digits in base 10) for seconds of TIMESTAMP type. Possible values include: * 6 (Default, for TIMESTAMP type with microsecond precision) * 12 (For TIMESTAMP type with picosecond precision) *)
  type_ : string option;  (** Required. The top level type of this field. *)
}

(** The value of a query parameter. *)
and query_parameter_value = {
  array_values : query_parameter_value list option;  (** Optional. The array values, if this is an array type. *)
  range_value : range_value option;  (** Optional. The range value, if this is a range type. *)
  struct_values : (string * query_parameter_value) list option;  (** The struct field values. *)
  value : string option;  (** Optional. The value of this value, if a simple scalar type. *)
}

(** Describes the format of the jobs.query request. *)
and query_request = {
  arrow_serialization_options : arrow_serialization_options option;  (** Optional. Options specific to the Apache Arrow output format. *)
  connection_properties : connection_property list option;  (** Optional. Connection properties which can modify the query behavior. *)
  continuous : bool option;  (** \[Optional\] Specifies whether the query should be executed as a continuous query. The default value is false. *)
  create_session : bool option;  (** Optional. If true, creates a new session using a randomly generated session_id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs query in non-session mode. The session location will be set to QueryRequest.location if it is present, otherwise it's set to the default location based on existing routing logic. *)
  default_dataset : dataset_reference option;  (** Optional. Specifies the default datasetId and projectId to assume for any unqualified table names in the query. If not set, all table names in the query string must be qualified in the format 'datasetId.tableId'. *)
  destination_encryption_configuration : encryption_configuration option;  (** Optional. Custom encryption configuration (e.g., Cloud KMS keys) *)
  dry_run : bool option;  (** Optional. If set to true, BigQuery doesn't run the job. Instead, if the query is valid, BigQuery returns statistics about the job such as how many bytes would be processed. If the query is invalid, an error returns. The default value is false. *)
  format_options : data_format_options option;  (** Optional. Output format adjustments. *)
  job_creation_mode : [ `Job_creation_mode_unspecified | `Job_creation_required | `Job_creation_optional | `Unrecognized of string ] option;  (** Optional. If not set, jobs are always required. If set, the query request will follow the behavior described JobCreationMode. *)
  job_timeout_ms : string option;  (** Optional. Job timeout in milliseconds. If this time limit is exceeded, BigQuery will attempt to stop a longer job, but may not always succeed in canceling it before the job completes. For example, a job that takes more than 60 seconds to complete has a better chance of being stopped than a job that takes 10 seconds to complete. This timeout applies to the query even if a job does not need to be created. *)
  kind : string option;  (** The resource type of the request. *)
  labels : (string * string) list option;  (** Optional. The labels associated with this query. Labels can be used to organize and group query jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label keys must start with a letter and each label in the list must have a different key. *)
  location : string option;  (** The geographic location where the job should run. For more information, see how to \[specify locations\](https://cloud.google.com/bigquery/docs/locations#specify_locations). *)
  max_results : int option;  (** Optional. The maximum number of rows of data to return per page of results. Setting this flag to a small value such as 1000 and then paging through results might improve reliability when the query result set is large. In addition to this limit, responses are also limited to 10 MB. By default, there is no maximum row count, and only the byte limit applies. *)
  max_slots : int option;  (** Optional. A target limit on the rate of slot consumption by this query. If set to a value > 0, BigQuery will attempt to limit the rate of slot consumption by this query to keep it below the configured limit, even if the query is eligible for more slots based on fair scheduling. The unused slots will be available for other jobs and queries to use. Note: This feature is not yet generally available. *)
  maximum_bytes_billed : string option;  (** Optional. Limits the bytes billed for this query. Queries with bytes billed above this limit will fail (without incurring a charge). If unspecified, the project default is used. *)
  parameter_mode : string option;  (** GoogleSQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (\@myparam) query parameters in this query. *)
  preserve_nulls : bool option;  (** This property is deprecated. *)
  query : string option;  (** Required. A query string to execute, using Google Standard SQL or legacy SQL syntax. Example: 'SELECT COUNT(f1) FROM myProjectId.myDatasetId.myTableId'. *)
  query_parameters : query_parameter list option;  (** Query parameters for GoogleSQL queries. *)
  query_results_format : [ `Query_results_format_unspecified | `Struct_encoding | `Arrow | `Unrecognized of string ] option;  (** Optional. The query results format. If the value is anything other than `STRUCT_ENCODING` or unspecified: * The schema of the results will be provided in `QueryResponse.results_schema` field. * The results of the first page will be provided in `QueryResponse.results` field. * The `QueryResponse.rows` will not be populated. * The `QueryResponse.schema` for `QueryResponse.rows` will also not be populated since it is the schema of the `QueryResponse.rows`. This feature is not yet available. *)
  request_id : string option;  (** Optional. A unique user provided identifier to ensure idempotent behavior for queries. Note that this is different from the job_id. It has the following properties: 1. It is case-sensitive, limited to up to 36 ASCII characters. A UUID is recommended. 2. Read only queries can ignore this token since they are nullipotent by definition. 3. For the purposes of idempotency ensured by the request_id, a request is considered duplicate of another only if they have the same request_id and are actually duplicates. When determining whether a request is a duplicate of another request, all parameters in the request that may affect the result are considered. For example, query, connection_properties, query_parameters, use_legacy_sql are parameters that affect the result and are considered when determining whether a request is a duplicate, but properties like timeout_ms don't affect the result and are thus not considered. Dry run query requests are never considered duplicate of another request. 4. When a duplicate mutating query request is detected, it returns: a. the results of the mutation if it completes successfully within the timeout. b. the running operation if it is still in progress at the end of the timeout. 5. Its lifetime is limited to 15 minutes. In other words, if two requests are sent with the same request_id, but more than 15 minutes apart, idempotency is not guaranteed. *)
  reservation : string option;  (** Optional. The reservation that jobs.query request would use. User can specify a reservation to execute the job.query. The expected format is `projects/\{project\}/locations/\{location\}/reservations/\{reservation\}`. Forces the query to use on-demand billing when set to `none`. This requires the project or organization to have `reservation_override_mode` set to `ALLOW_ANY_OVERRIDE`. *)
  secure_context : secure_context option;  (** Optional. A set of key-value pairs representing the secure context. This can be used to pass sensitive or context-specific information. They can be retrieved via the SECURE_CONTEXT() function and used to modify the run-time behavior of a query. *)
  timeout_ms : int option;  (** Optional. Optional: Specifies the maximum amount of time, in milliseconds, that the client is willing to wait for the query to complete. By default, this limit is 10 seconds (10,000 milliseconds). If the query is complete, the jobComplete field in the response is true. If the query has not yet completed, jobComplete is false. You can request a longer timeout period in the timeoutMs field. However, the call is not guaranteed to wait for the specified timeout; it typically returns after around 200 seconds (200,000 milliseconds), even if the query is not complete. If jobComplete is false, you can continue to wait for the query to complete by calling the getQueryResults method until the jobComplete field in the getQueryResults response is true. *)
  use_legacy_sql : bool option;  (** Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true. If set to false, the query uses BigQuery's \[GoogleSQL\](https://docs.cloud.google.com/bigquery/docs/introduction-sql). When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false. *)
  use_query_cache : bool option;  (** Optional. Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. The default value is true. *)
  write_incremental_results : bool option;  (** Optional. This is only supported for SELECT query. If set, the query is allowed to write results incrementally to the temporary result table. This may incur a performance penalty. This option cannot be used with Legacy SQL. This feature is not yet available. *)
}

and query_response = {
  arrow_record_batch : arrow_record_batch option;  (** Output only. Serialized row data in Arrow RecordBatch format. *)
  arrow_schema : arrow_schema option;  (** Output only. Arrow schema *)
  cache_hit : bool option;  (** Whether the query result was fetched from the query cache. *)
  creation_time : string option;  (** Output only. Creation time of this query, in milliseconds since the epoch. This field will be present on all queries. *)
  dml_stats : dml_statistics option;  (** Output only. Detailed statistics for DML statements INSERT, UPDATE, DELETE, MERGE or TRUNCATE. *)
  end_time : string option;  (** Output only. End time of this query, in milliseconds since the epoch. This field will be present whenever a query job is in the DONE state. *)
  errors : error_proto list option;  (** Output only. The first errors or warnings encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful. For more information about error messages, see \[Error messages\](https://cloud.google.com/bigquery/docs/error-messages). *)
  job_complete : bool option;  (** Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available. *)
  job_creation_reason : job_creation_reason option;  (** Optional. The reason why a Job was created. Only relevant when a job_reference is present in the response. If job_reference is not present it will always be unset. *)
  job_reference : job_reference option;  (** Reference to the Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults). If job_creation_mode was set to `JOB_CREATION_OPTIONAL` and the query completes without creating a job, this field will be empty. *)
  kind : string option;  (** The resource type. *)
  location : string option;  (** Output only. The geographic location of the query. For more information about BigQuery locations, see: https://cloud.google.com/bigquery/docs/locations *)
  num_dml_affected_rows : string option;  (** Output only. The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE. *)
  page_row_count : string option;  (** Output only. The number of rows out of `total_rows` returned in this response. This feature is not yet available. *)
  page_token : string option;  (** A token used for paging results. A non-empty token indicates that additional results are available. To see additional results, query the \[`jobs.getQueryResults`\](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs/getQueryResults) method. For more information, see \[Paging through table data\](https://cloud.google.com/bigquery/docs/paging-results). *)
  query_id : string option;  (** Auto-generated ID for the query. *)
  rows : table_row list option;  (** An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above. *)
  schema : table_schema option;  (** The schema of the results. Present only when the query completes successfully. *)
  session_info : session_info option;  (** Output only. Information of the session if this job is part of one. *)
  start_time : string option;  (** Output only. Start time of this query, in milliseconds since the epoch. This field will be present when the query job transitions from the PENDING state to either RUNNING or DONE. *)
  statement_type : string option;  (** Output only. The type of query statement, if valid. Possible values: * `SELECT`: \[`SELECT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax#select_list) statement. * `ASSERT`: \[`ASSERT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/debugging-statements#assert) statement. * `INSERT`: \[`INSERT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/dml-syntax#insert_statement) statement. * `UPDATE`: \[`UPDATE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/dml-syntax#update_statement) statement. * `DELETE`: \[`DELETE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language) statement. * `MERGE`: \[`MERGE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language) statement. * `TRUNCATE_TABLE`: \[`TRUNCATE TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/dml-syntax#truncate_table_statement) statement. * `CREATE_TABLE`: \[`CREATE TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_table_statement) statement, without `AS SELECT`. * `CREATE_TABLE_AS_SELECT`: \[`CREATE TABLE AS SELECT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_table_statement) statement. * `CREATE_VIEW`: \[`CREATE VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_view_statement) statement. * `CREATE_MODEL`: \[`CREATE MODEL`\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create#create_model_statement) statement. * `CREATE_MATERIALIZED_VIEW`: \[`CREATE MATERIALIZED VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_materialized_view_statement) statement. * `CREATE_FUNCTION`: \[`CREATE FUNCTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_function_statement) statement. * `CREATE_TABLE_FUNCTION`: \[`CREATE TABLE FUNCTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_table_function_statement) statement. * `CREATE_PROCEDURE`: \[`CREATE PROCEDURE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_procedure) statement. * `CREATE_ROW_ACCESS_POLICY`: \[`CREATE ROW ACCESS POLICY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_row_access_policy_statement) statement. * `CREATE_SCHEMA`: \[`CREATE SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_schema_statement) statement. * `CREATE_EXTERNAL_SCHEMA`: \[`CREATE EXTERNAL SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_external_schema_statement) statement. * `CREATE_EXTERNAL_TABLE`: \[`CREATE EXTERNAL TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_external_table_statement) statement. * `CREATE_SNAPSHOT_TABLE`: \[`CREATE SNAPSHOT TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_snapshot_table_statement) statement. * `CREATE_SEARCH_INDEX`: \[`CREATE SEARCH INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_search_index_statement) statement. * `CREATE_VECTOR_INDEX`: \[`CREATE VECTOR INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_vector_index_statement) statement. * `CREATE_CONNECTION`: \[`CREATE CONNECTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_connection_statement) statement. * `CREATE_DATA_POLICY`: \[`CREATE DATA_POLICY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_data_policy_statement) statement. * `CREATE_PROPERTY_GRAPH`: \[`CREATE PROPERTY GRAPH`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/graph-schema-statements#gql_create_graph) statement. * `CREATE_CAPACITY`: \[`CREATE CAPACITY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_capacity_statement) statement. * `CREATE_RESERVATION`: \[`CREATE RESERVATION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_reservation_statement) statement. * `CREATE_ASSIGNMENT`: \[`CREATE ASSIGNMENT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_assignment_statement) statement. * `DROP_TABLE`: \[`DROP TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_table_statement) statement. * `DROP_EXTERNAL_TABLE`: \[`DROP EXTERNAL TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_external_table_statement) statement. * `DROP_VIEW`: \[`DROP VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_view_statement) statement. * `DROP_MODEL`: \[`DROP MODEL`\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-drop-model) statement. * `DROP_MATERIALIZED_VIEW`: \[`DROP MATERIALIZED VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_materialized_view_statement) statement. * `DROP_FUNCTION`: \[`DROP FUNCTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_function_statement) statement. * `DROP_TABLE_FUNCTION`: \[`DROP TABLE FUNCTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_table_function) statement. * `DROP_PROCEDURE`: \[`DROP PROCEDURE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_procedure_statement) statement. * `DROP_SEARCH_INDEX`: \[`DROP SEARCH INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_search_index) statement. * `DROP_VECTOR_INDEX`: \[`DROP VECTOR INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_vector_index) statement. * `DROP_SCHEMA`: \[`DROP SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_schema_statement) statement. * `UNDROP_SCHEMA`: \[`UNDROP SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#undrop_schema_statement) statement. * `DROP_SNAPSHOT_TABLE`: \[`DROP SNAPSHOT TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_snapshot_table_statement) statement. * `DROP_ROW_ACCESS_POLICY`: \[`DROP \[ALL\] ROW ACCESS POLICY|POLICIES`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_row_access_policy_statement) statement. * `DROP_CONNECTION`: \[`DROP CONNECTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_connection_statement) statement. * `DROP_DATA_POLICY`: \[`DROP DATA_POLICY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_data_policy) statement. * `DROP_PROPERTY_GRAPH`: \[`DROP PROPERTY GRAPH`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/graph-schema-statements#gql_drop_graph) statement. * `DROP_CAPACITY`: \[`DROP CAPACITY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_capacity_statement) statement. * `DROP_RESERVATION`: \[`DROP RESERVATION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_reservation_statement) statement. * `DROP_ASSIGNMENT`: \[`DROP ASSIGNMENT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_assignment_statement) statement. * `ALTER_TABLE`: \[`ALTER TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_table_set_options_statement) statement. * `ALTER_VIEW`: \[`ALTER VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_view_set_options_statement) statement. * `ALTER_MATERIALIZED_VIEW`: \[`ALTER MATERIALIZED VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_materialized_view_set_options_statement) statement. * `ALTER_SCHEMA`: \[`ALTER SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_schema_set_options_statement) statement. * `ALTER_MODEL`: \[`ALTER MODEL`\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-alter-model) statement. * `ALTER_SEARCH_INDEX`: \[`ALTER SEARCH INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_search_index_statement) statement. * `ALTER_VECTOR_INDEX`: \[`ALTER VECTOR INDEX`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_vector_index_rebuild_statement) statement. * `ALTER_CONNECTION`: \[`ALTER CONNECTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_connection_set_options_statement) statement. * `ALTER_DATA_POLICY`: \[`ALTER DATA_POLICY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_data_policy_statement) statement. * `ALTER_PROJECT`: \[`ALTER PROJECT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_project_set_options_statement) statement. * `ALTER_ORGANIZATION`: \[`ALTER ORGANIZATION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_organization_set_options_statement) statement. * `ALTER_BI_CAPACITY`: \[`ALTER BI_CAPACITY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_bi_capacity_set_options_statement) statement. * `ALTER_CAPACITY`: \[`ALTER CAPACITY`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_capacity_set_options_statement) statement. * `ALTER_RESERVATION`: \[`ALTER RESERVATION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_reservation_set_options_statement) statement. * `SCRIPT`: \[`SCRIPT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language) statement. * `CALL`: \[`CALL`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language#call) statement. * `BEGIN_TRANSACTION`: \[`BEGIN TRANSACTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language#begin_transaction) statement. * `COMMIT_TRANSACTION`: \[`COMMIT TRANSACTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language#commit_transaction) statement. * `ROLLBACK_TRANSACTION`: \[`ROLLBACK TRANSACTION`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language#rollback_transaction) statement. * `EXPORT_DATA`: \[`EXPORT DATA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/export-statements#export_data_statement) statement. * `EXPORT_MODEL`: \[`EXPORT MODEL`\](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-export-model) statement. * `EXPORT_METADATA`: \[`EXPORT TABLE METADATA`\](https://cloud.google.com/bigquery/docs/biglake-iceberg-tables-in-bigquery) statement, for BigLake Iceberg tables. * `LOAD_DATA`: \[`LOAD DATA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/load-statements#load_data_statement) statement. * `GRANT_ON_SCHEMA`: \[`GRANT ... ON SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#grant_statement) statement. * `GRANT_ON_TABLE`: \[`GRANT ... ON TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#grant_statement) statement. Also used for `GRANT ... ON EXTERNAL TABLE`. * `GRANT_ON_VIEW`: \[`GRANT ... ON VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#grant_statement) statement. * `GRANT_ON_PROJECT`: \[`GRANT ... ON PROJECT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#grant_statement) statement. * `REVOKE_ON_SCHEMA`: \[`REVOKE ... ON SCHEMA`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#revoke_statement) statement. * `REVOKE_ON_TABLE`: \[`REVOKE ... ON TABLE`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#revoke_statement) statement. Also used for `REVOKE ... ON EXTERNAL TABLE`. * `REVOKE_ON_VIEW`: \[`REVOKE ... ON VIEW`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#revoke_statement) statement. * `REVOKE_ON_PROJECT`: \[`REVOKE ... ON PROJECT`\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-control-language#revoke_statement) statement. *)
  total_bytes_billed : string option;  (** Output only. If the project is configured to use on-demand pricing, then this field contains the total bytes billed for the job. If the project is configured to use flat-rate pricing, then you are not billed for bytes and this field is informational only. *)
  total_bytes_processed : string option;  (** The total number of bytes processed for this query. If this query was a dry run, this is the number of bytes that would be processed if the query were run. *)
  total_rows : string option;  (** The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. *)
  total_slot_ms : string option;  (** Output only. Number of slot ms the user is actually billed for. *)
}

(** Summary of the state of query execution at a given time. *)
and query_timeline_sample = {
  active_units : string option;  (** Total number of active workers. This does not correspond directly to slot usage. This is the largest value observed since the last sample. *)
  completed_units : string option;  (** Total parallel units of work completed by this query. *)
  elapsed_ms : string option;  (** Milliseconds elapsed since the start of query execution. *)
  estimated_runnable_units : string option;  (** Units of work that can be scheduled immediately. Providing additional slots for these units of work will accelerate the query, if no other query in the reservation needs additional slots. *)
  pending_units : string option;  (** Total units of work remaining for the query. This number can be revised (increased or decreased) while the query is running. *)
  shuffle_ram_usage_ratio : float option;  (** Total shuffle usage ratio in shuffle RAM per reservation of this query. This will be provided for reservation customers only. *)
  total_slot_ms : string option;  (** Cumulative slot-ms consumed by the query. *)
}

and range_partitioning_range = {
  end_ : string option;  (** \[Experimental\] The end of range partitioning, exclusive. *)
  interval : string option;  (** \[Experimental\] The width of each interval. *)
  start : string option;  (** \[Experimental\] The start of range partitioning, inclusive. *)
}

and range_partitioning = {
  field : string option;  (** Required. The name of the column to partition the table on. It must be a top-level, INT64 column whose mode is NULLABLE or REQUIRED. *)
  range : range_partitioning_range option;  (** \[Experimental\] Defines the ranges for range partitioning. *)
}

(** Represents the value of a range. *)
and range_value = {
  end_ : query_parameter_value option;  (** Optional. The end value of the range. A missing value represents an unbounded end. *)
  start : query_parameter_value option;  (** Optional. The start value of the range. A missing value represents an unbounded start. *)
}

(** Evaluation metrics used by weighted-ALS models specified by feedback_type=implicit. *)
and ranking_metrics = {
  average_rank : float option;  (** Determines the goodness of a ranking by computing the percentile rank from the predicted confidence and dividing it by the original rank. *)
  mean_average_precision : float option;  (** Calculates a precision per user for all the items by ranking them and then averages all the precisions across all the users. *)
  mean_squared_error : float option;  (** Similar to the mean squared error computed in regression and explicit recommendation models except instead of computing the rating directly, the output from evaluate is computed against a preference which is 1 or 0 depending on if the rating exists or not. *)
  normalized_discounted_cumulative_gain : float option;  (** A metric to determine the goodness of a ranking calculated from the predicted confidence by comparing it to an ideal rank measured by the original ratings. *)
}

(** Evaluation metrics for regression and explicit feedback type matrix factorization models. *)
and regression_metrics = {
  mean_absolute_error : float option;  (** Mean absolute error. *)
  mean_squared_error : float option;  (** Mean squared error. *)
  mean_squared_log_error : float option;  (** Mean squared log error. *)
  median_absolute_error : float option;  (** Median absolute error. *)
  r_squared : float option;  (** R^2 score. This corresponds to r2_score in ML.EVALUATE. *)
}

(** Options for a remote user-defined function. *)
and remote_function_options = {
  connection : string option;  (** Fully qualified name of the user-provided connection object which holds the authentication information to send requests to the remote service. Format: ```'projects/\{projectId\}/locations/\{locationId\}/connections/\{connectionId\}'``` *)
  endpoint : string option;  (** Endpoint of the user-provided remote service, e.g. ```https://us-east1-my_gcf_project.cloudfunctions.net/remote_add``` *)
  max_batching_rows : string option;  (** Max number of rows in each batch sent to the remote service. If absent or if 0, BigQuery dynamically decides the number of rows in a batch. *)
  user_defined_context : (string * string) list option;  (** User-defined context as a set of key/value pairs, which will be sent as function invocation context together with batched arguments in the requests to the remote service. The total number of bytes of keys and values must be less than 8KB. *)
}

(** Remote Model Info *)
and remote_model_info = {
  connection : string option;  (** Output only. Fully qualified name of the user-provided connection object of the remote model. Format: ```'projects/\{project_id\}/locations/\{location_id\}/connections/\{connection_id\}'``` *)
  endpoint : string option;  (** Output only. The endpoint for remote model. *)
  max_batching_rows : string option;  (** Output only. Max number of rows in each batch sent to the remote service. If unset, the number of rows in each batch is set dynamically. *)
  remote_model_version : string option;  (** Output only. The model version for LLM. *)
  remote_service_type : [ `Remote_service_type_unspecified | `Cloud_ai_translate_v3 | `Cloud_ai_vision_v1 | `Cloud_ai_natural_language_v1 | `Cloud_ai_speech_to_text_v2 | `Unrecognized of string ] option;  (** Output only. The remote service type for remote model. *)
  speech_recognizer : string option;  (** Output only. The name of the speech recognizer to use for speech recognition. The expected format is `projects/\{project\}/locations/\{location\}/recognizers/\{recognizer\}`. Customers can specify this field at model creation. If not specified, a default recognizer `projects/\{model project\}/locations/global/recognizers/_` will be used. See more details at \[recognizers\](https://cloud.google.com/speech-to-text/v2/docs/reference/rest/v2/projects.locations.recognizers) *)
}

and restriction_config = {
  type_ : [ `Restriction_type_unspecified | `Restricted_data_egress | `Unrecognized of string ] option;  (** Output only. Specifies the type of dataset/table restriction. *)
}

(** A user-defined function or a stored procedure. *)
and routine = {
  arguments : argument list option;  (** Optional. *)
  build_status : routine_build_status option;  (** Output only. The build status of the routine. This field is only applicable to Python UDFs. \[Preview\](https://cloud.google.com/products/#product-launch-stages) *)
  creation_time : string option;  (** Output only. The time when this routine was created, in milliseconds since the epoch. *)
  data_governance_type : [ `Data_governance_type_unspecified | `Data_masking | `Unrecognized of string ] option;  (** Optional. If set to `DATA_MASKING`, the function is validated and made available as a masking function. For more information, see \[Create custom masking routines\](https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask). *)
  definition_body : string option;  (** Required. The body of the routine. For functions, this is the expression in the AS clause. If `language = 'SQL'`, it is the substring inside (but excluding) the parentheses. For example, for the function created with the following statement: `CREATE FUNCTION JoinLines(x string, y string) as (concat(x, '\\n', y))` The definition_body is `concat(x, '\\n', y)` (\\n is not replaced with linebreak). If `language='JAVASCRIPT'`, it is the evaluated string in the AS clause. For example, for the function created with the following statement: `CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS 'return '\\n';\\n'` The definition_body is `return '\\n';\\n` Note that both \\n are replaced with linebreaks. If `definition_body` references another routine, then that routine must be fully qualified with its project ID. *)
  description : string option;  (** Optional. The description of the routine, if defined. *)
  determinism_level : [ `Determinism_level_unspecified | `Deterministic | `Not_deterministic | `Unrecognized of string ] option;  (** Optional. The determinism level of the JavaScript UDF, if defined. *)
  etag : string option;  (** Output only. A hash of this resource. *)
  external_runtime_options : external_runtime_options option;  (** Optional. Options for the runtime of the external system executing the routine. This field is only applicable for Python UDFs. \[Preview\](https://cloud.google.com/products/#product-launch-stages) *)
  imported_libraries : string list option;  (** Optional. If language = 'JAVASCRIPT', this field stores the path of the imported JAVASCRIPT libraries. *)
  language : [ `Language_unspecified | `Sql | `Javascript | `Python | `Java | `Scala | `Unrecognized of string ] option;  (** Optional. Defaults to 'SQL' if remote_function_options field is absent, not set otherwise. *)
  last_modified_time : string option;  (** Output only. The time when this routine was last modified, in milliseconds since the epoch. *)
  python_options : python_options option;  (** Optional. Options for the Python UDF. \[Preview\](https://cloud.google.com/products/#product-launch-stages) *)
  remote_function_options : remote_function_options option;  (** Optional. Remote function specific options. *)
  return_table_type : standard_sql_table_type option;  (** Optional. Can be set only if routine_type = 'TABLE_VALUED_FUNCTION'. If absent, the return table type is inferred from definition_body at query time in each query that references this routine. If present, then the columns in the evaluated table result will be cast to match the column types specified in return table type, at query time. *)
  return_type : standard_sql_data_type option;  (** Optional if language = 'SQL'; required otherwise. Cannot be set if routine_type = 'TABLE_VALUED_FUNCTION'. If absent, the return type is inferred from definition_body at query time in each query that references this routine. If present, then the evaluated result will be cast to the specified returned type at query time. For example, for the functions created with the following statements: * `CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);` * `CREATE FUNCTION Increment(x FLOAT64) AS (Add(x, 1));` * `CREATE FUNCTION Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));` The return_type is `\{type_kind: 'FLOAT64'\}` for `Add` and `Decrement`, and is absent for `Increment` (inferred as FLOAT64 at query time). Suppose the function `Add` is replaced by `CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);` Then the inferred return type of `Increment` is automatically changed to INT64 at query time, while the return type of `Decrement` remains FLOAT64. *)
  routine_reference : routine_reference option;  (** Required. Reference describing the ID of this routine. *)
  routine_type : [ `Routine_type_unspecified | `Scalar_function | `Procedure | `Table_valued_function | `Aggregate_function | `Unrecognized of string ] option;  (** Required. The type of routine. *)
  security_mode : [ `Security_mode_unspecified | `Definer | `Invoker | `Unrecognized of string ] option;  (** Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration. *)
  spark_options : spark_options option;  (** Optional. Spark specific options. *)
  strict_mode : bool option;  (** Optional. Use this option to catch many common errors. Error checking is not exhaustive, and successfully creating a procedure doesn't guarantee that the procedure will successfully execute at runtime. If `strictMode` is set to `TRUE`, the procedure body is further checked for errors such as non-existent tables or columns. The `CREATE PROCEDURE` statement fails if the body fails any of these checks. If `strictMode` is set to `FALSE`, the procedure body is checked only for syntax. For procedures that invoke themselves recursively, specify `strictMode=FALSE` to avoid non-existent procedure errors during validation. Default value is `TRUE`. *)
}

(** The status of a routine build. *)
and routine_build_status = {
  build_duration : string option;  (** Output only. The time taken for the image build. Populated only after the build succeeds or fails. *)
  build_state : [ `Build_state_unspecified | `In_progress | `Succeeded | `Failed | `Unrecognized of string ] option;  (** Output only. The current build state of the routine. *)
  build_state_update_time : string option;  (** Output only. The time when the build state was updated last. *)
  error_result : error_proto option;  (** Output only. A result object that will be present only if the build has failed. *)
  image_size_bytes : string option;  (** Output only. The size of the image in bytes. Populated only after the build succeeds. *)
}

(** Id path of a routine. *)
and routine_reference = {
  dataset_id : string option;  (** Required. The ID of the dataset containing this routine. *)
  project_id : string option;  (** Required. The ID of the project containing this routine. *)
  routine_id : string option;  (** Required. The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters. *)
}

(** A single row in the confusion matrix. *)
and row = {
  actual_label : string option;  (** The original label of this row. *)
  entries : entry list option;  (** Info describing predicted label distribution. *)
}

(** Represents access on a subset of rows on the specified table, defined by its filter predicate. Access to the subset of rows is controlled by its IAM policy. *)
and row_access_policy = {
  creation_time : string option;  (** Output only. The time when this row access policy was created, in milliseconds since the epoch. *)
  etag : string option;  (** Output only. A hash of this resource. *)
  filter_predicate : string option;  (** Required. A SQL boolean expression that represents the rows defined by this row access policy, similar to the boolean expression in a WHERE clause of a SELECT query on a table. References to other tables, routines, and temporary functions are not supported. Examples: region='EU' date_field = CAST('2019-9-27' as DATE) nullable_field is not NULL numeric_field BETWEEN 1.0 AND 5.0 *)
  grantees : string list option;  (** Optional. Input only. The optional list of iam_member users or groups that specifies the initial members that the row-level access policy should be created with. grantees types: - 'user:alice\@example.com': An email address that represents a specific Google account. - 'serviceAccount:my-other-app\@appspot.gserviceaccount.com': An email address that represents a service account. - 'group:admins\@example.com': An email address that represents a Google group. - 'domain:example.com':The Google Workspace domain (primary) that represents all the users of that domain. - 'allAuthenticatedUsers': A special identifier that represents all service accounts and all users on the internet who have authenticated with a Google Account. This identifier includes accounts that aren't connected to a Google Workspace or Cloud Identity domain, such as personal Gmail accounts. Users who aren't authenticated, such as anonymous visitors, aren't included. - 'allUsers':A special identifier that represents anyone who is on the internet, including authenticated and unauthenticated users. Because BigQuery requires authentication before a user can access the service, allUsers includes only authenticated users. *)
  last_modified_time : string option;  (** Output only. The time when this row access policy was last modified, in milliseconds since the epoch. *)
  row_access_policy_reference : row_access_policy_reference option;  (** Required. Reference describing the ID of this row access policy. *)
}

(** Id path of a row access policy. *)
and row_access_policy_reference = {
  dataset_id : string option;  (** Required. The ID of the dataset containing this row access policy. *)
  policy_id : string option;  (** Required. The ID of the row access policy. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters. *)
  project_id : string option;  (** Required. The ID of the project containing this row access policy. *)
  table_id : string option;  (** Required. The ID of the table containing this row access policy. *)
}

(** Statistics for row-level security. *)
and row_level_security_statistics = {
  row_level_security_applied : bool option;  (** Whether any accessed data was protected by row access policies. *)
}

(** Options related to script execution. *)
and script_options = {
  key_result_statement : [ `Key_result_statement_kind_unspecified | `Last | `First_select | `Unrecognized of string ] option;  (** Determines which statement in the script represents the 'key result', used to populate the schema and query results of the script job. Default is LAST. *)
  statement_byte_budget : string option;  (** Limit on the number of bytes billed per statement. Exceeding this budget results in an error. *)
  statement_timeout_ms : string option;  (** Timeout period for each statement in a script. *)
}

(** Represents the location of the statement/expression being evaluated. Line and column numbers are defined as follows: - Line and column numbers start with one. That is, line 1 column 1 denotes the start of the script. - When inside a stored procedure, all line/column numbers are relative to the procedure body, not the script in which the procedure was defined. - Start/end positions exclude leading/trailing comments and whitespace. The end position always ends with a ';', when present. - Multi-byte Unicode characters are treated as just one column. - If the original script (or procedure definition) contains TAB characters, a tab 'snaps' the indentation forward to the nearest multiple of 8 characters, plus 1. For example, a TAB on column 1, 2, 3, 4, 5, 6 , or 8 will advance the next character to column 9. A TAB on column 9, 10, 11, 12, 13, 14, 15, or 16 will advance the next character to column 17. *)
and script_stack_frame = {
  end_column : int option;  (** Output only. One-based end column. *)
  end_line : int option;  (** Output only. One-based end line. *)
  procedure_id : string option;  (** Output only. Name of the active procedure, empty if in a top-level script. *)
  start_column : int option;  (** Output only. One-based start column. *)
  start_line : int option;  (** Output only. One-based start line. *)
  text : string option;  (** Output only. Text of the current statement/expression. *)
}

(** Job statistics specific to the child job of a script. *)
and script_statistics = {
  evaluation_kind : [ `Evaluation_kind_unspecified | `Statement | `Expression | `Unrecognized of string ] option;  (** Whether this child job was a statement or expression. *)
  stack_frames : script_stack_frame list option;  (** Stack trace showing the line/column/procedure name of each frame on the stack at the point where the current evaluation happened. The leaf frame is first, the primary script is last. Never empty. *)
}

(** Statistics for a search query. Populated as part of JobStatistics2. *)
and search_statistics = {
  index_pruning_stats : index_pruning_stats list option;  (** Search index pruning statistics, one for each base table that has a search index. If a base table does not have a search index or the index does not help with pruning on the base table, then there is no pruning statistics for that table. *)
  index_unused_reasons : index_unused_reason list option;  (** When `indexUsageMode` is `UNUSED` or `PARTIALLY_USED`, this field explains why indexes were not used in all or part of the search query. If `indexUsageMode` is `FULLY_USED`, this field is not populated. *)
  index_usage_mode : [ `Index_usage_mode_unspecified | `Unused | `Partially_used | `Fully_used | `Unrecognized of string ] option;  (** Specifies the index usage mode for the query. *)
}

(** A set of key-value pairs representing the secure context. *)
and secure_context = {
  secure_parameter_entries : (string * Yojson.Safe.t) list option;  (** Optional. A set of key-value pairs representing the secure parameter values. They can be retrieved via the SECURE_CONTEXT() function and used to modify the run-time behavior of a query. *)
}

(** Serializer and deserializer information. *)
and ser_de_info = {
  name : string option;  (** Optional. Name of the SerDe. The maximum length is 256 characters. *)
  parameters : (string * string) list option;  (** Optional. Key-value pairs that define the initialization parameters for the serialization library. Maximum size 10 Kib. *)
  serialization_library : string option;  (** Required. Specifies a fully-qualified class name of the serialization library that is responsible for the translation of data between table representation and the underlying low-level input and output format structures. The maximum length is 256 characters. *)
}

(** \[Preview\] Information related to sessions. *)
and session_info = {
  session_id : string option;  (** Output only. The id of the session. *)
}

(** Request message for `SetIamPolicy` method. *)
and set_iam_policy_request = {
  policy : policy option;  (** REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them. *)
  update_mask : string option;  (** OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: 'bindings, etag'` *)
}

(** Details about source stages which produce skewed data. *)
and skew_source = {
  output_bytes_max : string option;  (** Output only. Max partition output size (in bytes) for this stage. *)
  output_bytes_median : string option;  (** Output only. Median partition output size (in bytes) for this stage. *)
  output_bytes_p95 : string option;  (** Output only. 95-th percentile of partition output size (in bytes) for this stage. *)
  stage_id : string option;  (** Output only. Stage id of the skew source stage. *)
}

(** Information about base table and snapshot time of the snapshot. *)
and snapshot_definition = {
  base_table_reference : table_reference option;  (** Required. Reference describing the ID of the table that was snapshot. *)
  snapshot_time : string option;  (** Required. The time at which the base table was snapshot. This value is reported in the JSON response using RFC3339 format. *)
}

(** Spark job logs can be filtered by these fields in Cloud Logging. *)
and spark_logging_info = {
  project_id : string option;  (** Output only. Project ID where the Spark logs were written. *)
  resource_type : string option;  (** Output only. Resource type used for logging. *)
}

(** Options for a user-defined Spark routine. *)
and spark_options = {
  archive_uris : string list option;  (** Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see \[Apache Spark\](https://spark.apache.org/docs/latest/index.html). *)
  connection : string option;  (** Fully qualified name of the user-provided Spark connection object. Format: ```'projects/\{project_id\}/locations/\{location_id\}/connections/\{connection_id\}'``` *)
  container_image : string option;  (** Custom container image for the runtime environment. *)
  file_uris : string list option;  (** Files to be placed in the working directory of each executor. For more information about Apache Spark, see \[Apache Spark\](https://spark.apache.org/docs/latest/index.html). *)
  jar_uris : string list option;  (** JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see \[Apache Spark\](https://spark.apache.org/docs/latest/index.html). *)
  main_class : string option;  (** The fully qualified name of a class in jar_uris, for example, com.example.wordcount. Exactly one of main_class and main_jar_uri field should be set for Java/Scala language type. *)
  main_file_uri : string option;  (** The main file/jar URI of the Spark application. Exactly one of the definition_body field and the main_file_uri field must be set for Python. Exactly one of main_class and main_file_uri field should be set for Java/Scala language type. *)
  properties : (string * string) list option;  (** Configuration properties as a set of key/value pairs, which will be passed on to the Spark application. For more information, see \[Apache Spark\](https://spark.apache.org/docs/latest/index.html) and the \[procedure option list\](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#procedure_option_list). *)
  py_file_uris : string list option;  (** Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: `.py`, `.egg`, and `.zip`. For more information about Apache Spark, see \[Apache Spark\](https://spark.apache.org/docs/latest/index.html). *)
  runtime_version : string option;  (** Runtime version. If not specified, the default runtime version is used. *)
}

(** Statistics for a BigSpark query. Populated as part of JobStatistics2 *)
and spark_statistics = {
  endpoints : (string * string) list option;  (** Output only. Endpoints returned from Dataproc. Key list: - history_server_endpoint: A link to Spark job UI. *)
  gcs_staging_bucket : string option;  (** Output only. The Google Cloud Storage bucket that is used as the default file system by the Spark application. This field is only filled when the Spark procedure uses the invoker security mode. The `gcsStagingBucket` bucket is inferred from the `\@\@spark_proc_properties.staging_bucket` system variable (if it is provided). Otherwise, BigQuery creates a default staging bucket for the job and returns the bucket name in this field. Example: * `gs://\[bucket_name\]` *)
  kms_key_name : string option;  (** Output only. The Cloud KMS encryption key that is used to protect the resources created by the Spark job. If the Spark procedure uses the invoker security mode, the Cloud KMS encryption key is either inferred from the provided system variable, `\@\@spark_proc_properties.kms_key_name`, or the default key of the BigQuery job's project (if the CMEK organization policy is enforced). Otherwise, the Cloud KMS key is either inferred from the Spark connection associated with the procedure (if it is provided), or from the default key of the Spark connection's project if the CMEK organization policy is enforced. Example: * `projects/\[kms_project_id\]/locations/\[region\]/keyRings/\[key_region\]/cryptoKeys/\[key\]` *)
  logging_info : spark_logging_info option;  (** Output only. Logging info is used to generate a link to Cloud Logging. *)
  spark_job_id : string option;  (** Output only. Spark job ID if a Spark job is created successfully. *)
  spark_job_location : string option;  (** Output only. Location where the Spark job is executed. A location is selected by BigQueury for jobs configured to run in a multi-region. *)
}

(** Performance insights compared to the previous executions for a specific stage. *)
and stage_performance_change_insight = {
  input_data_change : input_data_change option;  (** Output only. Input data change insight of the query stage. *)
  stage_id : string option;  (** Output only. The stage id that the insight mapped to. *)
}

(** Standalone performance insights for a specific stage. *)
and stage_performance_standalone_insight = {
  bi_engine_reasons : bi_engine_reason list option;  (** Output only. If present, the stage had the following reasons for being disqualified from BI Engine execution. *)
  high_cardinality_joins : high_cardinality_join list option;  (** Output only. High cardinality joins in the stage. *)
  insufficient_shuffle_quota : bool option;  (** Output only. True if the stage has insufficient shuffle quota. *)
  partition_skew : partition_skew option;  (** Output only. Partition skew in the stage. *)
  slot_contention : bool option;  (** Output only. True if the stage has a slot contention issue. *)
  stage_id : string option;  (** Output only. The stage id that the insight mapped to. *)
}

(** The data type of a variable such as a function argument. Examples include: * INT64: `\{'typeKind': 'INT64'\}` * ARRAY: \{ 'typeKind': 'ARRAY', 'arrayElementType': \{'typeKind': 'STRING'\} \} * STRUCT>: \{ 'typeKind': 'STRUCT', 'structType': \{ 'fields': \[ \{ 'name': 'x', 'type': \{'typeKind': 'STRING'\} \}, \{ 'name': 'y', 'type': \{ 'typeKind': 'ARRAY', 'arrayElementType': \{'typeKind': 'DATE'\} \} \} \] \} \} * RANGE: \{ 'typeKind': 'RANGE', 'rangeElementType': \{'typeKind': 'DATE'\} \} *)
and standard_sql_data_type = {
  array_element_type : standard_sql_data_type option;  (** The type of the array's elements, if type_kind = 'ARRAY'. *)
  range_element_type : standard_sql_data_type option;  (** The type of the range's elements, if type_kind = 'RANGE'. *)
  struct_type : standard_sql_struct_type option;  (** The fields of this struct, in order, if type_kind = 'STRUCT'. *)
  type_kind : [ `Type_kind_unspecified | `Int64 | `Bool | `Float64 | `String | `Bytes | `Timestamp | `Date | `Time | `Datetime | `Interval | `Geography | `Numeric | `Bignumeric | `Json | `Array | `Struct | `Range | `Uuid | `Unrecognized of string ] option;  (** Required. The top level type of this field. Can be any GoogleSQL data type (e.g., 'INT64', 'DATE', 'ARRAY'). *)
}

(** A field or a column. *)
and standard_sql_field = {
  name : string option;  (** Optional. The name of this field. Can be absent for struct fields. *)
  type_ : standard_sql_data_type option;  (** Optional. The type of this parameter. Absent if not explicitly specified (e.g., CREATE FUNCTION statement can omit the return type; in this case the output parameter does not have this 'type' field). *)
}

(** The representation of a SQL STRUCT type. *)
and standard_sql_struct_type = {
  fields : standard_sql_field list option;  (** Fields within the struct. *)
}

(** A table type *)
and standard_sql_table_type = {
  columns : standard_sql_field list option;  (** The columns in this table type *)
}

(** Contains information about how a table's data is stored and accessed by open source query engines. *)
and storage_descriptor = {
  input_format : string option;  (** Optional. Specifies the fully qualified class name of the InputFormat (e.g. 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat'). The maximum length is 128 characters. *)
  location_uri : string option;  (** Optional. The physical location of the table (e.g. `gs://spark-dataproc-data/pangea-data/case_sensitive/` or `gs://spark-dataproc-data/pangea-data/*`). The maximum length is 2056 bytes. *)
  output_format : string option;  (** Optional. Specifies the fully qualified class name of the OutputFormat (e.g. 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'). The maximum length is 128 characters. *)
  serde_info : ser_de_info option;  (** Optional. Serializer and deserializer information. *)
}

(** If the stored column was not used, explain why. *)
and stored_columns_unused_reason = {
  code : [ `Code_unspecified | `Stored_columns_cover_insufficient | `Base_table_has_rls | `Base_table_has_cls | `Unsupported_prefilter | `Internal_error | `Other_reason | `Unrecognized of string ] option;  (** Specifies the high-level reason for the unused scenario, each reason must have a code associated. *)
  message : string option;  (** Specifies the detailed description for the scenario. *)
  uncovered_columns : string list option;  (** Specifies which columns were not covered by the stored columns for the specified code up to 20 columns. This is populated when the code is STORED_COLUMNS_COVER_INSUFFICIENT and BASE_TABLE_HAS_CLS. *)
}

(** Indicates the stored columns usage in the query. *)
and stored_columns_usage = {
  base_table : table_reference option;  (** Specifies the base table. *)
  is_query_accelerated : bool option;  (** Specifies whether the query was accelerated with stored columns. *)
  stored_columns_unused_reasons : stored_columns_unused_reason list option;  (** If stored columns were not used, explain why. *)
}

and streamingbuffer = {
  estimated_bytes : string option;  (** Output only. A lower-bound estimate of the number of bytes currently in the streaming buffer. *)
  estimated_rows : string option;  (** Output only. A lower-bound estimate of the number of rows currently in the streaming buffer. *)
  oldest_entry_time : string option;  (** Output only. Contains the timestamp of the oldest entry in the streaming buffer, in milliseconds since the epoch, if the streaming buffer is available. *)
}

(** Search space for string and enum. *)
and string_hparam_search_space = {
  candidates : string list option;  (** Canididates for the string or enum parameter in lower case. *)
}

(** System variables given to a query. *)
and system_variables = {
  types : (string * standard_sql_data_type) list option;  (** Output only. Data type for each system variable. *)
  values : (string * Yojson.Safe.t) list option;  (** Output only. Value for each system variable. *)
}

and table = {
  biglake_configuration : big_lake_configuration option;  (** Optional. Specifies the configuration of a BigQuery table for Apache Iceberg. *)
  clone_definition : clone_definition option;  (** Output only. Contains information about the clone. This value is set via the clone operation. *)
  clustering : clustering option;  (** Clustering specification for the table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered. *)
  creation_time : string option;  (** Output only. The time when this table was created, in milliseconds since the epoch. *)
  default_collation : string option;  (** Optional. Defines the default collation specification of new STRING fields in the table. During table creation or update, if a STRING field is added to this table without explicit collation specified, then the table inherits the table default collation. A change to this field affects only fields added afterwards, and does not alter the existing fields. The following values are supported: * 'und:ci': undetermined locale, case insensitive. * '': empty string. Default to case-sensitive behavior. *)
  default_rounding_mode : [ `Rounding_mode_unspecified | `Round_half_away_from_zero | `Round_half_even | `Unrecognized of string ] option;  (** Optional. Defines the default rounding mode specification of new decimal fields (NUMERIC OR BIGNUMERIC) in the table. During table creation or update, if a decimal field is added to this table without an explicit rounding mode specified, then the field inherits the table default rounding mode. Changing this field doesn't affect existing fields. *)
  description : string option;  (** Optional. A user-friendly description of this table. *)
  encryption_configuration : encryption_configuration option;  (** Custom encryption configuration (e.g., Cloud KMS keys). *)
  etag : string option;  (** Output only. A hash of this resource. *)
  expiration_time : string option;  (** Optional. The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables. *)
  external_catalog_table_options : external_catalog_table_options option;  (** Optional. Options defining open source compatible table. *)
  external_data_configuration : external_data_configuration option;  (** Optional. Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table. *)
  friendly_name : string option;  (** Optional. A descriptive name for this table. *)
  id : string option;  (** Output only. An opaque ID uniquely identifying the table. *)
  kind : string option;  (** The type of resource ID. *)
  labels : (string * string) list option;  (** The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key. *)
  last_modified_time : string option;  (** Output only. The time when this table was last modified, in milliseconds since the epoch. *)
  location : string option;  (** Output only. The geographic location where the table resides. This value is inherited from the dataset. *)
  managed_table_type : [ `Managed_table_type_unspecified | `Native | `Biglake | `Unrecognized of string ] option;  (** Optional. If set, overrides the default managed table type configured in the dataset. *)
  materialized_view : materialized_view_definition option;  (** Optional. The materialized view definition. *)
  materialized_view_status : materialized_view_status option;  (** Output only. The materialized view status. *)
  max_staleness : string option;  (** Optional. The maximum staleness of data that could be returned when the table (or stale MV) is queried. Staleness encoded as a string encoding of sql IntervalValue type. *)
  model : model_definition option;  (** Deprecated. *)
  num_active_logical_bytes : string option;  (** Output only. Number of logical bytes that are less than 90 days old. *)
  num_active_physical_bytes : string option;  (** Output only. Number of physical bytes less than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes. *)
  num_bytes : string option;  (** Output only. The size of this table in logical bytes, excluding any data in the streaming buffer. *)
  num_current_physical_bytes : string option;  (** Output only. Number of physical bytes used by current live data storage. This data is not kept in real time, and might be delayed by a few seconds to a few minutes. *)
  num_long_term_bytes : string option;  (** Output only. The number of logical bytes in the table that are considered 'long-term storage'. *)
  num_long_term_logical_bytes : string option;  (** Output only. Number of logical bytes that are more than 90 days old. *)
  num_long_term_physical_bytes : string option;  (** Output only. Number of physical bytes more than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes. *)
  num_partitions : string option;  (** Output only. The number of partitions present in the table or materialized view. This data is not kept in real time, and might be delayed by a few seconds to a few minutes. *)
  num_physical_bytes : string option;  (** Output only. The physical size of this table in bytes. This includes storage used for time travel. *)
  num_rows : string option;  (** Output only. The number of rows of data in this table, excluding any data in the streaming buffer. *)
  num_time_travel_physical_bytes : string option;  (** Output only. Number of physical bytes used by time travel storage (deleted or changed data). This data is not kept in real time, and might be delayed by a few seconds to a few minutes. *)
  num_total_logical_bytes : string option;  (** Output only. Total number of logical bytes in the table or materialized view. *)
  num_total_physical_bytes : string option;  (** Output only. The physical size of this table in bytes. This also includes storage used for time travel. This data is not kept in real time, and might be delayed by a few seconds to a few minutes. *)
  partition_definition : partitioning_definition option;  (** Optional. The partition information for all table formats, including managed partitioned tables, hive partitioned tables, iceberg partitioned, and metastore partitioned tables. This field is only populated for metastore partitioned tables. For other table formats, this is an output only field. *)
  range_partitioning : range_partitioning option;  (** If specified, configures range partitioning for this table. *)
  replicas : table_reference list option;  (** Optional. Output only. Table references of all replicas currently active on the table. *)
  require_partition_filter : bool option;  (** Optional. If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. *)
  resource_tags : (string * string) list option;  (** \[Optional\] The tags associated with this table. Tag keys are globally unique. See additional information on \[tags\](https://cloud.google.com/iam/docs/tags-access-control#definitions). An object containing a list of 'key': value pairs. The key is the namespaced friendly name of the tag key, e.g. '12345/environment' where 12345 is parent id. The value is the friendly short name of the tag value, e.g. 'production'. *)
  restrictions : restriction_config option;  (** Optional. Output only. Restriction config for table. If set, restrict certain accesses on the table based on the config. See \[Data egress\](https://cloud.google.com/bigquery/docs/analytics-hub-introduction#data_egress) for more details. *)
  schema : table_schema option;  (** Optional. Describes the schema of this table. *)
  self_link : string option;  (** Output only. A URL that can be used to access this resource again. *)
  snapshot_definition : snapshot_definition option;  (** Output only. Contains information about the snapshot. This value is set via snapshot creation. *)
  streaming_buffer : streamingbuffer option;  (** Output only. Contains information regarding this table's streaming buffer, if one is present. This field will be absent if the table is not being streamed to or if there is no data in the streaming buffer. *)
  table_constraints : table_constraints option;  (** Optional. Tables Primary Key and Foreign Key information *)
  table_reference : table_reference option;  (** Required. Reference describing the ID of this table. *)
  table_replication_info : table_replication_info option;  (** Optional. Table replication info for table created `AS REPLICA` DDL like: `CREATE MATERIALIZED VIEW mv1 AS REPLICA OF src_mv` *)
  time_partitioning : time_partitioning option;  (** If specified, configures time-based partitioning for this table. *)
  type_ : string option;  (** Output only. Describes the table type. The following values are supported: * `TABLE`: A normal BigQuery table. * `VIEW`: A virtual table defined by a SQL query. * `EXTERNAL`: A table that references data stored in an external storage system, such as Google Cloud Storage. * `MATERIALIZED_VIEW`: A precomputed view defined by a SQL query. * `SNAPSHOT`: An immutable BigQuery table that preserves the contents of a base table at a particular time. See additional information on \[table snapshots\](https://cloud.google.com/bigquery/docs/table-snapshots-intro). The default value is `TABLE`. *)
  view : view_definition option;  (** Optional. The view definition. *)
}

and table_cell = {
  v : Yojson.Safe.t option;
}

(** Table-level performance insights compared to previous runs. These insights don't apply to specific query stages, rather they apply to the whole table. *)
and table_change_insight = {
  metadata_cache_not_used_but_used_previously : bool option;  (** Output only. True if the table's column metadata index was not used in the current job, but was used in a previous job with the same query hash. *)
  metadata_cache_staleness_insight : metadata_cache_staleness_insight option;  (** Output only. If present, indicates that the table's metadata column index staleness has increased significantly compared to previous jobs with the same query hash. *)
  table_reference : table_reference option;  (** Output only. The table that was queried. *)
}

and table_constraints_foreign_keys_item_column_references_item = {
  referenced_column : string option;  (** Required. The column in the primary key that are referenced by the referencing_column. *)
  referencing_column : string option;  (** Required. The column that composes the foreign key. *)
}

and table_constraints_foreign_keys_item_referenced_table = {
  dataset_id : string option;
  project_id : string option;
  table_id : string option;
}

and table_constraints_foreign_keys_item = {
  column_references : table_constraints_foreign_keys_item_column_references_item list option;  (** Required. The columns that compose the foreign key. *)
  name : string option;  (** Optional. Set only if the foreign key constraint is named. *)
  referenced_table : table_constraints_foreign_keys_item_referenced_table option;
}

and table_constraints_primary_key = {
  columns : string list option;  (** Required. The columns that are composed of the primary key constraint. *)
}

(** The TableConstraints defines the primary key and foreign key. *)
and table_constraints = {
  foreign_keys : table_constraints_foreign_keys_item list option;  (** Optional. Present only if the table has a foreign key. The foreign key is not enforced. *)
  primary_key : table_constraints_primary_key option;  (** Represents the primary key constraint on a table's columns. *)
}

and table_data_insert_all_request_rows_item = {
  insert_id : string option;  (** Insertion ID for best-effort deduplication. This feature is not recommended, and users seeking stronger insertion semantics are encouraged to use other mechanisms such as the BigQuery Write API. *)
  json : json_object option;  (** Data for a single row. *)
}

(** Request for sending a single streaming insert. *)
and table_data_insert_all_request = {
  ignore_unknown_values : bool option;  (** Optional. Accept rows that contain values that do not match the schema. The unknown values are ignored. Default is false, which treats unknown values as errors. *)
  kind : string option;  (** Optional. The resource type of the response. The value is not checked at the backend. Historically, it has been set to 'bigquery#tableDataInsertAllRequest' but you are not required to set it. *)
  rows : table_data_insert_all_request_rows_item list option;
  skip_invalid_rows : bool option;  (** Optional. Insert all valid rows of a request, even if invalid rows exist. The default value is false, which causes the entire request to fail if any invalid rows exist. *)
  template_suffix : string option;  (** Optional. If specified, treats the destination table as a base template, and inserts the rows into an instance table named '\{destination\}\{templateSuffix\}'. BigQuery will manage creation of the instance table, using the schema of the base template table. See https://cloud.google.com/bigquery/streaming-data-into-bigquery#template-tables for considerations when working with templates tables. *)
  trace_id : string option;  (** Optional. Unique request trace id. Used for debugging purposes only. It is case-sensitive, limited to up to 36 ASCII characters. A UUID is recommended. *)
}

and table_data_insert_all_response_insert_errors_item = {
  errors : error_proto list option;  (** Error information for the row indicated by the index property. *)
  index : int option;  (** The index of the row that error applies to. *)
}

(** Describes the format of a streaming insert response. *)
and table_data_insert_all_response = {
  insert_errors : table_data_insert_all_response_insert_errors_item list option;  (** Describes specific errors encountered while processing the request. *)
  kind : string option;  (** Returns 'bigquery#tableDataInsertAllResponse'. *)
}

and table_data_list = {
  etag : string option;  (** A hash of this page of results. *)
  kind : string option;  (** The resource type of the response. *)
  page_token : string option;  (** A token used for paging results. Providing this token instead of the startIndex parameter can help you retrieve stable results when an underlying table is changing. *)
  rows : table_row list option;  (** Rows of results. *)
  total_rows : string option;  (** Total rows of the entire table. In order to show default value 0 we have to present it as string. *)
}

and table_field_schema_categories = {
  names : string list option;  (** Deprecated. *)
}

and table_field_schema_data_governance_tags_info = {
  data_governance_tags : (string * string) list option;  (** Optional. The data governance tags added to this field are used for field-level access control. Only one data governance tag is currently supported on a field. Tag keys are globally unique. Tag key is expected to be in the namespaced format, for example 'parent-id/pii' where parent-id is the ID of the parent organization or project resource for this tag key. Tag value is expected to be the short name, for example 'sensitive'. See \[Tag definitions\](https://cloud.google.com/iam/docs/tags-access-control#definitions) for more details. For example: 'parent-id/pii': 'sensitive', 'myProject/cost_center': 'sales' *)
}

and table_field_schema_policy_tags = {
  names : string list option;  (** A list of policy tag resource names. For example, 'projects/1/locations/eu/taxonomies/2/policyTags/3'. At most 1 policy tag is currently allowed. *)
}

and table_field_schema_range_element_type = {
  type_ : string option;  (** Required. The type of a field element. For more information, see TableFieldSchema.type. *)
}

(** A field in TableSchema *)
and table_field_schema = {
  categories : table_field_schema_categories option;  (** Deprecated. *)
  collation : string option;  (** Optional. Field collation can be set only when the type of field is STRING. The following values are supported: * 'und:ci': undetermined locale, case insensitive. * '': empty string. Default to case-sensitive behavior. *)
  data_governance_tags_info : table_field_schema_data_governance_tags_info option;  (** Optional. Specifies the data governance tags on this field. This field works with other column-level security fields as follows: * **Precedence**: If a data governance tag is attached to a column, it takes precedence over the policy tag attached to the column. However, if a data policy is attached to a column, it takes precedence over the data governance tag. * **Patching behavior**: Describes how this field behaves during a `Table.patch` schema update: * **Unset**: If the `data_governance_tags_info` field is omitted from the update request, the existing tags on the column are preserved. * **Empty Field**: To clear data governance tags from a column, send the `data_governance_tags_info` field as an empty object. This removes all tags from the column. * **Updating tags**: To replace an existing tag, send the field with the new tag. *)
  data_policies : data_policy_option list option;  (** Optional. Data policies attached to this field, used for field-level access control. *)
  data_policy_list : data_policy_list option;  (** Optional. Specifies data policies attached to this field, used for field-level access control. When set, this will be the source of truth for data policy information. *)
  default_value_expression : string option;  (** Optional. A SQL expression to specify the \[default value\] (https://cloud.google.com/bigquery/docs/default-values) for this field. *)
  description : string option;  (** Optional. The field description. The maximum length is 1,024 characters. *)
  fields : table_field_schema list option;  (** Optional. Describes the nested schema fields if the type property is set to RECORD. *)
  foreign_type_definition : string option;  (** Optional. Definition of the foreign data type. Only valid for top-level schema fields (not nested fields). If the type is FOREIGN, this field is required. *)
  generated_column : generated_column option;  (** Optional. Definition of how values are generated for the field. Only valid for top-level schema fields (not nested fields). *)
  max_length : string option;  (** Optional. Maximum length of values of this field for STRINGS or BYTES. If max_length is not specified, no maximum length constraint is imposed on this field. If type = 'STRING', then max_length represents the maximum UTF-8 length of strings in this field. If type = 'BYTES', then max_length represents the maximum number of bytes in this field. It is invalid to set this field if type ≠ 'STRING' and ≠ 'BYTES'. *)
  mode : string option;  (** Optional. The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE. *)
  name : string option;  (** Required. The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum length is 300 characters. *)
  policy_tags : table_field_schema_policy_tags option;  (** Optional. The policy tags attached to this field, used for field-level access control. If not set, defaults to empty policy_tags. *)
  precision : string option;  (** Optional. Precision (maximum number of total digits in base 10) and scale (maximum number of digits in the fractional part in base 10) constraints for values of this field for NUMERIC or BIGNUMERIC. It is invalid to set precision or scale if type ≠ 'NUMERIC' and ≠ 'BIGNUMERIC'. If precision and scale are not specified, no value range constraint is imposed on this field insofar as values are permitted by the type. Values of this NUMERIC or BIGNUMERIC field must be in this range when: * Precision (P) and scale (S) are specified: \[-10P-S + 10-S, 10P-S - 10-S\] * Precision (P) is specified but not scale (and thus scale is interpreted to be equal to zero): \[-10P + 1, 10P - 1\]. Acceptable values for precision and scale if both are specified: * If type = 'NUMERIC': 1 ≤ precision - scale ≤ 29 and 0 ≤ scale ≤ 9. * If type = 'BIGNUMERIC': 1 ≤ precision - scale ≤ 38 and 0 ≤ scale ≤ 38. Acceptable values for precision if only precision is specified but not scale (and thus scale is interpreted to be equal to zero): * If type = 'NUMERIC': 1 ≤ precision ≤ 29. * If type = 'BIGNUMERIC': 1 ≤ precision ≤ 38. If scale is specified but not precision, then it is invalid. *)
  range_element_type : table_field_schema_range_element_type option;  (** Represents the type of a field element. *)
  rounding_mode : [ `Rounding_mode_unspecified | `Round_half_away_from_zero | `Round_half_even | `Unrecognized of string ] option;  (** Optional. Specifies the rounding mode to be used when storing values of NUMERIC and BIGNUMERIC type. *)
  scale : string option;  (** Optional. See documentation for precision. *)
  timestamp_precision : string option;  (** Optional. Precision (maximum number of total digits in base 10) for seconds of TIMESTAMP type. Possible values include: * 6 (Default, for TIMESTAMP type with microsecond precision) * 12 (For TIMESTAMP type with picosecond precision) *)
  type_ : string option;  (** Required. The field data type. Possible values include: * STRING * BYTES * INTEGER (or INT64) * FLOAT (or FLOAT64) * BOOLEAN (or BOOL) * TIMESTAMP * DATE * TIME * DATETIME * GEOGRAPHY * NUMERIC * BIGNUMERIC * JSON * RECORD (or STRUCT) * RANGE Use of RECORD/STRUCT indicates that the field contains a nested schema. *)
}

and table_list_tables_item_view = {
  privacy_policy : privacy_policy option;  (** Specifies the privacy policy for the view. *)
  use_legacy_sql : bool option;  (** True if view is defined in legacy SQL dialect, false if in GoogleSQL. *)
}

and table_list_tables_item = {
  clustering : clustering option;  (** Clustering specification for this table, if configured. *)
  creation_time : string option;  (** Output only. The time when this table was created, in milliseconds since the epoch. *)
  expiration_time : string option;  (** The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. *)
  friendly_name : string option;  (** The user-friendly name for this table. *)
  id : string option;  (** An opaque ID of the table. *)
  kind : string option;  (** The resource type. *)
  labels : (string * string) list option;  (** The labels associated with this table. You can use these to organize and group your tables. *)
  range_partitioning : range_partitioning option;  (** The range partitioning for this table. *)
  require_partition_filter : bool option;  (** Optional. If set to true, queries including this table must specify a partition filter. This filter is used for partition elimination. *)
  table_reference : table_reference option;  (** A reference uniquely identifying table. *)
  time_partitioning : time_partitioning option;  (** The time-based partitioning for this table. *)
  type_ : string option;  (** The type of table. *)
  view : table_list_tables_item_view option;  (** Information about a logical view. *)
}

(** Partial projection of the metadata for a given table in a list response. *)
and table_list = {
  etag : string option;  (** A hash of this page of results. *)
  kind : string option;  (** The type of list. *)
  next_page_token : string option;  (** A token to request the next page of results. *)
  tables : table_list_tables_item list option;  (** Tables in the requested dataset. *)
  total_items : int option;  (** The total number of tables in the dataset. *)
}

(** Table level detail on the usage of metadata caching. Only set for Metadata caching eligible tables referenced in the query. *)
and table_metadata_cache_usage = {
  explanation : string option;  (** Free form human-readable reason metadata caching was unused for the job. *)
  pruning_stats : pruning_stats option;  (** The column metadata index pruning statistics. *)
  staleness : string option;  (** Duration since last refresh as of this job for managed tables (indicates metadata cache staleness as seen by this job). *)
  table_reference : table_reference option;  (** Metadata caching eligible table referenced in the query. *)
  table_type : string option;  (** \[Table type\](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#Table.FIELDS.type). *)
  unused_reason : [ `Unused_reason_unspecified | `Exceeded_max_staleness | `Metadata_caching_not_enabled | `Other_reason | `Unrecognized of string ] option;  (** Reason for not using metadata caching for the table. *)
}

and table_reference = {
  dataset_id : string option;  (** Required. The ID of the dataset containing this table. *)
  project_id : string option;  (** Required. The ID of the project containing this table. *)
  table_id : string option;  (** Required. The ID of the table. The ID can contain Unicode characters in category L (letter), M (mark), N (number), Pc (connector, including underscore), Pd (dash), and Zs (space). For more information, see \[General Category\](https://wikipedia.org/wiki/Unicode_character_property#General_Category). The maximum length is 1,024 characters. Certain operations allow suffixing of the table ID with a partition decorator, such as `sample_table$20190123`. *)
}

(** Replication info of a table created using `AS REPLICA` DDL like: `CREATE MATERIALIZED VIEW mv1 AS REPLICA OF src_mv` *)
and table_replication_info = {
  replicated_source_last_refresh_time : string option;  (** Optional. Output only. If source is a materialized view, this field signifies the last refresh time of the source. *)
  replication_error : error_proto option;  (** Optional. Output only. Replication error that will permanently stopped table replication. *)
  replication_interval_ms : string option;  (** Optional. Specifies the interval at which the source table is polled for updates. It's Optional. If not specified, default replication interval would be applied. *)
  replication_status : [ `Replication_status_unspecified | `Active | `Source_deleted | `Permission_denied | `Unsupported_configuration | `Unrecognized of string ] option;  (** Optional. Output only. Replication status of configured replication. *)
  source_table : table_reference option;  (** Required. Source table reference that is replicated. *)
}

and table_row = {
  f : table_cell list option;  (** Represents a single row in the result set, consisting of one or more fields. *)
}

(** Schema of a table *)
and table_schema = {
  fields : table_field_schema list option;  (** Describes the fields in a table. *)
  foreign_type_info : foreign_type_info option;  (** Optional. Specifies metadata of the foreign data type definition in field schema (TableFieldSchema.foreign_type_definition). *)
}

(** Request message for `TestIamPermissions` method. *)
and test_iam_permissions_request = {
  permissions : string list option;  (** The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `storage.*`) are not allowed. For more information see \[IAM Overview\](https://cloud.google.com/iam/docs/overview#permissions). *)
}

(** Response message for `TestIamPermissions` method. *)
and test_iam_permissions_response = {
  permissions : string list option;  (** A subset of `TestPermissionsRequest.permissions` that the caller is allowed. *)
}

and time_partitioning = {
  expiration_ms : string option;  (** Optional. Number of milliseconds for which to keep the storage for a partition. A wrapper is used here because 0 is an invalid value. *)
  field : string option;  (** Optional. If not set, the table is partitioned by pseudo column '_PARTITIONTIME'; if set, the table is partitioned by this field. The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED. A wrapper is used here because an empty string is an invalid value. *)
  require_partition_filter : bool option;  (** If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. This field is deprecated; please set the field with the same name on the table itself instead. This field needs a wrapper because we want to output the default value, false, if the user explicitly set it. *)
  type_ : string option;  (** Required. The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively. *)
}

(** Options used in model training. *)
and training_options = {
  activation_fn : string option;  (** Activation function of the neural nets. *)
  adjust_step_changes : bool option;  (** If true, detect step changes and make data adjustment in the input time series. *)
  approx_global_feature_contrib : bool option;  (** Whether to use approximate feature contribution method in XGBoost model explanation for global explain. *)
  auto_arima : bool option;  (** Whether to enable auto ARIMA or not. *)
  auto_arima_max_order : string option;  (** The max value of the sum of non-seasonal p and q. *)
  auto_arima_min_order : string option;  (** The min value of the sum of non-seasonal p and q. *)
  auto_class_weights : bool option;  (** Whether to calculate class weights automatically based on the popularity of each label. *)
  batch_size : string option;  (** Batch size for dnn models. *)
  booster_type : [ `Booster_type_unspecified | `Gbtree | `Dart | `Unrecognized of string ] option;  (** Booster type for boosted tree models. *)
  budget_hours : float option;  (** Budget in hours for AutoML training. *)
  calculate_p_values : bool option;  (** Whether or not p-value test should be computed for this model. Only available for linear and logistic regression models. *)
  category_encoding_method : [ `Encoding_method_unspecified | `One_hot_encoding | `Label_encoding | `Dummy_encoding | `Unrecognized of string ] option;  (** Categorical feature encoding method. *)
  clean_spikes_and_dips : bool option;  (** If true, clean spikes and dips in the input time series. *)
  color_space : [ `Color_space_unspecified | `Rgb | `Hsv | `Yiq | `Yuv | `Grayscale | `Unrecognized of string ] option;  (** Enums for color space, used for processing images in Object Table. See more details at https://www.tensorflow.org/io/tutorials/colorspace. *)
  colsample_bylevel : float option;  (** Subsample ratio of columns for each level for boosted tree models. *)
  colsample_bynode : float option;  (** Subsample ratio of columns for each node(split) for boosted tree models. *)
  colsample_bytree : float option;  (** Subsample ratio of columns when constructing each tree for boosted tree models. *)
  contribution_metric : string option;  (** The contribution metric. Applies to contribution analysis models. Allowed formats supported are for summable and summable ratio contribution metrics. These include expressions such as `SUM(x)` or `SUM(x)/SUM(y)`, where x and y are column names from the base table. *)
  dart_normalize_type : [ `Dart_normalize_type_unspecified | `Tree | `Forest | `Unrecognized of string ] option;  (** Type of normalization algorithm for boosted tree models using dart booster. *)
  data_frequency : [ `Data_frequency_unspecified | `Auto_frequency | `Yearly | `Quarterly | `Monthly | `Weekly | `Daily | `Hourly | `Per_minute | `Unrecognized of string ] option;  (** The data frequency of a time series. *)
  data_split_column : string option;  (** The column to split data with. This column won't be used as a feature. 1. When data_split_method is CUSTOM, the corresponding column should be boolean. The rows with true value tag are eval data, and the false are training data. 2. When data_split_method is SEQ, the first DATA_SPLIT_EVAL_FRACTION rows (from smallest to largest) in the corresponding column are used as training data, and the rest are eval data. It respects the order in Orderable data types: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types#data_type_properties *)
  data_split_eval_fraction : float option;  (** The fraction of evaluation data over the whole input data. The rest of data will be used as training data. The format should be double. Accurate to two decimal places. Default value is 0.2. *)
  data_split_method : [ `Data_split_method_unspecified | `Random | `Custom | `Sequential | `No_split | `Auto_split | `Unrecognized of string ] option;  (** The data split type for training and evaluation, e.g. RANDOM. *)
  decompose_time_series : bool option;  (** If true, perform decompose time series and save the results. *)
  dimension_id_columns : string list option;  (** Optional. Names of the columns to slice on. Applies to contribution analysis models. *)
  distance_type : [ `Distance_type_unspecified | `Euclidean | `Cosine | `Unrecognized of string ] option;  (** Distance type for clustering models. *)
  dropout : float option;  (** Dropout probability for dnn models. *)
  early_stop : bool option;  (** Whether to stop early when the loss doesn't improve significantly any more (compared to min_relative_progress). Used only for iterative training algorithms. *)
  enable_global_explain : bool option;  (** If true, enable global explanation during training. *)
  endpoint_idle_ttl : string option;  (** The idle TTL of the endpoint before the resources get destroyed. The default value is 6.5 hours. *)
  feedback_type : [ `Feedback_type_unspecified | `Implicit | `Explicit | `Unrecognized of string ] option;  (** Feedback type that specifies which algorithm to run for matrix factorization. *)
  fit_intercept : bool option;  (** Whether the model should include intercept during model training. *)
  forecast_limit_lower_bound : float option;  (** The forecast limit lower bound that was used during ARIMA model training with limits. To see more details of the algorithm: https://otexts.com/fpp2/limits.html *)
  forecast_limit_upper_bound : float option;  (** The forecast limit upper bound that was used during ARIMA model training with limits. *)
  hidden_units : string list option;  (** Hidden units for dnn models. *)
  holiday_region : [ `Holiday_region_unspecified | `Global | `Na | `Japac | `Emea | `Lac | `Ae | `Ar | `At | `Au | `Be | `Br | `Ca | `Ch | `Cl | `Cn | `Co | `Cs | `Cz | `De | `Dk | `Dz | `Ec | `Ee | `Eg | `Es | `Fi | `Fr | `Gb | `Gr | `Hk | `Hu | `Id | `Ie | `Il | `In | `Ir | `It | `Jp | `Kr | `Lv | `Ma | `Mx | `My | `Ng | `Nl | `No | `Nz | `Pe | `Ph | `Pk | `Pl | `Pt | `Ro | `Rs | `Ru | `Sa | `Se | `Sg | `Si | `Sk | `Th | `Tr | `Tw | `Ua | `Us | `Ve | `Vn | `Za | `Unrecognized of string ] option;  (** The geographical region based on which the holidays are considered in time series modeling. If a valid value is specified, then holiday effects modeling is enabled. *)
  holiday_regions : [ `Holiday_region_unspecified | `Global | `Na | `Japac | `Emea | `Lac | `Ae | `Ar | `At | `Au | `Be | `Br | `Ca | `Ch | `Cl | `Cn | `Co | `Cs | `Cz | `De | `Dk | `Dz | `Ec | `Ee | `Eg | `Es | `Fi | `Fr | `Gb | `Gr | `Hk | `Hu | `Id | `Ie | `Il | `In | `Ir | `It | `Jp | `Kr | `Lv | `Ma | `Mx | `My | `Ng | `Nl | `No | `Nz | `Pe | `Ph | `Pk | `Pl | `Pt | `Ro | `Rs | `Ru | `Sa | `Se | `Sg | `Si | `Sk | `Th | `Tr | `Tw | `Ua | `Us | `Ve | `Vn | `Za | `Unrecognized of string ] list option;  (** A list of geographical regions that are used for time series modeling. *)
  horizon : string option;  (** The number of periods ahead that need to be forecasted. *)
  hparam_tuning_objectives : [ `Hparam_tuning_objective_unspecified | `Mean_absolute_error | `Mean_squared_error | `Mean_squared_log_error | `Median_absolute_error | `R_squared | `Explained_variance | `Precision | `Recall | `Accuracy | `F1_score | `Log_loss | `Roc_auc | `Davies_bouldin_index | `Mean_average_precision | `Normalized_discounted_cumulative_gain | `Average_rank | `Unrecognized of string ] list option;  (** The target evaluation metrics to optimize the hyperparameters for. *)
  hugging_face_model_id : string option;  (** The id of a Hugging Face model. For example, `google/gemma-2-2b-it`. *)
  include_drift : bool option;  (** Include drift when fitting an ARIMA model. *)
  initial_learn_rate : float option;  (** Specifies the initial learning rate for the line search learn rate strategy. *)
  input_label_columns : string list option;  (** Name of input label columns in training data. *)
  instance_weight_column : string option;  (** Name of the instance weight column for training data. This column isn't be used as a feature. *)
  integrated_gradients_num_steps : string option;  (** Number of integral steps for the integrated gradients explain method. *)
  is_test_column : string option;  (** Name of the column used to determine the rows corresponding to control and test. Applies to contribution analysis models. *)
  item_column : string option;  (** Item column specified for matrix factorization models. *)
  kmeans_initialization_column : string option;  (** The column used to provide the initial centroids for kmeans algorithm when kmeans_initialization_method is CUSTOM. *)
  kmeans_initialization_method : [ `Kmeans_initialization_method_unspecified | `Random | `Custom | `Kmeans_plus_plus | `Unrecognized of string ] option;  (** The method used to initialize the centroids for kmeans algorithm. *)
  l1_reg_activation : float option;  (** L1 regularization coefficient to activations. *)
  l1_regularization : float option;  (** L1 regularization coefficient. *)
  l2_regularization : float option;  (** L2 regularization coefficient. *)
  label_class_weights : (string * float) list option;  (** Weights associated with each label class, for rebalancing the training data. Only applicable for classification models. *)
  learn_rate : float option;  (** Learning rate in training. Used only for iterative training algorithms. *)
  learn_rate_strategy : [ `Learn_rate_strategy_unspecified | `Line_search | `Constant | `Unrecognized of string ] option;  (** The strategy to determine learn rate for the current iteration. *)
  loss_type : [ `Loss_type_unspecified | `Mean_squared_loss | `Mean_log_loss | `Unrecognized of string ] option;  (** Type of loss function used during training run. *)
  machine_type : string option;  (** The type of the machine used to deploy and serve the model. *)
  max_iterations : string option;  (** The maximum number of iterations in training. Used only for iterative training algorithms. *)
  max_parallel_trials : string option;  (** Maximum number of trials to run in parallel. *)
  max_replica_count : string option;  (** The maximum number of machine replicas that will be deployed on an endpoint. The default value is equal to min_replica_count. *)
  max_time_series_length : string option;  (** The maximum number of time points in a time series that can be used in modeling the trend component of the time series. Don't use this option with the `timeSeriesLengthFraction` or `minTimeSeriesLength` options. *)
  max_tree_depth : string option;  (** Maximum depth of a tree for boosted tree models. *)
  min_apriori_support : float option;  (** The apriori support minimum. Applies to contribution analysis models. *)
  min_relative_progress : float option;  (** When early_stop is true, stops training when accuracy improvement is less than 'min_relative_progress'. Used only for iterative training algorithms. *)
  min_replica_count : string option;  (** The minimum number of machine replicas that will be always deployed on an endpoint. This value must be greater than or equal to 1. The default value is 1. *)
  min_split_loss : float option;  (** Minimum split loss for boosted tree models. *)
  min_time_series_length : string option;  (** The minimum number of time points in a time series that are used in modeling the trend component of the time series. If you use this option you must also set the `timeSeriesLengthFraction` option. This training option ensures that enough time points are available when you use `timeSeriesLengthFraction` in trend modeling. This is particularly important when forecasting multiple time series in a single query using `timeSeriesIdColumn`. If the total number of time points is less than the `minTimeSeriesLength` value, then the query uses all available time points. *)
  min_tree_child_weight : string option;  (** Minimum sum of instance weight needed in a child for boosted tree models. *)
  model_garden_model_name : string option;  (** The name of a Vertex model garden publisher model. Format is `publishers/\{publisher\}/models/\{model\}\@\{optional_version_id\}`. *)
  model_registry : [ `Model_registry_unspecified | `Vertex_ai | `Unrecognized of string ] option;  (** The model registry. *)
  model_uri : string option;  (** Google Cloud Storage URI from which the model was imported. Only applicable for imported models. *)
  non_seasonal_order : arima_order option;  (** A specification of the non-seasonal part of the ARIMA model: the three components (p, d, q) are the AR order, the degree of differencing, and the MA order. *)
  num_clusters : string option;  (** Number of clusters for clustering models. *)
  num_factors : string option;  (** Num factors specified for matrix factorization models. *)
  num_parallel_tree : string option;  (** Number of parallel trees constructed during each iteration for boosted tree models. *)
  num_principal_components : string option;  (** Number of principal components to keep in the PCA model. Must be <= the number of features. *)
  num_trials : string option;  (** Number of trials to run this hyperparameter tuning job. *)
  optimization_strategy : [ `Optimization_strategy_unspecified | `Batch_gradient_descent | `Normal_equation | `Unrecognized of string ] option;  (** Optimization strategy for training linear regression models. *)
  optimizer : string option;  (** Optimizer used for training the neural nets. *)
  pca_explained_variance_ratio : float option;  (** The minimum ratio of cumulative explained variance that needs to be given by the PCA model. *)
  pca_solver : [ `Unspecified | `Full | `Randomized | `Auto | `Unrecognized of string ] option;  (** The solver for PCA. *)
  reservation_affinity_key : string option;  (** Corresponds to the label key of a reservation resource used by Vertex AI. To target a SPECIFIC_RESERVATION by name, use `compute.googleapis.com/reservation-name` as the key and specify the name of your reservation as its value. *)
  reservation_affinity_type : [ `Reservation_affinity_type_unspecified | `No_reservation | `Any_reservation | `Specific_reservation | `Unrecognized of string ] option;  (** Specifies the reservation affinity type used to configure a Vertex AI resource. The default value is `NO_RESERVATION`. *)
  reservation_affinity_values : string list option;  (** Corresponds to the label values of a reservation resource used by Vertex AI. This must be the full resource name of the reservation or reservation block. *)
  sampled_shapley_num_paths : string option;  (** Number of paths for the sampled Shapley explain method. *)
  scale_features : bool option;  (** If true, scale the feature values by dividing the feature standard deviation. Currently only apply to PCA. *)
  standardize_features : bool option;  (** Whether to standardize numerical features. Default to true. *)
  subsample : float option;  (** Subsample fraction of the training data to grow tree to prevent overfitting for boosted tree models. *)
  tf_version : string option;  (** Based on the selected TF version, the corresponding docker image is used to train external models. *)
  time_series_data_column : string option;  (** Column to be designated as time series data for ARIMA model. *)
  time_series_id_column : string option;  (** The time series id column that was used during ARIMA model training. *)
  time_series_id_columns : string list option;  (** The time series id columns that were used during ARIMA model training. *)
  time_series_length_fraction : float option;  (** The fraction of the interpolated length of the time series that's used to model the time series trend component. All of the time points of the time series are used to model the non-trend component. This training option accelerates modeling training without sacrificing much forecasting accuracy. You can use this option with `minTimeSeriesLength` but not with `maxTimeSeriesLength`. *)
  time_series_timestamp_column : string option;  (** Column to be designated as time series timestamp for ARIMA model. *)
  tree_method : [ `Tree_method_unspecified | `Auto | `Exact | `Approx | `Hist | `Unrecognized of string ] option;  (** Tree construction algorithm for boosted tree models. *)
  trend_smoothing_window_size : string option;  (** Smoothing window size for the trend component. When a positive value is specified, a center moving average smoothing is applied on the history trend. When the smoothing window is out of the boundary at the beginning or the end of the trend, the first element or the last element is padded to fill the smoothing window before the average is applied. *)
  user_column : string option;  (** User column specified for matrix factorization models. *)
  vertex_ai_model_version_aliases : string list option;  (** The version aliases to apply in Vertex AI model registry. Always overwrite if the version aliases exists in a existing model. *)
  wals_alpha : float option;  (** Hyperparameter for matrix factoration when implicit feedback type is specified. *)
  warm_start : bool option;  (** Whether to train a model from the last checkpoint. *)
  xgboost_version : string option;  (** User-selected XGBoost versions for training of XGBoost models. *)
}

(** Information about a single training query run for the model. *)
and training_run = {
  class_level_global_explanations : global_explanation list option;  (** Output only. Global explanation contains the explanation of top features on the class level. Applies to classification models only. *)
  data_split_result : data_split_result option;  (** Output only. Data split result of the training run. Only set when the input data is actually split. *)
  evaluation_metrics : evaluation_metrics option;  (** Output only. The evaluation metrics over training/eval data that were computed at the end of training. *)
  model_level_global_explanation : global_explanation option;  (** Output only. Global explanation contains the explanation of top features on the model level. Applies to both regression and classification models. *)
  results : iteration_result list option;  (** Output only. Output of each iteration run, results.size() <= max_iterations. *)
  start_time : string option;  (** Output only. The start time of this training run. *)
  training_options : training_options option;  (** Output only. Options that were used for this training run, includes user specified and default options that were used. *)
  training_start_time : string option;  (** Output only. The start time of this training run, in milliseconds since epoch. *)
  vertex_ai_model_id : string option;  (** The model id in the \[Vertex AI Model Registry\](https://cloud.google.com/vertex-ai/docs/model-registry/introduction) for this training run. *)
  vertex_ai_model_version : string option;  (** Output only. The model version in the \[Vertex AI Model Registry\](https://cloud.google.com/vertex-ai/docs/model-registry/introduction) for this training run. *)
}

(** \[Alpha\] Information of a multi-statement transaction. *)
and transaction_info = {
  transaction_id : string option;  (** Output only. \[Alpha\] Id of the transaction. *)
}

(** Information about a single transform column. *)
and transform_column = {
  name : string option;  (** Output only. Name of the column. *)
  transform_sql : string option;  (** Output only. The SQL expression used in the column transform. *)
  type_ : standard_sql_data_type option;  (** Output only. Data type of the column after the transform. *)
}

(** Request format for undeleting a dataset. *)
and undelete_dataset_request = {
  deletion_time : string option;  (** Optional. The exact time when the dataset was deleted. If not specified, the most recently deleted version is undeleted. Undeleting a dataset using deletion time is not supported. *)
}

(** This is used for defining User Defined Function (UDF) resources only when using legacy SQL. Users of GoogleSQL should leverage either DDL (e.g. CREATE \[TEMPORARY\] FUNCTION ... ) or the Routines API to define UDF resources. For additional information on migrating, see: https://cloud.google.com/bigquery/docs/reference/standard-sql/migrating-from-legacy-sql#differences_in_user-defined_javascript_functions *)
and user_defined_function_resource = {
  inline_code : string option;  (** \[Pick one\] An inline resource that contains code for a user-defined function (UDF). Providing a inline code resource is equivalent to providing a URI for a file containing the same code. *)
  resource_uri : string option;  (** \[Pick one\] A code resource to load from a Google Cloud Storage URI (gs://bucket/path). *)
}

(** Statistics for a vector search query. Populated as part of JobStatistics2. *)
and vector_search_statistics = {
  index_unused_reasons : index_unused_reason list option;  (** When `indexUsageMode` is `UNUSED` or `PARTIALLY_USED`, this field explains why indexes were not used in all or part of the vector search query. If `indexUsageMode` is `FULLY_USED`, this field is not populated. *)
  index_usage_mode : [ `Index_usage_mode_unspecified | `Unused | `Partially_used | `Fully_used | `Unrecognized of string ] option;  (** Specifies the index usage mode for the query. *)
  stored_columns_usages : stored_columns_usage list option;  (** Specifies the usage of stored columns in the query when stored columns are used in the query. *)
}

(** Describes the definition of a logical view. *)
and view_definition = {
  foreign_definitions : foreign_view_definition list option;  (** Optional. Foreign view representations. *)
  privacy_policy : privacy_policy option;  (** Optional. Specifies the privacy policy for the view. *)
  query : string option;  (** Required. A query that BigQuery executes when the view is referenced. *)
  use_explicit_column_names : bool option;  (** True if the column names are explicitly specified. For example by using the 'CREATE VIEW v(c1, c2) AS ...' syntax. Can only be set for GoogleSQL views. *)
  use_legacy_sql : bool option;  (** Specifies whether to use BigQuery's legacy SQL for this view. The default value is true. If set to false, the view uses BigQuery's \[GoogleSQL\](https://docs.cloud.google.com/bigquery/docs/introduction-sql). Queries and views that reference this view must use the same flag value. A wrapper is used here because the default value is True. *)
  user_defined_function_resources : user_defined_function_resource list option;  (** Describes user-defined function resources used in the query. *)
}

val aggregate_classification_metrics_of_yojson : Yojson.Safe.t -> aggregate_classification_metrics
val yojson_of_aggregate_classification_metrics : aggregate_classification_metrics -> Yojson.Safe.t

val make_aggregate_classification_metrics :
  ?accuracy:float ->
  ?f1_score:float ->
  ?log_loss:float ->
  ?precision:float ->
  ?recall:float ->
  ?roc_auc:float ->
  ?threshold:float ->
  unit ->
  aggregate_classification_metrics

val aggregation_threshold_policy_of_yojson : Yojson.Safe.t -> aggregation_threshold_policy
val yojson_of_aggregation_threshold_policy : aggregation_threshold_policy -> Yojson.Safe.t

val make_aggregation_threshold_policy :
  ?privacy_unit_columns:string list ->
  ?threshold:string ->
  unit ->
  aggregation_threshold_policy

val argument_of_yojson : Yojson.Safe.t -> argument
val yojson_of_argument : argument -> Yojson.Safe.t

val make_argument :
  ?argument_kind:[ `Argument_kind_unspecified | `Fixed_type | `Any_type | `Fixed_table | `Any_table | `Unrecognized of string ] ->
  ?data_type:standard_sql_data_type ->
  ?is_aggregate:bool ->
  ?mode:[ `Mode_unspecified | `In | `Out | `Inout | `Unrecognized of string ] ->
  ?name:string ->
  ?table_type:standard_sql_table_type ->
  unit ->
  argument

val arima_coefficients_of_yojson : Yojson.Safe.t -> arima_coefficients
val yojson_of_arima_coefficients : arima_coefficients -> Yojson.Safe.t

val make_arima_coefficients :
  ?auto_regressive_coefficients:float list ->
  ?intercept_coefficient:float ->
  ?moving_average_coefficients:float list ->
  unit ->
  arima_coefficients

val arima_fitting_metrics_of_yojson : Yojson.Safe.t -> arima_fitting_metrics
val yojson_of_arima_fitting_metrics : arima_fitting_metrics -> Yojson.Safe.t

val make_arima_fitting_metrics :
  ?aic:float ->
  ?log_likelihood:float ->
  ?variance:float ->
  unit ->
  arima_fitting_metrics

val arima_forecasting_metrics_of_yojson : Yojson.Safe.t -> arima_forecasting_metrics
val yojson_of_arima_forecasting_metrics : arima_forecasting_metrics -> Yojson.Safe.t

val make_arima_forecasting_metrics :
  ?arima_fitting_metrics:arima_fitting_metrics list ->
  ?arima_single_model_forecasting_metrics:arima_single_model_forecasting_metrics list ->
  ?has_drift:bool list ->
  ?non_seasonal_order:arima_order list ->
  ?seasonal_periods:[ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list ->
  ?time_series_id:string list ->
  unit ->
  arima_forecasting_metrics

val arima_model_info_of_yojson : Yojson.Safe.t -> arima_model_info
val yojson_of_arima_model_info : arima_model_info -> Yojson.Safe.t

val make_arima_model_info :
  ?arima_coefficients:arima_coefficients ->
  ?arima_fitting_metrics:arima_fitting_metrics ->
  ?has_drift:bool ->
  ?has_holiday_effect:bool ->
  ?has_spikes_and_dips:bool ->
  ?has_step_changes:bool ->
  ?non_seasonal_order:arima_order ->
  ?seasonal_periods:[ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list ->
  ?time_series_id:string ->
  ?time_series_ids:string list ->
  unit ->
  arima_model_info

val arima_order_of_yojson : Yojson.Safe.t -> arima_order
val yojson_of_arima_order : arima_order -> Yojson.Safe.t

val make_arima_order :
  ?d:string ->
  ?p:string ->
  ?q:string ->
  unit ->
  arima_order

val arima_result_of_yojson : Yojson.Safe.t -> arima_result
val yojson_of_arima_result : arima_result -> Yojson.Safe.t

val make_arima_result :
  ?arima_model_info:arima_model_info list ->
  ?seasonal_periods:[ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list ->
  unit ->
  arima_result

val arima_single_model_forecasting_metrics_of_yojson : Yojson.Safe.t -> arima_single_model_forecasting_metrics
val yojson_of_arima_single_model_forecasting_metrics : arima_single_model_forecasting_metrics -> Yojson.Safe.t

val make_arima_single_model_forecasting_metrics :
  ?arima_fitting_metrics:arima_fitting_metrics ->
  ?has_drift:bool ->
  ?has_holiday_effect:bool ->
  ?has_spikes_and_dips:bool ->
  ?has_step_changes:bool ->
  ?non_seasonal_order:arima_order ->
  ?seasonal_periods:[ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list ->
  ?time_series_id:string ->
  ?time_series_ids:string list ->
  unit ->
  arima_single_model_forecasting_metrics

val arrow_record_batch_of_yojson : Yojson.Safe.t -> arrow_record_batch
val yojson_of_arrow_record_batch : arrow_record_batch -> Yojson.Safe.t

val make_arrow_record_batch :
  ?serialized_record_batch:string ->
  unit ->
  arrow_record_batch

val arrow_schema_of_yojson : Yojson.Safe.t -> arrow_schema
val yojson_of_arrow_schema : arrow_schema -> Yojson.Safe.t

val make_arrow_schema :
  ?serialized_schema:string ->
  unit ->
  arrow_schema

val arrow_serialization_options_of_yojson : Yojson.Safe.t -> arrow_serialization_options
val yojson_of_arrow_serialization_options : arrow_serialization_options -> Yojson.Safe.t

val make_arrow_serialization_options :
  ?buffer_compression:[ `Compression_unspecified | `Lz4_frame | `Zstd | `Unrecognized of string ] ->
  ?picos_timestamp_precision:[ `Picos_timestamp_precision_unspecified | `Timestamp_precision_micros | `Timestamp_precision_nanos | `Timestamp_precision_picos | `Unrecognized of string ] ->
  unit ->
  arrow_serialization_options

val audit_config_of_yojson : Yojson.Safe.t -> audit_config
val yojson_of_audit_config : audit_config -> Yojson.Safe.t

val make_audit_config :
  ?audit_log_configs:audit_log_config list ->
  ?service:string ->
  unit ->
  audit_config

val audit_log_config_of_yojson : Yojson.Safe.t -> audit_log_config
val yojson_of_audit_log_config : audit_log_config -> Yojson.Safe.t

val make_audit_log_config :
  ?exempted_members:string list ->
  ?log_type:[ `Log_type_unspecified | `Admin_read | `Data_write | `Data_read | `Unrecognized of string ] ->
  unit ->
  audit_log_config

val avro_options_of_yojson : Yojson.Safe.t -> avro_options
val yojson_of_avro_options : avro_options -> Yojson.Safe.t

val make_avro_options :
  ?use_avro_logical_types:bool ->
  unit ->
  avro_options

val batch_delete_row_access_policies_request_of_yojson : Yojson.Safe.t -> batch_delete_row_access_policies_request
val yojson_of_batch_delete_row_access_policies_request : batch_delete_row_access_policies_request -> Yojson.Safe.t

val make_batch_delete_row_access_policies_request :
  ?force:bool ->
  ?policy_ids:string list ->
  unit ->
  batch_delete_row_access_policies_request

val bi_engine_reason_of_yojson : Yojson.Safe.t -> bi_engine_reason
val yojson_of_bi_engine_reason : bi_engine_reason -> Yojson.Safe.t

val make_bi_engine_reason :
  ?code:[ `Code_unspecified | `No_reservation | `Insufficient_reservation | `Unsupported_sql_text | `Input_too_large | `Other_reason | `Table_excluded | `Unrecognized of string ] ->
  ?message:string ->
  unit ->
  bi_engine_reason

val bi_engine_statistics_of_yojson : Yojson.Safe.t -> bi_engine_statistics
val yojson_of_bi_engine_statistics : bi_engine_statistics -> Yojson.Safe.t

val make_bi_engine_statistics :
  ?acceleration_mode:[ `Bi_engine_acceleration_mode_unspecified | `Bi_engine_disabled | `Partial_input | `Full_input | `Full_query | `Unrecognized of string ] ->
  ?bi_engine_mode:[ `Acceleration_mode_unspecified | `Disabled | `Partial | `Full | `Unrecognized of string ] ->
  ?bi_engine_reasons:bi_engine_reason list ->
  unit ->
  bi_engine_statistics

val big_lake_configuration_of_yojson : Yojson.Safe.t -> big_lake_configuration
val yojson_of_big_lake_configuration : big_lake_configuration -> Yojson.Safe.t

val make_big_lake_configuration :
  ?connection_id:string ->
  ?file_format:[ `File_format_unspecified | `Parquet | `Unrecognized of string ] ->
  ?storage_uri:string ->
  ?table_format:[ `Table_format_unspecified | `Iceberg | `Unrecognized of string ] ->
  unit ->
  big_lake_configuration

val big_query_model_training_of_yojson : Yojson.Safe.t -> big_query_model_training
val yojson_of_big_query_model_training : big_query_model_training -> Yojson.Safe.t

val make_big_query_model_training :
  ?current_iteration:int ->
  ?expected_total_iterations:string ->
  unit ->
  big_query_model_training

val bigtable_column_of_yojson : Yojson.Safe.t -> bigtable_column
val yojson_of_bigtable_column : bigtable_column -> Yojson.Safe.t

val make_bigtable_column :
  ?encoding:string ->
  ?field_name:string ->
  ?only_read_latest:bool ->
  ?proto_config:bigtable_proto_config ->
  ?qualifier_encoded:string ->
  ?qualifier_string:string ->
  ?type_:string ->
  unit ->
  bigtable_column

val bigtable_column_family_of_yojson : Yojson.Safe.t -> bigtable_column_family
val yojson_of_bigtable_column_family : bigtable_column_family -> Yojson.Safe.t

val make_bigtable_column_family :
  ?columns:bigtable_column list ->
  ?encoding:string ->
  ?family_id:string ->
  ?only_read_latest:bool ->
  ?proto_config:bigtable_proto_config ->
  ?type_:string ->
  unit ->
  bigtable_column_family

val bigtable_options_of_yojson : Yojson.Safe.t -> bigtable_options
val yojson_of_bigtable_options : bigtable_options -> Yojson.Safe.t

val make_bigtable_options :
  ?column_families:bigtable_column_family list ->
  ?ignore_unspecified_column_families:bool ->
  ?output_column_families_as_json:bool ->
  ?read_rowkey_as_string:bool ->
  unit ->
  bigtable_options

val bigtable_proto_config_of_yojson : Yojson.Safe.t -> bigtable_proto_config
val yojson_of_bigtable_proto_config : bigtable_proto_config -> Yojson.Safe.t

val make_bigtable_proto_config :
  ?proto_message_name:string ->
  ?schema_bundle_id:string ->
  unit ->
  bigtable_proto_config

val binary_classification_metrics_of_yojson : Yojson.Safe.t -> binary_classification_metrics
val yojson_of_binary_classification_metrics : binary_classification_metrics -> Yojson.Safe.t

val make_binary_classification_metrics :
  ?aggregate_classification_metrics:aggregate_classification_metrics ->
  ?binary_confusion_matrix_list:binary_confusion_matrix list ->
  ?negative_label:string ->
  ?positive_label:string ->
  unit ->
  binary_classification_metrics

val binary_confusion_matrix_of_yojson : Yojson.Safe.t -> binary_confusion_matrix
val yojson_of_binary_confusion_matrix : binary_confusion_matrix -> Yojson.Safe.t

val make_binary_confusion_matrix :
  ?accuracy:float ->
  ?f1_score:float ->
  ?false_negatives:string ->
  ?false_positives:string ->
  ?positive_class_threshold:float ->
  ?precision:float ->
  ?recall:float ->
  ?true_negatives:string ->
  ?true_positives:string ->
  unit ->
  binary_confusion_matrix

val binding_of_yojson : Yojson.Safe.t -> binding
val yojson_of_binding : binding -> Yojson.Safe.t

val make_binding :
  ?condition:expr ->
  ?members:string list ->
  ?role:string ->
  unit ->
  binding

val bqml_iteration_result_of_yojson : Yojson.Safe.t -> bqml_iteration_result
val yojson_of_bqml_iteration_result : bqml_iteration_result -> Yojson.Safe.t

val make_bqml_iteration_result :
  ?duration_ms:string ->
  ?eval_loss:float ->
  ?index:int ->
  ?learn_rate:float ->
  ?training_loss:float ->
  unit ->
  bqml_iteration_result

val bqml_training_run_training_options_of_yojson : Yojson.Safe.t -> bqml_training_run_training_options
val yojson_of_bqml_training_run_training_options : bqml_training_run_training_options -> Yojson.Safe.t

val make_bqml_training_run_training_options :
  ?early_stop:bool ->
  ?l1_reg:float ->
  ?l2_reg:float ->
  ?learn_rate:float ->
  ?learn_rate_strategy:string ->
  ?line_search_init_learn_rate:float ->
  ?max_iteration:string ->
  ?min_rel_progress:float ->
  ?warm_start:bool ->
  unit ->
  bqml_training_run_training_options

val bqml_training_run_of_yojson : Yojson.Safe.t -> bqml_training_run
val yojson_of_bqml_training_run : bqml_training_run -> Yojson.Safe.t

val make_bqml_training_run :
  ?iteration_results:bqml_iteration_result list ->
  ?start_time:string ->
  ?state:string ->
  ?training_options:bqml_training_run_training_options ->
  unit ->
  bqml_training_run

val categorical_value_of_yojson : Yojson.Safe.t -> categorical_value
val yojson_of_categorical_value : categorical_value -> Yojson.Safe.t

val make_categorical_value :
  ?category_counts:category_count list ->
  unit ->
  categorical_value

val category_count_of_yojson : Yojson.Safe.t -> category_count
val yojson_of_category_count : category_count -> Yojson.Safe.t

val make_category_count :
  ?category:string ->
  ?count:string ->
  unit ->
  category_count

val clone_definition_of_yojson : Yojson.Safe.t -> clone_definition
val yojson_of_clone_definition : clone_definition -> Yojson.Safe.t

val make_clone_definition :
  ?base_table_reference:table_reference ->
  ?clone_time:string ->
  unit ->
  clone_definition

val cluster_of_yojson : Yojson.Safe.t -> cluster
val yojson_of_cluster : cluster -> Yojson.Safe.t

val make_cluster :
  ?centroid_id:string ->
  ?count:string ->
  ?feature_values:feature_value list ->
  unit ->
  cluster

val cluster_info_of_yojson : Yojson.Safe.t -> cluster_info
val yojson_of_cluster_info : cluster_info -> Yojson.Safe.t

val make_cluster_info :
  ?centroid_id:string ->
  ?cluster_radius:float ->
  ?cluster_size:string ->
  unit ->
  cluster_info

val clustering_of_yojson : Yojson.Safe.t -> clustering
val yojson_of_clustering : clustering -> Yojson.Safe.t

val make_clustering :
  ?fields:string list ->
  unit ->
  clustering

val clustering_metrics_of_yojson : Yojson.Safe.t -> clustering_metrics
val yojson_of_clustering_metrics : clustering_metrics -> Yojson.Safe.t

val make_clustering_metrics :
  ?clusters:cluster list ->
  ?davies_bouldin_index:float ->
  ?mean_squared_distance:float ->
  unit ->
  clustering_metrics

val confusion_matrix_of_yojson : Yojson.Safe.t -> confusion_matrix
val yojson_of_confusion_matrix : confusion_matrix -> Yojson.Safe.t

val make_confusion_matrix :
  ?confidence_threshold:float ->
  ?rows:row list ->
  unit ->
  confusion_matrix

val connection_property_of_yojson : Yojson.Safe.t -> connection_property
val yojson_of_connection_property : connection_property -> Yojson.Safe.t

val make_connection_property :
  ?key:string ->
  ?value:string ->
  unit ->
  connection_property

val csv_options_of_yojson : Yojson.Safe.t -> csv_options
val yojson_of_csv_options : csv_options -> Yojson.Safe.t

val make_csv_options :
  ?allow_jagged_rows:bool ->
  ?allow_quoted_newlines:bool ->
  ?encoding:string ->
  ?field_delimiter:string ->
  ?null_marker:string ->
  ?null_markers:string list ->
  ?preserve_ascii_control_characters:bool ->
  ?quote:string ->
  ?skip_leading_rows:string ->
  ?source_column_match:string ->
  unit ->
  csv_options

val data_format_options_of_yojson : Yojson.Safe.t -> data_format_options
val yojson_of_data_format_options : data_format_options -> Yojson.Safe.t

val make_data_format_options :
  ?timestamp_output_format:[ `Timestamp_output_format_unspecified | `Float64 | `Int64 | `Iso8601_string | `Unrecognized of string ] ->
  ?use_int64_timestamp:bool ->
  unit ->
  data_format_options

val data_masking_statistics_of_yojson : Yojson.Safe.t -> data_masking_statistics
val yojson_of_data_masking_statistics : data_masking_statistics -> Yojson.Safe.t

val make_data_masking_statistics :
  ?data_masking_applied:bool ->
  unit ->
  data_masking_statistics

val data_policy_list_of_yojson : Yojson.Safe.t -> data_policy_list
val yojson_of_data_policy_list : data_policy_list -> Yojson.Safe.t

val make_data_policy_list :
  ?data_policies:data_policy_option list ->
  unit ->
  data_policy_list

val data_policy_option_of_yojson : Yojson.Safe.t -> data_policy_option
val yojson_of_data_policy_option : data_policy_option -> Yojson.Safe.t

val make_data_policy_option :
  ?name:string ->
  unit ->
  data_policy_option

val data_split_result_of_yojson : Yojson.Safe.t -> data_split_result
val yojson_of_data_split_result : data_split_result -> Yojson.Safe.t

val make_data_split_result :
  ?evaluation_table:table_reference ->
  ?test_table:table_reference ->
  ?training_table:table_reference ->
  unit ->
  data_split_result

val dataset_access_item_of_yojson : Yojson.Safe.t -> dataset_access_item
val yojson_of_dataset_access_item : dataset_access_item -> Yojson.Safe.t

val make_dataset_access_item :
  ?condition:expr ->
  ?dataset:dataset_access_entry ->
  ?domain:string ->
  ?group_by_email:string ->
  ?iam_member:string ->
  ?role:string ->
  ?routine:routine_reference ->
  ?special_group:string ->
  ?user_by_email:string ->
  ?view:table_reference ->
  unit ->
  dataset_access_item

val dataset_tags_item_of_yojson : Yojson.Safe.t -> dataset_tags_item
val yojson_of_dataset_tags_item : dataset_tags_item -> Yojson.Safe.t

val make_dataset_tags_item :
  ?tag_key:string ->
  ?tag_value:string ->
  unit ->
  dataset_tags_item

val dataset_of_yojson : Yojson.Safe.t -> dataset
val yojson_of_dataset : dataset -> Yojson.Safe.t

val make_dataset :
  ?access:dataset_access_item list ->
  ?catalog_source:string ->
  ?creation_time:string ->
  ?dataset_reference:dataset_reference ->
  ?default_collation:string ->
  ?default_encryption_configuration:encryption_configuration ->
  ?default_partition_expiration_ms:string ->
  ?default_rounding_mode:[ `Rounding_mode_unspecified | `Round_half_away_from_zero | `Round_half_even | `Unrecognized of string ] ->
  ?default_table_expiration_ms:string ->
  ?description:string ->
  ?etag:string ->
  ?external_catalog_dataset_options:external_catalog_dataset_options ->
  ?external_dataset_reference:external_dataset_reference ->
  ?friendly_name:string ->
  ?id:string ->
  ?is_case_insensitive:bool ->
  ?kind:string ->
  ?labels:(string * string) list ->
  ?last_modified_time:string ->
  ?linked_dataset_metadata:linked_dataset_metadata ->
  ?linked_dataset_source:linked_dataset_source ->
  ?location:string ->
  ?max_time_travel_hours:string ->
  ?resource_tags:(string * string) list ->
  ?restrictions:restriction_config ->
  ?satisfies_pzi:bool ->
  ?satisfies_pzs:bool ->
  ?self_link:string ->
  ?storage_billing_model:[ `Storage_billing_model_unspecified | `Logical | `Physical | `Unrecognized of string ] ->
  ?tags:dataset_tags_item list ->
  ?type_:string ->
  unit ->
  dataset

val dataset_access_entry_of_yojson : Yojson.Safe.t -> dataset_access_entry
val yojson_of_dataset_access_entry : dataset_access_entry -> Yojson.Safe.t

val make_dataset_access_entry :
  ?dataset:dataset_reference ->
  ?target_types:[ `Target_type_unspecified | `Views | `Routines | `Unrecognized of string ] list ->
  unit ->
  dataset_access_entry

val dataset_list_datasets_item_of_yojson : Yojson.Safe.t -> dataset_list_datasets_item
val yojson_of_dataset_list_datasets_item : dataset_list_datasets_item -> Yojson.Safe.t

val make_dataset_list_datasets_item :
  ?catalog_source:string ->
  ?dataset_reference:dataset_reference ->
  ?external_dataset_reference:external_dataset_reference ->
  ?friendly_name:string ->
  ?id:string ->
  ?kind:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?type_:string ->
  unit ->
  dataset_list_datasets_item

val dataset_list_of_yojson : Yojson.Safe.t -> dataset_list
val yojson_of_dataset_list : dataset_list -> Yojson.Safe.t

val make_dataset_list :
  ?datasets:dataset_list_datasets_item list ->
  ?etag:string ->
  ?kind:string ->
  ?next_page_token:string ->
  ?unreachable:string list ->
  unit ->
  dataset_list

val dataset_reference_of_yojson : Yojson.Safe.t -> dataset_reference
val yojson_of_dataset_reference : dataset_reference -> Yojson.Safe.t

val make_dataset_reference :
  ?dataset_id:string ->
  ?project_id:string ->
  unit ->
  dataset_reference

val destination_table_properties_of_yojson : Yojson.Safe.t -> destination_table_properties
val yojson_of_destination_table_properties : destination_table_properties -> Yojson.Safe.t

val make_destination_table_properties :
  ?description:string ->
  ?expiration_time:string ->
  ?friendly_name:string ->
  ?labels:(string * string) list ->
  unit ->
  destination_table_properties

val differential_privacy_policy_of_yojson : Yojson.Safe.t -> differential_privacy_policy
val yojson_of_differential_privacy_policy : differential_privacy_policy -> Yojson.Safe.t

val make_differential_privacy_policy :
  ?delta_budget:float ->
  ?delta_budget_remaining:float ->
  ?delta_per_query:float ->
  ?epsilon_budget:float ->
  ?epsilon_budget_remaining:float ->
  ?max_epsilon_per_query:float ->
  ?max_groups_contributed:string ->
  ?privacy_unit_column:string ->
  unit ->
  differential_privacy_policy

val dimensionality_reduction_metrics_of_yojson : Yojson.Safe.t -> dimensionality_reduction_metrics
val yojson_of_dimensionality_reduction_metrics : dimensionality_reduction_metrics -> Yojson.Safe.t

val make_dimensionality_reduction_metrics :
  ?total_explained_variance_ratio:float ->
  unit ->
  dimensionality_reduction_metrics

val dml_statistics_of_yojson : Yojson.Safe.t -> dml_statistics
val yojson_of_dml_statistics : dml_statistics -> Yojson.Safe.t

val make_dml_statistics :
  ?deleted_row_count:string ->
  ?dml_mode:[ `Dml_mode_unspecified | `Coarse_grained_dml | `Fine_grained_dml | `Unrecognized of string ] ->
  ?fine_grained_dml_unused_reason:[ `Fine_grained_dml_unused_reason_unspecified | `Max_partition_size_exceeded | `Table_not_enrolled | `Dml_in_multi_statement_transaction | `Unrecognized of string ] ->
  ?inserted_row_count:string ->
  ?updated_row_count:string ->
  unit ->
  dml_statistics

val double_candidates_of_yojson : Yojson.Safe.t -> double_candidates
val yojson_of_double_candidates : double_candidates -> Yojson.Safe.t

val make_double_candidates :
  ?candidates:float list ->
  unit ->
  double_candidates

val double_hparam_search_space_of_yojson : Yojson.Safe.t -> double_hparam_search_space
val yojson_of_double_hparam_search_space : double_hparam_search_space -> Yojson.Safe.t

val make_double_hparam_search_space :
  ?candidates:double_candidates ->
  ?range:double_range ->
  unit ->
  double_hparam_search_space

val double_range_of_yojson : Yojson.Safe.t -> double_range
val yojson_of_double_range : double_range -> Yojson.Safe.t

val make_double_range :
  ?max:float ->
  ?min:float ->
  unit ->
  double_range

val encryption_configuration_of_yojson : Yojson.Safe.t -> encryption_configuration
val yojson_of_encryption_configuration : encryption_configuration -> Yojson.Safe.t

val make_encryption_configuration :
  ?kms_key_name:string ->
  unit ->
  encryption_configuration

val entry_of_yojson : Yojson.Safe.t -> entry
val yojson_of_entry : entry -> Yojson.Safe.t

val make_entry :
  ?item_count:string ->
  ?predicted_label:string ->
  unit ->
  entry

val error_proto_of_yojson : Yojson.Safe.t -> error_proto
val yojson_of_error_proto : error_proto -> Yojson.Safe.t

val make_error_proto :
  ?debug_info:string ->
  ?location:string ->
  ?message:string ->
  ?reason:string ->
  unit ->
  error_proto

val evaluation_metrics_of_yojson : Yojson.Safe.t -> evaluation_metrics
val yojson_of_evaluation_metrics : evaluation_metrics -> Yojson.Safe.t

val make_evaluation_metrics :
  ?arima_forecasting_metrics:arima_forecasting_metrics ->
  ?binary_classification_metrics:binary_classification_metrics ->
  ?clustering_metrics:clustering_metrics ->
  ?dimensionality_reduction_metrics:dimensionality_reduction_metrics ->
  ?multi_class_classification_metrics:multi_class_classification_metrics ->
  ?ranking_metrics:ranking_metrics ->
  ?regression_metrics:regression_metrics ->
  unit ->
  evaluation_metrics

val explain_query_stage_of_yojson : Yojson.Safe.t -> explain_query_stage
val yojson_of_explain_query_stage : explain_query_stage -> Yojson.Safe.t

val make_explain_query_stage :
  ?completed_parallel_inputs:string ->
  ?compute_mode:[ `Compute_mode_unspecified | `Bigquery | `Bi_engine | `Unrecognized of string ] ->
  ?compute_ms_avg:string ->
  ?compute_ms_max:string ->
  ?compute_ratio_avg:float ->
  ?compute_ratio_max:float ->
  ?end_ms:string ->
  ?id:string ->
  ?input_stages:string list ->
  ?name:string ->
  ?parallel_inputs:string ->
  ?read_ms_avg:string ->
  ?read_ms_max:string ->
  ?read_ratio_avg:float ->
  ?read_ratio_max:float ->
  ?records_read:string ->
  ?records_written:string ->
  ?shuffle_output_bytes:string ->
  ?shuffle_output_bytes_spilled:string ->
  ?slot_ms:string ->
  ?start_ms:string ->
  ?status:string ->
  ?steps:explain_query_step list ->
  ?wait_ms_avg:string ->
  ?wait_ms_max:string ->
  ?wait_ratio_avg:float ->
  ?wait_ratio_max:float ->
  ?write_ms_avg:string ->
  ?write_ms_max:string ->
  ?write_ratio_avg:float ->
  ?write_ratio_max:float ->
  unit ->
  explain_query_stage

val explain_query_step_of_yojson : Yojson.Safe.t -> explain_query_step
val yojson_of_explain_query_step : explain_query_step -> Yojson.Safe.t

val make_explain_query_step :
  ?kind:string ->
  ?substeps:string list ->
  unit ->
  explain_query_step

val explanation_of_yojson : Yojson.Safe.t -> explanation
val yojson_of_explanation : explanation -> Yojson.Safe.t

val make_explanation :
  ?attribution:float ->
  ?feature_name:string ->
  unit ->
  explanation

val export_data_statistics_of_yojson : Yojson.Safe.t -> export_data_statistics
val yojson_of_export_data_statistics : export_data_statistics -> Yojson.Safe.t

val make_export_data_statistics :
  ?file_count:string ->
  ?row_count:string ->
  unit ->
  export_data_statistics

val expr_of_yojson : Yojson.Safe.t -> expr
val yojson_of_expr : expr -> Yojson.Safe.t

val make_expr :
  ?description:string ->
  ?expression:string ->
  ?location:string ->
  ?title:string ->
  unit ->
  expr

val external_catalog_dataset_options_of_yojson : Yojson.Safe.t -> external_catalog_dataset_options
val yojson_of_external_catalog_dataset_options : external_catalog_dataset_options -> Yojson.Safe.t

val make_external_catalog_dataset_options :
  ?default_storage_location_uri:string ->
  ?parameters:(string * string) list ->
  unit ->
  external_catalog_dataset_options

val external_catalog_table_options_of_yojson : Yojson.Safe.t -> external_catalog_table_options
val yojson_of_external_catalog_table_options : external_catalog_table_options -> Yojson.Safe.t

val make_external_catalog_table_options :
  ?connection_id:string ->
  ?parameters:(string * string) list ->
  ?storage_descriptor:storage_descriptor ->
  unit ->
  external_catalog_table_options

val external_data_configuration_of_yojson : Yojson.Safe.t -> external_data_configuration
val yojson_of_external_data_configuration : external_data_configuration -> Yojson.Safe.t

val make_external_data_configuration :
  ?autodetect:bool ->
  ?avro_options:avro_options ->
  ?bigtable_options:bigtable_options ->
  ?compression:string ->
  ?connection_id:string ->
  ?csv_options:csv_options ->
  ?date_format:string ->
  ?datetime_format:string ->
  ?decimal_target_types:[ `Decimal_target_type_unspecified | `Numeric | `Bignumeric | `String | `Unrecognized of string ] list ->
  ?file_set_spec_type:[ `File_set_spec_type_file_system_match | `File_set_spec_type_new_line_delimited_manifest | `Unrecognized of string ] ->
  ?google_sheets_options:google_sheets_options ->
  ?hive_partitioning_options:hive_partitioning_options ->
  ?ignore_unknown_values:bool ->
  ?json_extension:[ `Json_extension_unspecified | `Geojson | `Unrecognized of string ] ->
  ?json_options:json_options ->
  ?max_bad_records:int ->
  ?metadata_cache_mode:[ `Metadata_cache_mode_unspecified | `Automatic | `Manual | `Unrecognized of string ] ->
  ?object_metadata:[ `Object_metadata_unspecified | `Directory | `Simple | `Unrecognized of string ] ->
  ?parquet_options:parquet_options ->
  ?reference_file_schema_uri:string ->
  ?schema:table_schema ->
  ?source_format:string ->
  ?source_uris:string list ->
  ?time_format:string ->
  ?time_zone:string ->
  ?timestamp_format:string ->
  ?timestamp_target_precision:int list ->
  unit ->
  external_data_configuration

val external_dataset_reference_of_yojson : Yojson.Safe.t -> external_dataset_reference
val yojson_of_external_dataset_reference : external_dataset_reference -> Yojson.Safe.t

val make_external_dataset_reference :
  ?connection:string ->
  ?external_source:string ->
  unit ->
  external_dataset_reference

val external_runtime_options_of_yojson : Yojson.Safe.t -> external_runtime_options
val yojson_of_external_runtime_options : external_runtime_options -> Yojson.Safe.t

val make_external_runtime_options :
  ?container_cpu:float ->
  ?container_memory:string ->
  ?container_request_concurrency:string ->
  ?max_batching_rows:string ->
  ?runtime_connection:string ->
  ?runtime_version:string ->
  ?volume_mounts:external_volume_mount list ->
  unit ->
  external_runtime_options

val external_service_cost_of_yojson : Yojson.Safe.t -> external_service_cost
val yojson_of_external_service_cost : external_service_cost -> Yojson.Safe.t

val make_external_service_cost :
  ?billing_method:string ->
  ?bytes_billed:string ->
  ?bytes_processed:string ->
  ?external_service:string ->
  ?reserved_slot_count:string ->
  ?slot_ms:string ->
  unit ->
  external_service_cost

val external_volume_mount_of_yojson : Yojson.Safe.t -> external_volume_mount
val yojson_of_external_volume_mount : external_volume_mount -> Yojson.Safe.t

val make_external_volume_mount :
  ?mount_path:string ->
  ?source_path:string ->
  unit ->
  external_volume_mount

val feature_value_of_yojson : Yojson.Safe.t -> feature_value
val yojson_of_feature_value : feature_value -> Yojson.Safe.t

val make_feature_value :
  ?categorical_value:categorical_value ->
  ?feature_column:string ->
  ?numerical_value:float ->
  unit ->
  feature_value

val foreign_type_info_of_yojson : Yojson.Safe.t -> foreign_type_info
val yojson_of_foreign_type_info : foreign_type_info -> Yojson.Safe.t

val make_foreign_type_info :
  ?type_system:[ `Type_system_unspecified | `Hive | `Unrecognized of string ] ->
  unit ->
  foreign_type_info

val foreign_view_definition_of_yojson : Yojson.Safe.t -> foreign_view_definition
val yojson_of_foreign_view_definition : foreign_view_definition -> Yojson.Safe.t

val make_foreign_view_definition :
  ?dialect:string ->
  ?query:string ->
  unit ->
  foreign_view_definition

val gen_ai_error_stats_of_yojson : Yojson.Safe.t -> gen_ai_error_stats
val yojson_of_gen_ai_error_stats : gen_ai_error_stats -> Yojson.Safe.t

val make_gen_ai_error_stats :
  ?errors:string list ->
  unit ->
  gen_ai_error_stats

val gen_ai_function_cache_stats_of_yojson : Yojson.Safe.t -> gen_ai_function_cache_stats
val yojson_of_gen_ai_function_cache_stats : gen_ai_function_cache_stats -> Yojson.Safe.t

val make_gen_ai_function_cache_stats :
  ?num_cache_hit_rows:string ->
  unit ->
  gen_ai_function_cache_stats

val gen_ai_function_cost_optimization_stats_of_yojson : Yojson.Safe.t -> gen_ai_function_cost_optimization_stats
val yojson_of_gen_ai_function_cost_optimization_stats : gen_ai_function_cost_optimization_stats -> Yojson.Safe.t

val make_gen_ai_function_cost_optimization_stats :
  ?message:string ->
  ?num_cost_optimized_rows:string ->
  unit ->
  gen_ai_function_cost_optimization_stats

val gen_ai_function_error_stats_of_yojson : Yojson.Safe.t -> gen_ai_function_error_stats
val yojson_of_gen_ai_function_error_stats : gen_ai_function_error_stats -> Yojson.Safe.t

val make_gen_ai_function_error_stats :
  ?errors:string list ->
  ?num_failed_rows:string ->
  unit ->
  gen_ai_function_error_stats

val gen_ai_function_stats_of_yojson : Yojson.Safe.t -> gen_ai_function_stats
val yojson_of_gen_ai_function_stats : gen_ai_function_stats -> Yojson.Safe.t

val make_gen_ai_function_stats :
  ?cache_stats:gen_ai_function_cache_stats ->
  ?cost_optimization_stats:gen_ai_function_cost_optimization_stats ->
  ?error_stats:gen_ai_function_error_stats ->
  ?function_name:string ->
  ?num_processed_rows:string ->
  ?prompt:string ->
  unit ->
  gen_ai_function_stats

val gen_ai_stats_of_yojson : Yojson.Safe.t -> gen_ai_stats
val yojson_of_gen_ai_stats : gen_ai_stats -> Yojson.Safe.t

val make_gen_ai_stats :
  ?error_stats:gen_ai_error_stats ->
  ?function_stats:gen_ai_function_stats list ->
  unit ->
  gen_ai_stats

val generated_column_of_yojson : Yojson.Safe.t -> generated_column
val yojson_of_generated_column : generated_column -> Yojson.Safe.t

val make_generated_column :
  ?generated_expression_info:generated_expression_info ->
  ?generated_mode:[ `Generated_mode_unspecified | `Generated_always | `Generated_by_default | `Unrecognized of string ] ->
  unit ->
  generated_column

val generated_expression_info_of_yojson : Yojson.Safe.t -> generated_expression_info
val yojson_of_generated_expression_info : generated_expression_info -> Yojson.Safe.t

val make_generated_expression_info :
  ?asynchronous:bool ->
  ?generation_expression:string ->
  ?stored:bool ->
  unit ->
  generated_expression_info

val get_iam_policy_request_of_yojson : Yojson.Safe.t -> get_iam_policy_request
val yojson_of_get_iam_policy_request : get_iam_policy_request -> Yojson.Safe.t

val make_get_iam_policy_request :
  ?options:get_policy_options ->
  unit ->
  get_iam_policy_request

val get_policy_options_of_yojson : Yojson.Safe.t -> get_policy_options
val yojson_of_get_policy_options : get_policy_options -> Yojson.Safe.t

val make_get_policy_options :
  ?requested_policy_version:int ->
  unit ->
  get_policy_options

val get_query_results_response_of_yojson : Yojson.Safe.t -> get_query_results_response
val yojson_of_get_query_results_response : get_query_results_response -> Yojson.Safe.t

val make_get_query_results_response :
  ?cache_hit:bool ->
  ?errors:error_proto list ->
  ?etag:string ->
  ?job_complete:bool ->
  ?job_reference:job_reference ->
  ?kind:string ->
  ?num_dml_affected_rows:string ->
  ?page_token:string ->
  ?rows:table_row list ->
  ?schema:table_schema ->
  ?total_bytes_processed:string ->
  ?total_rows:string ->
  unit ->
  get_query_results_response

val get_service_account_response_of_yojson : Yojson.Safe.t -> get_service_account_response
val yojson_of_get_service_account_response : get_service_account_response -> Yojson.Safe.t

val make_get_service_account_response :
  ?email:string ->
  ?kind:string ->
  unit ->
  get_service_account_response

val global_explanation_of_yojson : Yojson.Safe.t -> global_explanation
val yojson_of_global_explanation : global_explanation -> Yojson.Safe.t

val make_global_explanation :
  ?class_label:string ->
  ?explanations:explanation list ->
  unit ->
  global_explanation

val google_sheets_options_of_yojson : Yojson.Safe.t -> google_sheets_options
val yojson_of_google_sheets_options : google_sheets_options -> Yojson.Safe.t

val make_google_sheets_options :
  ?range:string ->
  ?skip_leading_rows:string ->
  unit ->
  google_sheets_options

val high_cardinality_join_of_yojson : Yojson.Safe.t -> high_cardinality_join
val yojson_of_high_cardinality_join : high_cardinality_join -> Yojson.Safe.t

val make_high_cardinality_join :
  ?left_rows:string ->
  ?output_rows:string ->
  ?right_rows:string ->
  ?step_index:int ->
  unit ->
  high_cardinality_join

val hive_partitioning_options_of_yojson : Yojson.Safe.t -> hive_partitioning_options
val yojson_of_hive_partitioning_options : hive_partitioning_options -> Yojson.Safe.t

val make_hive_partitioning_options :
  ?fields:string list ->
  ?mode:string ->
  ?require_partition_filter:bool ->
  ?source_uri_prefix:string ->
  unit ->
  hive_partitioning_options

val hparam_search_spaces_of_yojson : Yojson.Safe.t -> hparam_search_spaces
val yojson_of_hparam_search_spaces : hparam_search_spaces -> Yojson.Safe.t

val make_hparam_search_spaces :
  ?activation_fn:string_hparam_search_space ->
  ?batch_size:int_hparam_search_space ->
  ?booster_type:string_hparam_search_space ->
  ?colsample_bylevel:double_hparam_search_space ->
  ?colsample_bynode:double_hparam_search_space ->
  ?colsample_bytree:double_hparam_search_space ->
  ?dart_normalize_type:string_hparam_search_space ->
  ?dropout:double_hparam_search_space ->
  ?hidden_units:int_array_hparam_search_space ->
  ?l1_reg:double_hparam_search_space ->
  ?l2_reg:double_hparam_search_space ->
  ?learn_rate:double_hparam_search_space ->
  ?max_tree_depth:int_hparam_search_space ->
  ?min_split_loss:double_hparam_search_space ->
  ?min_tree_child_weight:int_hparam_search_space ->
  ?num_clusters:int_hparam_search_space ->
  ?num_factors:int_hparam_search_space ->
  ?num_parallel_tree:int_hparam_search_space ->
  ?optimizer:string_hparam_search_space ->
  ?subsample:double_hparam_search_space ->
  ?tree_method:string_hparam_search_space ->
  ?wals_alpha:double_hparam_search_space ->
  unit ->
  hparam_search_spaces

val hparam_tuning_trial_of_yojson : Yojson.Safe.t -> hparam_tuning_trial
val yojson_of_hparam_tuning_trial : hparam_tuning_trial -> Yojson.Safe.t

val make_hparam_tuning_trial :
  ?end_time_ms:string ->
  ?error_message:string ->
  ?eval_loss:float ->
  ?evaluation_metrics:evaluation_metrics ->
  ?hparam_tuning_evaluation_metrics:evaluation_metrics ->
  ?hparams:training_options ->
  ?start_time_ms:string ->
  ?status:[ `Trial_status_unspecified | `Not_started | `Running | `Succeeded | `Failed | `Infeasible | `Stopped_early | `Unrecognized of string ] ->
  ?training_loss:float ->
  ?trial_id:string ->
  unit ->
  hparam_tuning_trial

val incremental_result_stats_of_yojson : Yojson.Safe.t -> incremental_result_stats
val yojson_of_incremental_result_stats : incremental_result_stats -> Yojson.Safe.t

val make_incremental_result_stats :
  ?disabled_reason:[ `Disabled_reason_unspecified | `Other | `Unsupported_operator | `Unrecognized of string ] ->
  ?disabled_reason_details:string ->
  ?first_incremental_row_time:string ->
  ?incremental_row_count:string ->
  ?last_incremental_row_time:string ->
  ?result_set_last_modify_time:string ->
  ?result_set_last_replace_time:string ->
  unit ->
  incremental_result_stats

val index_pruning_stats_of_yojson : Yojson.Safe.t -> index_pruning_stats
val yojson_of_index_pruning_stats : index_pruning_stats -> Yojson.Safe.t

val make_index_pruning_stats :
  ?base_table:table_reference ->
  ?index_id:string ->
  ?post_index_pruning_parallel_input_count:string ->
  ?pre_index_pruning_parallel_input_count:string ->
  unit ->
  index_pruning_stats

val index_unused_reason_of_yojson : Yojson.Safe.t -> index_unused_reason
val yojson_of_index_unused_reason : index_unused_reason -> Yojson.Safe.t

val make_index_unused_reason :
  ?base_table:table_reference ->
  ?code:[ `Code_unspecified | `Index_config_not_available | `Pending_index_creation | `Base_table_truncated | `Index_config_modified | `Time_travel_query | `No_pruning_power | `Unindexed_search_fields | `Unsupported_search_pattern | `Optimized_with_materialized_view | `Secured_by_data_masking | `Mismatched_text_analyzer | `Base_table_too_small | `Base_table_too_large | `Estimated_performance_gain_too_low | `Column_metadata_index_not_used | `Not_supported_in_standard_edition | `Index_suppressed_by_function_option | `Query_cache_hit | `Stale_index | `Internal_error | `Other_reason | `Unrecognized of string ] ->
  ?index_name:string ->
  ?message:string ->
  unit ->
  index_unused_reason

val input_data_change_of_yojson : Yojson.Safe.t -> input_data_change
val yojson_of_input_data_change : input_data_change -> Yojson.Safe.t

val make_input_data_change :
  ?records_read_diff_percentage:float ->
  unit ->
  input_data_change

val int_array_of_yojson : Yojson.Safe.t -> int_array
val yojson_of_int_array : int_array -> Yojson.Safe.t

val make_int_array :
  ?elements:string list ->
  unit ->
  int_array

val int_array_hparam_search_space_of_yojson : Yojson.Safe.t -> int_array_hparam_search_space
val yojson_of_int_array_hparam_search_space : int_array_hparam_search_space -> Yojson.Safe.t

val make_int_array_hparam_search_space :
  ?candidates:int_array list ->
  unit ->
  int_array_hparam_search_space

val int_candidates_of_yojson : Yojson.Safe.t -> int_candidates
val yojson_of_int_candidates : int_candidates -> Yojson.Safe.t

val make_int_candidates :
  ?candidates:string list ->
  unit ->
  int_candidates

val int_hparam_search_space_of_yojson : Yojson.Safe.t -> int_hparam_search_space
val yojson_of_int_hparam_search_space : int_hparam_search_space -> Yojson.Safe.t

val make_int_hparam_search_space :
  ?candidates:int_candidates ->
  ?range:int_range ->
  unit ->
  int_hparam_search_space

val int_range_of_yojson : Yojson.Safe.t -> int_range
val yojson_of_int_range : int_range -> Yojson.Safe.t

val make_int_range :
  ?max:string ->
  ?min:string ->
  unit ->
  int_range

val iteration_result_of_yojson : Yojson.Safe.t -> iteration_result
val yojson_of_iteration_result : iteration_result -> Yojson.Safe.t

val make_iteration_result :
  ?arima_result:arima_result ->
  ?cluster_infos:cluster_info list ->
  ?duration_ms:string ->
  ?eval_loss:float ->
  ?index:int ->
  ?learn_rate:float ->
  ?principal_component_infos:principal_component_info list ->
  ?training_loss:float ->
  unit ->
  iteration_result

val job_of_yojson : Yojson.Safe.t -> job
val yojson_of_job : job -> Yojson.Safe.t

val make_job :
  ?configuration:job_configuration ->
  ?etag:string ->
  ?id:string ->
  ?job_creation_reason:job_creation_reason ->
  ?job_reference:job_reference ->
  ?kind:string ->
  ?principal_subject:string ->
  ?self_link:string ->
  ?statistics:job_statistics ->
  ?status:job_status ->
  ?user_email:string ->
  unit ->
  job

val job_cancel_response_of_yojson : Yojson.Safe.t -> job_cancel_response
val yojson_of_job_cancel_response : job_cancel_response -> Yojson.Safe.t

val make_job_cancel_response :
  ?job:job ->
  ?kind:string ->
  unit ->
  job_cancel_response

val job_configuration_of_yojson : Yojson.Safe.t -> job_configuration
val yojson_of_job_configuration : job_configuration -> Yojson.Safe.t

val make_job_configuration :
  ?copy:job_configuration_table_copy ->
  ?dry_run:bool ->
  ?extract:job_configuration_extract ->
  ?job_timeout_ms:string ->
  ?job_type:string ->
  ?labels:(string * string) list ->
  ?load:job_configuration_load ->
  ?max_slots:int ->
  ?query:job_configuration_query ->
  ?reservation:string ->
  unit ->
  job_configuration

val job_configuration_extract_of_yojson : Yojson.Safe.t -> job_configuration_extract
val yojson_of_job_configuration_extract : job_configuration_extract -> Yojson.Safe.t

val make_job_configuration_extract :
  ?compression:string ->
  ?destination_format:string ->
  ?destination_uri:string ->
  ?destination_uris:string list ->
  ?field_delimiter:string ->
  ?model_extract_options:model_extract_options ->
  ?native_geography_export_enabled:bool ->
  ?print_header:bool ->
  ?source_model:model_reference ->
  ?source_table:table_reference ->
  ?use_avro_logical_types:bool ->
  unit ->
  job_configuration_extract

val job_configuration_load_of_yojson : Yojson.Safe.t -> job_configuration_load
val yojson_of_job_configuration_load : job_configuration_load -> Yojson.Safe.t

val make_job_configuration_load :
  ?allow_jagged_rows:bool ->
  ?allow_quoted_newlines:bool ->
  ?autodetect:bool ->
  ?clustering:clustering ->
  ?column_name_character_map:[ `Column_name_character_map_unspecified | `Strict | `V1 | `V2 | `Unrecognized of string ] ->
  ?connection_properties:connection_property list ->
  ?copy_files_only:bool ->
  ?create_disposition:string ->
  ?create_session:bool ->
  ?date_format:string ->
  ?datetime_format:string ->
  ?decimal_target_types:[ `Decimal_target_type_unspecified | `Numeric | `Bignumeric | `String | `Unrecognized of string ] list ->
  ?destination_encryption_configuration:encryption_configuration ->
  ?destination_table:table_reference ->
  ?destination_table_properties:destination_table_properties ->
  ?encoding:string ->
  ?field_delimiter:string ->
  ?file_set_spec_type:[ `File_set_spec_type_file_system_match | `File_set_spec_type_new_line_delimited_manifest | `Unrecognized of string ] ->
  ?hive_partitioning_options:hive_partitioning_options ->
  ?ignore_unknown_values:bool ->
  ?json_extension:[ `Json_extension_unspecified | `Geojson | `Unrecognized of string ] ->
  ?max_bad_records:int ->
  ?null_marker:string ->
  ?null_markers:string list ->
  ?parquet_options:parquet_options ->
  ?preserve_ascii_control_characters:bool ->
  ?projection_fields:string list ->
  ?quote:string ->
  ?range_partitioning:range_partitioning ->
  ?reference_file_schema_uri:string ->
  ?schema:table_schema ->
  ?schema_inline:string ->
  ?schema_inline_format:string ->
  ?schema_update_options:string list ->
  ?skip_leading_rows:int ->
  ?source_column_match:[ `Source_column_match_unspecified | `Position | `Name | `Unrecognized of string ] ->
  ?source_format:string ->
  ?source_uris:string list ->
  ?time_format:string ->
  ?time_partitioning:time_partitioning ->
  ?time_zone:string ->
  ?timestamp_format:string ->
  ?timestamp_target_precision:int list ->
  ?use_avro_logical_types:bool ->
  ?write_disposition:string ->
  unit ->
  job_configuration_load

val job_configuration_query_of_yojson : Yojson.Safe.t -> job_configuration_query
val yojson_of_job_configuration_query : job_configuration_query -> Yojson.Safe.t

val make_job_configuration_query :
  ?allow_large_results:bool ->
  ?clustering:clustering ->
  ?connection_properties:connection_property list ->
  ?continuous:bool ->
  ?create_disposition:string ->
  ?create_session:bool ->
  ?default_dataset:dataset_reference ->
  ?destination_encryption_configuration:encryption_configuration ->
  ?destination_table:table_reference ->
  ?flatten_results:bool ->
  ?maximum_billing_tier:int ->
  ?maximum_bytes_billed:string ->
  ?parameter_mode:string ->
  ?preserve_nulls:bool ->
  ?priority:string ->
  ?query:string ->
  ?query_parameters:query_parameter list ->
  ?range_partitioning:range_partitioning ->
  ?schema_update_options:string list ->
  ?script_options:script_options ->
  ?secure_context:secure_context ->
  ?system_variables:system_variables ->
  ?table_definitions:(string * external_data_configuration) list ->
  ?time_partitioning:time_partitioning ->
  ?use_legacy_sql:bool ->
  ?use_query_cache:bool ->
  ?user_defined_function_resources:user_defined_function_resource list ->
  ?write_disposition:string ->
  ?write_incremental_results:bool ->
  unit ->
  job_configuration_query

val job_configuration_table_copy_of_yojson : Yojson.Safe.t -> job_configuration_table_copy
val yojson_of_job_configuration_table_copy : job_configuration_table_copy -> Yojson.Safe.t

val make_job_configuration_table_copy :
  ?create_disposition:string ->
  ?destination_encryption_configuration:encryption_configuration ->
  ?destination_expiration_time:string ->
  ?destination_table:table_reference ->
  ?operation_type:[ `Operation_type_unspecified | `Copy | `Snapshot | `Restore | `Clone | `Unrecognized of string ] ->
  ?source_table:table_reference ->
  ?source_tables:table_reference list ->
  ?write_disposition:string ->
  unit ->
  job_configuration_table_copy

val job_creation_reason_of_yojson : Yojson.Safe.t -> job_creation_reason
val yojson_of_job_creation_reason : job_creation_reason -> Yojson.Safe.t

val make_job_creation_reason :
  ?code:[ `Code_unspecified | `Requested | `Long_running | `Large_results | `Other | `Unrecognized of string ] ->
  unit ->
  job_creation_reason

val job_list_jobs_item_of_yojson : Yojson.Safe.t -> job_list_jobs_item
val yojson_of_job_list_jobs_item : job_list_jobs_item -> Yojson.Safe.t

val make_job_list_jobs_item :
  ?configuration:job_configuration ->
  ?error_result:error_proto ->
  ?id:string ->
  ?job_reference:job_reference ->
  ?kind:string ->
  ?principal_subject:string ->
  ?state:string ->
  ?statistics:job_statistics ->
  ?status:job_status ->
  ?user_email:string ->
  unit ->
  job_list_jobs_item

val job_list_of_yojson : Yojson.Safe.t -> job_list
val yojson_of_job_list : job_list -> Yojson.Safe.t

val make_job_list :
  ?etag:string ->
  ?jobs:job_list_jobs_item list ->
  ?kind:string ->
  ?next_page_token:string ->
  ?unreachable:string list ->
  unit ->
  job_list

val job_reference_of_yojson : Yojson.Safe.t -> job_reference
val yojson_of_job_reference : job_reference -> Yojson.Safe.t

val make_job_reference :
  ?job_id:string ->
  ?location:string ->
  ?project_id:string ->
  unit ->
  job_reference

val job_statistics_reservation_usage_item_of_yojson : Yojson.Safe.t -> job_statistics_reservation_usage_item
val yojson_of_job_statistics_reservation_usage_item : job_statistics_reservation_usage_item -> Yojson.Safe.t

val make_job_statistics_reservation_usage_item :
  ?name:string ->
  ?slot_ms:string ->
  unit ->
  job_statistics_reservation_usage_item

val job_statistics_of_yojson : Yojson.Safe.t -> job_statistics
val yojson_of_job_statistics : job_statistics -> Yojson.Safe.t

val make_job_statistics :
  ?completion_ratio:float ->
  ?copy:job_statistics5 ->
  ?creation_time:string ->
  ?data_masking_statistics:data_masking_statistics ->
  ?edition:[ `Reservation_edition_unspecified | `Standard | `Enterprise | `Enterprise_plus | `Unrecognized of string ] ->
  ?end_time:string ->
  ?extract:job_statistics4 ->
  ?final_execution_duration_ms:string ->
  ?global_query_remote_regions:string list ->
  ?load:job_statistics3 ->
  ?num_child_jobs:string ->
  ?parent_global_query_job:job_reference ->
  ?parent_job_id:string ->
  ?query:job_statistics2 ->
  ?quota_deferments:string list ->
  ?reservation_group_path:string list ->
  ?reservation_usage:job_statistics_reservation_usage_item list ->
  ?reservation_id:string ->
  ?row_level_security_statistics:row_level_security_statistics ->
  ?script_statistics:script_statistics ->
  ?session_info:session_info ->
  ?start_time:string ->
  ?total_bytes_processed:string ->
  ?total_slot_ms:string ->
  ?transaction_info:transaction_info ->
  unit ->
  job_statistics

val job_statistics2_reservation_usage_item_of_yojson : Yojson.Safe.t -> job_statistics2_reservation_usage_item
val yojson_of_job_statistics2_reservation_usage_item : job_statistics2_reservation_usage_item -> Yojson.Safe.t

val make_job_statistics2_reservation_usage_item :
  ?name:string ->
  ?slot_ms:string ->
  unit ->
  job_statistics2_reservation_usage_item

val job_statistics2_of_yojson : Yojson.Safe.t -> job_statistics2
val yojson_of_job_statistics2 : job_statistics2 -> Yojson.Safe.t

val make_job_statistics2 :
  ?bi_engine_statistics:bi_engine_statistics ->
  ?billing_tier:int ->
  ?cache_hit:bool ->
  ?dcl_target_dataset:dataset_reference ->
  ?dcl_target_table:table_reference ->
  ?dcl_target_view:table_reference ->
  ?ddl_affected_row_access_policy_count:string ->
  ?ddl_destination_table:table_reference ->
  ?ddl_operation_performed:string ->
  ?ddl_target_dataset:dataset_reference ->
  ?ddl_target_routine:routine_reference ->
  ?ddl_target_row_access_policy:row_access_policy_reference ->
  ?ddl_target_table:table_reference ->
  ?dml_stats:dml_statistics ->
  ?estimated_bytes_processed:string ->
  ?export_data_statistics:export_data_statistics ->
  ?external_service_costs:external_service_cost list ->
  ?gen_ai_stats:gen_ai_stats ->
  ?incremental_result_stats:incremental_result_stats ->
  ?load_query_statistics:load_query_statistics ->
  ?materialized_view_statistics:materialized_view_statistics ->
  ?metadata_cache_statistics:metadata_cache_statistics ->
  ?ml_statistics:ml_statistics ->
  ?model_training:big_query_model_training ->
  ?model_training_current_iteration:int ->
  ?model_training_expected_total_iteration:string ->
  ?num_dml_affected_rows:string ->
  ?object_storage_stats:object_storage_stats list ->
  ?performance_insights:performance_insights ->
  ?query_info:query_info ->
  ?query_plan:explain_query_stage list ->
  ?referenced_logical_views:table_reference list ->
  ?referenced_property_graphs:property_graph_reference list ->
  ?referenced_routines:routine_reference list ->
  ?referenced_tables:table_reference list ->
  ?reservation_usage:job_statistics2_reservation_usage_item list ->
  ?schema:table_schema ->
  ?search_statistics:search_statistics ->
  ?spark_statistics:spark_statistics ->
  ?statement_type:string ->
  ?timeline:query_timeline_sample list ->
  ?total_bytes_billed:string ->
  ?total_bytes_processed:string ->
  ?total_bytes_processed_accuracy:string ->
  ?total_partitions_processed:string ->
  ?total_services_sku_slot_ms:string ->
  ?total_slot_ms:string ->
  ?transferred_bytes:string ->
  ?undeclared_query_parameters:query_parameter list ->
  ?vector_search_statistics:vector_search_statistics ->
  unit ->
  job_statistics2

val job_statistics3_of_yojson : Yojson.Safe.t -> job_statistics3
val yojson_of_job_statistics3 : job_statistics3 -> Yojson.Safe.t

val make_job_statistics3 :
  ?bad_records:string ->
  ?input_file_bytes:string ->
  ?input_files:string ->
  ?output_bytes:string ->
  ?output_rows:string ->
  ?timeline:query_timeline_sample list ->
  unit ->
  job_statistics3

val job_statistics4_of_yojson : Yojson.Safe.t -> job_statistics4
val yojson_of_job_statistics4 : job_statistics4 -> Yojson.Safe.t

val make_job_statistics4 :
  ?destination_uri_file_counts:string list ->
  ?input_bytes:string ->
  ?timeline:query_timeline_sample list ->
  unit ->
  job_statistics4

val job_statistics5_of_yojson : Yojson.Safe.t -> job_statistics5
val yojson_of_job_statistics5 : job_statistics5 -> Yojson.Safe.t

val make_job_statistics5 :
  ?copied_logical_bytes:string ->
  ?copied_rows:string ->
  ?remote_destination_region:string ->
  unit ->
  job_statistics5

val job_status_of_yojson : Yojson.Safe.t -> job_status
val yojson_of_job_status : job_status -> Yojson.Safe.t

val make_job_status :
  ?error_result:error_proto ->
  ?errors:error_proto list ->
  ?state:string ->
  unit ->
  job_status

val join_restriction_policy_of_yojson : Yojson.Safe.t -> join_restriction_policy
val yojson_of_join_restriction_policy : join_restriction_policy -> Yojson.Safe.t

val make_join_restriction_policy :
  ?join_allowed_columns:string list ->
  ?join_condition:[ `Join_condition_unspecified | `Join_any | `Join_all | `Join_not_required | `Join_blocked | `Unrecognized of string ] ->
  unit ->
  join_restriction_policy

val json_object_of_yojson : Yojson.Safe.t -> json_object
val yojson_of_json_object : json_object -> Yojson.Safe.t

val json_options_of_yojson : Yojson.Safe.t -> json_options
val yojson_of_json_options : json_options -> Yojson.Safe.t

val make_json_options :
  ?encoding:string ->
  unit ->
  json_options

val json_value_of_yojson : Yojson.Safe.t -> json_value
val yojson_of_json_value : json_value -> Yojson.Safe.t

val linked_dataset_metadata_of_yojson : Yojson.Safe.t -> linked_dataset_metadata
val yojson_of_linked_dataset_metadata : linked_dataset_metadata -> Yojson.Safe.t

val make_linked_dataset_metadata :
  ?link_state:[ `Link_state_unspecified | `Linked | `Unlinked | `Unrecognized of string ] ->
  unit ->
  linked_dataset_metadata

val linked_dataset_source_of_yojson : Yojson.Safe.t -> linked_dataset_source
val yojson_of_linked_dataset_source : linked_dataset_source -> Yojson.Safe.t

val make_linked_dataset_source :
  ?source_dataset:dataset_reference ->
  unit ->
  linked_dataset_source

val list_models_response_of_yojson : Yojson.Safe.t -> list_models_response
val yojson_of_list_models_response : list_models_response -> Yojson.Safe.t

val make_list_models_response :
  ?models:model list ->
  ?next_page_token:string ->
  unit ->
  list_models_response

val list_routines_response_of_yojson : Yojson.Safe.t -> list_routines_response
val yojson_of_list_routines_response : list_routines_response -> Yojson.Safe.t

val make_list_routines_response :
  ?next_page_token:string ->
  ?routines:routine list ->
  unit ->
  list_routines_response

val list_row_access_policies_response_of_yojson : Yojson.Safe.t -> list_row_access_policies_response
val yojson_of_list_row_access_policies_response : list_row_access_policies_response -> Yojson.Safe.t

val make_list_row_access_policies_response :
  ?next_page_token:string ->
  ?row_access_policies:row_access_policy list ->
  unit ->
  list_row_access_policies_response

val load_query_statistics_of_yojson : Yojson.Safe.t -> load_query_statistics
val yojson_of_load_query_statistics : load_query_statistics -> Yojson.Safe.t

val make_load_query_statistics :
  ?bad_records:string ->
  ?bytes_transferred:string ->
  ?input_file_bytes:string ->
  ?input_files:string ->
  ?output_bytes:string ->
  ?output_rows:string ->
  unit ->
  load_query_statistics

val location_metadata_of_yojson : Yojson.Safe.t -> location_metadata
val yojson_of_location_metadata : location_metadata -> Yojson.Safe.t

val make_location_metadata :
  ?legacy_location_id:string ->
  unit ->
  location_metadata

val materialized_view_of_yojson : Yojson.Safe.t -> materialized_view
val yojson_of_materialized_view : materialized_view -> Yojson.Safe.t

val make_materialized_view :
  ?chosen:bool ->
  ?estimated_bytes_saved:string ->
  ?rejected_reason:[ `Rejected_reason_unspecified | `No_data | `Cost | `Base_table_truncated | `Base_table_data_change | `Base_table_partition_expiration_change | `Base_table_expired_partition | `Base_table_incompatible_metadata_change | `Time_zone | `Out_of_time_travel_window | `Base_table_fine_grained_security_policy | `Base_table_too_stale | `Unrecognized of string ] ->
  ?table_reference:table_reference ->
  unit ->
  materialized_view

val materialized_view_definition_of_yojson : Yojson.Safe.t -> materialized_view_definition
val yojson_of_materialized_view_definition : materialized_view_definition -> Yojson.Safe.t

val make_materialized_view_definition :
  ?allow_non_incremental_definition:bool ->
  ?enable_refresh:bool ->
  ?last_refresh_time:string ->
  ?max_staleness:string ->
  ?query:string ->
  ?refresh_interval_ms:string ->
  unit ->
  materialized_view_definition

val materialized_view_statistics_of_yojson : Yojson.Safe.t -> materialized_view_statistics
val yojson_of_materialized_view_statistics : materialized_view_statistics -> Yojson.Safe.t

val make_materialized_view_statistics :
  ?materialized_view:materialized_view list ->
  unit ->
  materialized_view_statistics

val materialized_view_status_of_yojson : Yojson.Safe.t -> materialized_view_status
val yojson_of_materialized_view_status : materialized_view_status -> Yojson.Safe.t

val make_materialized_view_status :
  ?last_refresh_status:error_proto ->
  ?refresh_watermark:string ->
  unit ->
  materialized_view_status

val metadata_cache_staleness_insight_of_yojson : Yojson.Safe.t -> metadata_cache_staleness_insight
val yojson_of_metadata_cache_staleness_insight : metadata_cache_staleness_insight -> Yojson.Safe.t

val make_metadata_cache_staleness_insight :
  ?avg_previous_staleness_ms:string ->
  ?staleness_percentage_increase:float ->
  unit ->
  metadata_cache_staleness_insight

val metadata_cache_statistics_of_yojson : Yojson.Safe.t -> metadata_cache_statistics
val yojson_of_metadata_cache_statistics : metadata_cache_statistics -> Yojson.Safe.t

val make_metadata_cache_statistics :
  ?table_metadata_cache_usage:table_metadata_cache_usage list ->
  unit ->
  metadata_cache_statistics

val ml_statistics_of_yojson : Yojson.Safe.t -> ml_statistics
val yojson_of_ml_statistics : ml_statistics -> Yojson.Safe.t

val make_ml_statistics :
  ?hparam_trials:hparam_tuning_trial list ->
  ?iteration_results:iteration_result list ->
  ?max_iterations:string ->
  ?model_type:[ `Model_type_unspecified | `Linear_regression | `Logistic_regression | `Kmeans | `Matrix_factorization | `Dnn_classifier | `Tensorflow | `Dnn_regressor | `Xgboost | `Boosted_tree_regressor | `Boosted_tree_classifier | `Arima | `Automl_regressor | `Automl_classifier | `Pca | `Dnn_linear_combined_classifier | `Dnn_linear_combined_regressor | `Autoencoder | `Arima_plus | `Arima_plus_xreg | `Random_forest_regressor | `Random_forest_classifier | `Tensorflow_lite | `Onnx | `Transform_only | `Contribution_analysis | `Unrecognized of string ] ->
  ?training_type:[ `Training_type_unspecified | `Single_training | `Hparam_tuning | `Unrecognized of string ] ->
  unit ->
  ml_statistics

val model_of_yojson : Yojson.Safe.t -> model
val yojson_of_model : model -> Yojson.Safe.t

val make_model :
  ?best_trial_id:string ->
  ?creation_time:string ->
  ?default_trial_id:string ->
  ?description:string ->
  ?encryption_configuration:encryption_configuration ->
  ?etag:string ->
  ?expiration_time:string ->
  ?feature_columns:standard_sql_field list ->
  ?friendly_name:string ->
  ?hparam_search_spaces:hparam_search_spaces ->
  ?hparam_trials:hparam_tuning_trial list ->
  ?label_columns:standard_sql_field list ->
  ?labels:(string * string) list ->
  ?last_modified_time:string ->
  ?location:string ->
  ?model_reference:model_reference ->
  ?model_type:[ `Model_type_unspecified | `Linear_regression | `Logistic_regression | `Kmeans | `Matrix_factorization | `Dnn_classifier | `Tensorflow | `Dnn_regressor | `Xgboost | `Boosted_tree_regressor | `Boosted_tree_classifier | `Arima | `Automl_regressor | `Automl_classifier | `Pca | `Dnn_linear_combined_classifier | `Dnn_linear_combined_regressor | `Autoencoder | `Arima_plus | `Arima_plus_xreg | `Random_forest_regressor | `Random_forest_classifier | `Tensorflow_lite | `Onnx | `Transform_only | `Contribution_analysis | `Unrecognized of string ] ->
  ?optimal_trial_ids:string list ->
  ?remote_model_info:remote_model_info ->
  ?training_runs:training_run list ->
  ?transform_columns:transform_column list ->
  unit ->
  model

val model_definition_model_options_of_yojson : Yojson.Safe.t -> model_definition_model_options
val yojson_of_model_definition_model_options : model_definition_model_options -> Yojson.Safe.t

val make_model_definition_model_options :
  ?labels:string list ->
  ?loss_type:string ->
  ?model_type:string ->
  unit ->
  model_definition_model_options

val model_definition_of_yojson : Yojson.Safe.t -> model_definition
val yojson_of_model_definition : model_definition -> Yojson.Safe.t

val make_model_definition :
  ?model_options:model_definition_model_options ->
  ?training_runs:bqml_training_run list ->
  unit ->
  model_definition

val model_extract_options_of_yojson : Yojson.Safe.t -> model_extract_options
val yojson_of_model_extract_options : model_extract_options -> Yojson.Safe.t

val make_model_extract_options :
  ?trial_id:string ->
  unit ->
  model_extract_options

val model_reference_of_yojson : Yojson.Safe.t -> model_reference
val yojson_of_model_reference : model_reference -> Yojson.Safe.t

val make_model_reference :
  ?dataset_id:string ->
  ?model_id:string ->
  ?project_id:string ->
  unit ->
  model_reference

val multi_class_classification_metrics_of_yojson : Yojson.Safe.t -> multi_class_classification_metrics
val yojson_of_multi_class_classification_metrics : multi_class_classification_metrics -> Yojson.Safe.t

val make_multi_class_classification_metrics :
  ?aggregate_classification_metrics:aggregate_classification_metrics ->
  ?confusion_matrix_list:confusion_matrix list ->
  unit ->
  multi_class_classification_metrics

val object_storage_stats_of_yojson : Yojson.Safe.t -> object_storage_stats
val yojson_of_object_storage_stats : object_storage_stats -> Yojson.Safe.t

val make_object_storage_stats :
  ?cache_bytes_read:string ->
  ?cloud_provider:[ `Cloud_provider_unspecified | `Gcp | `Aws | `Azure | `Unrecognized of string ] ->
  ?object_storage_bytes_read:string ->
  unit ->
  object_storage_stats

val parquet_options_of_yojson : Yojson.Safe.t -> parquet_options
val yojson_of_parquet_options : parquet_options -> Yojson.Safe.t

val make_parquet_options :
  ?enable_list_inference:bool ->
  ?enum_as_string:bool ->
  ?map_target_type:[ `Map_target_type_unspecified | `Array_of_struct | `Unrecognized of string ] ->
  unit ->
  parquet_options

val partition_skew_of_yojson : Yojson.Safe.t -> partition_skew
val yojson_of_partition_skew : partition_skew -> Yojson.Safe.t

val make_partition_skew :
  ?skew_sources:skew_source list ->
  unit ->
  partition_skew

val partitioned_column_of_yojson : Yojson.Safe.t -> partitioned_column
val yojson_of_partitioned_column : partitioned_column -> Yojson.Safe.t

val make_partitioned_column :
  ?field:string ->
  unit ->
  partitioned_column

val partitioning_definition_of_yojson : Yojson.Safe.t -> partitioning_definition
val yojson_of_partitioning_definition : partitioning_definition -> Yojson.Safe.t

val make_partitioning_definition :
  ?partitioned_column:partitioned_column list ->
  unit ->
  partitioning_definition

val performance_insights_of_yojson : Yojson.Safe.t -> performance_insights
val yojson_of_performance_insights : performance_insights -> Yojson.Safe.t

val make_performance_insights :
  ?avg_previous_execution_ms:string ->
  ?stage_performance_change_insights:stage_performance_change_insight list ->
  ?stage_performance_standalone_insights:stage_performance_standalone_insight list ->
  ?table_change_insights:table_change_insight list ->
  unit ->
  performance_insights

val policy_of_yojson : Yojson.Safe.t -> policy
val yojson_of_policy : policy -> Yojson.Safe.t

val make_policy :
  ?audit_configs:audit_config list ->
  ?bindings:binding list ->
  ?etag:string ->
  ?version:int ->
  unit ->
  policy

val principal_component_info_of_yojson : Yojson.Safe.t -> principal_component_info
val yojson_of_principal_component_info : principal_component_info -> Yojson.Safe.t

val make_principal_component_info :
  ?cumulative_explained_variance_ratio:float ->
  ?explained_variance:float ->
  ?explained_variance_ratio:float ->
  ?principal_component_id:string ->
  unit ->
  principal_component_info

val privacy_policy_of_yojson : Yojson.Safe.t -> privacy_policy
val yojson_of_privacy_policy : privacy_policy -> Yojson.Safe.t

val make_privacy_policy :
  ?aggregation_threshold_policy:aggregation_threshold_policy ->
  ?differential_privacy_policy:differential_privacy_policy ->
  ?join_restriction_policy:join_restriction_policy ->
  unit ->
  privacy_policy

val project_list_projects_item_of_yojson : Yojson.Safe.t -> project_list_projects_item
val yojson_of_project_list_projects_item : project_list_projects_item -> Yojson.Safe.t

val make_project_list_projects_item :
  ?friendly_name:string ->
  ?id:string ->
  ?kind:string ->
  ?numeric_id:string ->
  ?project_reference:project_reference ->
  unit ->
  project_list_projects_item

val project_list_of_yojson : Yojson.Safe.t -> project_list
val yojson_of_project_list : project_list -> Yojson.Safe.t

val make_project_list :
  ?etag:string ->
  ?kind:string ->
  ?next_page_token:string ->
  ?projects:project_list_projects_item list ->
  ?total_items:int ->
  unit ->
  project_list

val project_reference_of_yojson : Yojson.Safe.t -> project_reference
val yojson_of_project_reference : project_reference -> Yojson.Safe.t

val make_project_reference :
  ?project_id:string ->
  unit ->
  project_reference

val property_graph_reference_of_yojson : Yojson.Safe.t -> property_graph_reference
val yojson_of_property_graph_reference : property_graph_reference -> Yojson.Safe.t

val make_property_graph_reference :
  ?dataset_id:string ->
  ?project_id:string ->
  ?property_graph_id:string ->
  unit ->
  property_graph_reference

val pruning_stats_of_yojson : Yojson.Safe.t -> pruning_stats
val yojson_of_pruning_stats : pruning_stats -> Yojson.Safe.t

val make_pruning_stats :
  ?post_cmeta_pruning_parallel_input_count:string ->
  ?post_cmeta_pruning_partition_count:string ->
  ?pre_cmeta_pruning_parallel_input_count:string ->
  unit ->
  pruning_stats

val python_options_of_yojson : Yojson.Safe.t -> python_options
val yojson_of_python_options : python_options -> Yojson.Safe.t

val make_python_options :
  ?entry_point:string ->
  ?packages:string list ->
  unit ->
  python_options

val query_info_of_yojson : Yojson.Safe.t -> query_info
val yojson_of_query_info : query_info -> Yojson.Safe.t

val make_query_info :
  ?optimization_details:(string * Yojson.Safe.t) list ->
  unit ->
  query_info

val query_parameter_of_yojson : Yojson.Safe.t -> query_parameter
val yojson_of_query_parameter : query_parameter -> Yojson.Safe.t

val make_query_parameter :
  ?name:string ->
  ?parameter_type:query_parameter_type ->
  ?parameter_value:query_parameter_value ->
  unit ->
  query_parameter

val query_parameter_type_struct_types_item_of_yojson : Yojson.Safe.t -> query_parameter_type_struct_types_item
val yojson_of_query_parameter_type_struct_types_item : query_parameter_type_struct_types_item -> Yojson.Safe.t

val make_query_parameter_type_struct_types_item :
  ?description:string ->
  ?name:string ->
  ?type_:query_parameter_type ->
  unit ->
  query_parameter_type_struct_types_item

val query_parameter_type_of_yojson : Yojson.Safe.t -> query_parameter_type
val yojson_of_query_parameter_type : query_parameter_type -> Yojson.Safe.t

val make_query_parameter_type :
  ?array_type:query_parameter_type ->
  ?range_element_type:query_parameter_type ->
  ?struct_types:query_parameter_type_struct_types_item list ->
  ?timestamp_precision:string ->
  ?type_:string ->
  unit ->
  query_parameter_type

val query_parameter_value_of_yojson : Yojson.Safe.t -> query_parameter_value
val yojson_of_query_parameter_value : query_parameter_value -> Yojson.Safe.t

val make_query_parameter_value :
  ?array_values:query_parameter_value list ->
  ?range_value:range_value ->
  ?struct_values:(string * query_parameter_value) list ->
  ?value:string ->
  unit ->
  query_parameter_value

val query_request_of_yojson : Yojson.Safe.t -> query_request
val yojson_of_query_request : query_request -> Yojson.Safe.t

val make_query_request :
  ?arrow_serialization_options:arrow_serialization_options ->
  ?connection_properties:connection_property list ->
  ?continuous:bool ->
  ?create_session:bool ->
  ?default_dataset:dataset_reference ->
  ?destination_encryption_configuration:encryption_configuration ->
  ?dry_run:bool ->
  ?format_options:data_format_options ->
  ?job_creation_mode:[ `Job_creation_mode_unspecified | `Job_creation_required | `Job_creation_optional | `Unrecognized of string ] ->
  ?job_timeout_ms:string ->
  ?kind:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?max_results:int ->
  ?max_slots:int ->
  ?maximum_bytes_billed:string ->
  ?parameter_mode:string ->
  ?preserve_nulls:bool ->
  ?query:string ->
  ?query_parameters:query_parameter list ->
  ?query_results_format:[ `Query_results_format_unspecified | `Struct_encoding | `Arrow | `Unrecognized of string ] ->
  ?request_id:string ->
  ?reservation:string ->
  ?secure_context:secure_context ->
  ?timeout_ms:int ->
  ?use_legacy_sql:bool ->
  ?use_query_cache:bool ->
  ?write_incremental_results:bool ->
  unit ->
  query_request

val query_response_of_yojson : Yojson.Safe.t -> query_response
val yojson_of_query_response : query_response -> Yojson.Safe.t

val make_query_response :
  ?arrow_record_batch:arrow_record_batch ->
  ?arrow_schema:arrow_schema ->
  ?cache_hit:bool ->
  ?creation_time:string ->
  ?dml_stats:dml_statistics ->
  ?end_time:string ->
  ?errors:error_proto list ->
  ?job_complete:bool ->
  ?job_creation_reason:job_creation_reason ->
  ?job_reference:job_reference ->
  ?kind:string ->
  ?location:string ->
  ?num_dml_affected_rows:string ->
  ?page_row_count:string ->
  ?page_token:string ->
  ?query_id:string ->
  ?rows:table_row list ->
  ?schema:table_schema ->
  ?session_info:session_info ->
  ?start_time:string ->
  ?statement_type:string ->
  ?total_bytes_billed:string ->
  ?total_bytes_processed:string ->
  ?total_rows:string ->
  ?total_slot_ms:string ->
  unit ->
  query_response

val query_timeline_sample_of_yojson : Yojson.Safe.t -> query_timeline_sample
val yojson_of_query_timeline_sample : query_timeline_sample -> Yojson.Safe.t

val make_query_timeline_sample :
  ?active_units:string ->
  ?completed_units:string ->
  ?elapsed_ms:string ->
  ?estimated_runnable_units:string ->
  ?pending_units:string ->
  ?shuffle_ram_usage_ratio:float ->
  ?total_slot_ms:string ->
  unit ->
  query_timeline_sample

val range_partitioning_range_of_yojson : Yojson.Safe.t -> range_partitioning_range
val yojson_of_range_partitioning_range : range_partitioning_range -> Yojson.Safe.t

val make_range_partitioning_range :
  ?end_:string ->
  ?interval:string ->
  ?start:string ->
  unit ->
  range_partitioning_range

val range_partitioning_of_yojson : Yojson.Safe.t -> range_partitioning
val yojson_of_range_partitioning : range_partitioning -> Yojson.Safe.t

val make_range_partitioning :
  ?field:string ->
  ?range:range_partitioning_range ->
  unit ->
  range_partitioning

val range_value_of_yojson : Yojson.Safe.t -> range_value
val yojson_of_range_value : range_value -> Yojson.Safe.t

val make_range_value :
  ?end_:query_parameter_value ->
  ?start:query_parameter_value ->
  unit ->
  range_value

val ranking_metrics_of_yojson : Yojson.Safe.t -> ranking_metrics
val yojson_of_ranking_metrics : ranking_metrics -> Yojson.Safe.t

val make_ranking_metrics :
  ?average_rank:float ->
  ?mean_average_precision:float ->
  ?mean_squared_error:float ->
  ?normalized_discounted_cumulative_gain:float ->
  unit ->
  ranking_metrics

val regression_metrics_of_yojson : Yojson.Safe.t -> regression_metrics
val yojson_of_regression_metrics : regression_metrics -> Yojson.Safe.t

val make_regression_metrics :
  ?mean_absolute_error:float ->
  ?mean_squared_error:float ->
  ?mean_squared_log_error:float ->
  ?median_absolute_error:float ->
  ?r_squared:float ->
  unit ->
  regression_metrics

val remote_function_options_of_yojson : Yojson.Safe.t -> remote_function_options
val yojson_of_remote_function_options : remote_function_options -> Yojson.Safe.t

val make_remote_function_options :
  ?connection:string ->
  ?endpoint:string ->
  ?max_batching_rows:string ->
  ?user_defined_context:(string * string) list ->
  unit ->
  remote_function_options

val remote_model_info_of_yojson : Yojson.Safe.t -> remote_model_info
val yojson_of_remote_model_info : remote_model_info -> Yojson.Safe.t

val make_remote_model_info :
  ?connection:string ->
  ?endpoint:string ->
  ?max_batching_rows:string ->
  ?remote_model_version:string ->
  ?remote_service_type:[ `Remote_service_type_unspecified | `Cloud_ai_translate_v3 | `Cloud_ai_vision_v1 | `Cloud_ai_natural_language_v1 | `Cloud_ai_speech_to_text_v2 | `Unrecognized of string ] ->
  ?speech_recognizer:string ->
  unit ->
  remote_model_info

val restriction_config_of_yojson : Yojson.Safe.t -> restriction_config
val yojson_of_restriction_config : restriction_config -> Yojson.Safe.t

val make_restriction_config :
  ?type_:[ `Restriction_type_unspecified | `Restricted_data_egress | `Unrecognized of string ] ->
  unit ->
  restriction_config

val routine_of_yojson : Yojson.Safe.t -> routine
val yojson_of_routine : routine -> Yojson.Safe.t

val make_routine :
  ?arguments:argument list ->
  ?build_status:routine_build_status ->
  ?creation_time:string ->
  ?data_governance_type:[ `Data_governance_type_unspecified | `Data_masking | `Unrecognized of string ] ->
  ?definition_body:string ->
  ?description:string ->
  ?determinism_level:[ `Determinism_level_unspecified | `Deterministic | `Not_deterministic | `Unrecognized of string ] ->
  ?etag:string ->
  ?external_runtime_options:external_runtime_options ->
  ?imported_libraries:string list ->
  ?language:[ `Language_unspecified | `Sql | `Javascript | `Python | `Java | `Scala | `Unrecognized of string ] ->
  ?last_modified_time:string ->
  ?python_options:python_options ->
  ?remote_function_options:remote_function_options ->
  ?return_table_type:standard_sql_table_type ->
  ?return_type:standard_sql_data_type ->
  ?routine_reference:routine_reference ->
  ?routine_type:[ `Routine_type_unspecified | `Scalar_function | `Procedure | `Table_valued_function | `Aggregate_function | `Unrecognized of string ] ->
  ?security_mode:[ `Security_mode_unspecified | `Definer | `Invoker | `Unrecognized of string ] ->
  ?spark_options:spark_options ->
  ?strict_mode:bool ->
  unit ->
  routine

val routine_build_status_of_yojson : Yojson.Safe.t -> routine_build_status
val yojson_of_routine_build_status : routine_build_status -> Yojson.Safe.t

val make_routine_build_status :
  ?build_duration:string ->
  ?build_state:[ `Build_state_unspecified | `In_progress | `Succeeded | `Failed | `Unrecognized of string ] ->
  ?build_state_update_time:string ->
  ?error_result:error_proto ->
  ?image_size_bytes:string ->
  unit ->
  routine_build_status

val routine_reference_of_yojson : Yojson.Safe.t -> routine_reference
val yojson_of_routine_reference : routine_reference -> Yojson.Safe.t

val make_routine_reference :
  ?dataset_id:string ->
  ?project_id:string ->
  ?routine_id:string ->
  unit ->
  routine_reference

val row_of_yojson : Yojson.Safe.t -> row
val yojson_of_row : row -> Yojson.Safe.t

val make_row :
  ?actual_label:string ->
  ?entries:entry list ->
  unit ->
  row

val row_access_policy_of_yojson : Yojson.Safe.t -> row_access_policy
val yojson_of_row_access_policy : row_access_policy -> Yojson.Safe.t

val make_row_access_policy :
  ?creation_time:string ->
  ?etag:string ->
  ?filter_predicate:string ->
  ?grantees:string list ->
  ?last_modified_time:string ->
  ?row_access_policy_reference:row_access_policy_reference ->
  unit ->
  row_access_policy

val row_access_policy_reference_of_yojson : Yojson.Safe.t -> row_access_policy_reference
val yojson_of_row_access_policy_reference : row_access_policy_reference -> Yojson.Safe.t

val make_row_access_policy_reference :
  ?dataset_id:string ->
  ?policy_id:string ->
  ?project_id:string ->
  ?table_id:string ->
  unit ->
  row_access_policy_reference

val row_level_security_statistics_of_yojson : Yojson.Safe.t -> row_level_security_statistics
val yojson_of_row_level_security_statistics : row_level_security_statistics -> Yojson.Safe.t

val make_row_level_security_statistics :
  ?row_level_security_applied:bool ->
  unit ->
  row_level_security_statistics

val script_options_of_yojson : Yojson.Safe.t -> script_options
val yojson_of_script_options : script_options -> Yojson.Safe.t

val make_script_options :
  ?key_result_statement:[ `Key_result_statement_kind_unspecified | `Last | `First_select | `Unrecognized of string ] ->
  ?statement_byte_budget:string ->
  ?statement_timeout_ms:string ->
  unit ->
  script_options

val script_stack_frame_of_yojson : Yojson.Safe.t -> script_stack_frame
val yojson_of_script_stack_frame : script_stack_frame -> Yojson.Safe.t

val make_script_stack_frame :
  ?end_column:int ->
  ?end_line:int ->
  ?procedure_id:string ->
  ?start_column:int ->
  ?start_line:int ->
  ?text:string ->
  unit ->
  script_stack_frame

val script_statistics_of_yojson : Yojson.Safe.t -> script_statistics
val yojson_of_script_statistics : script_statistics -> Yojson.Safe.t

val make_script_statistics :
  ?evaluation_kind:[ `Evaluation_kind_unspecified | `Statement | `Expression | `Unrecognized of string ] ->
  ?stack_frames:script_stack_frame list ->
  unit ->
  script_statistics

val search_statistics_of_yojson : Yojson.Safe.t -> search_statistics
val yojson_of_search_statistics : search_statistics -> Yojson.Safe.t

val make_search_statistics :
  ?index_pruning_stats:index_pruning_stats list ->
  ?index_unused_reasons:index_unused_reason list ->
  ?index_usage_mode:[ `Index_usage_mode_unspecified | `Unused | `Partially_used | `Fully_used | `Unrecognized of string ] ->
  unit ->
  search_statistics

val secure_context_of_yojson : Yojson.Safe.t -> secure_context
val yojson_of_secure_context : secure_context -> Yojson.Safe.t

val make_secure_context :
  ?secure_parameter_entries:(string * Yojson.Safe.t) list ->
  unit ->
  secure_context

val ser_de_info_of_yojson : Yojson.Safe.t -> ser_de_info
val yojson_of_ser_de_info : ser_de_info -> Yojson.Safe.t

val make_ser_de_info :
  ?name:string ->
  ?parameters:(string * string) list ->
  ?serialization_library:string ->
  unit ->
  ser_de_info

val session_info_of_yojson : Yojson.Safe.t -> session_info
val yojson_of_session_info : session_info -> Yojson.Safe.t

val make_session_info :
  ?session_id:string ->
  unit ->
  session_info

val set_iam_policy_request_of_yojson : Yojson.Safe.t -> set_iam_policy_request
val yojson_of_set_iam_policy_request : set_iam_policy_request -> Yojson.Safe.t

val make_set_iam_policy_request :
  ?policy:policy ->
  ?update_mask:string ->
  unit ->
  set_iam_policy_request

val skew_source_of_yojson : Yojson.Safe.t -> skew_source
val yojson_of_skew_source : skew_source -> Yojson.Safe.t

val make_skew_source :
  ?output_bytes_max:string ->
  ?output_bytes_median:string ->
  ?output_bytes_p95:string ->
  ?stage_id:string ->
  unit ->
  skew_source

val snapshot_definition_of_yojson : Yojson.Safe.t -> snapshot_definition
val yojson_of_snapshot_definition : snapshot_definition -> Yojson.Safe.t

val make_snapshot_definition :
  ?base_table_reference:table_reference ->
  ?snapshot_time:string ->
  unit ->
  snapshot_definition

val spark_logging_info_of_yojson : Yojson.Safe.t -> spark_logging_info
val yojson_of_spark_logging_info : spark_logging_info -> Yojson.Safe.t

val make_spark_logging_info :
  ?project_id:string ->
  ?resource_type:string ->
  unit ->
  spark_logging_info

val spark_options_of_yojson : Yojson.Safe.t -> spark_options
val yojson_of_spark_options : spark_options -> Yojson.Safe.t

val make_spark_options :
  ?archive_uris:string list ->
  ?connection:string ->
  ?container_image:string ->
  ?file_uris:string list ->
  ?jar_uris:string list ->
  ?main_class:string ->
  ?main_file_uri:string ->
  ?properties:(string * string) list ->
  ?py_file_uris:string list ->
  ?runtime_version:string ->
  unit ->
  spark_options

val spark_statistics_of_yojson : Yojson.Safe.t -> spark_statistics
val yojson_of_spark_statistics : spark_statistics -> Yojson.Safe.t

val make_spark_statistics :
  ?endpoints:(string * string) list ->
  ?gcs_staging_bucket:string ->
  ?kms_key_name:string ->
  ?logging_info:spark_logging_info ->
  ?spark_job_id:string ->
  ?spark_job_location:string ->
  unit ->
  spark_statistics

val stage_performance_change_insight_of_yojson : Yojson.Safe.t -> stage_performance_change_insight
val yojson_of_stage_performance_change_insight : stage_performance_change_insight -> Yojson.Safe.t

val make_stage_performance_change_insight :
  ?input_data_change:input_data_change ->
  ?stage_id:string ->
  unit ->
  stage_performance_change_insight

val stage_performance_standalone_insight_of_yojson : Yojson.Safe.t -> stage_performance_standalone_insight
val yojson_of_stage_performance_standalone_insight : stage_performance_standalone_insight -> Yojson.Safe.t

val make_stage_performance_standalone_insight :
  ?bi_engine_reasons:bi_engine_reason list ->
  ?high_cardinality_joins:high_cardinality_join list ->
  ?insufficient_shuffle_quota:bool ->
  ?partition_skew:partition_skew ->
  ?slot_contention:bool ->
  ?stage_id:string ->
  unit ->
  stage_performance_standalone_insight

val standard_sql_data_type_of_yojson : Yojson.Safe.t -> standard_sql_data_type
val yojson_of_standard_sql_data_type : standard_sql_data_type -> Yojson.Safe.t

val make_standard_sql_data_type :
  ?array_element_type:standard_sql_data_type ->
  ?range_element_type:standard_sql_data_type ->
  ?struct_type:standard_sql_struct_type ->
  ?type_kind:[ `Type_kind_unspecified | `Int64 | `Bool | `Float64 | `String | `Bytes | `Timestamp | `Date | `Time | `Datetime | `Interval | `Geography | `Numeric | `Bignumeric | `Json | `Array | `Struct | `Range | `Uuid | `Unrecognized of string ] ->
  unit ->
  standard_sql_data_type

val standard_sql_field_of_yojson : Yojson.Safe.t -> standard_sql_field
val yojson_of_standard_sql_field : standard_sql_field -> Yojson.Safe.t

val make_standard_sql_field :
  ?name:string ->
  ?type_:standard_sql_data_type ->
  unit ->
  standard_sql_field

val standard_sql_struct_type_of_yojson : Yojson.Safe.t -> standard_sql_struct_type
val yojson_of_standard_sql_struct_type : standard_sql_struct_type -> Yojson.Safe.t

val make_standard_sql_struct_type :
  ?fields:standard_sql_field list ->
  unit ->
  standard_sql_struct_type

val standard_sql_table_type_of_yojson : Yojson.Safe.t -> standard_sql_table_type
val yojson_of_standard_sql_table_type : standard_sql_table_type -> Yojson.Safe.t

val make_standard_sql_table_type :
  ?columns:standard_sql_field list ->
  unit ->
  standard_sql_table_type

val storage_descriptor_of_yojson : Yojson.Safe.t -> storage_descriptor
val yojson_of_storage_descriptor : storage_descriptor -> Yojson.Safe.t

val make_storage_descriptor :
  ?input_format:string ->
  ?location_uri:string ->
  ?output_format:string ->
  ?serde_info:ser_de_info ->
  unit ->
  storage_descriptor

val stored_columns_unused_reason_of_yojson : Yojson.Safe.t -> stored_columns_unused_reason
val yojson_of_stored_columns_unused_reason : stored_columns_unused_reason -> Yojson.Safe.t

val make_stored_columns_unused_reason :
  ?code:[ `Code_unspecified | `Stored_columns_cover_insufficient | `Base_table_has_rls | `Base_table_has_cls | `Unsupported_prefilter | `Internal_error | `Other_reason | `Unrecognized of string ] ->
  ?message:string ->
  ?uncovered_columns:string list ->
  unit ->
  stored_columns_unused_reason

val stored_columns_usage_of_yojson : Yojson.Safe.t -> stored_columns_usage
val yojson_of_stored_columns_usage : stored_columns_usage -> Yojson.Safe.t

val make_stored_columns_usage :
  ?base_table:table_reference ->
  ?is_query_accelerated:bool ->
  ?stored_columns_unused_reasons:stored_columns_unused_reason list ->
  unit ->
  stored_columns_usage

val streamingbuffer_of_yojson : Yojson.Safe.t -> streamingbuffer
val yojson_of_streamingbuffer : streamingbuffer -> Yojson.Safe.t

val make_streamingbuffer :
  ?estimated_bytes:string ->
  ?estimated_rows:string ->
  ?oldest_entry_time:string ->
  unit ->
  streamingbuffer

val string_hparam_search_space_of_yojson : Yojson.Safe.t -> string_hparam_search_space
val yojson_of_string_hparam_search_space : string_hparam_search_space -> Yojson.Safe.t

val make_string_hparam_search_space :
  ?candidates:string list ->
  unit ->
  string_hparam_search_space

val system_variables_of_yojson : Yojson.Safe.t -> system_variables
val yojson_of_system_variables : system_variables -> Yojson.Safe.t

val make_system_variables :
  ?types:(string * standard_sql_data_type) list ->
  ?values:(string * Yojson.Safe.t) list ->
  unit ->
  system_variables

val table_of_yojson : Yojson.Safe.t -> table
val yojson_of_table : table -> Yojson.Safe.t

val make_table :
  ?biglake_configuration:big_lake_configuration ->
  ?clone_definition:clone_definition ->
  ?clustering:clustering ->
  ?creation_time:string ->
  ?default_collation:string ->
  ?default_rounding_mode:[ `Rounding_mode_unspecified | `Round_half_away_from_zero | `Round_half_even | `Unrecognized of string ] ->
  ?description:string ->
  ?encryption_configuration:encryption_configuration ->
  ?etag:string ->
  ?expiration_time:string ->
  ?external_catalog_table_options:external_catalog_table_options ->
  ?external_data_configuration:external_data_configuration ->
  ?friendly_name:string ->
  ?id:string ->
  ?kind:string ->
  ?labels:(string * string) list ->
  ?last_modified_time:string ->
  ?location:string ->
  ?managed_table_type:[ `Managed_table_type_unspecified | `Native | `Biglake | `Unrecognized of string ] ->
  ?materialized_view:materialized_view_definition ->
  ?materialized_view_status:materialized_view_status ->
  ?max_staleness:string ->
  ?model:model_definition ->
  ?num_active_logical_bytes:string ->
  ?num_active_physical_bytes:string ->
  ?num_bytes:string ->
  ?num_current_physical_bytes:string ->
  ?num_long_term_bytes:string ->
  ?num_long_term_logical_bytes:string ->
  ?num_long_term_physical_bytes:string ->
  ?num_partitions:string ->
  ?num_physical_bytes:string ->
  ?num_rows:string ->
  ?num_time_travel_physical_bytes:string ->
  ?num_total_logical_bytes:string ->
  ?num_total_physical_bytes:string ->
  ?partition_definition:partitioning_definition ->
  ?range_partitioning:range_partitioning ->
  ?replicas:table_reference list ->
  ?require_partition_filter:bool ->
  ?resource_tags:(string * string) list ->
  ?restrictions:restriction_config ->
  ?schema:table_schema ->
  ?self_link:string ->
  ?snapshot_definition:snapshot_definition ->
  ?streaming_buffer:streamingbuffer ->
  ?table_constraints:table_constraints ->
  ?table_reference:table_reference ->
  ?table_replication_info:table_replication_info ->
  ?time_partitioning:time_partitioning ->
  ?type_:string ->
  ?view:view_definition ->
  unit ->
  table

val table_cell_of_yojson : Yojson.Safe.t -> table_cell
val yojson_of_table_cell : table_cell -> Yojson.Safe.t

val make_table_cell :
  ?v:Yojson.Safe.t ->
  unit ->
  table_cell

val table_change_insight_of_yojson : Yojson.Safe.t -> table_change_insight
val yojson_of_table_change_insight : table_change_insight -> Yojson.Safe.t

val make_table_change_insight :
  ?metadata_cache_not_used_but_used_previously:bool ->
  ?metadata_cache_staleness_insight:metadata_cache_staleness_insight ->
  ?table_reference:table_reference ->
  unit ->
  table_change_insight

val table_constraints_foreign_keys_item_column_references_item_of_yojson : Yojson.Safe.t -> table_constraints_foreign_keys_item_column_references_item
val yojson_of_table_constraints_foreign_keys_item_column_references_item : table_constraints_foreign_keys_item_column_references_item -> Yojson.Safe.t

val make_table_constraints_foreign_keys_item_column_references_item :
  ?referenced_column:string ->
  ?referencing_column:string ->
  unit ->
  table_constraints_foreign_keys_item_column_references_item

val table_constraints_foreign_keys_item_referenced_table_of_yojson : Yojson.Safe.t -> table_constraints_foreign_keys_item_referenced_table
val yojson_of_table_constraints_foreign_keys_item_referenced_table : table_constraints_foreign_keys_item_referenced_table -> Yojson.Safe.t

val make_table_constraints_foreign_keys_item_referenced_table :
  ?dataset_id:string ->
  ?project_id:string ->
  ?table_id:string ->
  unit ->
  table_constraints_foreign_keys_item_referenced_table

val table_constraints_foreign_keys_item_of_yojson : Yojson.Safe.t -> table_constraints_foreign_keys_item
val yojson_of_table_constraints_foreign_keys_item : table_constraints_foreign_keys_item -> Yojson.Safe.t

val make_table_constraints_foreign_keys_item :
  ?column_references:table_constraints_foreign_keys_item_column_references_item list ->
  ?name:string ->
  ?referenced_table:table_constraints_foreign_keys_item_referenced_table ->
  unit ->
  table_constraints_foreign_keys_item

val table_constraints_primary_key_of_yojson : Yojson.Safe.t -> table_constraints_primary_key
val yojson_of_table_constraints_primary_key : table_constraints_primary_key -> Yojson.Safe.t

val make_table_constraints_primary_key :
  ?columns:string list ->
  unit ->
  table_constraints_primary_key

val table_constraints_of_yojson : Yojson.Safe.t -> table_constraints
val yojson_of_table_constraints : table_constraints -> Yojson.Safe.t

val make_table_constraints :
  ?foreign_keys:table_constraints_foreign_keys_item list ->
  ?primary_key:table_constraints_primary_key ->
  unit ->
  table_constraints

val table_data_insert_all_request_rows_item_of_yojson : Yojson.Safe.t -> table_data_insert_all_request_rows_item
val yojson_of_table_data_insert_all_request_rows_item : table_data_insert_all_request_rows_item -> Yojson.Safe.t

val make_table_data_insert_all_request_rows_item :
  ?insert_id:string ->
  ?json:json_object ->
  unit ->
  table_data_insert_all_request_rows_item

val table_data_insert_all_request_of_yojson : Yojson.Safe.t -> table_data_insert_all_request
val yojson_of_table_data_insert_all_request : table_data_insert_all_request -> Yojson.Safe.t

val make_table_data_insert_all_request :
  ?ignore_unknown_values:bool ->
  ?kind:string ->
  ?rows:table_data_insert_all_request_rows_item list ->
  ?skip_invalid_rows:bool ->
  ?template_suffix:string ->
  ?trace_id:string ->
  unit ->
  table_data_insert_all_request

val table_data_insert_all_response_insert_errors_item_of_yojson : Yojson.Safe.t -> table_data_insert_all_response_insert_errors_item
val yojson_of_table_data_insert_all_response_insert_errors_item : table_data_insert_all_response_insert_errors_item -> Yojson.Safe.t

val make_table_data_insert_all_response_insert_errors_item :
  ?errors:error_proto list ->
  ?index:int ->
  unit ->
  table_data_insert_all_response_insert_errors_item

val table_data_insert_all_response_of_yojson : Yojson.Safe.t -> table_data_insert_all_response
val yojson_of_table_data_insert_all_response : table_data_insert_all_response -> Yojson.Safe.t

val make_table_data_insert_all_response :
  ?insert_errors:table_data_insert_all_response_insert_errors_item list ->
  ?kind:string ->
  unit ->
  table_data_insert_all_response

val table_data_list_of_yojson : Yojson.Safe.t -> table_data_list
val yojson_of_table_data_list : table_data_list -> Yojson.Safe.t

val make_table_data_list :
  ?etag:string ->
  ?kind:string ->
  ?page_token:string ->
  ?rows:table_row list ->
  ?total_rows:string ->
  unit ->
  table_data_list

val table_field_schema_categories_of_yojson : Yojson.Safe.t -> table_field_schema_categories
val yojson_of_table_field_schema_categories : table_field_schema_categories -> Yojson.Safe.t

val make_table_field_schema_categories :
  ?names:string list ->
  unit ->
  table_field_schema_categories

val table_field_schema_data_governance_tags_info_of_yojson : Yojson.Safe.t -> table_field_schema_data_governance_tags_info
val yojson_of_table_field_schema_data_governance_tags_info : table_field_schema_data_governance_tags_info -> Yojson.Safe.t

val make_table_field_schema_data_governance_tags_info :
  ?data_governance_tags:(string * string) list ->
  unit ->
  table_field_schema_data_governance_tags_info

val table_field_schema_policy_tags_of_yojson : Yojson.Safe.t -> table_field_schema_policy_tags
val yojson_of_table_field_schema_policy_tags : table_field_schema_policy_tags -> Yojson.Safe.t

val make_table_field_schema_policy_tags :
  ?names:string list ->
  unit ->
  table_field_schema_policy_tags

val table_field_schema_range_element_type_of_yojson : Yojson.Safe.t -> table_field_schema_range_element_type
val yojson_of_table_field_schema_range_element_type : table_field_schema_range_element_type -> Yojson.Safe.t

val make_table_field_schema_range_element_type :
  ?type_:string ->
  unit ->
  table_field_schema_range_element_type

val table_field_schema_of_yojson : Yojson.Safe.t -> table_field_schema
val yojson_of_table_field_schema : table_field_schema -> Yojson.Safe.t

val make_table_field_schema :
  ?categories:table_field_schema_categories ->
  ?collation:string ->
  ?data_governance_tags_info:table_field_schema_data_governance_tags_info ->
  ?data_policies:data_policy_option list ->
  ?data_policy_list:data_policy_list ->
  ?default_value_expression:string ->
  ?description:string ->
  ?fields:table_field_schema list ->
  ?foreign_type_definition:string ->
  ?generated_column:generated_column ->
  ?max_length:string ->
  ?mode:string ->
  ?name:string ->
  ?policy_tags:table_field_schema_policy_tags ->
  ?precision:string ->
  ?range_element_type:table_field_schema_range_element_type ->
  ?rounding_mode:[ `Rounding_mode_unspecified | `Round_half_away_from_zero | `Round_half_even | `Unrecognized of string ] ->
  ?scale:string ->
  ?timestamp_precision:string ->
  ?type_:string ->
  unit ->
  table_field_schema

val table_list_tables_item_view_of_yojson : Yojson.Safe.t -> table_list_tables_item_view
val yojson_of_table_list_tables_item_view : table_list_tables_item_view -> Yojson.Safe.t

val make_table_list_tables_item_view :
  ?privacy_policy:privacy_policy ->
  ?use_legacy_sql:bool ->
  unit ->
  table_list_tables_item_view

val table_list_tables_item_of_yojson : Yojson.Safe.t -> table_list_tables_item
val yojson_of_table_list_tables_item : table_list_tables_item -> Yojson.Safe.t

val make_table_list_tables_item :
  ?clustering:clustering ->
  ?creation_time:string ->
  ?expiration_time:string ->
  ?friendly_name:string ->
  ?id:string ->
  ?kind:string ->
  ?labels:(string * string) list ->
  ?range_partitioning:range_partitioning ->
  ?require_partition_filter:bool ->
  ?table_reference:table_reference ->
  ?time_partitioning:time_partitioning ->
  ?type_:string ->
  ?view:table_list_tables_item_view ->
  unit ->
  table_list_tables_item

val table_list_of_yojson : Yojson.Safe.t -> table_list
val yojson_of_table_list : table_list -> Yojson.Safe.t

val make_table_list :
  ?etag:string ->
  ?kind:string ->
  ?next_page_token:string ->
  ?tables:table_list_tables_item list ->
  ?total_items:int ->
  unit ->
  table_list

val table_metadata_cache_usage_of_yojson : Yojson.Safe.t -> table_metadata_cache_usage
val yojson_of_table_metadata_cache_usage : table_metadata_cache_usage -> Yojson.Safe.t

val make_table_metadata_cache_usage :
  ?explanation:string ->
  ?pruning_stats:pruning_stats ->
  ?staleness:string ->
  ?table_reference:table_reference ->
  ?table_type:string ->
  ?unused_reason:[ `Unused_reason_unspecified | `Exceeded_max_staleness | `Metadata_caching_not_enabled | `Other_reason | `Unrecognized of string ] ->
  unit ->
  table_metadata_cache_usage

val table_reference_of_yojson : Yojson.Safe.t -> table_reference
val yojson_of_table_reference : table_reference -> Yojson.Safe.t

val make_table_reference :
  ?dataset_id:string ->
  ?project_id:string ->
  ?table_id:string ->
  unit ->
  table_reference

val table_replication_info_of_yojson : Yojson.Safe.t -> table_replication_info
val yojson_of_table_replication_info : table_replication_info -> Yojson.Safe.t

val make_table_replication_info :
  ?replicated_source_last_refresh_time:string ->
  ?replication_error:error_proto ->
  ?replication_interval_ms:string ->
  ?replication_status:[ `Replication_status_unspecified | `Active | `Source_deleted | `Permission_denied | `Unsupported_configuration | `Unrecognized of string ] ->
  ?source_table:table_reference ->
  unit ->
  table_replication_info

val table_row_of_yojson : Yojson.Safe.t -> table_row
val yojson_of_table_row : table_row -> Yojson.Safe.t

val make_table_row :
  ?f:table_cell list ->
  unit ->
  table_row

val table_schema_of_yojson : Yojson.Safe.t -> table_schema
val yojson_of_table_schema : table_schema -> Yojson.Safe.t

val make_table_schema :
  ?fields:table_field_schema list ->
  ?foreign_type_info:foreign_type_info ->
  unit ->
  table_schema

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

val time_partitioning_of_yojson : Yojson.Safe.t -> time_partitioning
val yojson_of_time_partitioning : time_partitioning -> Yojson.Safe.t

val make_time_partitioning :
  ?expiration_ms:string ->
  ?field:string ->
  ?require_partition_filter:bool ->
  ?type_:string ->
  unit ->
  time_partitioning

val training_options_of_yojson : Yojson.Safe.t -> training_options
val yojson_of_training_options : training_options -> Yojson.Safe.t

val make_training_options :
  ?activation_fn:string ->
  ?adjust_step_changes:bool ->
  ?approx_global_feature_contrib:bool ->
  ?auto_arima:bool ->
  ?auto_arima_max_order:string ->
  ?auto_arima_min_order:string ->
  ?auto_class_weights:bool ->
  ?batch_size:string ->
  ?booster_type:[ `Booster_type_unspecified | `Gbtree | `Dart | `Unrecognized of string ] ->
  ?budget_hours:float ->
  ?calculate_p_values:bool ->
  ?category_encoding_method:[ `Encoding_method_unspecified | `One_hot_encoding | `Label_encoding | `Dummy_encoding | `Unrecognized of string ] ->
  ?clean_spikes_and_dips:bool ->
  ?color_space:[ `Color_space_unspecified | `Rgb | `Hsv | `Yiq | `Yuv | `Grayscale | `Unrecognized of string ] ->
  ?colsample_bylevel:float ->
  ?colsample_bynode:float ->
  ?colsample_bytree:float ->
  ?contribution_metric:string ->
  ?dart_normalize_type:[ `Dart_normalize_type_unspecified | `Tree | `Forest | `Unrecognized of string ] ->
  ?data_frequency:[ `Data_frequency_unspecified | `Auto_frequency | `Yearly | `Quarterly | `Monthly | `Weekly | `Daily | `Hourly | `Per_minute | `Unrecognized of string ] ->
  ?data_split_column:string ->
  ?data_split_eval_fraction:float ->
  ?data_split_method:[ `Data_split_method_unspecified | `Random | `Custom | `Sequential | `No_split | `Auto_split | `Unrecognized of string ] ->
  ?decompose_time_series:bool ->
  ?dimension_id_columns:string list ->
  ?distance_type:[ `Distance_type_unspecified | `Euclidean | `Cosine | `Unrecognized of string ] ->
  ?dropout:float ->
  ?early_stop:bool ->
  ?enable_global_explain:bool ->
  ?endpoint_idle_ttl:string ->
  ?feedback_type:[ `Feedback_type_unspecified | `Implicit | `Explicit | `Unrecognized of string ] ->
  ?fit_intercept:bool ->
  ?forecast_limit_lower_bound:float ->
  ?forecast_limit_upper_bound:float ->
  ?hidden_units:string list ->
  ?holiday_region:[ `Holiday_region_unspecified | `Global | `Na | `Japac | `Emea | `Lac | `Ae | `Ar | `At | `Au | `Be | `Br | `Ca | `Ch | `Cl | `Cn | `Co | `Cs | `Cz | `De | `Dk | `Dz | `Ec | `Ee | `Eg | `Es | `Fi | `Fr | `Gb | `Gr | `Hk | `Hu | `Id | `Ie | `Il | `In | `Ir | `It | `Jp | `Kr | `Lv | `Ma | `Mx | `My | `Ng | `Nl | `No | `Nz | `Pe | `Ph | `Pk | `Pl | `Pt | `Ro | `Rs | `Ru | `Sa | `Se | `Sg | `Si | `Sk | `Th | `Tr | `Tw | `Ua | `Us | `Ve | `Vn | `Za | `Unrecognized of string ] ->
  ?holiday_regions:[ `Holiday_region_unspecified | `Global | `Na | `Japac | `Emea | `Lac | `Ae | `Ar | `At | `Au | `Be | `Br | `Ca | `Ch | `Cl | `Cn | `Co | `Cs | `Cz | `De | `Dk | `Dz | `Ec | `Ee | `Eg | `Es | `Fi | `Fr | `Gb | `Gr | `Hk | `Hu | `Id | `Ie | `Il | `In | `Ir | `It | `Jp | `Kr | `Lv | `Ma | `Mx | `My | `Ng | `Nl | `No | `Nz | `Pe | `Ph | `Pk | `Pl | `Pt | `Ro | `Rs | `Ru | `Sa | `Se | `Sg | `Si | `Sk | `Th | `Tr | `Tw | `Ua | `Us | `Ve | `Vn | `Za | `Unrecognized of string ] list ->
  ?horizon:string ->
  ?hparam_tuning_objectives:[ `Hparam_tuning_objective_unspecified | `Mean_absolute_error | `Mean_squared_error | `Mean_squared_log_error | `Median_absolute_error | `R_squared | `Explained_variance | `Precision | `Recall | `Accuracy | `F1_score | `Log_loss | `Roc_auc | `Davies_bouldin_index | `Mean_average_precision | `Normalized_discounted_cumulative_gain | `Average_rank | `Unrecognized of string ] list ->
  ?hugging_face_model_id:string ->
  ?include_drift:bool ->
  ?initial_learn_rate:float ->
  ?input_label_columns:string list ->
  ?instance_weight_column:string ->
  ?integrated_gradients_num_steps:string ->
  ?is_test_column:string ->
  ?item_column:string ->
  ?kmeans_initialization_column:string ->
  ?kmeans_initialization_method:[ `Kmeans_initialization_method_unspecified | `Random | `Custom | `Kmeans_plus_plus | `Unrecognized of string ] ->
  ?l1_reg_activation:float ->
  ?l1_regularization:float ->
  ?l2_regularization:float ->
  ?label_class_weights:(string * float) list ->
  ?learn_rate:float ->
  ?learn_rate_strategy:[ `Learn_rate_strategy_unspecified | `Line_search | `Constant | `Unrecognized of string ] ->
  ?loss_type:[ `Loss_type_unspecified | `Mean_squared_loss | `Mean_log_loss | `Unrecognized of string ] ->
  ?machine_type:string ->
  ?max_iterations:string ->
  ?max_parallel_trials:string ->
  ?max_replica_count:string ->
  ?max_time_series_length:string ->
  ?max_tree_depth:string ->
  ?min_apriori_support:float ->
  ?min_relative_progress:float ->
  ?min_replica_count:string ->
  ?min_split_loss:float ->
  ?min_time_series_length:string ->
  ?min_tree_child_weight:string ->
  ?model_garden_model_name:string ->
  ?model_registry:[ `Model_registry_unspecified | `Vertex_ai | `Unrecognized of string ] ->
  ?model_uri:string ->
  ?non_seasonal_order:arima_order ->
  ?num_clusters:string ->
  ?num_factors:string ->
  ?num_parallel_tree:string ->
  ?num_principal_components:string ->
  ?num_trials:string ->
  ?optimization_strategy:[ `Optimization_strategy_unspecified | `Batch_gradient_descent | `Normal_equation | `Unrecognized of string ] ->
  ?optimizer:string ->
  ?pca_explained_variance_ratio:float ->
  ?pca_solver:[ `Unspecified | `Full | `Randomized | `Auto | `Unrecognized of string ] ->
  ?reservation_affinity_key:string ->
  ?reservation_affinity_type:[ `Reservation_affinity_type_unspecified | `No_reservation | `Any_reservation | `Specific_reservation | `Unrecognized of string ] ->
  ?reservation_affinity_values:string list ->
  ?sampled_shapley_num_paths:string ->
  ?scale_features:bool ->
  ?standardize_features:bool ->
  ?subsample:float ->
  ?tf_version:string ->
  ?time_series_data_column:string ->
  ?time_series_id_column:string ->
  ?time_series_id_columns:string list ->
  ?time_series_length_fraction:float ->
  ?time_series_timestamp_column:string ->
  ?tree_method:[ `Tree_method_unspecified | `Auto | `Exact | `Approx | `Hist | `Unrecognized of string ] ->
  ?trend_smoothing_window_size:string ->
  ?user_column:string ->
  ?vertex_ai_model_version_aliases:string list ->
  ?wals_alpha:float ->
  ?warm_start:bool ->
  ?xgboost_version:string ->
  unit ->
  training_options

val training_run_of_yojson : Yojson.Safe.t -> training_run
val yojson_of_training_run : training_run -> Yojson.Safe.t

val make_training_run :
  ?class_level_global_explanations:global_explanation list ->
  ?data_split_result:data_split_result ->
  ?evaluation_metrics:evaluation_metrics ->
  ?model_level_global_explanation:global_explanation ->
  ?results:iteration_result list ->
  ?start_time:string ->
  ?training_options:training_options ->
  ?training_start_time:string ->
  ?vertex_ai_model_id:string ->
  ?vertex_ai_model_version:string ->
  unit ->
  training_run

val transaction_info_of_yojson : Yojson.Safe.t -> transaction_info
val yojson_of_transaction_info : transaction_info -> Yojson.Safe.t

val make_transaction_info :
  ?transaction_id:string ->
  unit ->
  transaction_info

val transform_column_of_yojson : Yojson.Safe.t -> transform_column
val yojson_of_transform_column : transform_column -> Yojson.Safe.t

val make_transform_column :
  ?name:string ->
  ?transform_sql:string ->
  ?type_:standard_sql_data_type ->
  unit ->
  transform_column

val undelete_dataset_request_of_yojson : Yojson.Safe.t -> undelete_dataset_request
val yojson_of_undelete_dataset_request : undelete_dataset_request -> Yojson.Safe.t

val make_undelete_dataset_request :
  ?deletion_time:string ->
  unit ->
  undelete_dataset_request

val user_defined_function_resource_of_yojson : Yojson.Safe.t -> user_defined_function_resource
val yojson_of_user_defined_function_resource : user_defined_function_resource -> Yojson.Safe.t

val make_user_defined_function_resource :
  ?inline_code:string ->
  ?resource_uri:string ->
  unit ->
  user_defined_function_resource

val vector_search_statistics_of_yojson : Yojson.Safe.t -> vector_search_statistics
val yojson_of_vector_search_statistics : vector_search_statistics -> Yojson.Safe.t

val make_vector_search_statistics :
  ?index_unused_reasons:index_unused_reason list ->
  ?index_usage_mode:[ `Index_usage_mode_unspecified | `Unused | `Partially_used | `Fully_used | `Unrecognized of string ] ->
  ?stored_columns_usages:stored_columns_usage list ->
  unit ->
  vector_search_statistics

val view_definition_of_yojson : Yojson.Safe.t -> view_definition
val yojson_of_view_definition : view_definition -> Yojson.Safe.t

val make_view_definition :
  ?foreign_definitions:foreign_view_definition list ->
  ?privacy_policy:privacy_policy ->
  ?query:string ->
  ?use_explicit_column_names:bool ->
  ?use_legacy_sql:bool ->
  ?user_defined_function_resources:user_defined_function_resource list ->
  unit ->
  view_definition

val base_url : string
val batch_endpoint : Uri.t

val batch :
  access_token:string ->
  'a Google_api.Call.t list ->
  (('a, Google_api.Error.t) result list, Google_api.Error.t) result
(** {!Google_api.Batch.execute} on {!batch_endpoint}. *)

module Datasets : sig
  val delete :
    project_id:string ->
    dataset_id:string ->
    ?delete_contents:bool ->
    unit ->
    unit Google_api.Call.t
  (** Deletes the dataset specified by the datasetId value. Before you can delete a dataset, you must delete all its tables, either manually or by specifying deleteContents. Immediately after deletion, you can create another dataset with the same name. # IAM Permissions Requires the `bigquery.datasets.delete` permission on the dataset.

      [DELETE projects/{+projectId}/datasets/{+datasetId}]

      - [project_id]: Required. Project ID of the dataset being deleted
      - [dataset_id]: Required. Dataset ID of dataset being deleted
      - [delete_contents]: If True, delete all the tables in the dataset. If False and the dataset contains tables, the request will fail. Default is False *)

  val get :
    project_id:string ->
    dataset_id:string ->
    ?access_policy_version:int ->
    ?dataset_view:[ `Dataset_view_unspecified | `Metadata | `Acl | `Full | `Unrecognized of string ] ->
    unit ->
    dataset Google_api.Call.t
  (** Returns the dataset specified by datasetID. # IAM Permissions Requires the `bigquery.datasets.get` permission on the dataset.

      [GET projects/{+projectId}/datasets/{+datasetId}]

      - [project_id]: Required. Project ID of the requested dataset
      - [dataset_id]: Required. Dataset ID of the requested dataset
      - [access_policy_version]: Optional. The version of the access policy schema to fetch. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for conditional access policy binding in datasets must specify version 3. Dataset with no conditional role bindings in access policy may specify any valid value or leave the field unset. This field will be mapped to \[IAM Policy version\] (https://cloud.google.com/iam/docs/policies#versions) and will be used to fetch policy from IAM. If unset or if 0 or 1 value is used for dataset with conditional bindings, access entry with condition will have role string appended by 'withcond' string followed by a hash value. For example : \{ 'access': \[ \{ 'role': 'roles/bigquery.dataViewer_with_conditionalbinding_7a34awqsda', 'userByEmail': 'user\@example.com', \} \] \} Please refer https://cloud.google.com/iam/docs/troubleshooting-withcond for more details.
      - [dataset_view]: Optional. Specifies the view that determines which dataset information is returned. By default, metadata and ACL information are returned. *)

  val insert :
    project_id:string ->
    body:dataset ->
    ?access_policy_version:int ->
    unit ->
    dataset Google_api.Call.t
  (** Creates a new empty dataset. # IAM Permissions Requires the `bigquery.datasets.create` permission on the project.

      [POST projects/{+projectId}/datasets]

      - [project_id]: Required. Project ID of the new dataset
      - [access_policy_version]: Optional. The version of the provided access policy schema. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. This version refers to the schema version of the access policy and not the version of access policy. This field's value can be equal or more than the access policy schema provided in the request. For example, * Requests with conditional access policy binding in datasets must specify version 3. * But dataset with no conditional role bindings in access policy may specify any valid value or leave the field unset. If unset or if 0 or 1 value is used for dataset with conditional bindings, request will be rejected. This field will be mapped to IAM Policy version (https://cloud.google.com/iam/docs/policies#versions) and will be used to set policy in IAM. *)

  val list :
    project_id:string ->
    ?all:bool ->
    ?filter:string ->
    ?max_results:int ->
    ?page_token:string ->
    unit ->
    dataset_list Google_api.Call.t
  (** Lists all datasets in the specified project to which the user has been granted the READER dataset role. # IAM Permissions Requires no specific IAM permission(s) to use this method. Results are filtered to only include datasets on which the caller has the `bigquery.datasets.get` permission.

      [GET projects/{+projectId}/datasets]

      - [project_id]: Required. Project ID of the datasets to be listed
      - [all]: Whether to list all datasets, including hidden ones
      - [filter]: An expression for filtering the results of the request by label. The syntax is `labels.\[:\]`. Multiple filters can be AND-ed together by connecting with a space. Example: `labels.department:receiving labels.active`. See \[Filtering datasets using labels\](https://cloud.google.com/bigquery/docs/filtering-labels#filtering_datasets_using_labels) for details.
      - [max_results]: The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
      - [page_token]: Page token, returned by a previous call, to request the next page of results *)

  val patch :
    project_id:string ->
    dataset_id:string ->
    body:dataset ->
    ?access_policy_version:int ->
    ?update_mode:[ `Update_mode_unspecified | `Update_metadata | `Update_acl | `Update_full | `Unrecognized of string ] ->
    unit ->
    dataset Google_api.Call.t
  (** Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource. This method supports RFC5789 patch semantics. # IAM Permissions Requires the following IAM permission(s) to use this method: - `bigquery.datasets.update` on the dataset. - `bigquery.datasets.get` on the dataset.

      [PATCH projects/{+projectId}/datasets/{+datasetId}]

      - [project_id]: Required. Project ID of the dataset being updated
      - [dataset_id]: Required. Dataset ID of the dataset being updated
      - [access_policy_version]: Optional. The version of the provided access policy schema. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. This version refers to the schema version of the access policy and not the version of access policy. This field's value can be equal or more than the access policy schema provided in the request. For example, * Operations updating conditional access policy binding in datasets must specify version 3. Some of the operations are : - Adding a new access policy entry with condition. - Removing an access policy entry with condition. - Updating an access policy entry with condition. * But dataset with no conditional role bindings in access policy may specify any valid value or leave the field unset. If unset or if 0 or 1 value is used for dataset with conditional bindings, request will be rejected. This field will be mapped to IAM Policy version (https://cloud.google.com/iam/docs/policies#versions) and will be used to set policy in IAM.
      - [update_mode]: Optional. Specifies the fields of dataset that update/patch operation is targeting By default, both metadata and ACL fields are updated. *)

  val undelete :
    project_id:string ->
    dataset_id:string ->
    body:undelete_dataset_request ->
    unit ->
    dataset Google_api.Call.t
  (** Undeletes a dataset which is within time travel window based on datasetId. If a time is specified, the dataset version deleted at that time is undeleted, else the last live version is undeleted. # IAM Permissions Requires the following IAM permission(s) to use this method: - `bigquery.datasets.create` on the project. - `bigquery.datasets.get` on the dataset.

      [POST projects/{+projectId}/datasets/{+datasetId}:undelete]

      - [project_id]: Required. Project ID of the dataset to be undeleted
      - [dataset_id]: Required. Dataset ID of dataset being deleted *)

  val update :
    project_id:string ->
    dataset_id:string ->
    body:dataset ->
    ?access_policy_version:int ->
    ?update_mode:[ `Update_mode_unspecified | `Update_metadata | `Update_acl | `Update_full | `Unrecognized of string ] ->
    unit ->
    dataset Google_api.Call.t
  (** Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource. # IAM Permissions Requires the `bigquery.datasets.update` permission on the dataset.

      [PUT projects/{+projectId}/datasets/{+datasetId}]

      - [project_id]: Required. Project ID of the dataset being updated
      - [dataset_id]: Required. Dataset ID of the dataset being updated
      - [access_policy_version]: Optional. The version of the provided access policy schema. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. This version refers to the schema version of the access policy and not the version of access policy. This field's value can be equal or more than the access policy schema provided in the request. For example, * Operations updating conditional access policy binding in datasets must specify version 3. Some of the operations are : - Adding a new access policy entry with condition. - Removing an access policy entry with condition. - Updating an access policy entry with condition. * But dataset with no conditional role bindings in access policy may specify any valid value or leave the field unset. If unset or if 0 or 1 value is used for dataset with conditional bindings, request will be rejected. This field will be mapped to IAM Policy version (https://cloud.google.com/iam/docs/policies#versions) and will be used to set policy in IAM.
      - [update_mode]: Optional. Specifies the fields of dataset that update/patch operation is targeting By default, both metadata and ACL fields are updated. *)
end

module Jobs : sig
  val cancel :
    project_id:string ->
    job_id:string ->
    ?location:string ->
    unit ->
    job_cancel_response Google_api.Call.t
  (** Requests that a job be cancelled. This call will return immediately, and the client will need to poll for the job status to see if the cancel completed successfully. Cancelled jobs may still incur costs. # IAM Permissions Requires the `bigquery.jobs.update` permission on the job resource. If the user matches the creator of the job, the `bigquery.jobs.create` permission on the project is required instead.

      [POST projects/{+projectId}/jobs/{+jobId}/cancel]

      - [project_id]: Required. Project ID of the job to cancel
      - [job_id]: Required. Job ID of the job to cancel
      - [location]: The geographic location of the job. You must \[specify the location\](https://cloud.google.com/bigquery/docs/locations#specify_locations) to run the job for the following scenarios: * If the location to run a job is not in the `us` or the `eu` multi-regional location * If the job's location is in a single region (for example, `us-central1`) *)

  val delete :
    project_id:string ->
    job_id:string ->
    ?location:string ->
    unit ->
    unit Google_api.Call.t
  (** Requests the deletion of the metadata of a job. This call returns when the job's metadata is deleted. # IAM Permissions Requires the `bigquery.jobs.delete` permission on the job resource.

      [DELETE projects/{+projectId}/jobs/{+jobId}/delete]

      - [project_id]: Required. Project ID of the job for which metadata is to be deleted.
      - [job_id]: Required. Job ID of the job for which metadata is to be deleted. If this is a parent job which has child jobs, the metadata from all child jobs will be deleted as well. Direct deletion of the metadata of child jobs is not allowed.
      - [location]: The geographic location of the job. Required. For more information, see how to \[specify locations\](https://cloud.google.com/bigquery/docs/locations#specify_locations). *)

  val get :
    project_id:string ->
    job_id:string ->
    ?location:string ->
    unit ->
    job Google_api.Call.t
  (** Returns information about a specific job. Job information is available for a six month period after creation. Requires that you're the person who ran the job, or have the Is Owner project role. # IAM Permissions Requires the `bigquery.jobs.get` permission on the job resource. If the user matches the creator of the job, the `bigquery.jobs.create` permission on the project is required instead.

      [GET projects/{+projectId}/jobs/{+jobId}]

      - [project_id]: Required. Project ID of the requested job.
      - [job_id]: Required. Job ID of the requested job.
      - [location]: The geographic location of the job. You must specify the location to run the job for the following scenarios: * If the location to run a job is not in the `us` or the `eu` multi-regional location * If the job's location is in a single region (for example, `us-central1`) For more information, see how to \[specify locations\](https://cloud.google.com/bigquery/docs/locations#specify_locations). *)

  val get_query_results :
    project_id:string ->
    job_id:string ->
    ?format_options_timestamp_output_format:[ `Timestamp_output_format_unspecified | `Float64 | `Int64 | `Iso8601_string | `Unrecognized of string ] ->
    ?format_options_use_int64_timestamp:bool ->
    ?location:string ->
    ?max_results:int ->
    ?page_token:string ->
    ?start_index:string ->
    ?timeout_ms:int ->
    unit ->
    get_query_results_response Google_api.Call.t
  (** RPC to get the results of a query job. # IAM Permissions Requires the following IAM permission(s) to use this method: - `bigquery.jobs.get` on the job. - `bigquery.tables.getData` on the destination table. If the user matches the creator of the job, the following IAM permission(s) are required instead: - `bigquery.jobs.create` on the project. - `bigquery.tables.getData` on the destination table.

      [GET projects/{+projectId}/queries/{+jobId}]

      - [project_id]: Required. Project ID of the query job.
      - [job_id]: Required. Job ID of the query job.
      - [format_options_timestamp_output_format]: Optional. The API output format for a timestamp. This offers more explicit control over the timestamp output format as compared to the existing `use_int64_timestamp` option.
      - [format_options_use_int64_timestamp]: Optional. Output timestamp as usec int64. Default is false.
      - [location]: The geographic location of the job. You must specify the location to run the job for the following scenarios: * If the location to run a job is not in the `us` or the `eu` multi-regional location * If the job's location is in a single region (for example, `us-central1`) For more information, see how to \[specify locations\](https://cloud.google.com/bigquery/docs/locations#specify_locations).
      - [max_results]: Maximum number of results to read.
      - [page_token]: Page token, returned by a previous call, to request the next page of results.
      - [start_index]: Zero-based index of the starting row.
      - [timeout_ms]: Optional: Specifies the maximum amount of time, in milliseconds, that the client is willing to wait for the query to complete. By default, this limit is 10 seconds (10,000 milliseconds). If the query is complete, the jobComplete field in the response is true. If the query has not yet completed, jobComplete is false. You can request a longer timeout period in the timeoutMs field. However, the call is not guaranteed to wait for the specified timeout; it typically returns after around 200 seconds (200,000 milliseconds), even if the query is not complete. If jobComplete is false, you can continue to wait for the query to complete by calling the getQueryResults method until the jobComplete field in the getQueryResults response is true. *)

  val insert :
    project_id:string ->
    body:job ->
    unit ->
    job Google_api.Call.t
  (** Starts a new asynchronous job. This API has two different kinds of endpoint URIs, as this method supports a variety of use cases. * The *Metadata* URI is used for most interactions, as it accepts the job configuration directly. * The *Upload* URI is ONLY for the case when you're sending both a load job configuration and a data stream together. In this case, the Upload URI accepts the job configuration and the data as two distinct multipart MIME parts. # IAM Permissions Requires the `bigquery.jobs.create` permission on the project resource. Additional permissions are required depending on the job type: - **Load, Export, and Copy jobs**: Generally require data-level permissions such as `bigquery.tables.export` or access to external storage. - **Query jobs**: Permissions are dependent on the SQL statement. Complex queries (DDL, DCL) may require additional permissions to create reservations, modify IAM policies, or update project settings.

      [POST projects/{+projectId}/jobs]

      - [project_id]: Project ID of project that will be billed for the job. *)

  val list :
    project_id:string ->
    ?all_users:bool ->
    ?max_creation_time:string ->
    ?max_results:int ->
    ?min_creation_time:string ->
    ?page_token:string ->
    ?parent_job_id:string ->
    ?projection:[ `Full | `Minimal | `Unrecognized of string ] ->
    ?state_filter:[ `Done | `Pending | `Running | `Unrecognized of string ] list ->
    unit ->
    job_list Google_api.Call.t
  (** Lists all jobs that you started in the specified project. Job information is available for a six month period after creation. The job list is sorted in reverse chronological order, by job creation time. Requires the Can View project role, or the Is Owner project role if you set the allUsers property. # IAM Permissions Requires no specific IAM permission(s) to use this method. Users are able to list the jobs they created. Additional access is granted based on the following permissions: - Users with the `bigquery.jobs.listAll` permission can list all jobs with all metadata. - Users with the `bigquery.jobs.list` permission can list all jobs, but with redacted information for jobs they did not create.

      [GET projects/{+projectId}/jobs]

      - [project_id]: Project ID of the jobs to list.
      - [all_users]: Whether to display jobs owned by all users in the project. Default False.
      - [max_creation_time]: Max value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created before or at this timestamp are returned.
      - [max_results]: The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
      - [min_creation_time]: Min value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created after or at this timestamp are returned.
      - [page_token]: Page token, returned by a previous call, to request the next page of results.
      - [parent_job_id]: If set, show only child jobs of the specified parent. Otherwise, show all top-level jobs.
      - [projection]: Restrict information returned to a set of selected fields
      - [state_filter]: Filter for job state *)

  val query :
    project_id:string ->
    body:query_request ->
    unit ->
    query_response Google_api.Call.t
  (** Runs a BigQuery SQL query synchronously and returns query results if the query completes within a specified timeout. # IAM Permissions Requires the `bigquery.jobs.create` permission on the project resource. Data-level permissions are highly dependent on the SQL statement being executed. While standard queries require data access (such as `bigquery.tables.getData`), complex operations like DDL or DCL may require permissions to manage reservations, IAM policies, or project settings.

      [POST projects/{+projectId}/queries]

      - [project_id]: Required. Project ID of the query request. *)
end

module Models : sig
  val delete :
    project_id:string ->
    dataset_id:string ->
    model_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes the model specified by modelId from the dataset. # IAM Permissions Requires the `bigquery.models.delete` permission on the model.

      [DELETE projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}]

      - [project_id]: Required. Project ID of the model to delete.
      - [dataset_id]: Required. Dataset ID of the model to delete.
      - [model_id]: Required. Model ID of the model to delete. *)

  val get :
    project_id:string ->
    dataset_id:string ->
    model_id:string ->
    unit ->
    model Google_api.Call.t
  (** Gets the specified model resource by model ID. # IAM Permissions Requires the `bigquery.models.getMetadata` permission on the model.

      [GET projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}]

      - [project_id]: Required. Project ID of the requested model.
      - [dataset_id]: Required. Dataset ID of the requested model.
      - [model_id]: Required. Model ID of the requested model. *)

  val list :
    project_id:string ->
    dataset_id:string ->
    ?max_results:int ->
    ?page_token:string ->
    unit ->
    list_models_response Google_api.Call.t
  (** Lists all models in the specified dataset. Requires the READER dataset role. After retrieving the list of models, you can get information about a particular model by calling the models.get method. # IAM Permissions Requires the `bigquery.models.list` permission on the dataset.

      [GET projects/{+projectId}/datasets/{+datasetId}/models]

      - [project_id]: Required. Project ID of the models to list.
      - [dataset_id]: Required. Dataset ID of the models to list.
      - [max_results]: The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
      - [page_token]: Page token, returned by a previous call to request the next page of results *)

  val patch :
    project_id:string ->
    dataset_id:string ->
    model_id:string ->
    body:model ->
    unit ->
    model Google_api.Call.t
  (** Patch specific fields in the specified model. # IAM Permissions Requires the `bigquery.models.updateMetadata` permission on the model.

      [PATCH projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}]

      - [project_id]: Required. Project ID of the model to patch.
      - [dataset_id]: Required. Dataset ID of the model to patch.
      - [model_id]: Required. Model ID of the model to patch. *)
end

module Projects : sig
  val get_service_account :
    project_id:string ->
    unit ->
    get_service_account_response Google_api.Call.t
  (** RPC to get the service account for a project used for interactions with Google Cloud KMS. Requires the `bigquery.jobs.create` permission on the project resource. This permission is required to authorize the retrieval of the project's service identity for technical management tasks like encryption configuration.

      [GET projects/{+projectId}/serviceAccount]

      - [project_id]: Required. ID of the project. *)

  val list :
    ?max_results:int ->
    ?page_token:string ->
    unit ->
    project_list Google_api.Call.t
  (** RPC to list projects to which the user has been granted any project role. Users of this method are encouraged to consider the \[Resource Manager\](https://cloud.google.com/resource-manager/docs/) API, which provides the underlying data for this method and has more capabilities. # IAM Permissions Requires no specific IAM permission(s) to use this method. The results are filtered to only include projects on which the caller has been granted a project-level role such as a BigQuery predefined IAM role or a basic role such as Viewer or Owner.

      [GET projects]

      - [max_results]: `maxResults` unset returns all results, up to 50 per page. Additionally, the number of projects in a page may be fewer than `maxResults` because projects are retrieved and then filtered to only projects with the BigQuery API enabled.
      - [page_token]: Page token, returned by a previous call, to request the next page of results. If not present, no further pages are present. *)
end

module Routines : sig
  val delete :
    project_id:string ->
    dataset_id:string ->
    routine_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes the routine specified by routineId from the dataset. # IAM Permissions Requires the `bigquery.routines.delete` permission on the routine.

      [DELETE projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}]

      - [project_id]: Required. Project ID of the routine to delete
      - [dataset_id]: Required. Dataset ID of the routine to delete
      - [routine_id]: Required. Routine ID of the routine to delete *)

  val get :
    project_id:string ->
    dataset_id:string ->
    routine_id:string ->
    ?read_mask:string ->
    unit ->
    routine Google_api.Call.t
  (** Gets the specified routine resource by routine ID. # IAM Permissions Requires the `bigquery.routines.get` permission on the routine.

      [GET projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}]

      - [project_id]: Required. Project ID of the requested routine
      - [dataset_id]: Required. Dataset ID of the requested routine
      - [routine_id]: Required. Routine ID of the requested routine
      - [read_mask]: If set, only the Routine fields in the field mask are returned in the response. If unset, all Routine fields are returned. *)

  val get_iam_policy :
    resource:string ->
    body:get_iam_policy_request ->
    unit ->
    policy Google_api.Call.t
  (** Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

      [POST {+resource}:getIamPolicy]

      - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

  val insert :
    project_id:string ->
    dataset_id:string ->
    body:routine ->
    unit ->
    routine Google_api.Call.t
  (** Creates a new routine in the dataset. # IAM Permissions Requires the `bigquery.routines.create` permission on the dataset.

      [POST projects/{+projectId}/datasets/{+datasetId}/routines]

      - [project_id]: Required. Project ID of the new routine
      - [dataset_id]: Required. Dataset ID of the new routine *)

  val list :
    project_id:string ->
    dataset_id:string ->
    ?filter:string ->
    ?max_results:int ->
    ?page_token:string ->
    ?read_mask:string ->
    unit ->
    list_routines_response Google_api.Call.t
  (** Lists all routines in the specified dataset. Requires the READER dataset role. # IAM Permissions Requires the `bigquery.routines.list` permission on the dataset.

      [GET projects/{+projectId}/datasets/{+datasetId}/routines]

      - [project_id]: Required. Project ID of the routines to list
      - [dataset_id]: Required. Dataset ID of the routines to list
      - [filter]: If set, then only the Routines matching this filter are returned. The supported format is `routineType:\{RoutineType\}`, where `\{RoutineType\}` is a RoutineType enum. For example: `routineType:SCALAR_FUNCTION`.
      - [max_results]: The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
      - [page_token]: Page token, returned by a previous call, to request the next page of results
      - [read_mask]: If set, then only the Routine fields in the field mask, as well as project_id, dataset_id and routine_id, are returned in the response. If unset, then the following Routine fields are returned: etag, project_id, dataset_id, routine_id, routine_type, creation_time, last_modified_time, and language. *)

  val set_iam_policy :
    resource:string ->
    body:set_iam_policy_request ->
    unit ->
    policy Google_api.Call.t
  (** Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

      [POST {+resource}:setIamPolicy]

      - [resource]: REQUIRED: The resource for which the policy is being specified. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

  val test_iam_permissions :
    resource:string ->
    body:test_iam_permissions_request ->
    unit ->
    test_iam_permissions_response Google_api.Call.t
  (** Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may 'fail open' without warning.

      [POST {+resource}:testIamPermissions]

      - [resource]: REQUIRED: The resource for which the policy detail is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

  val update :
    project_id:string ->
    dataset_id:string ->
    routine_id:string ->
    body:routine ->
    unit ->
    routine Google_api.Call.t
  (** Updates information in an existing routine. The update method replaces the entire Routine resource. # IAM Permissions Requires the `bigquery.routines.update` permission on the routine.

      [PUT projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}]

      - [project_id]: Required. Project ID of the routine to update
      - [dataset_id]: Required. Dataset ID of the routine to update
      - [routine_id]: Required. Routine ID of the routine to update *)
end

module Row_access_policies : sig
  val batch_delete :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    body:batch_delete_row_access_policies_request ->
    unit ->
    unit Google_api.Call.t
  (** Deletes provided row access policies. # IAM Permissions Requires the following IAM permission(s) on the table: - `bigquery.rowAccessPolicies.delete` - `bigquery.rowAccessPolicies.setIamPolicy`

      [POST projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies:batchDelete]

      - [project_id]: Required. Project ID of the table to delete the row access policies.
      - [dataset_id]: Required. Dataset ID of the table to delete the row access policies.
      - [table_id]: Required. Table ID of the table to delete the row access policies. *)

  val delete :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    policy_id:string ->
    ?force:bool ->
    unit ->
    unit Google_api.Call.t
  (** Deletes a row access policy. # IAM Permissions Requires the following IAM permission(s) on the table: - `bigquery.rowAccessPolicies.delete` - `bigquery.rowAccessPolicies.setIamPolicy`

      [DELETE projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}]

      - [project_id]: Required. Project ID of the table to delete the row access policy.
      - [dataset_id]: Required. Dataset ID of the table to delete the row access policy.
      - [table_id]: Required. Table ID of the table to delete the row access policy.
      - [policy_id]: Required. Policy ID of the row access policy.
      - [force]: If set to true, it deletes the row access policy even if it's the last row access policy on the table and the deletion will widen the access rather narrowing it. *)

  val get :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    policy_id:string ->
    unit ->
    row_access_policy Google_api.Call.t
  (** Gets the specified row access policy by policy ID. # IAM Permissions Requires the `bigquery.rowAccessPolicies.get` permission on the table.

      [GET projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}]

      - [project_id]: Required. Project ID of the table to get the row access policy.
      - [dataset_id]: Required. Dataset ID of the table to get the row access policy.
      - [table_id]: Required. Table ID of the table to get the row access policy.
      - [policy_id]: Required. Policy ID of the row access policy. *)

  val get_iam_policy :
    resource:string ->
    body:get_iam_policy_request ->
    unit ->
    policy Google_api.Call.t
  (** Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

      [POST {+resource}:getIamPolicy]

      - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

  val insert :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    body:row_access_policy ->
    unit ->
    row_access_policy Google_api.Call.t
  (** Creates a row access policy. # IAM Permissions Requires the following IAM permission(s) on the table: - `bigquery.rowAccessPolicies.create` - `bigquery.rowAccessPolicies.setIamPolicy` - `bigquery.tables.getData`

      [POST projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies]

      - [project_id]: Required. Project ID of the table to get the row access policy.
      - [dataset_id]: Required. Dataset ID of the table to get the row access policy.
      - [table_id]: Required. Table ID of the table to get the row access policy. *)

  val list :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    ?page_size:int ->
    ?page_token:string ->
    unit ->
    list_row_access_policies_response Google_api.Call.t
  (** Lists all row access policies on the specified table. # IAM Permissions Requires the `bigquery.rowAccessPolicies.list` permission on the table.

      [GET projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies]

      - [project_id]: Required. Project ID of the row access policies to list.
      - [dataset_id]: Required. Dataset ID of row access policies to list.
      - [table_id]: Required. Table ID of the table to list row access policies.
      - [page_size]: The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
      - [page_token]: Page token, returned by a previous call, to request the next page of results. *)

  val test_iam_permissions :
    resource:string ->
    body:test_iam_permissions_request ->
    unit ->
    test_iam_permissions_response Google_api.Call.t
  (** Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may 'fail open' without warning.

      [POST {+resource}:testIamPermissions]

      - [resource]: REQUIRED: The resource for which the policy detail is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

  val update :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    policy_id:string ->
    body:row_access_policy ->
    unit ->
    row_access_policy Google_api.Call.t
  (** Updates a row access policy. # IAM Permissions Requires the following IAM permission(s) on the table: - `bigquery.rowAccessPolicies.update` - `bigquery.rowAccessPolicies.setIamPolicy` - `bigquery.tables.getData`

      [PUT projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}]

      - [project_id]: Required. Project ID of the table to get the row access policy.
      - [dataset_id]: Required. Dataset ID of the table to get the row access policy.
      - [table_id]: Required. Table ID of the table to get the row access policy.
      - [policy_id]: Required. Policy ID of the row access policy. *)
end

module Tabledata : sig
  val insert_all :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    body:table_data_insert_all_request ->
    unit ->
    table_data_insert_all_response Google_api.Call.t
  (** Streams data into BigQuery one record at a time without needing to run a load job. # IAM Permissions Requires the following IAM permission(s) to use this method: - `bigquery.tables.updateData` on the table. - `bigquery.tables.get` on the table. - `bigquery.datasets.get` on the dataset.

      [POST projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/insertAll]

      - [project_id]: Required. Project ID of the destination.
      - [dataset_id]: Required. Dataset ID of the destination.
      - [table_id]: Required. Table ID of the destination. *)

  val list :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    ?format_options_timestamp_output_format:[ `Timestamp_output_format_unspecified | `Float64 | `Int64 | `Iso8601_string | `Unrecognized of string ] ->
    ?format_options_use_int64_timestamp:bool ->
    ?max_results:int ->
    ?page_token:string ->
    ?selected_fields:string ->
    ?start_index:string ->
    unit ->
    table_data_list Google_api.Call.t
  (** List the content of a table in rows. # IAM Permissions Requires the `bigquery.tables.getData` permission on the table.

      [GET projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/data]

      - [project_id]: Required. Project id of the table to list.
      - [dataset_id]: Required. Dataset id of the table to list.
      - [table_id]: Required. Table id of the table to list.
      - [format_options_timestamp_output_format]: Optional. The API output format for a timestamp. This offers more explicit control over the timestamp output format as compared to the existing `use_int64_timestamp` option.
      - [format_options_use_int64_timestamp]: Optional. Output timestamp as usec int64. Default is false.
      - [max_results]: Row limit of the table.
      - [page_token]: To retrieve the next page of table data, set this field to the string provided in the pageToken field of the response body from your previous call to tabledata.list.
      - [selected_fields]: Subset of fields to return, supports select into sub fields. Example: selected_fields = 'a,e.d.f';
      - [start_index]: Start row index of the table. *)
end

module Tables : sig
  val delete :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    unit ->
    unit Google_api.Call.t
  (** Deletes the table specified by tableId from the dataset. If the table contains data, all the data will be deleted. # IAM Permissions Requires the `bigquery.tables.delete` permission on the table.

      [DELETE projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}]

      - [project_id]: Required. Project ID of the table to delete
      - [dataset_id]: Required. Dataset ID of the table to delete
      - [table_id]: Required. Table ID of the table to delete *)

  val get :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    ?selected_fields:string ->
    ?view:[ `Table_metadata_view_unspecified | `Basic | `Storage_stats | `Full | `Unrecognized of string ] ->
    unit ->
    table Google_api.Call.t
  (** Gets the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table. # IAM Permissions Requires the `bigquery.tables.get` permission on the table.

      [GET projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}]

      - [project_id]: Required. Project ID of the requested table
      - [dataset_id]: Required. Dataset ID of the requested table
      - [table_id]: Required. Table ID of the requested table
      - [selected_fields]: List of table schema fields to return (comma-separated). If unspecified, all fields are returned. A fieldMask cannot be used here because the fields will automatically be converted from camelCase to snake_case and the conversion will fail if there are underscores. Since these are fields in BigQuery table schemas, underscores are allowed.
      - [view]: Optional. Specifies the view that determines which table information is returned. By default, basic table information and storage statistics (STORAGE_STATS) are returned. *)

  val get_iam_policy :
    resource:string ->
    body:get_iam_policy_request ->
    unit ->
    policy Google_api.Call.t
  (** Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

      [POST {+resource}:getIamPolicy]

      - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

  val insert :
    project_id:string ->
    dataset_id:string ->
    body:table ->
    unit ->
    table Google_api.Call.t
  (** Creates a new, empty table in the dataset. # IAM Permissions Requires the `bigquery.tables.create` permission on the dataset.

      [POST projects/{+projectId}/datasets/{+datasetId}/tables]

      - [project_id]: Required. Project ID of the new table
      - [dataset_id]: Required. Dataset ID of the new table *)

  val list :
    project_id:string ->
    dataset_id:string ->
    ?max_results:int ->
    ?page_token:string ->
    unit ->
    table_list Google_api.Call.t
  (** Lists all tables in the specified dataset. Requires the READER dataset role. # IAM Permissions Requires the `bigquery.tables.list` permission on the dataset.

      [GET projects/{+projectId}/datasets/{+datasetId}/tables]

      - [project_id]: Required. Project ID of the tables to list
      - [dataset_id]: Required. Dataset ID of the tables to list
      - [max_results]: The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
      - [page_token]: Page token, returned by a previous call, to request the next page of results *)

  val patch :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    body:table ->
    ?autodetect_schema:bool ->
    unit ->
    table Google_api.Call.t
  (** Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource. This method supports RFC5789 patch semantics. # IAM Permissions Requires the following IAM permission(s) on the table: - `bigquery.tables.update` - `bigquery.tables.get`

      [PATCH projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}]

      - [project_id]: Required. Project ID of the table to update
      - [dataset_id]: Required. Dataset ID of the table to update
      - [table_id]: Required. Table ID of the table to update
      - [autodetect_schema]: Optional.  When true will autodetect schema, else will keep original schema *)

  val set_iam_policy :
    resource:string ->
    body:set_iam_policy_request ->
    unit ->
    policy Google_api.Call.t
  (** Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

      [POST {+resource}:setIamPolicy]

      - [resource]: REQUIRED: The resource for which the policy is being specified. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

  val test_iam_permissions :
    resource:string ->
    body:test_iam_permissions_request ->
    unit ->
    test_iam_permissions_response Google_api.Call.t
  (** Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may 'fail open' without warning.

      [POST {+resource}:testIamPermissions]

      - [resource]: REQUIRED: The resource for which the policy detail is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

  val update :
    project_id:string ->
    dataset_id:string ->
    table_id:string ->
    body:table ->
    ?autodetect_schema:bool ->
    unit ->
    table Google_api.Call.t
  (** Updates information in an existing table. The update method replaces the entire Table resource, whereas the patch method only replaces fields that are provided in the submitted Table resource. # IAM Permissions Requires the `bigquery.tables.update` permission on the table.

      [PUT projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}]

      - [project_id]: Required. Project ID of the table to update
      - [dataset_id]: Required. Dataset ID of the table to update
      - [table_id]: Required. Table ID of the table to update
      - [autodetect_schema]: Optional.  When true will autodetect schema, else will keep original schema *)
end
