(* Generated from the Discovery document of bigquery v2 (revision 20260922). Do not edit. *)

[@@@alert "-internal"]

type aggregate_classification_metrics = {
  accuracy : float option;
  f1_score : float option;
  log_loss : float option;
  precision : float option;
  recall : float option;
  roc_auc : float option;
  threshold : float option;
}

and aggregation_threshold_policy = {
  privacy_unit_columns : string list option;
  threshold : string option;
}

and argument = {
  argument_kind : [ `Argument_kind_unspecified | `Fixed_type | `Any_type | `Fixed_table | `Any_table | `Unrecognized of string ] option;
  data_type : standard_sql_data_type option;
  is_aggregate : bool option;
  mode : [ `Mode_unspecified | `In | `Out | `Inout | `Unrecognized of string ] option;
  name : string option;
  table_type : standard_sql_table_type option;
}

and arima_coefficients = {
  auto_regressive_coefficients : float list option;
  intercept_coefficient : float option;
  moving_average_coefficients : float list option;
}

and arima_fitting_metrics = {
  aic : float option;
  log_likelihood : float option;
  variance : float option;
}

and arima_forecasting_metrics = {
  arima_fitting_metrics : arima_fitting_metrics list option;
  arima_single_model_forecasting_metrics : arima_single_model_forecasting_metrics list option;
  has_drift : bool list option;
  non_seasonal_order : arima_order list option;
  seasonal_periods : [ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list option;
  time_series_id : string list option;
}

and arima_model_info = {
  arima_coefficients : arima_coefficients option;
  arima_fitting_metrics : arima_fitting_metrics option;
  has_drift : bool option;
  has_holiday_effect : bool option;
  has_spikes_and_dips : bool option;
  has_step_changes : bool option;
  non_seasonal_order : arima_order option;
  seasonal_periods : [ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list option;
  time_series_id : string option;
  time_series_ids : string list option;
}

and arima_order = {
  d : string option;
  p : string option;
  q : string option;
}

and arima_result = {
  arima_model_info : arima_model_info list option;
  seasonal_periods : [ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list option;
}

and arima_single_model_forecasting_metrics = {
  arima_fitting_metrics : arima_fitting_metrics option;
  has_drift : bool option;
  has_holiday_effect : bool option;
  has_spikes_and_dips : bool option;
  has_step_changes : bool option;
  non_seasonal_order : arima_order option;
  seasonal_periods : [ `Seasonal_period_type_unspecified | `No_seasonality | `Daily | `Weekly | `Monthly | `Quarterly | `Yearly | `Hourly | `Unrecognized of string ] list option;
  time_series_id : string option;
  time_series_ids : string list option;
}

and arrow_record_batch = {
  serialized_record_batch : string option;
}

and arrow_schema = {
  serialized_schema : string option;
}

and arrow_serialization_options = {
  buffer_compression : [ `Compression_unspecified | `Lz4_frame | `Zstd | `Unrecognized of string ] option;
  picos_timestamp_precision : [ `Picos_timestamp_precision_unspecified | `Timestamp_precision_micros | `Timestamp_precision_nanos | `Timestamp_precision_picos | `Unrecognized of string ] option;
}

and audit_config = {
  audit_log_configs : audit_log_config list option;
  service : string option;
}

and audit_log_config = {
  exempted_members : string list option;
  log_type : [ `Log_type_unspecified | `Admin_read | `Data_write | `Data_read | `Unrecognized of string ] option;
}

and avro_options = {
  use_avro_logical_types : bool option;
}

and batch_delete_row_access_policies_request = {
  force : bool option;
  policy_ids : string list option;
}

and bi_engine_reason = {
  code : [ `Code_unspecified | `No_reservation | `Insufficient_reservation | `Unsupported_sql_text | `Input_too_large | `Other_reason | `Table_excluded | `Unrecognized of string ] option;
  message : string option;
}

and bi_engine_statistics = {
  acceleration_mode : [ `Bi_engine_acceleration_mode_unspecified | `Bi_engine_disabled | `Partial_input | `Full_input | `Full_query | `Unrecognized of string ] option;
  bi_engine_mode : [ `Acceleration_mode_unspecified | `Disabled | `Partial | `Full | `Unrecognized of string ] option;
  bi_engine_reasons : bi_engine_reason list option;
}

and big_lake_configuration = {
  connection_id : string option;
  file_format : [ `File_format_unspecified | `Parquet | `Unrecognized of string ] option;
  storage_uri : string option;
  table_format : [ `Table_format_unspecified | `Iceberg | `Unrecognized of string ] option;
}

and big_query_model_training = {
  current_iteration : int option;
  expected_total_iterations : string option;
}

and bigtable_column = {
  encoding : string option;
  field_name : string option;
  only_read_latest : bool option;
  proto_config : bigtable_proto_config option;
  qualifier_encoded : string option;
  qualifier_string : string option;
  type_ : string option;
}

and bigtable_column_family = {
  columns : bigtable_column list option;
  encoding : string option;
  family_id : string option;
  only_read_latest : bool option;
  proto_config : bigtable_proto_config option;
  type_ : string option;
}

and bigtable_options = {
  column_families : bigtable_column_family list option;
  ignore_unspecified_column_families : bool option;
  output_column_families_as_json : bool option;
  read_rowkey_as_string : bool option;
}

and bigtable_proto_config = {
  proto_message_name : string option;
  schema_bundle_id : string option;
}

and binary_classification_metrics = {
  aggregate_classification_metrics : aggregate_classification_metrics option;
  binary_confusion_matrix_list : binary_confusion_matrix list option;
  negative_label : string option;
  positive_label : string option;
}

and binary_confusion_matrix = {
  accuracy : float option;
  f1_score : float option;
  false_negatives : string option;
  false_positives : string option;
  positive_class_threshold : float option;
  precision : float option;
  recall : float option;
  true_negatives : string option;
  true_positives : string option;
}

and binding = {
  condition : expr option;
  members : string list option;
  role : string option;
}

and bqml_iteration_result = {
  duration_ms : string option;
  eval_loss : float option;
  index : int option;
  learn_rate : float option;
  training_loss : float option;
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
  iteration_results : bqml_iteration_result list option;
  start_time : string option;
  state : string option;
  training_options : bqml_training_run_training_options option;
}

and categorical_value = {
  category_counts : category_count list option;
}

and category_count = {
  category : string option;
  count : string option;
}

and clone_definition = {
  base_table_reference : table_reference option;
  clone_time : string option;
}

and cluster = {
  centroid_id : string option;
  count : string option;
  feature_values : feature_value list option;
}

and cluster_info = {
  centroid_id : string option;
  cluster_radius : float option;
  cluster_size : string option;
}

and clustering = {
  fields : string list option;
}

and clustering_metrics = {
  clusters : cluster list option;
  davies_bouldin_index : float option;
  mean_squared_distance : float option;
}

and confusion_matrix = {
  confidence_threshold : float option;
  rows : row list option;
}

and connection_property = {
  key : string option;
  value : string option;
}

and csv_options = {
  allow_jagged_rows : bool option;
  allow_quoted_newlines : bool option;
  encoding : string option;
  field_delimiter : string option;
  null_marker : string option;
  null_markers : string list option;
  preserve_ascii_control_characters : bool option;
  quote : string option;
  skip_leading_rows : string option;
  source_column_match : string option;
}

and data_format_options = {
  timestamp_output_format : [ `Timestamp_output_format_unspecified | `Float64 | `Int64 | `Iso8601_string | `Unrecognized of string ] option;
  use_int64_timestamp : bool option;
}

and data_masking_statistics = {
  data_masking_applied : bool option;
}

and data_policy_list = {
  data_policies : data_policy_option list option;
}

and data_policy_option = {
  name : string option;
}

and data_split_result = {
  evaluation_table : table_reference option;
  test_table : table_reference option;
  training_table : table_reference option;
}

and dataset_access_item = {
  condition : expr option;
  dataset : dataset_access_entry option;
  domain : string option;
  group_by_email : string option;
  iam_member : string option;
  role : string option;
  routine : routine_reference option;
  special_group : string option;
  user_by_email : string option;
  view : table_reference option;
}

and dataset_tags_item = {
  tag_key : string option;
  tag_value : string option;
}

and dataset = {
  access : dataset_access_item list option;
  catalog_source : string option;
  creation_time : string option;
  dataset_reference : dataset_reference option;
  default_collation : string option;
  default_encryption_configuration : encryption_configuration option;
  default_partition_expiration_ms : string option;
  default_rounding_mode : [ `Rounding_mode_unspecified | `Round_half_away_from_zero | `Round_half_even | `Unrecognized of string ] option;
  default_table_expiration_ms : string option;
  description : string option;
  etag : string option;
  external_catalog_dataset_options : external_catalog_dataset_options option;
  external_dataset_reference : external_dataset_reference option;
  friendly_name : string option;
  id : string option;
  is_case_insensitive : bool option;
  kind : string option;
  labels : (string * string) list option;
  last_modified_time : string option;
  linked_dataset_metadata : linked_dataset_metadata option;
  linked_dataset_source : linked_dataset_source option;
  location : string option;
  max_time_travel_hours : string option;
  resource_tags : (string * string) list option;
  restrictions : restriction_config option;
  satisfies_pzi : bool option;
  satisfies_pzs : bool option;
  self_link : string option;
  storage_billing_model : [ `Storage_billing_model_unspecified | `Logical | `Physical | `Unrecognized of string ] option;
  tags : dataset_tags_item list option;
  type_ : string option;
}

and dataset_access_entry = {
  dataset : dataset_reference option;
  target_types : [ `Target_type_unspecified | `Views | `Routines | `Unrecognized of string ] list option;
}

and dataset_list_datasets_item = {
  catalog_source : string option;
  dataset_reference : dataset_reference option;
  external_dataset_reference : external_dataset_reference option;
  friendly_name : string option;
  id : string option;
  kind : string option;
  labels : (string * string) list option;
  location : string option;
  type_ : string option;
}

and dataset_list = {
  datasets : dataset_list_datasets_item list option;
  etag : string option;
  kind : string option;
  next_page_token : string option;
  unreachable : string list option;
}

and dataset_reference = {
  dataset_id : string option;
  project_id : string option;
}

and destination_table_properties = {
  description : string option;
  expiration_time : string option;
  friendly_name : string option;
  labels : (string * string) list option;
}

and differential_privacy_policy = {
  delta_budget : float option;
  delta_budget_remaining : float option;
  delta_per_query : float option;
  epsilon_budget : float option;
  epsilon_budget_remaining : float option;
  max_epsilon_per_query : float option;
  max_groups_contributed : string option;
  privacy_unit_column : string option;
}

and dimensionality_reduction_metrics = {
  total_explained_variance_ratio : float option;
}

and dml_statistics = {
  deleted_row_count : string option;
  dml_mode : [ `Dml_mode_unspecified | `Coarse_grained_dml | `Fine_grained_dml | `Unrecognized of string ] option;
  fine_grained_dml_unused_reason : [ `Fine_grained_dml_unused_reason_unspecified | `Max_partition_size_exceeded | `Table_not_enrolled | `Dml_in_multi_statement_transaction | `Unrecognized of string ] option;
  inserted_row_count : string option;
  updated_row_count : string option;
}

and double_candidates = {
  candidates : float list option;
}

and double_hparam_search_space = {
  candidates : double_candidates option;
  range : double_range option;
}

and double_range = {
  max : float option;
  min : float option;
}

and encryption_configuration = {
  kms_key_name : string option;
}

and entry = {
  item_count : string option;
  predicted_label : string option;
}

and error_proto = {
  debug_info : string option;
  location : string option;
  message : string option;
  reason : string option;
}

and evaluation_metrics = {
  arima_forecasting_metrics : arima_forecasting_metrics option;
  binary_classification_metrics : binary_classification_metrics option;
  clustering_metrics : clustering_metrics option;
  dimensionality_reduction_metrics : dimensionality_reduction_metrics option;
  multi_class_classification_metrics : multi_class_classification_metrics option;
  ranking_metrics : ranking_metrics option;
  regression_metrics : regression_metrics option;
}

and explain_query_stage = {
  completed_parallel_inputs : string option;
  compute_mode : [ `Compute_mode_unspecified | `Bigquery | `Bi_engine | `Unrecognized of string ] option;
  compute_ms_avg : string option;
  compute_ms_max : string option;
  compute_ratio_avg : float option;
  compute_ratio_max : float option;
  end_ms : string option;
  id : string option;
  input_stages : string list option;
  name : string option;
  parallel_inputs : string option;
  read_ms_avg : string option;
  read_ms_max : string option;
  read_ratio_avg : float option;
  read_ratio_max : float option;
  records_read : string option;
  records_written : string option;
  shuffle_output_bytes : string option;
  shuffle_output_bytes_spilled : string option;
  slot_ms : string option;
  start_ms : string option;
  status : string option;
  steps : explain_query_step list option;
  wait_ms_avg : string option;
  wait_ms_max : string option;
  wait_ratio_avg : float option;
  wait_ratio_max : float option;
  write_ms_avg : string option;
  write_ms_max : string option;
  write_ratio_avg : float option;
  write_ratio_max : float option;
}

and explain_query_step = {
  kind : string option;
  substeps : string list option;
}

and explanation = {
  attribution : float option;
  feature_name : string option;
}

and export_data_statistics = {
  file_count : string option;
  row_count : string option;
}

and expr = {
  description : string option;
  expression : string option;
  location : string option;
  title : string option;
}

and external_catalog_dataset_options = {
  default_storage_location_uri : string option;
  parameters : (string * string) list option;
}

and external_catalog_table_options = {
  connection_id : string option;
  parameters : (string * string) list option;
  storage_descriptor : storage_descriptor option;
}

and external_data_configuration = {
  autodetect : bool option;
  avro_options : avro_options option;
  bigtable_options : bigtable_options option;
  compression : string option;
  connection_id : string option;
  csv_options : csv_options option;
  date_format : string option;
  datetime_format : string option;
  decimal_target_types : [ `Decimal_target_type_unspecified | `Numeric | `Bignumeric | `String | `Unrecognized of string ] list option;
  file_set_spec_type : [ `File_set_spec_type_file_system_match | `File_set_spec_type_new_line_delimited_manifest | `Unrecognized of string ] option;
  google_sheets_options : google_sheets_options option;
  hive_partitioning_options : hive_partitioning_options option;
  ignore_unknown_values : bool option;
  json_extension : [ `Json_extension_unspecified | `Geojson | `Unrecognized of string ] option;
  json_options : json_options option;
  max_bad_records : int option;
  metadata_cache_mode : [ `Metadata_cache_mode_unspecified | `Automatic | `Manual | `Unrecognized of string ] option;
  object_metadata : [ `Object_metadata_unspecified | `Directory | `Simple | `Unrecognized of string ] option;
  parquet_options : parquet_options option;
  reference_file_schema_uri : string option;
  schema : table_schema option;
  source_format : string option;
  source_uris : string list option;
  time_format : string option;
  time_zone : string option;
  timestamp_format : string option;
  timestamp_target_precision : int list option;
}

and external_dataset_reference = {
  connection : string option;
  external_source : string option;
}

and external_runtime_options = {
  container_cpu : float option;
  container_memory : string option;
  container_request_concurrency : string option;
  max_batching_rows : string option;
  runtime_connection : string option;
  runtime_version : string option;
  volume_mounts : external_volume_mount list option;
}

and external_service_cost = {
  billing_method : string option;
  bytes_billed : string option;
  bytes_processed : string option;
  external_service : string option;
  reserved_slot_count : string option;
  slot_ms : string option;
}

and external_volume_mount = {
  mount_path : string option;
  source_path : string option;
}

and feature_value = {
  categorical_value : categorical_value option;
  feature_column : string option;
  numerical_value : float option;
}

and foreign_type_info = {
  type_system : [ `Type_system_unspecified | `Hive | `Unrecognized of string ] option;
}

and foreign_view_definition = {
  dialect : string option;
  query : string option;
}

and gen_ai_error_stats = {
  errors : string list option;
}

and gen_ai_function_cache_stats = {
  num_cache_hit_rows : string option;
}

and gen_ai_function_cost_optimization_stats = {
  message : string option;
  num_cost_optimized_rows : string option;
}

and gen_ai_function_error_stats = {
  errors : string list option;
  num_failed_rows : string option;
}

and gen_ai_function_stats = {
  cache_stats : gen_ai_function_cache_stats option;
  cost_optimization_stats : gen_ai_function_cost_optimization_stats option;
  error_stats : gen_ai_function_error_stats option;
  function_name : string option;
  num_processed_rows : string option;
  prompt : string option;
}

and gen_ai_stats = {
  error_stats : gen_ai_error_stats option;
  function_stats : gen_ai_function_stats list option;
}

and generated_column = {
  generated_expression_info : generated_expression_info option;
  generated_mode : [ `Generated_mode_unspecified | `Generated_always | `Generated_by_default | `Unrecognized of string ] option;
}

and generated_expression_info = {
  asynchronous : bool option;
  generation_expression : string option;
  stored : bool option;
}

and get_iam_policy_request = {
  options : get_policy_options option;
}

and get_policy_options = {
  requested_policy_version : int option;
}

and get_query_results_response = {
  cache_hit : bool option;
  errors : error_proto list option;
  etag : string option;
  job_complete : bool option;
  job_reference : job_reference option;
  kind : string option;
  num_dml_affected_rows : string option;
  page_token : string option;
  rows : table_row list option;
  schema : table_schema option;
  total_bytes_processed : string option;
  total_rows : string option;
}

and get_service_account_response = {
  email : string option;
  kind : string option;
}

and global_explanation = {
  class_label : string option;
  explanations : explanation list option;
}

and google_sheets_options = {
  range : string option;
  skip_leading_rows : string option;
}

and high_cardinality_join = {
  left_rows : string option;
  output_rows : string option;
  right_rows : string option;
  step_index : int option;
}

and hive_partitioning_options = {
  fields : string list option;
  mode : string option;
  require_partition_filter : bool option;
  source_uri_prefix : string option;
}

and hparam_search_spaces = {
  activation_fn : string_hparam_search_space option;
  batch_size : int_hparam_search_space option;
  booster_type : string_hparam_search_space option;
  colsample_bylevel : double_hparam_search_space option;
  colsample_bynode : double_hparam_search_space option;
  colsample_bytree : double_hparam_search_space option;
  dart_normalize_type : string_hparam_search_space option;
  dropout : double_hparam_search_space option;
  hidden_units : int_array_hparam_search_space option;
  l1_reg : double_hparam_search_space option;
  l2_reg : double_hparam_search_space option;
  learn_rate : double_hparam_search_space option;
  max_tree_depth : int_hparam_search_space option;
  min_split_loss : double_hparam_search_space option;
  min_tree_child_weight : int_hparam_search_space option;
  num_clusters : int_hparam_search_space option;
  num_factors : int_hparam_search_space option;
  num_parallel_tree : int_hparam_search_space option;
  optimizer : string_hparam_search_space option;
  subsample : double_hparam_search_space option;
  tree_method : string_hparam_search_space option;
  wals_alpha : double_hparam_search_space option;
}

and hparam_tuning_trial = {
  end_time_ms : string option;
  error_message : string option;
  eval_loss : float option;
  evaluation_metrics : evaluation_metrics option;
  hparam_tuning_evaluation_metrics : evaluation_metrics option;
  hparams : training_options option;
  start_time_ms : string option;
  status : [ `Trial_status_unspecified | `Not_started | `Running | `Succeeded | `Failed | `Infeasible | `Stopped_early | `Unrecognized of string ] option;
  training_loss : float option;
  trial_id : string option;
}

and incremental_result_stats = {
  disabled_reason : [ `Disabled_reason_unspecified | `Other | `Unsupported_operator | `Unrecognized of string ] option;
  disabled_reason_details : string option;
  first_incremental_row_time : string option;
  incremental_row_count : string option;
  last_incremental_row_time : string option;
  result_set_last_modify_time : string option;
  result_set_last_replace_time : string option;
}

and index_pruning_stats = {
  base_table : table_reference option;
  index_id : string option;
  post_index_pruning_parallel_input_count : string option;
  pre_index_pruning_parallel_input_count : string option;
}

and index_unused_reason = {
  base_table : table_reference option;
  code : [ `Code_unspecified | `Index_config_not_available | `Pending_index_creation | `Base_table_truncated | `Index_config_modified | `Time_travel_query | `No_pruning_power | `Unindexed_search_fields | `Unsupported_search_pattern | `Optimized_with_materialized_view | `Secured_by_data_masking | `Mismatched_text_analyzer | `Base_table_too_small | `Base_table_too_large | `Estimated_performance_gain_too_low | `Column_metadata_index_not_used | `Not_supported_in_standard_edition | `Index_suppressed_by_function_option | `Query_cache_hit | `Stale_index | `Internal_error | `Other_reason | `Unrecognized of string ] option;
  index_name : string option;
  message : string option;
}

and input_data_change = {
  records_read_diff_percentage : float option;
}

and int_array = {
  elements : string list option;
}

and int_array_hparam_search_space = {
  candidates : int_array list option;
}

and int_candidates = {
  candidates : string list option;
}

and int_hparam_search_space = {
  candidates : int_candidates option;
  range : int_range option;
}

and int_range = {
  max : string option;
  min : string option;
}

and iteration_result = {
  arima_result : arima_result option;
  cluster_infos : cluster_info list option;
  duration_ms : string option;
  eval_loss : float option;
  index : int option;
  learn_rate : float option;
  principal_component_infos : principal_component_info list option;
  training_loss : float option;
}

and job = {
  configuration : job_configuration option;
  etag : string option;
  id : string option;
  job_creation_reason : job_creation_reason option;
  job_reference : job_reference option;
  kind : string option;
  principal_subject : string option;
  self_link : string option;
  statistics : job_statistics option;
  status : job_status option;
  user_email : string option;
}

and job_cancel_response = {
  job : job option;
  kind : string option;
}

and job_configuration = {
  copy : job_configuration_table_copy option;
  dry_run : bool option;
  extract : job_configuration_extract option;
  job_timeout_ms : string option;
  job_type : string option;
  labels : (string * string) list option;
  load : job_configuration_load option;
  max_slots : int option;
  query : job_configuration_query option;
  reservation : string option;
}

and job_configuration_extract = {
  compression : string option;
  destination_format : string option;
  destination_uri : string option;
  destination_uris : string list option;
  field_delimiter : string option;
  model_extract_options : model_extract_options option;
  native_geography_export_enabled : bool option;
  print_header : bool option;
  source_model : model_reference option;
  source_table : table_reference option;
  use_avro_logical_types : bool option;
}

and job_configuration_load = {
  allow_jagged_rows : bool option;
  allow_quoted_newlines : bool option;
  autodetect : bool option;
  clustering : clustering option;
  column_name_character_map : [ `Column_name_character_map_unspecified | `Strict | `V1 | `V2 | `Unrecognized of string ] option;
  connection_properties : connection_property list option;
  copy_files_only : bool option;
  create_disposition : string option;
  create_session : bool option;
  date_format : string option;
  datetime_format : string option;
  decimal_target_types : [ `Decimal_target_type_unspecified | `Numeric | `Bignumeric | `String | `Unrecognized of string ] list option;
  destination_encryption_configuration : encryption_configuration option;
  destination_table : table_reference option;
  destination_table_properties : destination_table_properties option;
  encoding : string option;
  field_delimiter : string option;
  file_set_spec_type : [ `File_set_spec_type_file_system_match | `File_set_spec_type_new_line_delimited_manifest | `Unrecognized of string ] option;
  hive_partitioning_options : hive_partitioning_options option;
  ignore_unknown_values : bool option;
  json_extension : [ `Json_extension_unspecified | `Geojson | `Unrecognized of string ] option;
  max_bad_records : int option;
  null_marker : string option;
  null_markers : string list option;
  parquet_options : parquet_options option;
  preserve_ascii_control_characters : bool option;
  projection_fields : string list option;
  quote : string option;
  range_partitioning : range_partitioning option;
  reference_file_schema_uri : string option;
  schema : table_schema option;
  schema_inline : string option;
  schema_inline_format : string option;
  schema_update_options : string list option;
  skip_leading_rows : int option;
  source_column_match : [ `Source_column_match_unspecified | `Position | `Name | `Unrecognized of string ] option;
  source_format : string option;
  source_uris : string list option;
  time_format : string option;
  time_partitioning : time_partitioning option;
  time_zone : string option;
  timestamp_format : string option;
  timestamp_target_precision : int list option;
  use_avro_logical_types : bool option;
  write_disposition : string option;
}

and job_configuration_query = {
  allow_large_results : bool option;
  clustering : clustering option;
  connection_properties : connection_property list option;
  continuous : bool option;
  create_disposition : string option;
  create_session : bool option;
  default_dataset : dataset_reference option;
  destination_encryption_configuration : encryption_configuration option;
  destination_table : table_reference option;
  flatten_results : bool option;
  maximum_billing_tier : int option;
  maximum_bytes_billed : string option;
  parameter_mode : string option;
  preserve_nulls : bool option;
  priority : string option;
  query : string option;
  query_parameters : query_parameter list option;
  range_partitioning : range_partitioning option;
  schema_update_options : string list option;
  script_options : script_options option;
  secure_context : secure_context option;
  system_variables : system_variables option;
  table_definitions : (string * external_data_configuration) list option;
  time_partitioning : time_partitioning option;
  use_legacy_sql : bool option;
  use_query_cache : bool option;
  user_defined_function_resources : user_defined_function_resource list option;
  write_disposition : string option;
  write_incremental_results : bool option;
}

and job_configuration_table_copy = {
  create_disposition : string option;
  destination_encryption_configuration : encryption_configuration option;
  destination_expiration_time : string option;
  destination_table : table_reference option;
  operation_type : [ `Operation_type_unspecified | `Copy | `Snapshot | `Restore | `Clone | `Unrecognized of string ] option;
  source_table : table_reference option;
  source_tables : table_reference list option;
  write_disposition : string option;
}

and job_creation_reason = {
  code : [ `Code_unspecified | `Requested | `Long_running | `Large_results | `Other | `Unrecognized of string ] option;
}

and job_list_jobs_item = {
  configuration : job_configuration option;
  error_result : error_proto option;
  id : string option;
  job_reference : job_reference option;
  kind : string option;
  principal_subject : string option;
  state : string option;
  statistics : job_statistics option;
  status : job_status option;
  user_email : string option;
}

and job_list = {
  etag : string option;
  jobs : job_list_jobs_item list option;
  kind : string option;
  next_page_token : string option;
  unreachable : string list option;
}

and job_reference = {
  job_id : string option;
  location : string option;
  project_id : string option;
}

and job_statistics_reservation_usage_item = {
  name : string option;
  slot_ms : string option;
}

and job_statistics = {
  completion_ratio : float option;
  copy : job_statistics5 option;
  creation_time : string option;
  data_masking_statistics : data_masking_statistics option;
  edition : [ `Reservation_edition_unspecified | `Standard | `Enterprise | `Enterprise_plus | `Unrecognized of string ] option;
  end_time : string option;
  extract : job_statistics4 option;
  final_execution_duration_ms : string option;
  global_query_remote_regions : string list option;
  load : job_statistics3 option;
  num_child_jobs : string option;
  parent_global_query_job : job_reference option;
  parent_job_id : string option;
  query : job_statistics2 option;
  quota_deferments : string list option;
  reservation_group_path : string list option;
  reservation_usage : job_statistics_reservation_usage_item list option;
  reservation_id : string option;
  row_level_security_statistics : row_level_security_statistics option;
  script_statistics : script_statistics option;
  session_info : session_info option;
  start_time : string option;
  total_bytes_processed : string option;
  total_slot_ms : string option;
  transaction_info : transaction_info option;
}

and job_statistics2_reservation_usage_item = {
  name : string option;
  slot_ms : string option;
}

and job_statistics2 = {
  bi_engine_statistics : bi_engine_statistics option;
  billing_tier : int option;
  cache_hit : bool option;
  dcl_target_dataset : dataset_reference option;
  dcl_target_table : table_reference option;
  dcl_target_view : table_reference option;
  ddl_affected_row_access_policy_count : string option;
  ddl_destination_table : table_reference option;
  ddl_operation_performed : string option;
  ddl_target_dataset : dataset_reference option;
  ddl_target_routine : routine_reference option;
  ddl_target_row_access_policy : row_access_policy_reference option;
  ddl_target_table : table_reference option;
  dml_stats : dml_statistics option;
  estimated_bytes_processed : string option;
  export_data_statistics : export_data_statistics option;
  external_service_costs : external_service_cost list option;
  gen_ai_stats : gen_ai_stats option;
  incremental_result_stats : incremental_result_stats option;
  load_query_statistics : load_query_statistics option;
  materialized_view_statistics : materialized_view_statistics option;
  metadata_cache_statistics : metadata_cache_statistics option;
  ml_statistics : ml_statistics option;
  model_training : big_query_model_training option;
  model_training_current_iteration : int option;
  model_training_expected_total_iteration : string option;
  num_dml_affected_rows : string option;
  object_storage_stats : object_storage_stats list option;
  performance_insights : performance_insights option;
  query_info : query_info option;
  query_plan : explain_query_stage list option;
  referenced_logical_views : table_reference list option;
  referenced_property_graphs : property_graph_reference list option;
  referenced_routines : routine_reference list option;
  referenced_tables : table_reference list option;
  reservation_usage : job_statistics2_reservation_usage_item list option;
  schema : table_schema option;
  search_statistics : search_statistics option;
  spark_statistics : spark_statistics option;
  statement_type : string option;
  timeline : query_timeline_sample list option;
  total_bytes_billed : string option;
  total_bytes_processed : string option;
  total_bytes_processed_accuracy : string option;
  total_partitions_processed : string option;
  total_services_sku_slot_ms : string option;
  total_slot_ms : string option;
  transferred_bytes : string option;
  undeclared_query_parameters : query_parameter list option;
  vector_search_statistics : vector_search_statistics option;
}

and job_statistics3 = {
  bad_records : string option;
  input_file_bytes : string option;
  input_files : string option;
  output_bytes : string option;
  output_rows : string option;
  timeline : query_timeline_sample list option;
}

and job_statistics4 = {
  destination_uri_file_counts : string list option;
  input_bytes : string option;
  timeline : query_timeline_sample list option;
}

and job_statistics5 = {
  copied_logical_bytes : string option;
  copied_rows : string option;
  remote_destination_region : string option;
}

and job_status = {
  error_result : error_proto option;
  errors : error_proto list option;
  state : string option;
}

and join_restriction_policy = {
  join_allowed_columns : string list option;
  join_condition : [ `Join_condition_unspecified | `Join_any | `Join_all | `Join_not_required | `Join_blocked | `Unrecognized of string ] option;
}

and json_object = (string * json_value) list

and json_options = {
  encoding : string option;
}

and json_value = Yojson.Safe.t

and linked_dataset_metadata = {
  link_state : [ `Link_state_unspecified | `Linked | `Unlinked | `Unrecognized of string ] option;
}

and linked_dataset_source = {
  source_dataset : dataset_reference option;
}

and list_models_response = {
  models : model list option;
  next_page_token : string option;
}

and list_routines_response = {
  next_page_token : string option;
  routines : routine list option;
}

and list_row_access_policies_response = {
  next_page_token : string option;
  row_access_policies : row_access_policy list option;
}

and load_query_statistics = {
  bad_records : string option;
  bytes_transferred : string option;
  input_file_bytes : string option;
  input_files : string option;
  output_bytes : string option;
  output_rows : string option;
}

and location_metadata = {
  legacy_location_id : string option;
}

and materialized_view = {
  chosen : bool option;
  estimated_bytes_saved : string option;
  rejected_reason : [ `Rejected_reason_unspecified | `No_data | `Cost | `Base_table_truncated | `Base_table_data_change | `Base_table_partition_expiration_change | `Base_table_expired_partition | `Base_table_incompatible_metadata_change | `Time_zone | `Out_of_time_travel_window | `Base_table_fine_grained_security_policy | `Base_table_too_stale | `Unrecognized of string ] option;
  table_reference : table_reference option;
}

and materialized_view_definition = {
  allow_non_incremental_definition : bool option;
  enable_refresh : bool option;
  last_refresh_time : string option;
  max_staleness : string option;
  query : string option;
  refresh_interval_ms : string option;
}

and materialized_view_statistics = {
  materialized_view : materialized_view list option;
}

and materialized_view_status = {
  last_refresh_status : error_proto option;
  refresh_watermark : string option;
}

and metadata_cache_staleness_insight = {
  avg_previous_staleness_ms : string option;
  staleness_percentage_increase : float option;
}

and metadata_cache_statistics = {
  table_metadata_cache_usage : table_metadata_cache_usage list option;
}

and ml_statistics = {
  hparam_trials : hparam_tuning_trial list option;
  iteration_results : iteration_result list option;
  max_iterations : string option;
  model_type : [ `Model_type_unspecified | `Linear_regression | `Logistic_regression | `Kmeans | `Matrix_factorization | `Dnn_classifier | `Tensorflow | `Dnn_regressor | `Xgboost | `Boosted_tree_regressor | `Boosted_tree_classifier | `Arima | `Automl_regressor | `Automl_classifier | `Pca | `Dnn_linear_combined_classifier | `Dnn_linear_combined_regressor | `Autoencoder | `Arima_plus | `Arima_plus_xreg | `Random_forest_regressor | `Random_forest_classifier | `Tensorflow_lite | `Onnx | `Transform_only | `Contribution_analysis | `Unrecognized of string ] option;
  training_type : [ `Training_type_unspecified | `Single_training | `Hparam_tuning | `Unrecognized of string ] option;
}

and model = {
  best_trial_id : string option;
  creation_time : string option;
  default_trial_id : string option;
  description : string option;
  encryption_configuration : encryption_configuration option;
  etag : string option;
  expiration_time : string option;
  feature_columns : standard_sql_field list option;
  friendly_name : string option;
  hparam_search_spaces : hparam_search_spaces option;
  hparam_trials : hparam_tuning_trial list option;
  label_columns : standard_sql_field list option;
  labels : (string * string) list option;
  last_modified_time : string option;
  location : string option;
  model_reference : model_reference option;
  model_type : [ `Model_type_unspecified | `Linear_regression | `Logistic_regression | `Kmeans | `Matrix_factorization | `Dnn_classifier | `Tensorflow | `Dnn_regressor | `Xgboost | `Boosted_tree_regressor | `Boosted_tree_classifier | `Arima | `Automl_regressor | `Automl_classifier | `Pca | `Dnn_linear_combined_classifier | `Dnn_linear_combined_regressor | `Autoencoder | `Arima_plus | `Arima_plus_xreg | `Random_forest_regressor | `Random_forest_classifier | `Tensorflow_lite | `Onnx | `Transform_only | `Contribution_analysis | `Unrecognized of string ] option;
  optimal_trial_ids : string list option;
  remote_model_info : remote_model_info option;
  training_runs : training_run list option;
  transform_columns : transform_column list option;
}

and model_definition_model_options = {
  labels : string list option;
  loss_type : string option;
  model_type : string option;
}

and model_definition = {
  model_options : model_definition_model_options option;
  training_runs : bqml_training_run list option;
}

and model_extract_options = {
  trial_id : string option;
}

and model_reference = {
  dataset_id : string option;
  model_id : string option;
  project_id : string option;
}

and multi_class_classification_metrics = {
  aggregate_classification_metrics : aggregate_classification_metrics option;
  confusion_matrix_list : confusion_matrix list option;
}

and object_storage_stats = {
  cache_bytes_read : string option;
  cloud_provider : [ `Cloud_provider_unspecified | `Gcp | `Aws | `Azure | `Unrecognized of string ] option;
  object_storage_bytes_read : string option;
}

and parquet_options = {
  enable_list_inference : bool option;
  enum_as_string : bool option;
  map_target_type : [ `Map_target_type_unspecified | `Array_of_struct | `Unrecognized of string ] option;
}

and partition_skew = {
  skew_sources : skew_source list option;
}

and partitioned_column = {
  field : string option;
}

and partitioning_definition = {
  partitioned_column : partitioned_column list option;
}

and performance_insights = {
  avg_previous_execution_ms : string option;
  stage_performance_change_insights : stage_performance_change_insight list option;
  stage_performance_standalone_insights : stage_performance_standalone_insight list option;
  table_change_insights : table_change_insight list option;
}

and policy = {
  audit_configs : audit_config list option;
  bindings : binding list option;
  etag : string option;
  version : int option;
}

and principal_component_info = {
  cumulative_explained_variance_ratio : float option;
  explained_variance : float option;
  explained_variance_ratio : float option;
  principal_component_id : string option;
}

and privacy_policy = {
  aggregation_threshold_policy : aggregation_threshold_policy option;
  differential_privacy_policy : differential_privacy_policy option;
  join_restriction_policy : join_restriction_policy option;
}

and project_list_projects_item = {
  friendly_name : string option;
  id : string option;
  kind : string option;
  numeric_id : string option;
  project_reference : project_reference option;
}

and project_list = {
  etag : string option;
  kind : string option;
  next_page_token : string option;
  projects : project_list_projects_item list option;
  total_items : int option;
}

and project_reference = {
  project_id : string option;
}

and property_graph_reference = {
  dataset_id : string option;
  project_id : string option;
  property_graph_id : string option;
}

and pruning_stats = {
  post_cmeta_pruning_parallel_input_count : string option;
  post_cmeta_pruning_partition_count : string option;
  pre_cmeta_pruning_parallel_input_count : string option;
}

and python_options = {
  entry_point : string option;
  packages : string list option;
}

and query_info = {
  optimization_details : (string * Yojson.Safe.t) list option;
}

and query_parameter = {
  name : string option;
  parameter_type : query_parameter_type option;
  parameter_value : query_parameter_value option;
}

and query_parameter_type_struct_types_item = {
  description : string option;
  name : string option;
  type_ : query_parameter_type option;
}

and query_parameter_type = {
  array_type : query_parameter_type option;
  range_element_type : query_parameter_type option;
  struct_types : query_parameter_type_struct_types_item list option;
  timestamp_precision : string option;
  type_ : string option;
}

and query_parameter_value = {
  array_values : query_parameter_value list option;
  range_value : range_value option;
  struct_values : (string * query_parameter_value) list option;
  value : string option;
}

and query_request = {
  arrow_serialization_options : arrow_serialization_options option;
  connection_properties : connection_property list option;
  continuous : bool option;
  create_session : bool option;
  default_dataset : dataset_reference option;
  destination_encryption_configuration : encryption_configuration option;
  dry_run : bool option;
  format_options : data_format_options option;
  job_creation_mode : [ `Job_creation_mode_unspecified | `Job_creation_required | `Job_creation_optional | `Unrecognized of string ] option;
  job_timeout_ms : string option;
  kind : string option;
  labels : (string * string) list option;
  location : string option;
  max_results : int option;
  max_slots : int option;
  maximum_bytes_billed : string option;
  parameter_mode : string option;
  preserve_nulls : bool option;
  query : string option;
  query_parameters : query_parameter list option;
  query_results_format : [ `Query_results_format_unspecified | `Struct_encoding | `Arrow | `Unrecognized of string ] option;
  request_id : string option;
  reservation : string option;
  secure_context : secure_context option;
  timeout_ms : int option;
  use_legacy_sql : bool option;
  use_query_cache : bool option;
  write_incremental_results : bool option;
}

and query_response = {
  arrow_record_batch : arrow_record_batch option;
  arrow_schema : arrow_schema option;
  cache_hit : bool option;
  creation_time : string option;
  dml_stats : dml_statistics option;
  end_time : string option;
  errors : error_proto list option;
  job_complete : bool option;
  job_creation_reason : job_creation_reason option;
  job_reference : job_reference option;
  kind : string option;
  location : string option;
  num_dml_affected_rows : string option;
  page_row_count : string option;
  page_token : string option;
  query_id : string option;
  rows : table_row list option;
  schema : table_schema option;
  session_info : session_info option;
  start_time : string option;
  statement_type : string option;
  total_bytes_billed : string option;
  total_bytes_processed : string option;
  total_rows : string option;
  total_slot_ms : string option;
}

and query_timeline_sample = {
  active_units : string option;
  completed_units : string option;
  elapsed_ms : string option;
  estimated_runnable_units : string option;
  pending_units : string option;
  shuffle_ram_usage_ratio : float option;
  total_slot_ms : string option;
}

and range_partitioning_range = {
  end_ : string option;
  interval : string option;
  start : string option;
}

and range_partitioning = {
  field : string option;
  range : range_partitioning_range option;
}

and range_value = {
  end_ : query_parameter_value option;
  start : query_parameter_value option;
}

and ranking_metrics = {
  average_rank : float option;
  mean_average_precision : float option;
  mean_squared_error : float option;
  normalized_discounted_cumulative_gain : float option;
}

and regression_metrics = {
  mean_absolute_error : float option;
  mean_squared_error : float option;
  mean_squared_log_error : float option;
  median_absolute_error : float option;
  r_squared : float option;
}

and remote_function_options = {
  connection : string option;
  endpoint : string option;
  max_batching_rows : string option;
  user_defined_context : (string * string) list option;
}

and remote_model_info = {
  connection : string option;
  endpoint : string option;
  max_batching_rows : string option;
  remote_model_version : string option;
  remote_service_type : [ `Remote_service_type_unspecified | `Cloud_ai_translate_v3 | `Cloud_ai_vision_v1 | `Cloud_ai_natural_language_v1 | `Cloud_ai_speech_to_text_v2 | `Unrecognized of string ] option;
  speech_recognizer : string option;
}

and restriction_config = {
  type_ : [ `Restriction_type_unspecified | `Restricted_data_egress | `Unrecognized of string ] option;
}

and routine = {
  arguments : argument list option;
  build_status : routine_build_status option;
  creation_time : string option;
  data_governance_type : [ `Data_governance_type_unspecified | `Data_masking | `Unrecognized of string ] option;
  definition_body : string option;
  description : string option;
  determinism_level : [ `Determinism_level_unspecified | `Deterministic | `Not_deterministic | `Unrecognized of string ] option;
  etag : string option;
  external_runtime_options : external_runtime_options option;
  imported_libraries : string list option;
  language : [ `Language_unspecified | `Sql | `Javascript | `Python | `Java | `Scala | `Unrecognized of string ] option;
  last_modified_time : string option;
  python_options : python_options option;
  remote_function_options : remote_function_options option;
  return_table_type : standard_sql_table_type option;
  return_type : standard_sql_data_type option;
  routine_reference : routine_reference option;
  routine_type : [ `Routine_type_unspecified | `Scalar_function | `Procedure | `Table_valued_function | `Aggregate_function | `Unrecognized of string ] option;
  security_mode : [ `Security_mode_unspecified | `Definer | `Invoker | `Unrecognized of string ] option;
  spark_options : spark_options option;
  strict_mode : bool option;
}

and routine_build_status = {
  build_duration : string option;
  build_state : [ `Build_state_unspecified | `In_progress | `Succeeded | `Failed | `Unrecognized of string ] option;
  build_state_update_time : string option;
  error_result : error_proto option;
  image_size_bytes : string option;
}

and routine_reference = {
  dataset_id : string option;
  project_id : string option;
  routine_id : string option;
}

and row = {
  actual_label : string option;
  entries : entry list option;
}

and row_access_policy = {
  creation_time : string option;
  etag : string option;
  filter_predicate : string option;
  grantees : string list option;
  last_modified_time : string option;
  row_access_policy_reference : row_access_policy_reference option;
}

and row_access_policy_reference = {
  dataset_id : string option;
  policy_id : string option;
  project_id : string option;
  table_id : string option;
}

and row_level_security_statistics = {
  row_level_security_applied : bool option;
}

and script_options = {
  key_result_statement : [ `Key_result_statement_kind_unspecified | `Last | `First_select | `Unrecognized of string ] option;
  statement_byte_budget : string option;
  statement_timeout_ms : string option;
}

and script_stack_frame = {
  end_column : int option;
  end_line : int option;
  procedure_id : string option;
  start_column : int option;
  start_line : int option;
  text : string option;
}

and script_statistics = {
  evaluation_kind : [ `Evaluation_kind_unspecified | `Statement | `Expression | `Unrecognized of string ] option;
  stack_frames : script_stack_frame list option;
}

and search_statistics = {
  index_pruning_stats : index_pruning_stats list option;
  index_unused_reasons : index_unused_reason list option;
  index_usage_mode : [ `Index_usage_mode_unspecified | `Unused | `Partially_used | `Fully_used | `Unrecognized of string ] option;
}

and secure_context = {
  secure_parameter_entries : (string * Yojson.Safe.t) list option;
}

and ser_de_info = {
  name : string option;
  parameters : (string * string) list option;
  serialization_library : string option;
}

and session_info = {
  session_id : string option;
}

and set_iam_policy_request = {
  policy : policy option;
  update_mask : string option;
}

and skew_source = {
  output_bytes_max : string option;
  output_bytes_median : string option;
  output_bytes_p95 : string option;
  stage_id : string option;
}

and snapshot_definition = {
  base_table_reference : table_reference option;
  snapshot_time : string option;
}

and spark_logging_info = {
  project_id : string option;
  resource_type : string option;
}

and spark_options = {
  archive_uris : string list option;
  connection : string option;
  container_image : string option;
  file_uris : string list option;
  jar_uris : string list option;
  main_class : string option;
  main_file_uri : string option;
  properties : (string * string) list option;
  py_file_uris : string list option;
  runtime_version : string option;
}

and spark_statistics = {
  endpoints : (string * string) list option;
  gcs_staging_bucket : string option;
  kms_key_name : string option;
  logging_info : spark_logging_info option;
  spark_job_id : string option;
  spark_job_location : string option;
}

and stage_performance_change_insight = {
  input_data_change : input_data_change option;
  stage_id : string option;
}

and stage_performance_standalone_insight = {
  bi_engine_reasons : bi_engine_reason list option;
  high_cardinality_joins : high_cardinality_join list option;
  insufficient_shuffle_quota : bool option;
  partition_skew : partition_skew option;
  slot_contention : bool option;
  stage_id : string option;
}

and standard_sql_data_type = {
  array_element_type : standard_sql_data_type option;
  range_element_type : standard_sql_data_type option;
  struct_type : standard_sql_struct_type option;
  type_kind : [ `Type_kind_unspecified | `Int64 | `Bool | `Float64 | `String | `Bytes | `Timestamp | `Date | `Time | `Datetime | `Interval | `Geography | `Numeric | `Bignumeric | `Json | `Array | `Struct | `Range | `Uuid | `Unrecognized of string ] option;
}

and standard_sql_field = {
  name : string option;
  type_ : standard_sql_data_type option;
}

and standard_sql_struct_type = {
  fields : standard_sql_field list option;
}

and standard_sql_table_type = {
  columns : standard_sql_field list option;
}

and storage_descriptor = {
  input_format : string option;
  location_uri : string option;
  output_format : string option;
  serde_info : ser_de_info option;
}

and stored_columns_unused_reason = {
  code : [ `Code_unspecified | `Stored_columns_cover_insufficient | `Base_table_has_rls | `Base_table_has_cls | `Unsupported_prefilter | `Internal_error | `Other_reason | `Unrecognized of string ] option;
  message : string option;
  uncovered_columns : string list option;
}

and stored_columns_usage = {
  base_table : table_reference option;
  is_query_accelerated : bool option;
  stored_columns_unused_reasons : stored_columns_unused_reason list option;
}

and streamingbuffer = {
  estimated_bytes : string option;
  estimated_rows : string option;
  oldest_entry_time : string option;
}

and string_hparam_search_space = {
  candidates : string list option;
}

and system_variables = {
  types : (string * standard_sql_data_type) list option;
  values : (string * Yojson.Safe.t) list option;
}

and table = {
  biglake_configuration : big_lake_configuration option;
  clone_definition : clone_definition option;
  clustering : clustering option;
  creation_time : string option;
  default_collation : string option;
  default_rounding_mode : [ `Rounding_mode_unspecified | `Round_half_away_from_zero | `Round_half_even | `Unrecognized of string ] option;
  description : string option;
  encryption_configuration : encryption_configuration option;
  etag : string option;
  expiration_time : string option;
  external_catalog_table_options : external_catalog_table_options option;
  external_data_configuration : external_data_configuration option;
  friendly_name : string option;
  id : string option;
  kind : string option;
  labels : (string * string) list option;
  last_modified_time : string option;
  location : string option;
  managed_table_type : [ `Managed_table_type_unspecified | `Native | `Biglake | `Unrecognized of string ] option;
  materialized_view : materialized_view_definition option;
  materialized_view_status : materialized_view_status option;
  max_staleness : string option;
  model : model_definition option;
  num_active_logical_bytes : string option;
  num_active_physical_bytes : string option;
  num_bytes : string option;
  num_current_physical_bytes : string option;
  num_long_term_bytes : string option;
  num_long_term_logical_bytes : string option;
  num_long_term_physical_bytes : string option;
  num_partitions : string option;
  num_physical_bytes : string option;
  num_rows : string option;
  num_time_travel_physical_bytes : string option;
  num_total_logical_bytes : string option;
  num_total_physical_bytes : string option;
  partition_definition : partitioning_definition option;
  range_partitioning : range_partitioning option;
  replicas : table_reference list option;
  require_partition_filter : bool option;
  resource_tags : (string * string) list option;
  restrictions : restriction_config option;
  schema : table_schema option;
  self_link : string option;
  snapshot_definition : snapshot_definition option;
  streaming_buffer : streamingbuffer option;
  table_constraints : table_constraints option;
  table_reference : table_reference option;
  table_replication_info : table_replication_info option;
  time_partitioning : time_partitioning option;
  type_ : string option;
  view : view_definition option;
}

and table_cell = {
  v : Yojson.Safe.t option;
}

and table_change_insight = {
  metadata_cache_not_used_but_used_previously : bool option;
  metadata_cache_staleness_insight : metadata_cache_staleness_insight option;
  table_reference : table_reference option;
}

and table_constraints_foreign_keys_item_column_references_item = {
  referenced_column : string option;
  referencing_column : string option;
}

and table_constraints_foreign_keys_item_referenced_table = {
  dataset_id : string option;
  project_id : string option;
  table_id : string option;
}

and table_constraints_foreign_keys_item = {
  column_references : table_constraints_foreign_keys_item_column_references_item list option;
  name : string option;
  referenced_table : table_constraints_foreign_keys_item_referenced_table option;
}

and table_constraints_primary_key = {
  columns : string list option;
}

and table_constraints = {
  foreign_keys : table_constraints_foreign_keys_item list option;
  primary_key : table_constraints_primary_key option;
}

and table_data_insert_all_request_rows_item = {
  insert_id : string option;
  json : json_object option;
}

and table_data_insert_all_request = {
  ignore_unknown_values : bool option;
  kind : string option;
  rows : table_data_insert_all_request_rows_item list option;
  skip_invalid_rows : bool option;
  template_suffix : string option;
  trace_id : string option;
}

and table_data_insert_all_response_insert_errors_item = {
  errors : error_proto list option;
  index : int option;
}

and table_data_insert_all_response = {
  insert_errors : table_data_insert_all_response_insert_errors_item list option;
  kind : string option;
}

and table_data_list = {
  etag : string option;
  kind : string option;
  page_token : string option;
  rows : table_row list option;
  total_rows : string option;
}

and table_field_schema_categories = {
  names : string list option;
}

and table_field_schema_data_governance_tags_info = {
  data_governance_tags : (string * string) list option;
}

and table_field_schema_policy_tags = {
  names : string list option;
}

and table_field_schema_range_element_type = {
  type_ : string option;
}

and table_field_schema = {
  categories : table_field_schema_categories option;
  collation : string option;
  data_governance_tags_info : table_field_schema_data_governance_tags_info option;
  data_policies : data_policy_option list option;
  data_policy_list : data_policy_list option;
  default_value_expression : string option;
  description : string option;
  fields : table_field_schema list option;
  foreign_type_definition : string option;
  generated_column : generated_column option;
  max_length : string option;
  mode : string option;
  name : string option;
  policy_tags : table_field_schema_policy_tags option;
  precision : string option;
  range_element_type : table_field_schema_range_element_type option;
  rounding_mode : [ `Rounding_mode_unspecified | `Round_half_away_from_zero | `Round_half_even | `Unrecognized of string ] option;
  scale : string option;
  timestamp_precision : string option;
  type_ : string option;
}

and table_list_tables_item_view = {
  privacy_policy : privacy_policy option;
  use_legacy_sql : bool option;
}

and table_list_tables_item = {
  clustering : clustering option;
  creation_time : string option;
  expiration_time : string option;
  friendly_name : string option;
  id : string option;
  kind : string option;
  labels : (string * string) list option;
  range_partitioning : range_partitioning option;
  require_partition_filter : bool option;
  table_reference : table_reference option;
  time_partitioning : time_partitioning option;
  type_ : string option;
  view : table_list_tables_item_view option;
}

and table_list = {
  etag : string option;
  kind : string option;
  next_page_token : string option;
  tables : table_list_tables_item list option;
  total_items : int option;
}

and table_metadata_cache_usage = {
  explanation : string option;
  pruning_stats : pruning_stats option;
  staleness : string option;
  table_reference : table_reference option;
  table_type : string option;
  unused_reason : [ `Unused_reason_unspecified | `Exceeded_max_staleness | `Metadata_caching_not_enabled | `Other_reason | `Unrecognized of string ] option;
}

and table_reference = {
  dataset_id : string option;
  project_id : string option;
  table_id : string option;
}

and table_replication_info = {
  replicated_source_last_refresh_time : string option;
  replication_error : error_proto option;
  replication_interval_ms : string option;
  replication_status : [ `Replication_status_unspecified | `Active | `Source_deleted | `Permission_denied | `Unsupported_configuration | `Unrecognized of string ] option;
  source_table : table_reference option;
}

and table_row = {
  f : table_cell list option;
}

and table_schema = {
  fields : table_field_schema list option;
  foreign_type_info : foreign_type_info option;
}

and test_iam_permissions_request = {
  permissions : string list option;
}

and test_iam_permissions_response = {
  permissions : string list option;
}

and time_partitioning = {
  expiration_ms : string option;
  field : string option;
  require_partition_filter : bool option;
  type_ : string option;
}

and training_options = {
  activation_fn : string option;
  adjust_step_changes : bool option;
  approx_global_feature_contrib : bool option;
  auto_arima : bool option;
  auto_arima_max_order : string option;
  auto_arima_min_order : string option;
  auto_class_weights : bool option;
  batch_size : string option;
  booster_type : [ `Booster_type_unspecified | `Gbtree | `Dart | `Unrecognized of string ] option;
  budget_hours : float option;
  calculate_p_values : bool option;
  category_encoding_method : [ `Encoding_method_unspecified | `One_hot_encoding | `Label_encoding | `Dummy_encoding | `Unrecognized of string ] option;
  clean_spikes_and_dips : bool option;
  color_space : [ `Color_space_unspecified | `Rgb | `Hsv | `Yiq | `Yuv | `Grayscale | `Unrecognized of string ] option;
  colsample_bylevel : float option;
  colsample_bynode : float option;
  colsample_bytree : float option;
  contribution_metric : string option;
  dart_normalize_type : [ `Dart_normalize_type_unspecified | `Tree | `Forest | `Unrecognized of string ] option;
  data_frequency : [ `Data_frequency_unspecified | `Auto_frequency | `Yearly | `Quarterly | `Monthly | `Weekly | `Daily | `Hourly | `Per_minute | `Unrecognized of string ] option;
  data_split_column : string option;
  data_split_eval_fraction : float option;
  data_split_method : [ `Data_split_method_unspecified | `Random | `Custom | `Sequential | `No_split | `Auto_split | `Unrecognized of string ] option;
  decompose_time_series : bool option;
  dimension_id_columns : string list option;
  distance_type : [ `Distance_type_unspecified | `Euclidean | `Cosine | `Unrecognized of string ] option;
  dropout : float option;
  early_stop : bool option;
  enable_global_explain : bool option;
  endpoint_idle_ttl : string option;
  feedback_type : [ `Feedback_type_unspecified | `Implicit | `Explicit | `Unrecognized of string ] option;
  fit_intercept : bool option;
  forecast_limit_lower_bound : float option;
  forecast_limit_upper_bound : float option;
  hidden_units : string list option;
  holiday_region : [ `Holiday_region_unspecified | `Global | `Na | `Japac | `Emea | `Lac | `Ae | `Ar | `At | `Au | `Be | `Br | `Ca | `Ch | `Cl | `Cn | `Co | `Cs | `Cz | `De | `Dk | `Dz | `Ec | `Ee | `Eg | `Es | `Fi | `Fr | `Gb | `Gr | `Hk | `Hu | `Id | `Ie | `Il | `In | `Ir | `It | `Jp | `Kr | `Lv | `Ma | `Mx | `My | `Ng | `Nl | `No | `Nz | `Pe | `Ph | `Pk | `Pl | `Pt | `Ro | `Rs | `Ru | `Sa | `Se | `Sg | `Si | `Sk | `Th | `Tr | `Tw | `Ua | `Us | `Ve | `Vn | `Za | `Unrecognized of string ] option;
  holiday_regions : [ `Holiday_region_unspecified | `Global | `Na | `Japac | `Emea | `Lac | `Ae | `Ar | `At | `Au | `Be | `Br | `Ca | `Ch | `Cl | `Cn | `Co | `Cs | `Cz | `De | `Dk | `Dz | `Ec | `Ee | `Eg | `Es | `Fi | `Fr | `Gb | `Gr | `Hk | `Hu | `Id | `Ie | `Il | `In | `Ir | `It | `Jp | `Kr | `Lv | `Ma | `Mx | `My | `Ng | `Nl | `No | `Nz | `Pe | `Ph | `Pk | `Pl | `Pt | `Ro | `Rs | `Ru | `Sa | `Se | `Sg | `Si | `Sk | `Th | `Tr | `Tw | `Ua | `Us | `Ve | `Vn | `Za | `Unrecognized of string ] list option;
  horizon : string option;
  hparam_tuning_objectives : [ `Hparam_tuning_objective_unspecified | `Mean_absolute_error | `Mean_squared_error | `Mean_squared_log_error | `Median_absolute_error | `R_squared | `Explained_variance | `Precision | `Recall | `Accuracy | `F1_score | `Log_loss | `Roc_auc | `Davies_bouldin_index | `Mean_average_precision | `Normalized_discounted_cumulative_gain | `Average_rank | `Unrecognized of string ] list option;
  hugging_face_model_id : string option;
  include_drift : bool option;
  initial_learn_rate : float option;
  input_label_columns : string list option;
  instance_weight_column : string option;
  integrated_gradients_num_steps : string option;
  is_test_column : string option;
  item_column : string option;
  kmeans_initialization_column : string option;
  kmeans_initialization_method : [ `Kmeans_initialization_method_unspecified | `Random | `Custom | `Kmeans_plus_plus | `Unrecognized of string ] option;
  l1_reg_activation : float option;
  l1_regularization : float option;
  l2_regularization : float option;
  label_class_weights : (string * float) list option;
  learn_rate : float option;
  learn_rate_strategy : [ `Learn_rate_strategy_unspecified | `Line_search | `Constant | `Unrecognized of string ] option;
  loss_type : [ `Loss_type_unspecified | `Mean_squared_loss | `Mean_log_loss | `Unrecognized of string ] option;
  machine_type : string option;
  max_iterations : string option;
  max_parallel_trials : string option;
  max_replica_count : string option;
  max_time_series_length : string option;
  max_tree_depth : string option;
  min_apriori_support : float option;
  min_relative_progress : float option;
  min_replica_count : string option;
  min_split_loss : float option;
  min_time_series_length : string option;
  min_tree_child_weight : string option;
  model_garden_model_name : string option;
  model_registry : [ `Model_registry_unspecified | `Vertex_ai | `Unrecognized of string ] option;
  model_uri : string option;
  non_seasonal_order : arima_order option;
  num_clusters : string option;
  num_factors : string option;
  num_parallel_tree : string option;
  num_principal_components : string option;
  num_trials : string option;
  optimization_strategy : [ `Optimization_strategy_unspecified | `Batch_gradient_descent | `Normal_equation | `Unrecognized of string ] option;
  optimizer : string option;
  pca_explained_variance_ratio : float option;
  pca_solver : [ `Unspecified | `Full | `Randomized | `Auto | `Unrecognized of string ] option;
  reservation_affinity_key : string option;
  reservation_affinity_type : [ `Reservation_affinity_type_unspecified | `No_reservation | `Any_reservation | `Specific_reservation | `Unrecognized of string ] option;
  reservation_affinity_values : string list option;
  sampled_shapley_num_paths : string option;
  scale_features : bool option;
  standardize_features : bool option;
  subsample : float option;
  tf_version : string option;
  time_series_data_column : string option;
  time_series_id_column : string option;
  time_series_id_columns : string list option;
  time_series_length_fraction : float option;
  time_series_timestamp_column : string option;
  tree_method : [ `Tree_method_unspecified | `Auto | `Exact | `Approx | `Hist | `Unrecognized of string ] option;
  trend_smoothing_window_size : string option;
  user_column : string option;
  vertex_ai_model_version_aliases : string list option;
  wals_alpha : float option;
  warm_start : bool option;
  xgboost_version : string option;
}

and training_run = {
  class_level_global_explanations : global_explanation list option;
  data_split_result : data_split_result option;
  evaluation_metrics : evaluation_metrics option;
  model_level_global_explanation : global_explanation option;
  results : iteration_result list option;
  start_time : string option;
  training_options : training_options option;
  training_start_time : string option;
  vertex_ai_model_id : string option;
  vertex_ai_model_version : string option;
}

and transaction_info = {
  transaction_id : string option;
}

and transform_column = {
  name : string option;
  transform_sql : string option;
  type_ : standard_sql_data_type option;
}

and undelete_dataset_request = {
  deletion_time : string option;
}

and user_defined_function_resource = {
  inline_code : string option;
  resource_uri : string option;
}

and vector_search_statistics = {
  index_unused_reasons : index_unused_reason list option;
  index_usage_mode : [ `Index_usage_mode_unspecified | `Unused | `Partially_used | `Fully_used | `Unrecognized of string ] option;
  stored_columns_usages : stored_columns_usage list option;
}

and view_definition = {
  foreign_definitions : foreign_view_definition list option;
  privacy_policy : privacy_policy option;
  query : string option;
  use_explicit_column_names : bool option;
  use_legacy_sql : bool option;
  user_defined_function_resources : user_defined_function_resource list option;
}

let rec aggregate_classification_metrics_of_yojson json : aggregate_classification_metrics =
  let open Yojson.Safe.Util in
  {
    accuracy = member "accuracy" json |> to_option to_number;
    f1_score = member "f1Score" json |> to_option to_number;
    log_loss = member "logLoss" json |> to_option to_number;
    precision = member "precision" json |> to_option to_number;
    recall = member "recall" json |> to_option to_number;
    roc_auc = member "rocAuc" json |> to_option to_number;
    threshold = member "threshold" json |> to_option to_number;
  }

and yojson_of_aggregate_classification_metrics (value : aggregate_classification_metrics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("accuracy", (fun value -> `Float value) field)) value.accuracy;
         Option.map (fun field -> ("f1Score", (fun value -> `Float value) field)) value.f1_score;
         Option.map (fun field -> ("logLoss", (fun value -> `Float value) field)) value.log_loss;
         Option.map (fun field -> ("precision", (fun value -> `Float value) field)) value.precision;
         Option.map (fun field -> ("recall", (fun value -> `Float value) field)) value.recall;
         Option.map (fun field -> ("rocAuc", (fun value -> `Float value) field)) value.roc_auc;
         Option.map (fun field -> ("threshold", (fun value -> `Float value) field)) value.threshold;
       ])

and aggregation_threshold_policy_of_yojson json : aggregation_threshold_policy =
  let open Yojson.Safe.Util in
  {
    privacy_unit_columns = member "privacyUnitColumns" json |> to_option (convert_each to_string);
    threshold = member "threshold" json |> to_option to_string;
  }

and yojson_of_aggregation_threshold_policy (value : aggregation_threshold_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("privacyUnitColumns", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.privacy_unit_columns;
         Option.map (fun field -> ("threshold", (fun value -> `String value) field)) value.threshold;
       ])

and argument_of_yojson json : argument =
  let open Yojson.Safe.Util in
  {
    argument_kind = member "argumentKind" json |> to_option (fun json -> match to_string json with "ARGUMENT_KIND_UNSPECIFIED" -> `Argument_kind_unspecified | "FIXED_TYPE" -> `Fixed_type | "ANY_TYPE" -> `Any_type | "FIXED_TABLE" -> `Fixed_table | "ANY_TABLE" -> `Any_table | value -> `Unrecognized value);
    data_type = member "dataType" json |> to_option standard_sql_data_type_of_yojson;
    is_aggregate = member "isAggregate" json |> to_option to_bool;
    mode = member "mode" json |> to_option (fun json -> match to_string json with "MODE_UNSPECIFIED" -> `Mode_unspecified | "IN" -> `In | "OUT" -> `Out | "INOUT" -> `Inout | value -> `Unrecognized value);
    name = member "name" json |> to_option to_string;
    table_type = member "tableType" json |> to_option standard_sql_table_type_of_yojson;
  }

and yojson_of_argument (value : argument) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("argumentKind", (fun value -> `String ((function `Argument_kind_unspecified -> "ARGUMENT_KIND_UNSPECIFIED" | `Fixed_type -> "FIXED_TYPE" | `Any_type -> "ANY_TYPE" | `Fixed_table -> "FIXED_TABLE" | `Any_table -> "ANY_TABLE" | `Unrecognized value -> value) value)) field)) value.argument_kind;
         Option.map (fun field -> ("dataType", yojson_of_standard_sql_data_type field)) value.data_type;
         Option.map (fun field -> ("isAggregate", (fun value -> `Bool value) field)) value.is_aggregate;
         Option.map (fun field -> ("mode", (fun value -> `String ((function `Mode_unspecified -> "MODE_UNSPECIFIED" | `In -> "IN" | `Out -> "OUT" | `Inout -> "INOUT" | `Unrecognized value -> value) value)) field)) value.mode;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("tableType", yojson_of_standard_sql_table_type field)) value.table_type;
       ])

and arima_coefficients_of_yojson json : arima_coefficients =
  let open Yojson.Safe.Util in
  {
    auto_regressive_coefficients = member "autoRegressiveCoefficients" json |> to_option (convert_each to_number);
    intercept_coefficient = member "interceptCoefficient" json |> to_option to_number;
    moving_average_coefficients = member "movingAverageCoefficients" json |> to_option (convert_each to_number);
  }

and yojson_of_arima_coefficients (value : arima_coefficients) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("autoRegressiveCoefficients", (fun items -> `List (List.map (fun value -> `Float value) items)) field)) value.auto_regressive_coefficients;
         Option.map (fun field -> ("interceptCoefficient", (fun value -> `Float value) field)) value.intercept_coefficient;
         Option.map (fun field -> ("movingAverageCoefficients", (fun items -> `List (List.map (fun value -> `Float value) items)) field)) value.moving_average_coefficients;
       ])

and arima_fitting_metrics_of_yojson json : arima_fitting_metrics =
  let open Yojson.Safe.Util in
  {
    aic = member "aic" json |> to_option to_number;
    log_likelihood = member "logLikelihood" json |> to_option to_number;
    variance = member "variance" json |> to_option to_number;
  }

and yojson_of_arima_fitting_metrics (value : arima_fitting_metrics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("aic", (fun value -> `Float value) field)) value.aic;
         Option.map (fun field -> ("logLikelihood", (fun value -> `Float value) field)) value.log_likelihood;
         Option.map (fun field -> ("variance", (fun value -> `Float value) field)) value.variance;
       ])

and arima_forecasting_metrics_of_yojson json : arima_forecasting_metrics =
  let open Yojson.Safe.Util in
  {
    arima_fitting_metrics = member "arimaFittingMetrics" json |> to_option (convert_each arima_fitting_metrics_of_yojson);
    arima_single_model_forecasting_metrics = member "arimaSingleModelForecastingMetrics" json |> to_option (convert_each arima_single_model_forecasting_metrics_of_yojson);
    has_drift = member "hasDrift" json |> to_option (convert_each to_bool);
    non_seasonal_order = member "nonSeasonalOrder" json |> to_option (convert_each arima_order_of_yojson);
    seasonal_periods = member "seasonalPeriods" json |> to_option (convert_each (fun json -> match to_string json with "SEASONAL_PERIOD_TYPE_UNSPECIFIED" -> `Seasonal_period_type_unspecified | "NO_SEASONALITY" -> `No_seasonality | "DAILY" -> `Daily | "WEEKLY" -> `Weekly | "MONTHLY" -> `Monthly | "QUARTERLY" -> `Quarterly | "YEARLY" -> `Yearly | "HOURLY" -> `Hourly | value -> `Unrecognized value));
    time_series_id = member "timeSeriesId" json |> to_option (convert_each to_string);
  }

and yojson_of_arima_forecasting_metrics (value : arima_forecasting_metrics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arimaFittingMetrics", (fun items -> `List (List.map yojson_of_arima_fitting_metrics items)) field)) value.arima_fitting_metrics;
         Option.map (fun field -> ("arimaSingleModelForecastingMetrics", (fun items -> `List (List.map yojson_of_arima_single_model_forecasting_metrics items)) field)) value.arima_single_model_forecasting_metrics;
         Option.map (fun field -> ("hasDrift", (fun items -> `List (List.map (fun value -> `Bool value) items)) field)) value.has_drift;
         Option.map (fun field -> ("nonSeasonalOrder", (fun items -> `List (List.map yojson_of_arima_order items)) field)) value.non_seasonal_order;
         Option.map (fun field -> ("seasonalPeriods", (fun items -> `List (List.map (fun value -> `String ((function `Seasonal_period_type_unspecified -> "SEASONAL_PERIOD_TYPE_UNSPECIFIED" | `No_seasonality -> "NO_SEASONALITY" | `Daily -> "DAILY" | `Weekly -> "WEEKLY" | `Monthly -> "MONTHLY" | `Quarterly -> "QUARTERLY" | `Yearly -> "YEARLY" | `Hourly -> "HOURLY" | `Unrecognized value -> value) value)) items)) field)) value.seasonal_periods;
         Option.map (fun field -> ("timeSeriesId", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.time_series_id;
       ])

and arima_model_info_of_yojson json : arima_model_info =
  let open Yojson.Safe.Util in
  {
    arima_coefficients = member "arimaCoefficients" json |> to_option arima_coefficients_of_yojson;
    arima_fitting_metrics = member "arimaFittingMetrics" json |> to_option arima_fitting_metrics_of_yojson;
    has_drift = member "hasDrift" json |> to_option to_bool;
    has_holiday_effect = member "hasHolidayEffect" json |> to_option to_bool;
    has_spikes_and_dips = member "hasSpikesAndDips" json |> to_option to_bool;
    has_step_changes = member "hasStepChanges" json |> to_option to_bool;
    non_seasonal_order = member "nonSeasonalOrder" json |> to_option arima_order_of_yojson;
    seasonal_periods = member "seasonalPeriods" json |> to_option (convert_each (fun json -> match to_string json with "SEASONAL_PERIOD_TYPE_UNSPECIFIED" -> `Seasonal_period_type_unspecified | "NO_SEASONALITY" -> `No_seasonality | "DAILY" -> `Daily | "WEEKLY" -> `Weekly | "MONTHLY" -> `Monthly | "QUARTERLY" -> `Quarterly | "YEARLY" -> `Yearly | "HOURLY" -> `Hourly | value -> `Unrecognized value));
    time_series_id = member "timeSeriesId" json |> to_option to_string;
    time_series_ids = member "timeSeriesIds" json |> to_option (convert_each to_string);
  }

and yojson_of_arima_model_info (value : arima_model_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arimaCoefficients", yojson_of_arima_coefficients field)) value.arima_coefficients;
         Option.map (fun field -> ("arimaFittingMetrics", yojson_of_arima_fitting_metrics field)) value.arima_fitting_metrics;
         Option.map (fun field -> ("hasDrift", (fun value -> `Bool value) field)) value.has_drift;
         Option.map (fun field -> ("hasHolidayEffect", (fun value -> `Bool value) field)) value.has_holiday_effect;
         Option.map (fun field -> ("hasSpikesAndDips", (fun value -> `Bool value) field)) value.has_spikes_and_dips;
         Option.map (fun field -> ("hasStepChanges", (fun value -> `Bool value) field)) value.has_step_changes;
         Option.map (fun field -> ("nonSeasonalOrder", yojson_of_arima_order field)) value.non_seasonal_order;
         Option.map (fun field -> ("seasonalPeriods", (fun items -> `List (List.map (fun value -> `String ((function `Seasonal_period_type_unspecified -> "SEASONAL_PERIOD_TYPE_UNSPECIFIED" | `No_seasonality -> "NO_SEASONALITY" | `Daily -> "DAILY" | `Weekly -> "WEEKLY" | `Monthly -> "MONTHLY" | `Quarterly -> "QUARTERLY" | `Yearly -> "YEARLY" | `Hourly -> "HOURLY" | `Unrecognized value -> value) value)) items)) field)) value.seasonal_periods;
         Option.map (fun field -> ("timeSeriesId", (fun value -> `String value) field)) value.time_series_id;
         Option.map (fun field -> ("timeSeriesIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.time_series_ids;
       ])

and arima_order_of_yojson json : arima_order =
  let open Yojson.Safe.Util in
  {
    d = member "d" json |> to_option to_string;
    p = member "p" json |> to_option to_string;
    q = member "q" json |> to_option to_string;
  }

and yojson_of_arima_order (value : arima_order) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("d", (fun value -> `String value) field)) value.d;
         Option.map (fun field -> ("p", (fun value -> `String value) field)) value.p;
         Option.map (fun field -> ("q", (fun value -> `String value) field)) value.q;
       ])

and arima_result_of_yojson json : arima_result =
  let open Yojson.Safe.Util in
  {
    arima_model_info = member "arimaModelInfo" json |> to_option (convert_each arima_model_info_of_yojson);
    seasonal_periods = member "seasonalPeriods" json |> to_option (convert_each (fun json -> match to_string json with "SEASONAL_PERIOD_TYPE_UNSPECIFIED" -> `Seasonal_period_type_unspecified | "NO_SEASONALITY" -> `No_seasonality | "DAILY" -> `Daily | "WEEKLY" -> `Weekly | "MONTHLY" -> `Monthly | "QUARTERLY" -> `Quarterly | "YEARLY" -> `Yearly | "HOURLY" -> `Hourly | value -> `Unrecognized value));
  }

and yojson_of_arima_result (value : arima_result) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arimaModelInfo", (fun items -> `List (List.map yojson_of_arima_model_info items)) field)) value.arima_model_info;
         Option.map (fun field -> ("seasonalPeriods", (fun items -> `List (List.map (fun value -> `String ((function `Seasonal_period_type_unspecified -> "SEASONAL_PERIOD_TYPE_UNSPECIFIED" | `No_seasonality -> "NO_SEASONALITY" | `Daily -> "DAILY" | `Weekly -> "WEEKLY" | `Monthly -> "MONTHLY" | `Quarterly -> "QUARTERLY" | `Yearly -> "YEARLY" | `Hourly -> "HOURLY" | `Unrecognized value -> value) value)) items)) field)) value.seasonal_periods;
       ])

and arima_single_model_forecasting_metrics_of_yojson json : arima_single_model_forecasting_metrics =
  let open Yojson.Safe.Util in
  {
    arima_fitting_metrics = member "arimaFittingMetrics" json |> to_option arima_fitting_metrics_of_yojson;
    has_drift = member "hasDrift" json |> to_option to_bool;
    has_holiday_effect = member "hasHolidayEffect" json |> to_option to_bool;
    has_spikes_and_dips = member "hasSpikesAndDips" json |> to_option to_bool;
    has_step_changes = member "hasStepChanges" json |> to_option to_bool;
    non_seasonal_order = member "nonSeasonalOrder" json |> to_option arima_order_of_yojson;
    seasonal_periods = member "seasonalPeriods" json |> to_option (convert_each (fun json -> match to_string json with "SEASONAL_PERIOD_TYPE_UNSPECIFIED" -> `Seasonal_period_type_unspecified | "NO_SEASONALITY" -> `No_seasonality | "DAILY" -> `Daily | "WEEKLY" -> `Weekly | "MONTHLY" -> `Monthly | "QUARTERLY" -> `Quarterly | "YEARLY" -> `Yearly | "HOURLY" -> `Hourly | value -> `Unrecognized value));
    time_series_id = member "timeSeriesId" json |> to_option to_string;
    time_series_ids = member "timeSeriesIds" json |> to_option (convert_each to_string);
  }

and yojson_of_arima_single_model_forecasting_metrics (value : arima_single_model_forecasting_metrics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arimaFittingMetrics", yojson_of_arima_fitting_metrics field)) value.arima_fitting_metrics;
         Option.map (fun field -> ("hasDrift", (fun value -> `Bool value) field)) value.has_drift;
         Option.map (fun field -> ("hasHolidayEffect", (fun value -> `Bool value) field)) value.has_holiday_effect;
         Option.map (fun field -> ("hasSpikesAndDips", (fun value -> `Bool value) field)) value.has_spikes_and_dips;
         Option.map (fun field -> ("hasStepChanges", (fun value -> `Bool value) field)) value.has_step_changes;
         Option.map (fun field -> ("nonSeasonalOrder", yojson_of_arima_order field)) value.non_seasonal_order;
         Option.map (fun field -> ("seasonalPeriods", (fun items -> `List (List.map (fun value -> `String ((function `Seasonal_period_type_unspecified -> "SEASONAL_PERIOD_TYPE_UNSPECIFIED" | `No_seasonality -> "NO_SEASONALITY" | `Daily -> "DAILY" | `Weekly -> "WEEKLY" | `Monthly -> "MONTHLY" | `Quarterly -> "QUARTERLY" | `Yearly -> "YEARLY" | `Hourly -> "HOURLY" | `Unrecognized value -> value) value)) items)) field)) value.seasonal_periods;
         Option.map (fun field -> ("timeSeriesId", (fun value -> `String value) field)) value.time_series_id;
         Option.map (fun field -> ("timeSeriesIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.time_series_ids;
       ])

and arrow_record_batch_of_yojson json : arrow_record_batch =
  let open Yojson.Safe.Util in
  {
    serialized_record_batch = member "serializedRecordBatch" json |> to_option to_string;
  }

and yojson_of_arrow_record_batch (value : arrow_record_batch) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("serializedRecordBatch", (fun value -> `String value) field)) value.serialized_record_batch;
       ])

and arrow_schema_of_yojson json : arrow_schema =
  let open Yojson.Safe.Util in
  {
    serialized_schema = member "serializedSchema" json |> to_option to_string;
  }

and yojson_of_arrow_schema (value : arrow_schema) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("serializedSchema", (fun value -> `String value) field)) value.serialized_schema;
       ])

and arrow_serialization_options_of_yojson json : arrow_serialization_options =
  let open Yojson.Safe.Util in
  {
    buffer_compression = member "bufferCompression" json |> to_option (fun json -> match to_string json with "COMPRESSION_UNSPECIFIED" -> `Compression_unspecified | "LZ4_FRAME" -> `Lz4_frame | "ZSTD" -> `Zstd | value -> `Unrecognized value);
    picos_timestamp_precision = member "picosTimestampPrecision" json |> to_option (fun json -> match to_string json with "PICOS_TIMESTAMP_PRECISION_UNSPECIFIED" -> `Picos_timestamp_precision_unspecified | "TIMESTAMP_PRECISION_MICROS" -> `Timestamp_precision_micros | "TIMESTAMP_PRECISION_NANOS" -> `Timestamp_precision_nanos | "TIMESTAMP_PRECISION_PICOS" -> `Timestamp_precision_picos | value -> `Unrecognized value);
  }

and yojson_of_arrow_serialization_options (value : arrow_serialization_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bufferCompression", (fun value -> `String ((function `Compression_unspecified -> "COMPRESSION_UNSPECIFIED" | `Lz4_frame -> "LZ4_FRAME" | `Zstd -> "ZSTD" | `Unrecognized value -> value) value)) field)) value.buffer_compression;
         Option.map (fun field -> ("picosTimestampPrecision", (fun value -> `String ((function `Picos_timestamp_precision_unspecified -> "PICOS_TIMESTAMP_PRECISION_UNSPECIFIED" | `Timestamp_precision_micros -> "TIMESTAMP_PRECISION_MICROS" | `Timestamp_precision_nanos -> "TIMESTAMP_PRECISION_NANOS" | `Timestamp_precision_picos -> "TIMESTAMP_PRECISION_PICOS" | `Unrecognized value -> value) value)) field)) value.picos_timestamp_precision;
       ])

and audit_config_of_yojson json : audit_config =
  let open Yojson.Safe.Util in
  {
    audit_log_configs = member "auditLogConfigs" json |> to_option (convert_each audit_log_config_of_yojson);
    service = member "service" json |> to_option to_string;
  }

and yojson_of_audit_config (value : audit_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("auditLogConfigs", (fun items -> `List (List.map yojson_of_audit_log_config items)) field)) value.audit_log_configs;
         Option.map (fun field -> ("service", (fun value -> `String value) field)) value.service;
       ])

and audit_log_config_of_yojson json : audit_log_config =
  let open Yojson.Safe.Util in
  {
    exempted_members = member "exemptedMembers" json |> to_option (convert_each to_string);
    log_type = member "logType" json |> to_option (fun json -> match to_string json with "LOG_TYPE_UNSPECIFIED" -> `Log_type_unspecified | "ADMIN_READ" -> `Admin_read | "DATA_WRITE" -> `Data_write | "DATA_READ" -> `Data_read | value -> `Unrecognized value);
  }

and yojson_of_audit_log_config (value : audit_log_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("exemptedMembers", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.exempted_members;
         Option.map (fun field -> ("logType", (fun value -> `String ((function `Log_type_unspecified -> "LOG_TYPE_UNSPECIFIED" | `Admin_read -> "ADMIN_READ" | `Data_write -> "DATA_WRITE" | `Data_read -> "DATA_READ" | `Unrecognized value -> value) value)) field)) value.log_type;
       ])

and avro_options_of_yojson json : avro_options =
  let open Yojson.Safe.Util in
  {
    use_avro_logical_types = member "useAvroLogicalTypes" json |> to_option to_bool;
  }

and yojson_of_avro_options (value : avro_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("useAvroLogicalTypes", (fun value -> `Bool value) field)) value.use_avro_logical_types;
       ])

and batch_delete_row_access_policies_request_of_yojson json : batch_delete_row_access_policies_request =
  let open Yojson.Safe.Util in
  {
    force = member "force" json |> to_option to_bool;
    policy_ids = member "policyIds" json |> to_option (convert_each to_string);
  }

and yojson_of_batch_delete_row_access_policies_request (value : batch_delete_row_access_policies_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("force", (fun value -> `Bool value) field)) value.force;
         Option.map (fun field -> ("policyIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.policy_ids;
       ])

and bi_engine_reason_of_yojson json : bi_engine_reason =
  let open Yojson.Safe.Util in
  {
    code = member "code" json |> to_option (fun json -> match to_string json with "CODE_UNSPECIFIED" -> `Code_unspecified | "NO_RESERVATION" -> `No_reservation | "INSUFFICIENT_RESERVATION" -> `Insufficient_reservation | "UNSUPPORTED_SQL_TEXT" -> `Unsupported_sql_text | "INPUT_TOO_LARGE" -> `Input_too_large | "OTHER_REASON" -> `Other_reason | "TABLE_EXCLUDED" -> `Table_excluded | value -> `Unrecognized value);
    message = member "message" json |> to_option to_string;
  }

and yojson_of_bi_engine_reason (value : bi_engine_reason) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("code", (fun value -> `String ((function `Code_unspecified -> "CODE_UNSPECIFIED" | `No_reservation -> "NO_RESERVATION" | `Insufficient_reservation -> "INSUFFICIENT_RESERVATION" | `Unsupported_sql_text -> "UNSUPPORTED_SQL_TEXT" | `Input_too_large -> "INPUT_TOO_LARGE" | `Other_reason -> "OTHER_REASON" | `Table_excluded -> "TABLE_EXCLUDED" | `Unrecognized value -> value) value)) field)) value.code;
         Option.map (fun field -> ("message", (fun value -> `String value) field)) value.message;
       ])

and bi_engine_statistics_of_yojson json : bi_engine_statistics =
  let open Yojson.Safe.Util in
  {
    acceleration_mode = member "accelerationMode" json |> to_option (fun json -> match to_string json with "BI_ENGINE_ACCELERATION_MODE_UNSPECIFIED" -> `Bi_engine_acceleration_mode_unspecified | "BI_ENGINE_DISABLED" -> `Bi_engine_disabled | "PARTIAL_INPUT" -> `Partial_input | "FULL_INPUT" -> `Full_input | "FULL_QUERY" -> `Full_query | value -> `Unrecognized value);
    bi_engine_mode = member "biEngineMode" json |> to_option (fun json -> match to_string json with "ACCELERATION_MODE_UNSPECIFIED" -> `Acceleration_mode_unspecified | "DISABLED" -> `Disabled | "PARTIAL" -> `Partial | "FULL" -> `Full | value -> `Unrecognized value);
    bi_engine_reasons = member "biEngineReasons" json |> to_option (convert_each bi_engine_reason_of_yojson);
  }

and yojson_of_bi_engine_statistics (value : bi_engine_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("accelerationMode", (fun value -> `String ((function `Bi_engine_acceleration_mode_unspecified -> "BI_ENGINE_ACCELERATION_MODE_UNSPECIFIED" | `Bi_engine_disabled -> "BI_ENGINE_DISABLED" | `Partial_input -> "PARTIAL_INPUT" | `Full_input -> "FULL_INPUT" | `Full_query -> "FULL_QUERY" | `Unrecognized value -> value) value)) field)) value.acceleration_mode;
         Option.map (fun field -> ("biEngineMode", (fun value -> `String ((function `Acceleration_mode_unspecified -> "ACCELERATION_MODE_UNSPECIFIED" | `Disabled -> "DISABLED" | `Partial -> "PARTIAL" | `Full -> "FULL" | `Unrecognized value -> value) value)) field)) value.bi_engine_mode;
         Option.map (fun field -> ("biEngineReasons", (fun items -> `List (List.map yojson_of_bi_engine_reason items)) field)) value.bi_engine_reasons;
       ])

and big_lake_configuration_of_yojson json : big_lake_configuration =
  let open Yojson.Safe.Util in
  {
    connection_id = member "connectionId" json |> to_option to_string;
    file_format = member "fileFormat" json |> to_option (fun json -> match to_string json with "FILE_FORMAT_UNSPECIFIED" -> `File_format_unspecified | "PARQUET" -> `Parquet | value -> `Unrecognized value);
    storage_uri = member "storageUri" json |> to_option to_string;
    table_format = member "tableFormat" json |> to_option (fun json -> match to_string json with "TABLE_FORMAT_UNSPECIFIED" -> `Table_format_unspecified | "ICEBERG" -> `Iceberg | value -> `Unrecognized value);
  }

and yojson_of_big_lake_configuration (value : big_lake_configuration) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("connectionId", (fun value -> `String value) field)) value.connection_id;
         Option.map (fun field -> ("fileFormat", (fun value -> `String ((function `File_format_unspecified -> "FILE_FORMAT_UNSPECIFIED" | `Parquet -> "PARQUET" | `Unrecognized value -> value) value)) field)) value.file_format;
         Option.map (fun field -> ("storageUri", (fun value -> `String value) field)) value.storage_uri;
         Option.map (fun field -> ("tableFormat", (fun value -> `String ((function `Table_format_unspecified -> "TABLE_FORMAT_UNSPECIFIED" | `Iceberg -> "ICEBERG" | `Unrecognized value -> value) value)) field)) value.table_format;
       ])

and big_query_model_training_of_yojson json : big_query_model_training =
  let open Yojson.Safe.Util in
  {
    current_iteration = member "currentIteration" json |> to_option to_int;
    expected_total_iterations = member "expectedTotalIterations" json |> to_option to_string;
  }

and yojson_of_big_query_model_training (value : big_query_model_training) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("currentIteration", (fun value -> `Int value) field)) value.current_iteration;
         Option.map (fun field -> ("expectedTotalIterations", (fun value -> `String value) field)) value.expected_total_iterations;
       ])

and bigtable_column_of_yojson json : bigtable_column =
  let open Yojson.Safe.Util in
  {
    encoding = member "encoding" json |> to_option to_string;
    field_name = member "fieldName" json |> to_option to_string;
    only_read_latest = member "onlyReadLatest" json |> to_option to_bool;
    proto_config = member "protoConfig" json |> to_option bigtable_proto_config_of_yojson;
    qualifier_encoded = member "qualifierEncoded" json |> to_option to_string;
    qualifier_string = member "qualifierString" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_bigtable_column (value : bigtable_column) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("encoding", (fun value -> `String value) field)) value.encoding;
         Option.map (fun field -> ("fieldName", (fun value -> `String value) field)) value.field_name;
         Option.map (fun field -> ("onlyReadLatest", (fun value -> `Bool value) field)) value.only_read_latest;
         Option.map (fun field -> ("protoConfig", yojson_of_bigtable_proto_config field)) value.proto_config;
         Option.map (fun field -> ("qualifierEncoded", (fun value -> `String value) field)) value.qualifier_encoded;
         Option.map (fun field -> ("qualifierString", (fun value -> `String value) field)) value.qualifier_string;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and bigtable_column_family_of_yojson json : bigtable_column_family =
  let open Yojson.Safe.Util in
  {
    columns = member "columns" json |> to_option (convert_each bigtable_column_of_yojson);
    encoding = member "encoding" json |> to_option to_string;
    family_id = member "familyId" json |> to_option to_string;
    only_read_latest = member "onlyReadLatest" json |> to_option to_bool;
    proto_config = member "protoConfig" json |> to_option bigtable_proto_config_of_yojson;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_bigtable_column_family (value : bigtable_column_family) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("columns", (fun items -> `List (List.map yojson_of_bigtable_column items)) field)) value.columns;
         Option.map (fun field -> ("encoding", (fun value -> `String value) field)) value.encoding;
         Option.map (fun field -> ("familyId", (fun value -> `String value) field)) value.family_id;
         Option.map (fun field -> ("onlyReadLatest", (fun value -> `Bool value) field)) value.only_read_latest;
         Option.map (fun field -> ("protoConfig", yojson_of_bigtable_proto_config field)) value.proto_config;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and bigtable_options_of_yojson json : bigtable_options =
  let open Yojson.Safe.Util in
  {
    column_families = member "columnFamilies" json |> to_option (convert_each bigtable_column_family_of_yojson);
    ignore_unspecified_column_families = member "ignoreUnspecifiedColumnFamilies" json |> to_option to_bool;
    output_column_families_as_json = member "outputColumnFamiliesAsJson" json |> to_option to_bool;
    read_rowkey_as_string = member "readRowkeyAsString" json |> to_option to_bool;
  }

and yojson_of_bigtable_options (value : bigtable_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("columnFamilies", (fun items -> `List (List.map yojson_of_bigtable_column_family items)) field)) value.column_families;
         Option.map (fun field -> ("ignoreUnspecifiedColumnFamilies", (fun value -> `Bool value) field)) value.ignore_unspecified_column_families;
         Option.map (fun field -> ("outputColumnFamiliesAsJson", (fun value -> `Bool value) field)) value.output_column_families_as_json;
         Option.map (fun field -> ("readRowkeyAsString", (fun value -> `Bool value) field)) value.read_rowkey_as_string;
       ])

and bigtable_proto_config_of_yojson json : bigtable_proto_config =
  let open Yojson.Safe.Util in
  {
    proto_message_name = member "protoMessageName" json |> to_option to_string;
    schema_bundle_id = member "schemaBundleId" json |> to_option to_string;
  }

and yojson_of_bigtable_proto_config (value : bigtable_proto_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("protoMessageName", (fun value -> `String value) field)) value.proto_message_name;
         Option.map (fun field -> ("schemaBundleId", (fun value -> `String value) field)) value.schema_bundle_id;
       ])

and binary_classification_metrics_of_yojson json : binary_classification_metrics =
  let open Yojson.Safe.Util in
  {
    aggregate_classification_metrics = member "aggregateClassificationMetrics" json |> to_option aggregate_classification_metrics_of_yojson;
    binary_confusion_matrix_list = member "binaryConfusionMatrixList" json |> to_option (convert_each binary_confusion_matrix_of_yojson);
    negative_label = member "negativeLabel" json |> to_option to_string;
    positive_label = member "positiveLabel" json |> to_option to_string;
  }

and yojson_of_binary_classification_metrics (value : binary_classification_metrics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("aggregateClassificationMetrics", yojson_of_aggregate_classification_metrics field)) value.aggregate_classification_metrics;
         Option.map (fun field -> ("binaryConfusionMatrixList", (fun items -> `List (List.map yojson_of_binary_confusion_matrix items)) field)) value.binary_confusion_matrix_list;
         Option.map (fun field -> ("negativeLabel", (fun value -> `String value) field)) value.negative_label;
         Option.map (fun field -> ("positiveLabel", (fun value -> `String value) field)) value.positive_label;
       ])

and binary_confusion_matrix_of_yojson json : binary_confusion_matrix =
  let open Yojson.Safe.Util in
  {
    accuracy = member "accuracy" json |> to_option to_number;
    f1_score = member "f1Score" json |> to_option to_number;
    false_negatives = member "falseNegatives" json |> to_option to_string;
    false_positives = member "falsePositives" json |> to_option to_string;
    positive_class_threshold = member "positiveClassThreshold" json |> to_option to_number;
    precision = member "precision" json |> to_option to_number;
    recall = member "recall" json |> to_option to_number;
    true_negatives = member "trueNegatives" json |> to_option to_string;
    true_positives = member "truePositives" json |> to_option to_string;
  }

and yojson_of_binary_confusion_matrix (value : binary_confusion_matrix) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("accuracy", (fun value -> `Float value) field)) value.accuracy;
         Option.map (fun field -> ("f1Score", (fun value -> `Float value) field)) value.f1_score;
         Option.map (fun field -> ("falseNegatives", (fun value -> `String value) field)) value.false_negatives;
         Option.map (fun field -> ("falsePositives", (fun value -> `String value) field)) value.false_positives;
         Option.map (fun field -> ("positiveClassThreshold", (fun value -> `Float value) field)) value.positive_class_threshold;
         Option.map (fun field -> ("precision", (fun value -> `Float value) field)) value.precision;
         Option.map (fun field -> ("recall", (fun value -> `Float value) field)) value.recall;
         Option.map (fun field -> ("trueNegatives", (fun value -> `String value) field)) value.true_negatives;
         Option.map (fun field -> ("truePositives", (fun value -> `String value) field)) value.true_positives;
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

and bqml_iteration_result_of_yojson json : bqml_iteration_result =
  let open Yojson.Safe.Util in
  {
    duration_ms = member "durationMs" json |> to_option to_string;
    eval_loss = member "evalLoss" json |> to_option to_number;
    index = member "index" json |> to_option to_int;
    learn_rate = member "learnRate" json |> to_option to_number;
    training_loss = member "trainingLoss" json |> to_option to_number;
  }

and yojson_of_bqml_iteration_result (value : bqml_iteration_result) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("durationMs", (fun value -> `String value) field)) value.duration_ms;
         Option.map (fun field -> ("evalLoss", (fun value -> `Float value) field)) value.eval_loss;
         Option.map (fun field -> ("index", (fun value -> `Int value) field)) value.index;
         Option.map (fun field -> ("learnRate", (fun value -> `Float value) field)) value.learn_rate;
         Option.map (fun field -> ("trainingLoss", (fun value -> `Float value) field)) value.training_loss;
       ])

and bqml_training_run_training_options_of_yojson json : bqml_training_run_training_options =
  let open Yojson.Safe.Util in
  {
    early_stop = member "earlyStop" json |> to_option to_bool;
    l1_reg = member "l1Reg" json |> to_option to_number;
    l2_reg = member "l2Reg" json |> to_option to_number;
    learn_rate = member "learnRate" json |> to_option to_number;
    learn_rate_strategy = member "learnRateStrategy" json |> to_option to_string;
    line_search_init_learn_rate = member "lineSearchInitLearnRate" json |> to_option to_number;
    max_iteration = member "maxIteration" json |> to_option to_string;
    min_rel_progress = member "minRelProgress" json |> to_option to_number;
    warm_start = member "warmStart" json |> to_option to_bool;
  }

and yojson_of_bqml_training_run_training_options (value : bqml_training_run_training_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("earlyStop", (fun value -> `Bool value) field)) value.early_stop;
         Option.map (fun field -> ("l1Reg", (fun value -> `Float value) field)) value.l1_reg;
         Option.map (fun field -> ("l2Reg", (fun value -> `Float value) field)) value.l2_reg;
         Option.map (fun field -> ("learnRate", (fun value -> `Float value) field)) value.learn_rate;
         Option.map (fun field -> ("learnRateStrategy", (fun value -> `String value) field)) value.learn_rate_strategy;
         Option.map (fun field -> ("lineSearchInitLearnRate", (fun value -> `Float value) field)) value.line_search_init_learn_rate;
         Option.map (fun field -> ("maxIteration", (fun value -> `String value) field)) value.max_iteration;
         Option.map (fun field -> ("minRelProgress", (fun value -> `Float value) field)) value.min_rel_progress;
         Option.map (fun field -> ("warmStart", (fun value -> `Bool value) field)) value.warm_start;
       ])

and bqml_training_run_of_yojson json : bqml_training_run =
  let open Yojson.Safe.Util in
  {
    iteration_results = member "iterationResults" json |> to_option (convert_each bqml_iteration_result_of_yojson);
    start_time = member "startTime" json |> to_option to_string;
    state = member "state" json |> to_option to_string;
    training_options = member "trainingOptions" json |> to_option bqml_training_run_training_options_of_yojson;
  }

and yojson_of_bqml_training_run (value : bqml_training_run) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("iterationResults", (fun items -> `List (List.map yojson_of_bqml_iteration_result items)) field)) value.iteration_results;
         Option.map (fun field -> ("startTime", (fun value -> `String value) field)) value.start_time;
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
         Option.map (fun field -> ("trainingOptions", yojson_of_bqml_training_run_training_options field)) value.training_options;
       ])

and categorical_value_of_yojson json : categorical_value =
  let open Yojson.Safe.Util in
  {
    category_counts = member "categoryCounts" json |> to_option (convert_each category_count_of_yojson);
  }

and yojson_of_categorical_value (value : categorical_value) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("categoryCounts", (fun items -> `List (List.map yojson_of_category_count items)) field)) value.category_counts;
       ])

and category_count_of_yojson json : category_count =
  let open Yojson.Safe.Util in
  {
    category = member "category" json |> to_option to_string;
    count = member "count" json |> to_option to_string;
  }

and yojson_of_category_count (value : category_count) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("category", (fun value -> `String value) field)) value.category;
         Option.map (fun field -> ("count", (fun value -> `String value) field)) value.count;
       ])

and clone_definition_of_yojson json : clone_definition =
  let open Yojson.Safe.Util in
  {
    base_table_reference = member "baseTableReference" json |> to_option table_reference_of_yojson;
    clone_time = member "cloneTime" json |> to_option to_string;
  }

and yojson_of_clone_definition (value : clone_definition) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("baseTableReference", yojson_of_table_reference field)) value.base_table_reference;
         Option.map (fun field -> ("cloneTime", (fun value -> `String value) field)) value.clone_time;
       ])

and cluster_of_yojson json : cluster =
  let open Yojson.Safe.Util in
  {
    centroid_id = member "centroidId" json |> to_option to_string;
    count = member "count" json |> to_option to_string;
    feature_values = member "featureValues" json |> to_option (convert_each feature_value_of_yojson);
  }

and yojson_of_cluster (value : cluster) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("centroidId", (fun value -> `String value) field)) value.centroid_id;
         Option.map (fun field -> ("count", (fun value -> `String value) field)) value.count;
         Option.map (fun field -> ("featureValues", (fun items -> `List (List.map yojson_of_feature_value items)) field)) value.feature_values;
       ])

and cluster_info_of_yojson json : cluster_info =
  let open Yojson.Safe.Util in
  {
    centroid_id = member "centroidId" json |> to_option to_string;
    cluster_radius = member "clusterRadius" json |> to_option to_number;
    cluster_size = member "clusterSize" json |> to_option to_string;
  }

and yojson_of_cluster_info (value : cluster_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("centroidId", (fun value -> `String value) field)) value.centroid_id;
         Option.map (fun field -> ("clusterRadius", (fun value -> `Float value) field)) value.cluster_radius;
         Option.map (fun field -> ("clusterSize", (fun value -> `String value) field)) value.cluster_size;
       ])

and clustering_of_yojson json : clustering =
  let open Yojson.Safe.Util in
  {
    fields = member "fields" json |> to_option (convert_each to_string);
  }

and yojson_of_clustering (value : clustering) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("fields", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.fields;
       ])

and clustering_metrics_of_yojson json : clustering_metrics =
  let open Yojson.Safe.Util in
  {
    clusters = member "clusters" json |> to_option (convert_each cluster_of_yojson);
    davies_bouldin_index = member "daviesBouldinIndex" json |> to_option to_number;
    mean_squared_distance = member "meanSquaredDistance" json |> to_option to_number;
  }

and yojson_of_clustering_metrics (value : clustering_metrics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("clusters", (fun items -> `List (List.map yojson_of_cluster items)) field)) value.clusters;
         Option.map (fun field -> ("daviesBouldinIndex", (fun value -> `Float value) field)) value.davies_bouldin_index;
         Option.map (fun field -> ("meanSquaredDistance", (fun value -> `Float value) field)) value.mean_squared_distance;
       ])

and confusion_matrix_of_yojson json : confusion_matrix =
  let open Yojson.Safe.Util in
  {
    confidence_threshold = member "confidenceThreshold" json |> to_option to_number;
    rows = member "rows" json |> to_option (convert_each row_of_yojson);
  }

and yojson_of_confusion_matrix (value : confusion_matrix) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("confidenceThreshold", (fun value -> `Float value) field)) value.confidence_threshold;
         Option.map (fun field -> ("rows", (fun items -> `List (List.map yojson_of_row items)) field)) value.rows;
       ])

and connection_property_of_yojson json : connection_property =
  let open Yojson.Safe.Util in
  {
    key = member "key" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_connection_property (value : connection_property) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("key", (fun value -> `String value) field)) value.key;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and csv_options_of_yojson json : csv_options =
  let open Yojson.Safe.Util in
  {
    allow_jagged_rows = member "allowJaggedRows" json |> to_option to_bool;
    allow_quoted_newlines = member "allowQuotedNewlines" json |> to_option to_bool;
    encoding = member "encoding" json |> to_option to_string;
    field_delimiter = member "fieldDelimiter" json |> to_option to_string;
    null_marker = member "nullMarker" json |> to_option to_string;
    null_markers = member "nullMarkers" json |> to_option (convert_each to_string);
    preserve_ascii_control_characters = member "preserveAsciiControlCharacters" json |> to_option to_bool;
    quote = member "quote" json |> to_option to_string;
    skip_leading_rows = member "skipLeadingRows" json |> to_option to_string;
    source_column_match = member "sourceColumnMatch" json |> to_option to_string;
  }

and yojson_of_csv_options (value : csv_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowJaggedRows", (fun value -> `Bool value) field)) value.allow_jagged_rows;
         Option.map (fun field -> ("allowQuotedNewlines", (fun value -> `Bool value) field)) value.allow_quoted_newlines;
         Option.map (fun field -> ("encoding", (fun value -> `String value) field)) value.encoding;
         Option.map (fun field -> ("fieldDelimiter", (fun value -> `String value) field)) value.field_delimiter;
         Option.map (fun field -> ("nullMarker", (fun value -> `String value) field)) value.null_marker;
         Option.map (fun field -> ("nullMarkers", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.null_markers;
         Option.map (fun field -> ("preserveAsciiControlCharacters", (fun value -> `Bool value) field)) value.preserve_ascii_control_characters;
         Option.map (fun field -> ("quote", (fun value -> `String value) field)) value.quote;
         Option.map (fun field -> ("skipLeadingRows", (fun value -> `String value) field)) value.skip_leading_rows;
         Option.map (fun field -> ("sourceColumnMatch", (fun value -> `String value) field)) value.source_column_match;
       ])

and data_format_options_of_yojson json : data_format_options =
  let open Yojson.Safe.Util in
  {
    timestamp_output_format = member "timestampOutputFormat" json |> to_option (fun json -> match to_string json with "TIMESTAMP_OUTPUT_FORMAT_UNSPECIFIED" -> `Timestamp_output_format_unspecified | "FLOAT64" -> `Float64 | "INT64" -> `Int64 | "ISO8601_STRING" -> `Iso8601_string | value -> `Unrecognized value);
    use_int64_timestamp = member "useInt64Timestamp" json |> to_option to_bool;
  }

and yojson_of_data_format_options (value : data_format_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("timestampOutputFormat", (fun value -> `String ((function `Timestamp_output_format_unspecified -> "TIMESTAMP_OUTPUT_FORMAT_UNSPECIFIED" | `Float64 -> "FLOAT64" | `Int64 -> "INT64" | `Iso8601_string -> "ISO8601_STRING" | `Unrecognized value -> value) value)) field)) value.timestamp_output_format;
         Option.map (fun field -> ("useInt64Timestamp", (fun value -> `Bool value) field)) value.use_int64_timestamp;
       ])

and data_masking_statistics_of_yojson json : data_masking_statistics =
  let open Yojson.Safe.Util in
  {
    data_masking_applied = member "dataMaskingApplied" json |> to_option to_bool;
  }

and yojson_of_data_masking_statistics (value : data_masking_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dataMaskingApplied", (fun value -> `Bool value) field)) value.data_masking_applied;
       ])

and data_policy_list_of_yojson json : data_policy_list =
  let open Yojson.Safe.Util in
  {
    data_policies = member "dataPolicies" json |> to_option (convert_each data_policy_option_of_yojson);
  }

and yojson_of_data_policy_list (value : data_policy_list) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dataPolicies", (fun items -> `List (List.map yojson_of_data_policy_option items)) field)) value.data_policies;
       ])

and data_policy_option_of_yojson json : data_policy_option =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
  }

and yojson_of_data_policy_option (value : data_policy_option) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and data_split_result_of_yojson json : data_split_result =
  let open Yojson.Safe.Util in
  {
    evaluation_table = member "evaluationTable" json |> to_option table_reference_of_yojson;
    test_table = member "testTable" json |> to_option table_reference_of_yojson;
    training_table = member "trainingTable" json |> to_option table_reference_of_yojson;
  }

and yojson_of_data_split_result (value : data_split_result) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("evaluationTable", yojson_of_table_reference field)) value.evaluation_table;
         Option.map (fun field -> ("testTable", yojson_of_table_reference field)) value.test_table;
         Option.map (fun field -> ("trainingTable", yojson_of_table_reference field)) value.training_table;
       ])

and dataset_access_item_of_yojson json : dataset_access_item =
  let open Yojson.Safe.Util in
  {
    condition = member "condition" json |> to_option expr_of_yojson;
    dataset = member "dataset" json |> to_option dataset_access_entry_of_yojson;
    domain = member "domain" json |> to_option to_string;
    group_by_email = member "groupByEmail" json |> to_option to_string;
    iam_member = member "iamMember" json |> to_option to_string;
    role = member "role" json |> to_option to_string;
    routine = member "routine" json |> to_option routine_reference_of_yojson;
    special_group = member "specialGroup" json |> to_option to_string;
    user_by_email = member "userByEmail" json |> to_option to_string;
    view = member "view" json |> to_option table_reference_of_yojson;
  }

and yojson_of_dataset_access_item (value : dataset_access_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("condition", yojson_of_expr field)) value.condition;
         Option.map (fun field -> ("dataset", yojson_of_dataset_access_entry field)) value.dataset;
         Option.map (fun field -> ("domain", (fun value -> `String value) field)) value.domain;
         Option.map (fun field -> ("groupByEmail", (fun value -> `String value) field)) value.group_by_email;
         Option.map (fun field -> ("iamMember", (fun value -> `String value) field)) value.iam_member;
         Option.map (fun field -> ("role", (fun value -> `String value) field)) value.role;
         Option.map (fun field -> ("routine", yojson_of_routine_reference field)) value.routine;
         Option.map (fun field -> ("specialGroup", (fun value -> `String value) field)) value.special_group;
         Option.map (fun field -> ("userByEmail", (fun value -> `String value) field)) value.user_by_email;
         Option.map (fun field -> ("view", yojson_of_table_reference field)) value.view;
       ])

and dataset_tags_item_of_yojson json : dataset_tags_item =
  let open Yojson.Safe.Util in
  {
    tag_key = member "tagKey" json |> to_option to_string;
    tag_value = member "tagValue" json |> to_option to_string;
  }

and yojson_of_dataset_tags_item (value : dataset_tags_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("tagKey", (fun value -> `String value) field)) value.tag_key;
         Option.map (fun field -> ("tagValue", (fun value -> `String value) field)) value.tag_value;
       ])

and dataset_of_yojson json : dataset =
  let open Yojson.Safe.Util in
  {
    access = member "access" json |> to_option (convert_each dataset_access_item_of_yojson);
    catalog_source = member "catalogSource" json |> to_option to_string;
    creation_time = member "creationTime" json |> to_option to_string;
    dataset_reference = member "datasetReference" json |> to_option dataset_reference_of_yojson;
    default_collation = member "defaultCollation" json |> to_option to_string;
    default_encryption_configuration = member "defaultEncryptionConfiguration" json |> to_option encryption_configuration_of_yojson;
    default_partition_expiration_ms = member "defaultPartitionExpirationMs" json |> to_option to_string;
    default_rounding_mode = member "defaultRoundingMode" json |> to_option (fun json -> match to_string json with "ROUNDING_MODE_UNSPECIFIED" -> `Rounding_mode_unspecified | "ROUND_HALF_AWAY_FROM_ZERO" -> `Round_half_away_from_zero | "ROUND_HALF_EVEN" -> `Round_half_even | value -> `Unrecognized value);
    default_table_expiration_ms = member "defaultTableExpirationMs" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    external_catalog_dataset_options = member "externalCatalogDatasetOptions" json |> to_option external_catalog_dataset_options_of_yojson;
    external_dataset_reference = member "externalDatasetReference" json |> to_option external_dataset_reference_of_yojson;
    friendly_name = member "friendlyName" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    is_case_insensitive = member "isCaseInsensitive" json |> to_option to_bool;
    kind = member "kind" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    last_modified_time = member "lastModifiedTime" json |> to_option to_string;
    linked_dataset_metadata = member "linkedDatasetMetadata" json |> to_option linked_dataset_metadata_of_yojson;
    linked_dataset_source = member "linkedDatasetSource" json |> to_option linked_dataset_source_of_yojson;
    location = member "location" json |> to_option to_string;
    max_time_travel_hours = member "maxTimeTravelHours" json |> to_option to_string;
    resource_tags = member "resourceTags" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    restrictions = member "restrictions" json |> to_option restriction_config_of_yojson;
    satisfies_pzi = member "satisfiesPzi" json |> to_option to_bool;
    satisfies_pzs = member "satisfiesPzs" json |> to_option to_bool;
    self_link = member "selfLink" json |> to_option to_string;
    storage_billing_model = member "storageBillingModel" json |> to_option (fun json -> match to_string json with "STORAGE_BILLING_MODEL_UNSPECIFIED" -> `Storage_billing_model_unspecified | "LOGICAL" -> `Logical | "PHYSICAL" -> `Physical | value -> `Unrecognized value);
    tags = member "tags" json |> to_option (convert_each dataset_tags_item_of_yojson);
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_dataset (value : dataset) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("access", (fun items -> `List (List.map yojson_of_dataset_access_item items)) field)) value.access;
         Option.map (fun field -> ("catalogSource", (fun value -> `String value) field)) value.catalog_source;
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("datasetReference", yojson_of_dataset_reference field)) value.dataset_reference;
         Option.map (fun field -> ("defaultCollation", (fun value -> `String value) field)) value.default_collation;
         Option.map (fun field -> ("defaultEncryptionConfiguration", yojson_of_encryption_configuration field)) value.default_encryption_configuration;
         Option.map (fun field -> ("defaultPartitionExpirationMs", (fun value -> `String value) field)) value.default_partition_expiration_ms;
         Option.map (fun field -> ("defaultRoundingMode", (fun value -> `String ((function `Rounding_mode_unspecified -> "ROUNDING_MODE_UNSPECIFIED" | `Round_half_away_from_zero -> "ROUND_HALF_AWAY_FROM_ZERO" | `Round_half_even -> "ROUND_HALF_EVEN" | `Unrecognized value -> value) value)) field)) value.default_rounding_mode;
         Option.map (fun field -> ("defaultTableExpirationMs", (fun value -> `String value) field)) value.default_table_expiration_ms;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("externalCatalogDatasetOptions", yojson_of_external_catalog_dataset_options field)) value.external_catalog_dataset_options;
         Option.map (fun field -> ("externalDatasetReference", yojson_of_external_dataset_reference field)) value.external_dataset_reference;
         Option.map (fun field -> ("friendlyName", (fun value -> `String value) field)) value.friendly_name;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("isCaseInsensitive", (fun value -> `Bool value) field)) value.is_case_insensitive;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("lastModifiedTime", (fun value -> `String value) field)) value.last_modified_time;
         Option.map (fun field -> ("linkedDatasetMetadata", yojson_of_linked_dataset_metadata field)) value.linked_dataset_metadata;
         Option.map (fun field -> ("linkedDatasetSource", yojson_of_linked_dataset_source field)) value.linked_dataset_source;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("maxTimeTravelHours", (fun value -> `String value) field)) value.max_time_travel_hours;
         Option.map (fun field -> ("resourceTags", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.resource_tags;
         Option.map (fun field -> ("restrictions", yojson_of_restriction_config field)) value.restrictions;
         Option.map (fun field -> ("satisfiesPzi", (fun value -> `Bool value) field)) value.satisfies_pzi;
         Option.map (fun field -> ("satisfiesPzs", (fun value -> `Bool value) field)) value.satisfies_pzs;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("storageBillingModel", (fun value -> `String ((function `Storage_billing_model_unspecified -> "STORAGE_BILLING_MODEL_UNSPECIFIED" | `Logical -> "LOGICAL" | `Physical -> "PHYSICAL" | `Unrecognized value -> value) value)) field)) value.storage_billing_model;
         Option.map (fun field -> ("tags", (fun items -> `List (List.map yojson_of_dataset_tags_item items)) field)) value.tags;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and dataset_access_entry_of_yojson json : dataset_access_entry =
  let open Yojson.Safe.Util in
  {
    dataset = member "dataset" json |> to_option dataset_reference_of_yojson;
    target_types = member "targetTypes" json |> to_option (convert_each (fun json -> match to_string json with "TARGET_TYPE_UNSPECIFIED" -> `Target_type_unspecified | "VIEWS" -> `Views | "ROUTINES" -> `Routines | value -> `Unrecognized value));
  }

and yojson_of_dataset_access_entry (value : dataset_access_entry) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dataset", yojson_of_dataset_reference field)) value.dataset;
         Option.map (fun field -> ("targetTypes", (fun items -> `List (List.map (fun value -> `String ((function `Target_type_unspecified -> "TARGET_TYPE_UNSPECIFIED" | `Views -> "VIEWS" | `Routines -> "ROUTINES" | `Unrecognized value -> value) value)) items)) field)) value.target_types;
       ])

and dataset_list_datasets_item_of_yojson json : dataset_list_datasets_item =
  let open Yojson.Safe.Util in
  {
    catalog_source = member "catalogSource" json |> to_option to_string;
    dataset_reference = member "datasetReference" json |> to_option dataset_reference_of_yojson;
    external_dataset_reference = member "externalDatasetReference" json |> to_option external_dataset_reference_of_yojson;
    friendly_name = member "friendlyName" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    location = member "location" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_dataset_list_datasets_item (value : dataset_list_datasets_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("catalogSource", (fun value -> `String value) field)) value.catalog_source;
         Option.map (fun field -> ("datasetReference", yojson_of_dataset_reference field)) value.dataset_reference;
         Option.map (fun field -> ("externalDatasetReference", yojson_of_external_dataset_reference field)) value.external_dataset_reference;
         Option.map (fun field -> ("friendlyName", (fun value -> `String value) field)) value.friendly_name;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and dataset_list_of_yojson json : dataset_list =
  let open Yojson.Safe.Util in
  {
    datasets = member "datasets" json |> to_option (convert_each dataset_list_datasets_item_of_yojson);
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    unreachable = member "unreachable" json |> to_option (convert_each to_string);
  }

and yojson_of_dataset_list (value : dataset_list) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("datasets", (fun items -> `List (List.map yojson_of_dataset_list_datasets_item items)) field)) value.datasets;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("unreachable", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.unreachable;
       ])

and dataset_reference_of_yojson json : dataset_reference =
  let open Yojson.Safe.Util in
  {
    dataset_id = member "datasetId" json |> to_option to_string;
    project_id = member "projectId" json |> to_option to_string;
  }

and yojson_of_dataset_reference (value : dataset_reference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("datasetId", (fun value -> `String value) field)) value.dataset_id;
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
       ])

and destination_table_properties_of_yojson json : destination_table_properties =
  let open Yojson.Safe.Util in
  {
    description = member "description" json |> to_option to_string;
    expiration_time = member "expirationTime" json |> to_option to_string;
    friendly_name = member "friendlyName" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
  }

and yojson_of_destination_table_properties (value : destination_table_properties) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("expirationTime", (fun value -> `String value) field)) value.expiration_time;
         Option.map (fun field -> ("friendlyName", (fun value -> `String value) field)) value.friendly_name;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
       ])

and differential_privacy_policy_of_yojson json : differential_privacy_policy =
  let open Yojson.Safe.Util in
  {
    delta_budget = member "deltaBudget" json |> to_option to_number;
    delta_budget_remaining = member "deltaBudgetRemaining" json |> to_option to_number;
    delta_per_query = member "deltaPerQuery" json |> to_option to_number;
    epsilon_budget = member "epsilonBudget" json |> to_option to_number;
    epsilon_budget_remaining = member "epsilonBudgetRemaining" json |> to_option to_number;
    max_epsilon_per_query = member "maxEpsilonPerQuery" json |> to_option to_number;
    max_groups_contributed = member "maxGroupsContributed" json |> to_option to_string;
    privacy_unit_column = member "privacyUnitColumn" json |> to_option to_string;
  }

and yojson_of_differential_privacy_policy (value : differential_privacy_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deltaBudget", (fun value -> `Float value) field)) value.delta_budget;
         Option.map (fun field -> ("deltaBudgetRemaining", (fun value -> `Float value) field)) value.delta_budget_remaining;
         Option.map (fun field -> ("deltaPerQuery", (fun value -> `Float value) field)) value.delta_per_query;
         Option.map (fun field -> ("epsilonBudget", (fun value -> `Float value) field)) value.epsilon_budget;
         Option.map (fun field -> ("epsilonBudgetRemaining", (fun value -> `Float value) field)) value.epsilon_budget_remaining;
         Option.map (fun field -> ("maxEpsilonPerQuery", (fun value -> `Float value) field)) value.max_epsilon_per_query;
         Option.map (fun field -> ("maxGroupsContributed", (fun value -> `String value) field)) value.max_groups_contributed;
         Option.map (fun field -> ("privacyUnitColumn", (fun value -> `String value) field)) value.privacy_unit_column;
       ])

and dimensionality_reduction_metrics_of_yojson json : dimensionality_reduction_metrics =
  let open Yojson.Safe.Util in
  {
    total_explained_variance_ratio = member "totalExplainedVarianceRatio" json |> to_option to_number;
  }

and yojson_of_dimensionality_reduction_metrics (value : dimensionality_reduction_metrics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("totalExplainedVarianceRatio", (fun value -> `Float value) field)) value.total_explained_variance_ratio;
       ])

and dml_statistics_of_yojson json : dml_statistics =
  let open Yojson.Safe.Util in
  {
    deleted_row_count = member "deletedRowCount" json |> to_option to_string;
    dml_mode = member "dmlMode" json |> to_option (fun json -> match to_string json with "DML_MODE_UNSPECIFIED" -> `Dml_mode_unspecified | "COARSE_GRAINED_DML" -> `Coarse_grained_dml | "FINE_GRAINED_DML" -> `Fine_grained_dml | value -> `Unrecognized value);
    fine_grained_dml_unused_reason = member "fineGrainedDmlUnusedReason" json |> to_option (fun json -> match to_string json with "FINE_GRAINED_DML_UNUSED_REASON_UNSPECIFIED" -> `Fine_grained_dml_unused_reason_unspecified | "MAX_PARTITION_SIZE_EXCEEDED" -> `Max_partition_size_exceeded | "TABLE_NOT_ENROLLED" -> `Table_not_enrolled | "DML_IN_MULTI_STATEMENT_TRANSACTION" -> `Dml_in_multi_statement_transaction | value -> `Unrecognized value);
    inserted_row_count = member "insertedRowCount" json |> to_option to_string;
    updated_row_count = member "updatedRowCount" json |> to_option to_string;
  }

and yojson_of_dml_statistics (value : dml_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deletedRowCount", (fun value -> `String value) field)) value.deleted_row_count;
         Option.map (fun field -> ("dmlMode", (fun value -> `String ((function `Dml_mode_unspecified -> "DML_MODE_UNSPECIFIED" | `Coarse_grained_dml -> "COARSE_GRAINED_DML" | `Fine_grained_dml -> "FINE_GRAINED_DML" | `Unrecognized value -> value) value)) field)) value.dml_mode;
         Option.map (fun field -> ("fineGrainedDmlUnusedReason", (fun value -> `String ((function `Fine_grained_dml_unused_reason_unspecified -> "FINE_GRAINED_DML_UNUSED_REASON_UNSPECIFIED" | `Max_partition_size_exceeded -> "MAX_PARTITION_SIZE_EXCEEDED" | `Table_not_enrolled -> "TABLE_NOT_ENROLLED" | `Dml_in_multi_statement_transaction -> "DML_IN_MULTI_STATEMENT_TRANSACTION" | `Unrecognized value -> value) value)) field)) value.fine_grained_dml_unused_reason;
         Option.map (fun field -> ("insertedRowCount", (fun value -> `String value) field)) value.inserted_row_count;
         Option.map (fun field -> ("updatedRowCount", (fun value -> `String value) field)) value.updated_row_count;
       ])

and double_candidates_of_yojson json : double_candidates =
  let open Yojson.Safe.Util in
  {
    candidates = member "candidates" json |> to_option (convert_each to_number);
  }

and yojson_of_double_candidates (value : double_candidates) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("candidates", (fun items -> `List (List.map (fun value -> `Float value) items)) field)) value.candidates;
       ])

and double_hparam_search_space_of_yojson json : double_hparam_search_space =
  let open Yojson.Safe.Util in
  {
    candidates = member "candidates" json |> to_option double_candidates_of_yojson;
    range = member "range" json |> to_option double_range_of_yojson;
  }

and yojson_of_double_hparam_search_space (value : double_hparam_search_space) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("candidates", yojson_of_double_candidates field)) value.candidates;
         Option.map (fun field -> ("range", yojson_of_double_range field)) value.range;
       ])

and double_range_of_yojson json : double_range =
  let open Yojson.Safe.Util in
  {
    max = member "max" json |> to_option to_number;
    min = member "min" json |> to_option to_number;
  }

and yojson_of_double_range (value : double_range) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("max", (fun value -> `Float value) field)) value.max;
         Option.map (fun field -> ("min", (fun value -> `Float value) field)) value.min;
       ])

and encryption_configuration_of_yojson json : encryption_configuration =
  let open Yojson.Safe.Util in
  {
    kms_key_name = member "kmsKeyName" json |> to_option to_string;
  }

and yojson_of_encryption_configuration (value : encryption_configuration) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("kmsKeyName", (fun value -> `String value) field)) value.kms_key_name;
       ])

and entry_of_yojson json : entry =
  let open Yojson.Safe.Util in
  {
    item_count = member "itemCount" json |> to_option to_string;
    predicted_label = member "predictedLabel" json |> to_option to_string;
  }

and yojson_of_entry (value : entry) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("itemCount", (fun value -> `String value) field)) value.item_count;
         Option.map (fun field -> ("predictedLabel", (fun value -> `String value) field)) value.predicted_label;
       ])

and error_proto_of_yojson json : error_proto =
  let open Yojson.Safe.Util in
  {
    debug_info = member "debugInfo" json |> to_option to_string;
    location = member "location" json |> to_option to_string;
    message = member "message" json |> to_option to_string;
    reason = member "reason" json |> to_option to_string;
  }

and yojson_of_error_proto (value : error_proto) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("debugInfo", (fun value -> `String value) field)) value.debug_info;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("message", (fun value -> `String value) field)) value.message;
         Option.map (fun field -> ("reason", (fun value -> `String value) field)) value.reason;
       ])

and evaluation_metrics_of_yojson json : evaluation_metrics =
  let open Yojson.Safe.Util in
  {
    arima_forecasting_metrics = member "arimaForecastingMetrics" json |> to_option arima_forecasting_metrics_of_yojson;
    binary_classification_metrics = member "binaryClassificationMetrics" json |> to_option binary_classification_metrics_of_yojson;
    clustering_metrics = member "clusteringMetrics" json |> to_option clustering_metrics_of_yojson;
    dimensionality_reduction_metrics = member "dimensionalityReductionMetrics" json |> to_option dimensionality_reduction_metrics_of_yojson;
    multi_class_classification_metrics = member "multiClassClassificationMetrics" json |> to_option multi_class_classification_metrics_of_yojson;
    ranking_metrics = member "rankingMetrics" json |> to_option ranking_metrics_of_yojson;
    regression_metrics = member "regressionMetrics" json |> to_option regression_metrics_of_yojson;
  }

and yojson_of_evaluation_metrics (value : evaluation_metrics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arimaForecastingMetrics", yojson_of_arima_forecasting_metrics field)) value.arima_forecasting_metrics;
         Option.map (fun field -> ("binaryClassificationMetrics", yojson_of_binary_classification_metrics field)) value.binary_classification_metrics;
         Option.map (fun field -> ("clusteringMetrics", yojson_of_clustering_metrics field)) value.clustering_metrics;
         Option.map (fun field -> ("dimensionalityReductionMetrics", yojson_of_dimensionality_reduction_metrics field)) value.dimensionality_reduction_metrics;
         Option.map (fun field -> ("multiClassClassificationMetrics", yojson_of_multi_class_classification_metrics field)) value.multi_class_classification_metrics;
         Option.map (fun field -> ("rankingMetrics", yojson_of_ranking_metrics field)) value.ranking_metrics;
         Option.map (fun field -> ("regressionMetrics", yojson_of_regression_metrics field)) value.regression_metrics;
       ])

and explain_query_stage_of_yojson json : explain_query_stage =
  let open Yojson.Safe.Util in
  {
    completed_parallel_inputs = member "completedParallelInputs" json |> to_option to_string;
    compute_mode = member "computeMode" json |> to_option (fun json -> match to_string json with "COMPUTE_MODE_UNSPECIFIED" -> `Compute_mode_unspecified | "BIGQUERY" -> `Bigquery | "BI_ENGINE" -> `Bi_engine | value -> `Unrecognized value);
    compute_ms_avg = member "computeMsAvg" json |> to_option to_string;
    compute_ms_max = member "computeMsMax" json |> to_option to_string;
    compute_ratio_avg = member "computeRatioAvg" json |> to_option to_number;
    compute_ratio_max = member "computeRatioMax" json |> to_option to_number;
    end_ms = member "endMs" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    input_stages = member "inputStages" json |> to_option (convert_each to_string);
    name = member "name" json |> to_option to_string;
    parallel_inputs = member "parallelInputs" json |> to_option to_string;
    read_ms_avg = member "readMsAvg" json |> to_option to_string;
    read_ms_max = member "readMsMax" json |> to_option to_string;
    read_ratio_avg = member "readRatioAvg" json |> to_option to_number;
    read_ratio_max = member "readRatioMax" json |> to_option to_number;
    records_read = member "recordsRead" json |> to_option to_string;
    records_written = member "recordsWritten" json |> to_option to_string;
    shuffle_output_bytes = member "shuffleOutputBytes" json |> to_option to_string;
    shuffle_output_bytes_spilled = member "shuffleOutputBytesSpilled" json |> to_option to_string;
    slot_ms = member "slotMs" json |> to_option to_string;
    start_ms = member "startMs" json |> to_option to_string;
    status = member "status" json |> to_option to_string;
    steps = member "steps" json |> to_option (convert_each explain_query_step_of_yojson);
    wait_ms_avg = member "waitMsAvg" json |> to_option to_string;
    wait_ms_max = member "waitMsMax" json |> to_option to_string;
    wait_ratio_avg = member "waitRatioAvg" json |> to_option to_number;
    wait_ratio_max = member "waitRatioMax" json |> to_option to_number;
    write_ms_avg = member "writeMsAvg" json |> to_option to_string;
    write_ms_max = member "writeMsMax" json |> to_option to_string;
    write_ratio_avg = member "writeRatioAvg" json |> to_option to_number;
    write_ratio_max = member "writeRatioMax" json |> to_option to_number;
  }

and yojson_of_explain_query_stage (value : explain_query_stage) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("completedParallelInputs", (fun value -> `String value) field)) value.completed_parallel_inputs;
         Option.map (fun field -> ("computeMode", (fun value -> `String ((function `Compute_mode_unspecified -> "COMPUTE_MODE_UNSPECIFIED" | `Bigquery -> "BIGQUERY" | `Bi_engine -> "BI_ENGINE" | `Unrecognized value -> value) value)) field)) value.compute_mode;
         Option.map (fun field -> ("computeMsAvg", (fun value -> `String value) field)) value.compute_ms_avg;
         Option.map (fun field -> ("computeMsMax", (fun value -> `String value) field)) value.compute_ms_max;
         Option.map (fun field -> ("computeRatioAvg", (fun value -> `Float value) field)) value.compute_ratio_avg;
         Option.map (fun field -> ("computeRatioMax", (fun value -> `Float value) field)) value.compute_ratio_max;
         Option.map (fun field -> ("endMs", (fun value -> `String value) field)) value.end_ms;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("inputStages", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.input_stages;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("parallelInputs", (fun value -> `String value) field)) value.parallel_inputs;
         Option.map (fun field -> ("readMsAvg", (fun value -> `String value) field)) value.read_ms_avg;
         Option.map (fun field -> ("readMsMax", (fun value -> `String value) field)) value.read_ms_max;
         Option.map (fun field -> ("readRatioAvg", (fun value -> `Float value) field)) value.read_ratio_avg;
         Option.map (fun field -> ("readRatioMax", (fun value -> `Float value) field)) value.read_ratio_max;
         Option.map (fun field -> ("recordsRead", (fun value -> `String value) field)) value.records_read;
         Option.map (fun field -> ("recordsWritten", (fun value -> `String value) field)) value.records_written;
         Option.map (fun field -> ("shuffleOutputBytes", (fun value -> `String value) field)) value.shuffle_output_bytes;
         Option.map (fun field -> ("shuffleOutputBytesSpilled", (fun value -> `String value) field)) value.shuffle_output_bytes_spilled;
         Option.map (fun field -> ("slotMs", (fun value -> `String value) field)) value.slot_ms;
         Option.map (fun field -> ("startMs", (fun value -> `String value) field)) value.start_ms;
         Option.map (fun field -> ("status", (fun value -> `String value) field)) value.status;
         Option.map (fun field -> ("steps", (fun items -> `List (List.map yojson_of_explain_query_step items)) field)) value.steps;
         Option.map (fun field -> ("waitMsAvg", (fun value -> `String value) field)) value.wait_ms_avg;
         Option.map (fun field -> ("waitMsMax", (fun value -> `String value) field)) value.wait_ms_max;
         Option.map (fun field -> ("waitRatioAvg", (fun value -> `Float value) field)) value.wait_ratio_avg;
         Option.map (fun field -> ("waitRatioMax", (fun value -> `Float value) field)) value.wait_ratio_max;
         Option.map (fun field -> ("writeMsAvg", (fun value -> `String value) field)) value.write_ms_avg;
         Option.map (fun field -> ("writeMsMax", (fun value -> `String value) field)) value.write_ms_max;
         Option.map (fun field -> ("writeRatioAvg", (fun value -> `Float value) field)) value.write_ratio_avg;
         Option.map (fun field -> ("writeRatioMax", (fun value -> `Float value) field)) value.write_ratio_max;
       ])

and explain_query_step_of_yojson json : explain_query_step =
  let open Yojson.Safe.Util in
  {
    kind = member "kind" json |> to_option to_string;
    substeps = member "substeps" json |> to_option (convert_each to_string);
  }

and yojson_of_explain_query_step (value : explain_query_step) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("substeps", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.substeps;
       ])

and explanation_of_yojson json : explanation =
  let open Yojson.Safe.Util in
  {
    attribution = member "attribution" json |> to_option to_number;
    feature_name = member "featureName" json |> to_option to_string;
  }

and yojson_of_explanation (value : explanation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("attribution", (fun value -> `Float value) field)) value.attribution;
         Option.map (fun field -> ("featureName", (fun value -> `String value) field)) value.feature_name;
       ])

and export_data_statistics_of_yojson json : export_data_statistics =
  let open Yojson.Safe.Util in
  {
    file_count = member "fileCount" json |> to_option to_string;
    row_count = member "rowCount" json |> to_option to_string;
  }

and yojson_of_export_data_statistics (value : export_data_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("fileCount", (fun value -> `String value) field)) value.file_count;
         Option.map (fun field -> ("rowCount", (fun value -> `String value) field)) value.row_count;
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

and external_catalog_dataset_options_of_yojson json : external_catalog_dataset_options =
  let open Yojson.Safe.Util in
  {
    default_storage_location_uri = member "defaultStorageLocationUri" json |> to_option to_string;
    parameters = member "parameters" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
  }

and yojson_of_external_catalog_dataset_options (value : external_catalog_dataset_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("defaultStorageLocationUri", (fun value -> `String value) field)) value.default_storage_location_uri;
         Option.map (fun field -> ("parameters", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.parameters;
       ])

and external_catalog_table_options_of_yojson json : external_catalog_table_options =
  let open Yojson.Safe.Util in
  {
    connection_id = member "connectionId" json |> to_option to_string;
    parameters = member "parameters" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    storage_descriptor = member "storageDescriptor" json |> to_option storage_descriptor_of_yojson;
  }

and yojson_of_external_catalog_table_options (value : external_catalog_table_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("connectionId", (fun value -> `String value) field)) value.connection_id;
         Option.map (fun field -> ("parameters", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.parameters;
         Option.map (fun field -> ("storageDescriptor", yojson_of_storage_descriptor field)) value.storage_descriptor;
       ])

and external_data_configuration_of_yojson json : external_data_configuration =
  let open Yojson.Safe.Util in
  {
    autodetect = member "autodetect" json |> to_option to_bool;
    avro_options = member "avroOptions" json |> to_option avro_options_of_yojson;
    bigtable_options = member "bigtableOptions" json |> to_option bigtable_options_of_yojson;
    compression = member "compression" json |> to_option to_string;
    connection_id = member "connectionId" json |> to_option to_string;
    csv_options = member "csvOptions" json |> to_option csv_options_of_yojson;
    date_format = member "dateFormat" json |> to_option to_string;
    datetime_format = member "datetimeFormat" json |> to_option to_string;
    decimal_target_types = member "decimalTargetTypes" json |> to_option (convert_each (fun json -> match to_string json with "DECIMAL_TARGET_TYPE_UNSPECIFIED" -> `Decimal_target_type_unspecified | "NUMERIC" -> `Numeric | "BIGNUMERIC" -> `Bignumeric | "STRING" -> `String | value -> `Unrecognized value));
    file_set_spec_type = member "fileSetSpecType" json |> to_option (fun json -> match to_string json with "FILE_SET_SPEC_TYPE_FILE_SYSTEM_MATCH" -> `File_set_spec_type_file_system_match | "FILE_SET_SPEC_TYPE_NEW_LINE_DELIMITED_MANIFEST" -> `File_set_spec_type_new_line_delimited_manifest | value -> `Unrecognized value);
    google_sheets_options = member "googleSheetsOptions" json |> to_option google_sheets_options_of_yojson;
    hive_partitioning_options = member "hivePartitioningOptions" json |> to_option hive_partitioning_options_of_yojson;
    ignore_unknown_values = member "ignoreUnknownValues" json |> to_option to_bool;
    json_extension = member "jsonExtension" json |> to_option (fun json -> match to_string json with "JSON_EXTENSION_UNSPECIFIED" -> `Json_extension_unspecified | "GEOJSON" -> `Geojson | value -> `Unrecognized value);
    json_options = member "jsonOptions" json |> to_option json_options_of_yojson;
    max_bad_records = member "maxBadRecords" json |> to_option to_int;
    metadata_cache_mode = member "metadataCacheMode" json |> to_option (fun json -> match to_string json with "METADATA_CACHE_MODE_UNSPECIFIED" -> `Metadata_cache_mode_unspecified | "AUTOMATIC" -> `Automatic | "MANUAL" -> `Manual | value -> `Unrecognized value);
    object_metadata = member "objectMetadata" json |> to_option (fun json -> match to_string json with "OBJECT_METADATA_UNSPECIFIED" -> `Object_metadata_unspecified | "DIRECTORY" -> `Directory | "SIMPLE" -> `Simple | value -> `Unrecognized value);
    parquet_options = member "parquetOptions" json |> to_option parquet_options_of_yojson;
    reference_file_schema_uri = member "referenceFileSchemaUri" json |> to_option to_string;
    schema = member "schema" json |> to_option table_schema_of_yojson;
    source_format = member "sourceFormat" json |> to_option to_string;
    source_uris = member "sourceUris" json |> to_option (convert_each to_string);
    time_format = member "timeFormat" json |> to_option to_string;
    time_zone = member "timeZone" json |> to_option to_string;
    timestamp_format = member "timestampFormat" json |> to_option to_string;
    timestamp_target_precision = member "timestampTargetPrecision" json |> to_option (convert_each to_int);
  }

and yojson_of_external_data_configuration (value : external_data_configuration) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("autodetect", (fun value -> `Bool value) field)) value.autodetect;
         Option.map (fun field -> ("avroOptions", yojson_of_avro_options field)) value.avro_options;
         Option.map (fun field -> ("bigtableOptions", yojson_of_bigtable_options field)) value.bigtable_options;
         Option.map (fun field -> ("compression", (fun value -> `String value) field)) value.compression;
         Option.map (fun field -> ("connectionId", (fun value -> `String value) field)) value.connection_id;
         Option.map (fun field -> ("csvOptions", yojson_of_csv_options field)) value.csv_options;
         Option.map (fun field -> ("dateFormat", (fun value -> `String value) field)) value.date_format;
         Option.map (fun field -> ("datetimeFormat", (fun value -> `String value) field)) value.datetime_format;
         Option.map (fun field -> ("decimalTargetTypes", (fun items -> `List (List.map (fun value -> `String ((function `Decimal_target_type_unspecified -> "DECIMAL_TARGET_TYPE_UNSPECIFIED" | `Numeric -> "NUMERIC" | `Bignumeric -> "BIGNUMERIC" | `String -> "STRING" | `Unrecognized value -> value) value)) items)) field)) value.decimal_target_types;
         Option.map (fun field -> ("fileSetSpecType", (fun value -> `String ((function `File_set_spec_type_file_system_match -> "FILE_SET_SPEC_TYPE_FILE_SYSTEM_MATCH" | `File_set_spec_type_new_line_delimited_manifest -> "FILE_SET_SPEC_TYPE_NEW_LINE_DELIMITED_MANIFEST" | `Unrecognized value -> value) value)) field)) value.file_set_spec_type;
         Option.map (fun field -> ("googleSheetsOptions", yojson_of_google_sheets_options field)) value.google_sheets_options;
         Option.map (fun field -> ("hivePartitioningOptions", yojson_of_hive_partitioning_options field)) value.hive_partitioning_options;
         Option.map (fun field -> ("ignoreUnknownValues", (fun value -> `Bool value) field)) value.ignore_unknown_values;
         Option.map (fun field -> ("jsonExtension", (fun value -> `String ((function `Json_extension_unspecified -> "JSON_EXTENSION_UNSPECIFIED" | `Geojson -> "GEOJSON" | `Unrecognized value -> value) value)) field)) value.json_extension;
         Option.map (fun field -> ("jsonOptions", yojson_of_json_options field)) value.json_options;
         Option.map (fun field -> ("maxBadRecords", (fun value -> `Int value) field)) value.max_bad_records;
         Option.map (fun field -> ("metadataCacheMode", (fun value -> `String ((function `Metadata_cache_mode_unspecified -> "METADATA_CACHE_MODE_UNSPECIFIED" | `Automatic -> "AUTOMATIC" | `Manual -> "MANUAL" | `Unrecognized value -> value) value)) field)) value.metadata_cache_mode;
         Option.map (fun field -> ("objectMetadata", (fun value -> `String ((function `Object_metadata_unspecified -> "OBJECT_METADATA_UNSPECIFIED" | `Directory -> "DIRECTORY" | `Simple -> "SIMPLE" | `Unrecognized value -> value) value)) field)) value.object_metadata;
         Option.map (fun field -> ("parquetOptions", yojson_of_parquet_options field)) value.parquet_options;
         Option.map (fun field -> ("referenceFileSchemaUri", (fun value -> `String value) field)) value.reference_file_schema_uri;
         Option.map (fun field -> ("schema", yojson_of_table_schema field)) value.schema;
         Option.map (fun field -> ("sourceFormat", (fun value -> `String value) field)) value.source_format;
         Option.map (fun field -> ("sourceUris", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.source_uris;
         Option.map (fun field -> ("timeFormat", (fun value -> `String value) field)) value.time_format;
         Option.map (fun field -> ("timeZone", (fun value -> `String value) field)) value.time_zone;
         Option.map (fun field -> ("timestampFormat", (fun value -> `String value) field)) value.timestamp_format;
         Option.map (fun field -> ("timestampTargetPrecision", (fun items -> `List (List.map (fun value -> `Int value) items)) field)) value.timestamp_target_precision;
       ])

and external_dataset_reference_of_yojson json : external_dataset_reference =
  let open Yojson.Safe.Util in
  {
    connection = member "connection" json |> to_option to_string;
    external_source = member "externalSource" json |> to_option to_string;
  }

and yojson_of_external_dataset_reference (value : external_dataset_reference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("connection", (fun value -> `String value) field)) value.connection;
         Option.map (fun field -> ("externalSource", (fun value -> `String value) field)) value.external_source;
       ])

and external_runtime_options_of_yojson json : external_runtime_options =
  let open Yojson.Safe.Util in
  {
    container_cpu = member "containerCpu" json |> to_option to_number;
    container_memory = member "containerMemory" json |> to_option to_string;
    container_request_concurrency = member "containerRequestConcurrency" json |> to_option to_string;
    max_batching_rows = member "maxBatchingRows" json |> to_option to_string;
    runtime_connection = member "runtimeConnection" json |> to_option to_string;
    runtime_version = member "runtimeVersion" json |> to_option to_string;
    volume_mounts = member "volumeMounts" json |> to_option (convert_each external_volume_mount_of_yojson);
  }

and yojson_of_external_runtime_options (value : external_runtime_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("containerCpu", (fun value -> `Float value) field)) value.container_cpu;
         Option.map (fun field -> ("containerMemory", (fun value -> `String value) field)) value.container_memory;
         Option.map (fun field -> ("containerRequestConcurrency", (fun value -> `String value) field)) value.container_request_concurrency;
         Option.map (fun field -> ("maxBatchingRows", (fun value -> `String value) field)) value.max_batching_rows;
         Option.map (fun field -> ("runtimeConnection", (fun value -> `String value) field)) value.runtime_connection;
         Option.map (fun field -> ("runtimeVersion", (fun value -> `String value) field)) value.runtime_version;
         Option.map (fun field -> ("volumeMounts", (fun items -> `List (List.map yojson_of_external_volume_mount items)) field)) value.volume_mounts;
       ])

and external_service_cost_of_yojson json : external_service_cost =
  let open Yojson.Safe.Util in
  {
    billing_method = member "billingMethod" json |> to_option to_string;
    bytes_billed = member "bytesBilled" json |> to_option to_string;
    bytes_processed = member "bytesProcessed" json |> to_option to_string;
    external_service = member "externalService" json |> to_option to_string;
    reserved_slot_count = member "reservedSlotCount" json |> to_option to_string;
    slot_ms = member "slotMs" json |> to_option to_string;
  }

and yojson_of_external_service_cost (value : external_service_cost) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("billingMethod", (fun value -> `String value) field)) value.billing_method;
         Option.map (fun field -> ("bytesBilled", (fun value -> `String value) field)) value.bytes_billed;
         Option.map (fun field -> ("bytesProcessed", (fun value -> `String value) field)) value.bytes_processed;
         Option.map (fun field -> ("externalService", (fun value -> `String value) field)) value.external_service;
         Option.map (fun field -> ("reservedSlotCount", (fun value -> `String value) field)) value.reserved_slot_count;
         Option.map (fun field -> ("slotMs", (fun value -> `String value) field)) value.slot_ms;
       ])

and external_volume_mount_of_yojson json : external_volume_mount =
  let open Yojson.Safe.Util in
  {
    mount_path = member "mountPath" json |> to_option to_string;
    source_path = member "sourcePath" json |> to_option to_string;
  }

and yojson_of_external_volume_mount (value : external_volume_mount) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("mountPath", (fun value -> `String value) field)) value.mount_path;
         Option.map (fun field -> ("sourcePath", (fun value -> `String value) field)) value.source_path;
       ])

and feature_value_of_yojson json : feature_value =
  let open Yojson.Safe.Util in
  {
    categorical_value = member "categoricalValue" json |> to_option categorical_value_of_yojson;
    feature_column = member "featureColumn" json |> to_option to_string;
    numerical_value = member "numericalValue" json |> to_option to_number;
  }

and yojson_of_feature_value (value : feature_value) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("categoricalValue", yojson_of_categorical_value field)) value.categorical_value;
         Option.map (fun field -> ("featureColumn", (fun value -> `String value) field)) value.feature_column;
         Option.map (fun field -> ("numericalValue", (fun value -> `Float value) field)) value.numerical_value;
       ])

and foreign_type_info_of_yojson json : foreign_type_info =
  let open Yojson.Safe.Util in
  {
    type_system = member "typeSystem" json |> to_option (fun json -> match to_string json with "TYPE_SYSTEM_UNSPECIFIED" -> `Type_system_unspecified | "HIVE" -> `Hive | value -> `Unrecognized value);
  }

and yojson_of_foreign_type_info (value : foreign_type_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("typeSystem", (fun value -> `String ((function `Type_system_unspecified -> "TYPE_SYSTEM_UNSPECIFIED" | `Hive -> "HIVE" | `Unrecognized value -> value) value)) field)) value.type_system;
       ])

and foreign_view_definition_of_yojson json : foreign_view_definition =
  let open Yojson.Safe.Util in
  {
    dialect = member "dialect" json |> to_option to_string;
    query = member "query" json |> to_option to_string;
  }

and yojson_of_foreign_view_definition (value : foreign_view_definition) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dialect", (fun value -> `String value) field)) value.dialect;
         Option.map (fun field -> ("query", (fun value -> `String value) field)) value.query;
       ])

and gen_ai_error_stats_of_yojson json : gen_ai_error_stats =
  let open Yojson.Safe.Util in
  {
    errors = member "errors" json |> to_option (convert_each to_string);
  }

and yojson_of_gen_ai_error_stats (value : gen_ai_error_stats) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("errors", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.errors;
       ])

and gen_ai_function_cache_stats_of_yojson json : gen_ai_function_cache_stats =
  let open Yojson.Safe.Util in
  {
    num_cache_hit_rows = member "numCacheHitRows" json |> to_option to_string;
  }

and yojson_of_gen_ai_function_cache_stats (value : gen_ai_function_cache_stats) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("numCacheHitRows", (fun value -> `String value) field)) value.num_cache_hit_rows;
       ])

and gen_ai_function_cost_optimization_stats_of_yojson json : gen_ai_function_cost_optimization_stats =
  let open Yojson.Safe.Util in
  {
    message = member "message" json |> to_option to_string;
    num_cost_optimized_rows = member "numCostOptimizedRows" json |> to_option to_string;
  }

and yojson_of_gen_ai_function_cost_optimization_stats (value : gen_ai_function_cost_optimization_stats) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("message", (fun value -> `String value) field)) value.message;
         Option.map (fun field -> ("numCostOptimizedRows", (fun value -> `String value) field)) value.num_cost_optimized_rows;
       ])

and gen_ai_function_error_stats_of_yojson json : gen_ai_function_error_stats =
  let open Yojson.Safe.Util in
  {
    errors = member "errors" json |> to_option (convert_each to_string);
    num_failed_rows = member "numFailedRows" json |> to_option to_string;
  }

and yojson_of_gen_ai_function_error_stats (value : gen_ai_function_error_stats) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("errors", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.errors;
         Option.map (fun field -> ("numFailedRows", (fun value -> `String value) field)) value.num_failed_rows;
       ])

and gen_ai_function_stats_of_yojson json : gen_ai_function_stats =
  let open Yojson.Safe.Util in
  {
    cache_stats = member "cacheStats" json |> to_option gen_ai_function_cache_stats_of_yojson;
    cost_optimization_stats = member "costOptimizationStats" json |> to_option gen_ai_function_cost_optimization_stats_of_yojson;
    error_stats = member "errorStats" json |> to_option gen_ai_function_error_stats_of_yojson;
    function_name = member "functionName" json |> to_option to_string;
    num_processed_rows = member "numProcessedRows" json |> to_option to_string;
    prompt = member "prompt" json |> to_option to_string;
  }

and yojson_of_gen_ai_function_stats (value : gen_ai_function_stats) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cacheStats", yojson_of_gen_ai_function_cache_stats field)) value.cache_stats;
         Option.map (fun field -> ("costOptimizationStats", yojson_of_gen_ai_function_cost_optimization_stats field)) value.cost_optimization_stats;
         Option.map (fun field -> ("errorStats", yojson_of_gen_ai_function_error_stats field)) value.error_stats;
         Option.map (fun field -> ("functionName", (fun value -> `String value) field)) value.function_name;
         Option.map (fun field -> ("numProcessedRows", (fun value -> `String value) field)) value.num_processed_rows;
         Option.map (fun field -> ("prompt", (fun value -> `String value) field)) value.prompt;
       ])

and gen_ai_stats_of_yojson json : gen_ai_stats =
  let open Yojson.Safe.Util in
  {
    error_stats = member "errorStats" json |> to_option gen_ai_error_stats_of_yojson;
    function_stats = member "functionStats" json |> to_option (convert_each gen_ai_function_stats_of_yojson);
  }

and yojson_of_gen_ai_stats (value : gen_ai_stats) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("errorStats", yojson_of_gen_ai_error_stats field)) value.error_stats;
         Option.map (fun field -> ("functionStats", (fun items -> `List (List.map yojson_of_gen_ai_function_stats items)) field)) value.function_stats;
       ])

and generated_column_of_yojson json : generated_column =
  let open Yojson.Safe.Util in
  {
    generated_expression_info = member "generatedExpressionInfo" json |> to_option generated_expression_info_of_yojson;
    generated_mode = member "generatedMode" json |> to_option (fun json -> match to_string json with "GENERATED_MODE_UNSPECIFIED" -> `Generated_mode_unspecified | "GENERATED_ALWAYS" -> `Generated_always | "GENERATED_BY_DEFAULT" -> `Generated_by_default | value -> `Unrecognized value);
  }

and yojson_of_generated_column (value : generated_column) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("generatedExpressionInfo", yojson_of_generated_expression_info field)) value.generated_expression_info;
         Option.map (fun field -> ("generatedMode", (fun value -> `String ((function `Generated_mode_unspecified -> "GENERATED_MODE_UNSPECIFIED" | `Generated_always -> "GENERATED_ALWAYS" | `Generated_by_default -> "GENERATED_BY_DEFAULT" | `Unrecognized value -> value) value)) field)) value.generated_mode;
       ])

and generated_expression_info_of_yojson json : generated_expression_info =
  let open Yojson.Safe.Util in
  {
    asynchronous = member "asynchronous" json |> to_option to_bool;
    generation_expression = member "generationExpression" json |> to_option to_string;
    stored = member "stored" json |> to_option to_bool;
  }

and yojson_of_generated_expression_info (value : generated_expression_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("asynchronous", (fun value -> `Bool value) field)) value.asynchronous;
         Option.map (fun field -> ("generationExpression", (fun value -> `String value) field)) value.generation_expression;
         Option.map (fun field -> ("stored", (fun value -> `Bool value) field)) value.stored;
       ])

and get_iam_policy_request_of_yojson json : get_iam_policy_request =
  let open Yojson.Safe.Util in
  {
    options = member "options" json |> to_option get_policy_options_of_yojson;
  }

and yojson_of_get_iam_policy_request (value : get_iam_policy_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("options", yojson_of_get_policy_options field)) value.options;
       ])

and get_policy_options_of_yojson json : get_policy_options =
  let open Yojson.Safe.Util in
  {
    requested_policy_version = member "requestedPolicyVersion" json |> to_option to_int;
  }

and yojson_of_get_policy_options (value : get_policy_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("requestedPolicyVersion", (fun value -> `Int value) field)) value.requested_policy_version;
       ])

and get_query_results_response_of_yojson json : get_query_results_response =
  let open Yojson.Safe.Util in
  {
    cache_hit = member "cacheHit" json |> to_option to_bool;
    errors = member "errors" json |> to_option (convert_each error_proto_of_yojson);
    etag = member "etag" json |> to_option to_string;
    job_complete = member "jobComplete" json |> to_option to_bool;
    job_reference = member "jobReference" json |> to_option job_reference_of_yojson;
    kind = member "kind" json |> to_option to_string;
    num_dml_affected_rows = member "numDmlAffectedRows" json |> to_option to_string;
    page_token = member "pageToken" json |> to_option to_string;
    rows = member "rows" json |> to_option (convert_each table_row_of_yojson);
    schema = member "schema" json |> to_option table_schema_of_yojson;
    total_bytes_processed = member "totalBytesProcessed" json |> to_option to_string;
    total_rows = member "totalRows" json |> to_option to_string;
  }

and yojson_of_get_query_results_response (value : get_query_results_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cacheHit", (fun value -> `Bool value) field)) value.cache_hit;
         Option.map (fun field -> ("errors", (fun items -> `List (List.map yojson_of_error_proto items)) field)) value.errors;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("jobComplete", (fun value -> `Bool value) field)) value.job_complete;
         Option.map (fun field -> ("jobReference", yojson_of_job_reference field)) value.job_reference;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("numDmlAffectedRows", (fun value -> `String value) field)) value.num_dml_affected_rows;
         Option.map (fun field -> ("pageToken", (fun value -> `String value) field)) value.page_token;
         Option.map (fun field -> ("rows", (fun items -> `List (List.map yojson_of_table_row items)) field)) value.rows;
         Option.map (fun field -> ("schema", yojson_of_table_schema field)) value.schema;
         Option.map (fun field -> ("totalBytesProcessed", (fun value -> `String value) field)) value.total_bytes_processed;
         Option.map (fun field -> ("totalRows", (fun value -> `String value) field)) value.total_rows;
       ])

and get_service_account_response_of_yojson json : get_service_account_response =
  let open Yojson.Safe.Util in
  {
    email = member "email" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_get_service_account_response (value : get_service_account_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("email", (fun value -> `String value) field)) value.email;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and global_explanation_of_yojson json : global_explanation =
  let open Yojson.Safe.Util in
  {
    class_label = member "classLabel" json |> to_option to_string;
    explanations = member "explanations" json |> to_option (convert_each explanation_of_yojson);
  }

and yojson_of_global_explanation (value : global_explanation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("classLabel", (fun value -> `String value) field)) value.class_label;
         Option.map (fun field -> ("explanations", (fun items -> `List (List.map yojson_of_explanation items)) field)) value.explanations;
       ])

and google_sheets_options_of_yojson json : google_sheets_options =
  let open Yojson.Safe.Util in
  {
    range = member "range" json |> to_option to_string;
    skip_leading_rows = member "skipLeadingRows" json |> to_option to_string;
  }

and yojson_of_google_sheets_options (value : google_sheets_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("range", (fun value -> `String value) field)) value.range;
         Option.map (fun field -> ("skipLeadingRows", (fun value -> `String value) field)) value.skip_leading_rows;
       ])

and high_cardinality_join_of_yojson json : high_cardinality_join =
  let open Yojson.Safe.Util in
  {
    left_rows = member "leftRows" json |> to_option to_string;
    output_rows = member "outputRows" json |> to_option to_string;
    right_rows = member "rightRows" json |> to_option to_string;
    step_index = member "stepIndex" json |> to_option to_int;
  }

and yojson_of_high_cardinality_join (value : high_cardinality_join) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("leftRows", (fun value -> `String value) field)) value.left_rows;
         Option.map (fun field -> ("outputRows", (fun value -> `String value) field)) value.output_rows;
         Option.map (fun field -> ("rightRows", (fun value -> `String value) field)) value.right_rows;
         Option.map (fun field -> ("stepIndex", (fun value -> `Int value) field)) value.step_index;
       ])

and hive_partitioning_options_of_yojson json : hive_partitioning_options =
  let open Yojson.Safe.Util in
  {
    fields = member "fields" json |> to_option (convert_each to_string);
    mode = member "mode" json |> to_option to_string;
    require_partition_filter = member "requirePartitionFilter" json |> to_option to_bool;
    source_uri_prefix = member "sourceUriPrefix" json |> to_option to_string;
  }

and yojson_of_hive_partitioning_options (value : hive_partitioning_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("fields", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.fields;
         Option.map (fun field -> ("mode", (fun value -> `String value) field)) value.mode;
         Option.map (fun field -> ("requirePartitionFilter", (fun value -> `Bool value) field)) value.require_partition_filter;
         Option.map (fun field -> ("sourceUriPrefix", (fun value -> `String value) field)) value.source_uri_prefix;
       ])

and hparam_search_spaces_of_yojson json : hparam_search_spaces =
  let open Yojson.Safe.Util in
  {
    activation_fn = member "activationFn" json |> to_option string_hparam_search_space_of_yojson;
    batch_size = member "batchSize" json |> to_option int_hparam_search_space_of_yojson;
    booster_type = member "boosterType" json |> to_option string_hparam_search_space_of_yojson;
    colsample_bylevel = member "colsampleBylevel" json |> to_option double_hparam_search_space_of_yojson;
    colsample_bynode = member "colsampleBynode" json |> to_option double_hparam_search_space_of_yojson;
    colsample_bytree = member "colsampleBytree" json |> to_option double_hparam_search_space_of_yojson;
    dart_normalize_type = member "dartNormalizeType" json |> to_option string_hparam_search_space_of_yojson;
    dropout = member "dropout" json |> to_option double_hparam_search_space_of_yojson;
    hidden_units = member "hiddenUnits" json |> to_option int_array_hparam_search_space_of_yojson;
    l1_reg = member "l1Reg" json |> to_option double_hparam_search_space_of_yojson;
    l2_reg = member "l2Reg" json |> to_option double_hparam_search_space_of_yojson;
    learn_rate = member "learnRate" json |> to_option double_hparam_search_space_of_yojson;
    max_tree_depth = member "maxTreeDepth" json |> to_option int_hparam_search_space_of_yojson;
    min_split_loss = member "minSplitLoss" json |> to_option double_hparam_search_space_of_yojson;
    min_tree_child_weight = member "minTreeChildWeight" json |> to_option int_hparam_search_space_of_yojson;
    num_clusters = member "numClusters" json |> to_option int_hparam_search_space_of_yojson;
    num_factors = member "numFactors" json |> to_option int_hparam_search_space_of_yojson;
    num_parallel_tree = member "numParallelTree" json |> to_option int_hparam_search_space_of_yojson;
    optimizer = member "optimizer" json |> to_option string_hparam_search_space_of_yojson;
    subsample = member "subsample" json |> to_option double_hparam_search_space_of_yojson;
    tree_method = member "treeMethod" json |> to_option string_hparam_search_space_of_yojson;
    wals_alpha = member "walsAlpha" json |> to_option double_hparam_search_space_of_yojson;
  }

and yojson_of_hparam_search_spaces (value : hparam_search_spaces) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("activationFn", yojson_of_string_hparam_search_space field)) value.activation_fn;
         Option.map (fun field -> ("batchSize", yojson_of_int_hparam_search_space field)) value.batch_size;
         Option.map (fun field -> ("boosterType", yojson_of_string_hparam_search_space field)) value.booster_type;
         Option.map (fun field -> ("colsampleBylevel", yojson_of_double_hparam_search_space field)) value.colsample_bylevel;
         Option.map (fun field -> ("colsampleBynode", yojson_of_double_hparam_search_space field)) value.colsample_bynode;
         Option.map (fun field -> ("colsampleBytree", yojson_of_double_hparam_search_space field)) value.colsample_bytree;
         Option.map (fun field -> ("dartNormalizeType", yojson_of_string_hparam_search_space field)) value.dart_normalize_type;
         Option.map (fun field -> ("dropout", yojson_of_double_hparam_search_space field)) value.dropout;
         Option.map (fun field -> ("hiddenUnits", yojson_of_int_array_hparam_search_space field)) value.hidden_units;
         Option.map (fun field -> ("l1Reg", yojson_of_double_hparam_search_space field)) value.l1_reg;
         Option.map (fun field -> ("l2Reg", yojson_of_double_hparam_search_space field)) value.l2_reg;
         Option.map (fun field -> ("learnRate", yojson_of_double_hparam_search_space field)) value.learn_rate;
         Option.map (fun field -> ("maxTreeDepth", yojson_of_int_hparam_search_space field)) value.max_tree_depth;
         Option.map (fun field -> ("minSplitLoss", yojson_of_double_hparam_search_space field)) value.min_split_loss;
         Option.map (fun field -> ("minTreeChildWeight", yojson_of_int_hparam_search_space field)) value.min_tree_child_weight;
         Option.map (fun field -> ("numClusters", yojson_of_int_hparam_search_space field)) value.num_clusters;
         Option.map (fun field -> ("numFactors", yojson_of_int_hparam_search_space field)) value.num_factors;
         Option.map (fun field -> ("numParallelTree", yojson_of_int_hparam_search_space field)) value.num_parallel_tree;
         Option.map (fun field -> ("optimizer", yojson_of_string_hparam_search_space field)) value.optimizer;
         Option.map (fun field -> ("subsample", yojson_of_double_hparam_search_space field)) value.subsample;
         Option.map (fun field -> ("treeMethod", yojson_of_string_hparam_search_space field)) value.tree_method;
         Option.map (fun field -> ("walsAlpha", yojson_of_double_hparam_search_space field)) value.wals_alpha;
       ])

and hparam_tuning_trial_of_yojson json : hparam_tuning_trial =
  let open Yojson.Safe.Util in
  {
    end_time_ms = member "endTimeMs" json |> to_option to_string;
    error_message = member "errorMessage" json |> to_option to_string;
    eval_loss = member "evalLoss" json |> to_option to_number;
    evaluation_metrics = member "evaluationMetrics" json |> to_option evaluation_metrics_of_yojson;
    hparam_tuning_evaluation_metrics = member "hparamTuningEvaluationMetrics" json |> to_option evaluation_metrics_of_yojson;
    hparams = member "hparams" json |> to_option training_options_of_yojson;
    start_time_ms = member "startTimeMs" json |> to_option to_string;
    status = member "status" json |> to_option (fun json -> match to_string json with "TRIAL_STATUS_UNSPECIFIED" -> `Trial_status_unspecified | "NOT_STARTED" -> `Not_started | "RUNNING" -> `Running | "SUCCEEDED" -> `Succeeded | "FAILED" -> `Failed | "INFEASIBLE" -> `Infeasible | "STOPPED_EARLY" -> `Stopped_early | value -> `Unrecognized value);
    training_loss = member "trainingLoss" json |> to_option to_number;
    trial_id = member "trialId" json |> to_option to_string;
  }

and yojson_of_hparam_tuning_trial (value : hparam_tuning_trial) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("endTimeMs", (fun value -> `String value) field)) value.end_time_ms;
         Option.map (fun field -> ("errorMessage", (fun value -> `String value) field)) value.error_message;
         Option.map (fun field -> ("evalLoss", (fun value -> `Float value) field)) value.eval_loss;
         Option.map (fun field -> ("evaluationMetrics", yojson_of_evaluation_metrics field)) value.evaluation_metrics;
         Option.map (fun field -> ("hparamTuningEvaluationMetrics", yojson_of_evaluation_metrics field)) value.hparam_tuning_evaluation_metrics;
         Option.map (fun field -> ("hparams", yojson_of_training_options field)) value.hparams;
         Option.map (fun field -> ("startTimeMs", (fun value -> `String value) field)) value.start_time_ms;
         Option.map (fun field -> ("status", (fun value -> `String ((function `Trial_status_unspecified -> "TRIAL_STATUS_UNSPECIFIED" | `Not_started -> "NOT_STARTED" | `Running -> "RUNNING" | `Succeeded -> "SUCCEEDED" | `Failed -> "FAILED" | `Infeasible -> "INFEASIBLE" | `Stopped_early -> "STOPPED_EARLY" | `Unrecognized value -> value) value)) field)) value.status;
         Option.map (fun field -> ("trainingLoss", (fun value -> `Float value) field)) value.training_loss;
         Option.map (fun field -> ("trialId", (fun value -> `String value) field)) value.trial_id;
       ])

and incremental_result_stats_of_yojson json : incremental_result_stats =
  let open Yojson.Safe.Util in
  {
    disabled_reason = member "disabledReason" json |> to_option (fun json -> match to_string json with "DISABLED_REASON_UNSPECIFIED" -> `Disabled_reason_unspecified | "OTHER" -> `Other | "UNSUPPORTED_OPERATOR" -> `Unsupported_operator | value -> `Unrecognized value);
    disabled_reason_details = member "disabledReasonDetails" json |> to_option to_string;
    first_incremental_row_time = member "firstIncrementalRowTime" json |> to_option to_string;
    incremental_row_count = member "incrementalRowCount" json |> to_option to_string;
    last_incremental_row_time = member "lastIncrementalRowTime" json |> to_option to_string;
    result_set_last_modify_time = member "resultSetLastModifyTime" json |> to_option to_string;
    result_set_last_replace_time = member "resultSetLastReplaceTime" json |> to_option to_string;
  }

and yojson_of_incremental_result_stats (value : incremental_result_stats) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("disabledReason", (fun value -> `String ((function `Disabled_reason_unspecified -> "DISABLED_REASON_UNSPECIFIED" | `Other -> "OTHER" | `Unsupported_operator -> "UNSUPPORTED_OPERATOR" | `Unrecognized value -> value) value)) field)) value.disabled_reason;
         Option.map (fun field -> ("disabledReasonDetails", (fun value -> `String value) field)) value.disabled_reason_details;
         Option.map (fun field -> ("firstIncrementalRowTime", (fun value -> `String value) field)) value.first_incremental_row_time;
         Option.map (fun field -> ("incrementalRowCount", (fun value -> `String value) field)) value.incremental_row_count;
         Option.map (fun field -> ("lastIncrementalRowTime", (fun value -> `String value) field)) value.last_incremental_row_time;
         Option.map (fun field -> ("resultSetLastModifyTime", (fun value -> `String value) field)) value.result_set_last_modify_time;
         Option.map (fun field -> ("resultSetLastReplaceTime", (fun value -> `String value) field)) value.result_set_last_replace_time;
       ])

and index_pruning_stats_of_yojson json : index_pruning_stats =
  let open Yojson.Safe.Util in
  {
    base_table = member "baseTable" json |> to_option table_reference_of_yojson;
    index_id = member "indexId" json |> to_option to_string;
    post_index_pruning_parallel_input_count = member "postIndexPruningParallelInputCount" json |> to_option to_string;
    pre_index_pruning_parallel_input_count = member "preIndexPruningParallelInputCount" json |> to_option to_string;
  }

and yojson_of_index_pruning_stats (value : index_pruning_stats) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("baseTable", yojson_of_table_reference field)) value.base_table;
         Option.map (fun field -> ("indexId", (fun value -> `String value) field)) value.index_id;
         Option.map (fun field -> ("postIndexPruningParallelInputCount", (fun value -> `String value) field)) value.post_index_pruning_parallel_input_count;
         Option.map (fun field -> ("preIndexPruningParallelInputCount", (fun value -> `String value) field)) value.pre_index_pruning_parallel_input_count;
       ])

and index_unused_reason_of_yojson json : index_unused_reason =
  let open Yojson.Safe.Util in
  {
    base_table = member "baseTable" json |> to_option table_reference_of_yojson;
    code = member "code" json |> to_option (fun json -> match to_string json with "CODE_UNSPECIFIED" -> `Code_unspecified | "INDEX_CONFIG_NOT_AVAILABLE" -> `Index_config_not_available | "PENDING_INDEX_CREATION" -> `Pending_index_creation | "BASE_TABLE_TRUNCATED" -> `Base_table_truncated | "INDEX_CONFIG_MODIFIED" -> `Index_config_modified | "TIME_TRAVEL_QUERY" -> `Time_travel_query | "NO_PRUNING_POWER" -> `No_pruning_power | "UNINDEXED_SEARCH_FIELDS" -> `Unindexed_search_fields | "UNSUPPORTED_SEARCH_PATTERN" -> `Unsupported_search_pattern | "OPTIMIZED_WITH_MATERIALIZED_VIEW" -> `Optimized_with_materialized_view | "SECURED_BY_DATA_MASKING" -> `Secured_by_data_masking | "MISMATCHED_TEXT_ANALYZER" -> `Mismatched_text_analyzer | "BASE_TABLE_TOO_SMALL" -> `Base_table_too_small | "BASE_TABLE_TOO_LARGE" -> `Base_table_too_large | "ESTIMATED_PERFORMANCE_GAIN_TOO_LOW" -> `Estimated_performance_gain_too_low | "COLUMN_METADATA_INDEX_NOT_USED" -> `Column_metadata_index_not_used | "NOT_SUPPORTED_IN_STANDARD_EDITION" -> `Not_supported_in_standard_edition | "INDEX_SUPPRESSED_BY_FUNCTION_OPTION" -> `Index_suppressed_by_function_option | "QUERY_CACHE_HIT" -> `Query_cache_hit | "STALE_INDEX" -> `Stale_index | "INTERNAL_ERROR" -> `Internal_error | "OTHER_REASON" -> `Other_reason | value -> `Unrecognized value);
    index_name = member "indexName" json |> to_option to_string;
    message = member "message" json |> to_option to_string;
  }

and yojson_of_index_unused_reason (value : index_unused_reason) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("baseTable", yojson_of_table_reference field)) value.base_table;
         Option.map (fun field -> ("code", (fun value -> `String ((function `Code_unspecified -> "CODE_UNSPECIFIED" | `Index_config_not_available -> "INDEX_CONFIG_NOT_AVAILABLE" | `Pending_index_creation -> "PENDING_INDEX_CREATION" | `Base_table_truncated -> "BASE_TABLE_TRUNCATED" | `Index_config_modified -> "INDEX_CONFIG_MODIFIED" | `Time_travel_query -> "TIME_TRAVEL_QUERY" | `No_pruning_power -> "NO_PRUNING_POWER" | `Unindexed_search_fields -> "UNINDEXED_SEARCH_FIELDS" | `Unsupported_search_pattern -> "UNSUPPORTED_SEARCH_PATTERN" | `Optimized_with_materialized_view -> "OPTIMIZED_WITH_MATERIALIZED_VIEW" | `Secured_by_data_masking -> "SECURED_BY_DATA_MASKING" | `Mismatched_text_analyzer -> "MISMATCHED_TEXT_ANALYZER" | `Base_table_too_small -> "BASE_TABLE_TOO_SMALL" | `Base_table_too_large -> "BASE_TABLE_TOO_LARGE" | `Estimated_performance_gain_too_low -> "ESTIMATED_PERFORMANCE_GAIN_TOO_LOW" | `Column_metadata_index_not_used -> "COLUMN_METADATA_INDEX_NOT_USED" | `Not_supported_in_standard_edition -> "NOT_SUPPORTED_IN_STANDARD_EDITION" | `Index_suppressed_by_function_option -> "INDEX_SUPPRESSED_BY_FUNCTION_OPTION" | `Query_cache_hit -> "QUERY_CACHE_HIT" | `Stale_index -> "STALE_INDEX" | `Internal_error -> "INTERNAL_ERROR" | `Other_reason -> "OTHER_REASON" | `Unrecognized value -> value) value)) field)) value.code;
         Option.map (fun field -> ("indexName", (fun value -> `String value) field)) value.index_name;
         Option.map (fun field -> ("message", (fun value -> `String value) field)) value.message;
       ])

and input_data_change_of_yojson json : input_data_change =
  let open Yojson.Safe.Util in
  {
    records_read_diff_percentage = member "recordsReadDiffPercentage" json |> to_option to_number;
  }

and yojson_of_input_data_change (value : input_data_change) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("recordsReadDiffPercentage", (fun value -> `Float value) field)) value.records_read_diff_percentage;
       ])

and int_array_of_yojson json : int_array =
  let open Yojson.Safe.Util in
  {
    elements = member "elements" json |> to_option (convert_each to_string);
  }

and yojson_of_int_array (value : int_array) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("elements", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.elements;
       ])

and int_array_hparam_search_space_of_yojson json : int_array_hparam_search_space =
  let open Yojson.Safe.Util in
  {
    candidates = member "candidates" json |> to_option (convert_each int_array_of_yojson);
  }

and yojson_of_int_array_hparam_search_space (value : int_array_hparam_search_space) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("candidates", (fun items -> `List (List.map yojson_of_int_array items)) field)) value.candidates;
       ])

and int_candidates_of_yojson json : int_candidates =
  let open Yojson.Safe.Util in
  {
    candidates = member "candidates" json |> to_option (convert_each to_string);
  }

and yojson_of_int_candidates (value : int_candidates) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("candidates", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.candidates;
       ])

and int_hparam_search_space_of_yojson json : int_hparam_search_space =
  let open Yojson.Safe.Util in
  {
    candidates = member "candidates" json |> to_option int_candidates_of_yojson;
    range = member "range" json |> to_option int_range_of_yojson;
  }

and yojson_of_int_hparam_search_space (value : int_hparam_search_space) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("candidates", yojson_of_int_candidates field)) value.candidates;
         Option.map (fun field -> ("range", yojson_of_int_range field)) value.range;
       ])

and int_range_of_yojson json : int_range =
  let open Yojson.Safe.Util in
  {
    max = member "max" json |> to_option to_string;
    min = member "min" json |> to_option to_string;
  }

and yojson_of_int_range (value : int_range) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("max", (fun value -> `String value) field)) value.max;
         Option.map (fun field -> ("min", (fun value -> `String value) field)) value.min;
       ])

and iteration_result_of_yojson json : iteration_result =
  let open Yojson.Safe.Util in
  {
    arima_result = member "arimaResult" json |> to_option arima_result_of_yojson;
    cluster_infos = member "clusterInfos" json |> to_option (convert_each cluster_info_of_yojson);
    duration_ms = member "durationMs" json |> to_option to_string;
    eval_loss = member "evalLoss" json |> to_option to_number;
    index = member "index" json |> to_option to_int;
    learn_rate = member "learnRate" json |> to_option to_number;
    principal_component_infos = member "principalComponentInfos" json |> to_option (convert_each principal_component_info_of_yojson);
    training_loss = member "trainingLoss" json |> to_option to_number;
  }

and yojson_of_iteration_result (value : iteration_result) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arimaResult", yojson_of_arima_result field)) value.arima_result;
         Option.map (fun field -> ("clusterInfos", (fun items -> `List (List.map yojson_of_cluster_info items)) field)) value.cluster_infos;
         Option.map (fun field -> ("durationMs", (fun value -> `String value) field)) value.duration_ms;
         Option.map (fun field -> ("evalLoss", (fun value -> `Float value) field)) value.eval_loss;
         Option.map (fun field -> ("index", (fun value -> `Int value) field)) value.index;
         Option.map (fun field -> ("learnRate", (fun value -> `Float value) field)) value.learn_rate;
         Option.map (fun field -> ("principalComponentInfos", (fun items -> `List (List.map yojson_of_principal_component_info items)) field)) value.principal_component_infos;
         Option.map (fun field -> ("trainingLoss", (fun value -> `Float value) field)) value.training_loss;
       ])

and job_of_yojson json : job =
  let open Yojson.Safe.Util in
  {
    configuration = member "configuration" json |> to_option job_configuration_of_yojson;
    etag = member "etag" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    job_creation_reason = member "jobCreationReason" json |> to_option job_creation_reason_of_yojson;
    job_reference = member "jobReference" json |> to_option job_reference_of_yojson;
    kind = member "kind" json |> to_option to_string;
    principal_subject = member "principal_subject" json |> to_option to_string;
    self_link = member "selfLink" json |> to_option to_string;
    statistics = member "statistics" json |> to_option job_statistics_of_yojson;
    status = member "status" json |> to_option job_status_of_yojson;
    user_email = member "user_email" json |> to_option to_string;
  }

and yojson_of_job (value : job) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("configuration", yojson_of_job_configuration field)) value.configuration;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("jobCreationReason", yojson_of_job_creation_reason field)) value.job_creation_reason;
         Option.map (fun field -> ("jobReference", yojson_of_job_reference field)) value.job_reference;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("principal_subject", (fun value -> `String value) field)) value.principal_subject;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("statistics", yojson_of_job_statistics field)) value.statistics;
         Option.map (fun field -> ("status", yojson_of_job_status field)) value.status;
         Option.map (fun field -> ("user_email", (fun value -> `String value) field)) value.user_email;
       ])

and job_cancel_response_of_yojson json : job_cancel_response =
  let open Yojson.Safe.Util in
  {
    job = member "job" json |> to_option job_of_yojson;
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_job_cancel_response (value : job_cancel_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("job", yojson_of_job field)) value.job;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and job_configuration_of_yojson json : job_configuration =
  let open Yojson.Safe.Util in
  {
    copy = member "copy" json |> to_option job_configuration_table_copy_of_yojson;
    dry_run = member "dryRun" json |> to_option to_bool;
    extract = member "extract" json |> to_option job_configuration_extract_of_yojson;
    job_timeout_ms = member "jobTimeoutMs" json |> to_option to_string;
    job_type = member "jobType" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    load = member "load" json |> to_option job_configuration_load_of_yojson;
    max_slots = member "maxSlots" json |> to_option to_int;
    query = member "query" json |> to_option job_configuration_query_of_yojson;
    reservation = member "reservation" json |> to_option to_string;
  }

and yojson_of_job_configuration (value : job_configuration) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("copy", yojson_of_job_configuration_table_copy field)) value.copy;
         Option.map (fun field -> ("dryRun", (fun value -> `Bool value) field)) value.dry_run;
         Option.map (fun field -> ("extract", yojson_of_job_configuration_extract field)) value.extract;
         Option.map (fun field -> ("jobTimeoutMs", (fun value -> `String value) field)) value.job_timeout_ms;
         Option.map (fun field -> ("jobType", (fun value -> `String value) field)) value.job_type;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("load", yojson_of_job_configuration_load field)) value.load;
         Option.map (fun field -> ("maxSlots", (fun value -> `Int value) field)) value.max_slots;
         Option.map (fun field -> ("query", yojson_of_job_configuration_query field)) value.query;
         Option.map (fun field -> ("reservation", (fun value -> `String value) field)) value.reservation;
       ])

and job_configuration_extract_of_yojson json : job_configuration_extract =
  let open Yojson.Safe.Util in
  {
    compression = member "compression" json |> to_option to_string;
    destination_format = member "destinationFormat" json |> to_option to_string;
    destination_uri = member "destinationUri" json |> to_option to_string;
    destination_uris = member "destinationUris" json |> to_option (convert_each to_string);
    field_delimiter = member "fieldDelimiter" json |> to_option to_string;
    model_extract_options = member "modelExtractOptions" json |> to_option model_extract_options_of_yojson;
    native_geography_export_enabled = member "nativeGeographyExportEnabled" json |> to_option to_bool;
    print_header = member "printHeader" json |> to_option to_bool;
    source_model = member "sourceModel" json |> to_option model_reference_of_yojson;
    source_table = member "sourceTable" json |> to_option table_reference_of_yojson;
    use_avro_logical_types = member "useAvroLogicalTypes" json |> to_option to_bool;
  }

and yojson_of_job_configuration_extract (value : job_configuration_extract) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("compression", (fun value -> `String value) field)) value.compression;
         Option.map (fun field -> ("destinationFormat", (fun value -> `String value) field)) value.destination_format;
         Option.map (fun field -> ("destinationUri", (fun value -> `String value) field)) value.destination_uri;
         Option.map (fun field -> ("destinationUris", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.destination_uris;
         Option.map (fun field -> ("fieldDelimiter", (fun value -> `String value) field)) value.field_delimiter;
         Option.map (fun field -> ("modelExtractOptions", yojson_of_model_extract_options field)) value.model_extract_options;
         Option.map (fun field -> ("nativeGeographyExportEnabled", (fun value -> `Bool value) field)) value.native_geography_export_enabled;
         Option.map (fun field -> ("printHeader", (fun value -> `Bool value) field)) value.print_header;
         Option.map (fun field -> ("sourceModel", yojson_of_model_reference field)) value.source_model;
         Option.map (fun field -> ("sourceTable", yojson_of_table_reference field)) value.source_table;
         Option.map (fun field -> ("useAvroLogicalTypes", (fun value -> `Bool value) field)) value.use_avro_logical_types;
       ])

and job_configuration_load_of_yojson json : job_configuration_load =
  let open Yojson.Safe.Util in
  {
    allow_jagged_rows = member "allowJaggedRows" json |> to_option to_bool;
    allow_quoted_newlines = member "allowQuotedNewlines" json |> to_option to_bool;
    autodetect = member "autodetect" json |> to_option to_bool;
    clustering = member "clustering" json |> to_option clustering_of_yojson;
    column_name_character_map = member "columnNameCharacterMap" json |> to_option (fun json -> match to_string json with "COLUMN_NAME_CHARACTER_MAP_UNSPECIFIED" -> `Column_name_character_map_unspecified | "STRICT" -> `Strict | "V1" -> `V1 | "V2" -> `V2 | value -> `Unrecognized value);
    connection_properties = member "connectionProperties" json |> to_option (convert_each connection_property_of_yojson);
    copy_files_only = member "copyFilesOnly" json |> to_option to_bool;
    create_disposition = member "createDisposition" json |> to_option to_string;
    create_session = member "createSession" json |> to_option to_bool;
    date_format = member "dateFormat" json |> to_option to_string;
    datetime_format = member "datetimeFormat" json |> to_option to_string;
    decimal_target_types = member "decimalTargetTypes" json |> to_option (convert_each (fun json -> match to_string json with "DECIMAL_TARGET_TYPE_UNSPECIFIED" -> `Decimal_target_type_unspecified | "NUMERIC" -> `Numeric | "BIGNUMERIC" -> `Bignumeric | "STRING" -> `String | value -> `Unrecognized value));
    destination_encryption_configuration = member "destinationEncryptionConfiguration" json |> to_option encryption_configuration_of_yojson;
    destination_table = member "destinationTable" json |> to_option table_reference_of_yojson;
    destination_table_properties = member "destinationTableProperties" json |> to_option destination_table_properties_of_yojson;
    encoding = member "encoding" json |> to_option to_string;
    field_delimiter = member "fieldDelimiter" json |> to_option to_string;
    file_set_spec_type = member "fileSetSpecType" json |> to_option (fun json -> match to_string json with "FILE_SET_SPEC_TYPE_FILE_SYSTEM_MATCH" -> `File_set_spec_type_file_system_match | "FILE_SET_SPEC_TYPE_NEW_LINE_DELIMITED_MANIFEST" -> `File_set_spec_type_new_line_delimited_manifest | value -> `Unrecognized value);
    hive_partitioning_options = member "hivePartitioningOptions" json |> to_option hive_partitioning_options_of_yojson;
    ignore_unknown_values = member "ignoreUnknownValues" json |> to_option to_bool;
    json_extension = member "jsonExtension" json |> to_option (fun json -> match to_string json with "JSON_EXTENSION_UNSPECIFIED" -> `Json_extension_unspecified | "GEOJSON" -> `Geojson | value -> `Unrecognized value);
    max_bad_records = member "maxBadRecords" json |> to_option to_int;
    null_marker = member "nullMarker" json |> to_option to_string;
    null_markers = member "nullMarkers" json |> to_option (convert_each to_string);
    parquet_options = member "parquetOptions" json |> to_option parquet_options_of_yojson;
    preserve_ascii_control_characters = member "preserveAsciiControlCharacters" json |> to_option to_bool;
    projection_fields = member "projectionFields" json |> to_option (convert_each to_string);
    quote = member "quote" json |> to_option to_string;
    range_partitioning = member "rangePartitioning" json |> to_option range_partitioning_of_yojson;
    reference_file_schema_uri = member "referenceFileSchemaUri" json |> to_option to_string;
    schema = member "schema" json |> to_option table_schema_of_yojson;
    schema_inline = member "schemaInline" json |> to_option to_string;
    schema_inline_format = member "schemaInlineFormat" json |> to_option to_string;
    schema_update_options = member "schemaUpdateOptions" json |> to_option (convert_each to_string);
    skip_leading_rows = member "skipLeadingRows" json |> to_option to_int;
    source_column_match = member "sourceColumnMatch" json |> to_option (fun json -> match to_string json with "SOURCE_COLUMN_MATCH_UNSPECIFIED" -> `Source_column_match_unspecified | "POSITION" -> `Position | "NAME" -> `Name | value -> `Unrecognized value);
    source_format = member "sourceFormat" json |> to_option to_string;
    source_uris = member "sourceUris" json |> to_option (convert_each to_string);
    time_format = member "timeFormat" json |> to_option to_string;
    time_partitioning = member "timePartitioning" json |> to_option time_partitioning_of_yojson;
    time_zone = member "timeZone" json |> to_option to_string;
    timestamp_format = member "timestampFormat" json |> to_option to_string;
    timestamp_target_precision = member "timestampTargetPrecision" json |> to_option (convert_each to_int);
    use_avro_logical_types = member "useAvroLogicalTypes" json |> to_option to_bool;
    write_disposition = member "writeDisposition" json |> to_option to_string;
  }

and yojson_of_job_configuration_load (value : job_configuration_load) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowJaggedRows", (fun value -> `Bool value) field)) value.allow_jagged_rows;
         Option.map (fun field -> ("allowQuotedNewlines", (fun value -> `Bool value) field)) value.allow_quoted_newlines;
         Option.map (fun field -> ("autodetect", (fun value -> `Bool value) field)) value.autodetect;
         Option.map (fun field -> ("clustering", yojson_of_clustering field)) value.clustering;
         Option.map (fun field -> ("columnNameCharacterMap", (fun value -> `String ((function `Column_name_character_map_unspecified -> "COLUMN_NAME_CHARACTER_MAP_UNSPECIFIED" | `Strict -> "STRICT" | `V1 -> "V1" | `V2 -> "V2" | `Unrecognized value -> value) value)) field)) value.column_name_character_map;
         Option.map (fun field -> ("connectionProperties", (fun items -> `List (List.map yojson_of_connection_property items)) field)) value.connection_properties;
         Option.map (fun field -> ("copyFilesOnly", (fun value -> `Bool value) field)) value.copy_files_only;
         Option.map (fun field -> ("createDisposition", (fun value -> `String value) field)) value.create_disposition;
         Option.map (fun field -> ("createSession", (fun value -> `Bool value) field)) value.create_session;
         Option.map (fun field -> ("dateFormat", (fun value -> `String value) field)) value.date_format;
         Option.map (fun field -> ("datetimeFormat", (fun value -> `String value) field)) value.datetime_format;
         Option.map (fun field -> ("decimalTargetTypes", (fun items -> `List (List.map (fun value -> `String ((function `Decimal_target_type_unspecified -> "DECIMAL_TARGET_TYPE_UNSPECIFIED" | `Numeric -> "NUMERIC" | `Bignumeric -> "BIGNUMERIC" | `String -> "STRING" | `Unrecognized value -> value) value)) items)) field)) value.decimal_target_types;
         Option.map (fun field -> ("destinationEncryptionConfiguration", yojson_of_encryption_configuration field)) value.destination_encryption_configuration;
         Option.map (fun field -> ("destinationTable", yojson_of_table_reference field)) value.destination_table;
         Option.map (fun field -> ("destinationTableProperties", yojson_of_destination_table_properties field)) value.destination_table_properties;
         Option.map (fun field -> ("encoding", (fun value -> `String value) field)) value.encoding;
         Option.map (fun field -> ("fieldDelimiter", (fun value -> `String value) field)) value.field_delimiter;
         Option.map (fun field -> ("fileSetSpecType", (fun value -> `String ((function `File_set_spec_type_file_system_match -> "FILE_SET_SPEC_TYPE_FILE_SYSTEM_MATCH" | `File_set_spec_type_new_line_delimited_manifest -> "FILE_SET_SPEC_TYPE_NEW_LINE_DELIMITED_MANIFEST" | `Unrecognized value -> value) value)) field)) value.file_set_spec_type;
         Option.map (fun field -> ("hivePartitioningOptions", yojson_of_hive_partitioning_options field)) value.hive_partitioning_options;
         Option.map (fun field -> ("ignoreUnknownValues", (fun value -> `Bool value) field)) value.ignore_unknown_values;
         Option.map (fun field -> ("jsonExtension", (fun value -> `String ((function `Json_extension_unspecified -> "JSON_EXTENSION_UNSPECIFIED" | `Geojson -> "GEOJSON" | `Unrecognized value -> value) value)) field)) value.json_extension;
         Option.map (fun field -> ("maxBadRecords", (fun value -> `Int value) field)) value.max_bad_records;
         Option.map (fun field -> ("nullMarker", (fun value -> `String value) field)) value.null_marker;
         Option.map (fun field -> ("nullMarkers", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.null_markers;
         Option.map (fun field -> ("parquetOptions", yojson_of_parquet_options field)) value.parquet_options;
         Option.map (fun field -> ("preserveAsciiControlCharacters", (fun value -> `Bool value) field)) value.preserve_ascii_control_characters;
         Option.map (fun field -> ("projectionFields", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.projection_fields;
         Option.map (fun field -> ("quote", (fun value -> `String value) field)) value.quote;
         Option.map (fun field -> ("rangePartitioning", yojson_of_range_partitioning field)) value.range_partitioning;
         Option.map (fun field -> ("referenceFileSchemaUri", (fun value -> `String value) field)) value.reference_file_schema_uri;
         Option.map (fun field -> ("schema", yojson_of_table_schema field)) value.schema;
         Option.map (fun field -> ("schemaInline", (fun value -> `String value) field)) value.schema_inline;
         Option.map (fun field -> ("schemaInlineFormat", (fun value -> `String value) field)) value.schema_inline_format;
         Option.map (fun field -> ("schemaUpdateOptions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.schema_update_options;
         Option.map (fun field -> ("skipLeadingRows", (fun value -> `Int value) field)) value.skip_leading_rows;
         Option.map (fun field -> ("sourceColumnMatch", (fun value -> `String ((function `Source_column_match_unspecified -> "SOURCE_COLUMN_MATCH_UNSPECIFIED" | `Position -> "POSITION" | `Name -> "NAME" | `Unrecognized value -> value) value)) field)) value.source_column_match;
         Option.map (fun field -> ("sourceFormat", (fun value -> `String value) field)) value.source_format;
         Option.map (fun field -> ("sourceUris", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.source_uris;
         Option.map (fun field -> ("timeFormat", (fun value -> `String value) field)) value.time_format;
         Option.map (fun field -> ("timePartitioning", yojson_of_time_partitioning field)) value.time_partitioning;
         Option.map (fun field -> ("timeZone", (fun value -> `String value) field)) value.time_zone;
         Option.map (fun field -> ("timestampFormat", (fun value -> `String value) field)) value.timestamp_format;
         Option.map (fun field -> ("timestampTargetPrecision", (fun items -> `List (List.map (fun value -> `Int value) items)) field)) value.timestamp_target_precision;
         Option.map (fun field -> ("useAvroLogicalTypes", (fun value -> `Bool value) field)) value.use_avro_logical_types;
         Option.map (fun field -> ("writeDisposition", (fun value -> `String value) field)) value.write_disposition;
       ])

and job_configuration_query_of_yojson json : job_configuration_query =
  let open Yojson.Safe.Util in
  {
    allow_large_results = member "allowLargeResults" json |> to_option to_bool;
    clustering = member "clustering" json |> to_option clustering_of_yojson;
    connection_properties = member "connectionProperties" json |> to_option (convert_each connection_property_of_yojson);
    continuous = member "continuous" json |> to_option to_bool;
    create_disposition = member "createDisposition" json |> to_option to_string;
    create_session = member "createSession" json |> to_option to_bool;
    default_dataset = member "defaultDataset" json |> to_option dataset_reference_of_yojson;
    destination_encryption_configuration = member "destinationEncryptionConfiguration" json |> to_option encryption_configuration_of_yojson;
    destination_table = member "destinationTable" json |> to_option table_reference_of_yojson;
    flatten_results = member "flattenResults" json |> to_option to_bool;
    maximum_billing_tier = member "maximumBillingTier" json |> to_option to_int;
    maximum_bytes_billed = member "maximumBytesBilled" json |> to_option to_string;
    parameter_mode = member "parameterMode" json |> to_option to_string;
    preserve_nulls = member "preserveNulls" json |> to_option to_bool;
    priority = member "priority" json |> to_option to_string;
    query = member "query" json |> to_option to_string;
    query_parameters = member "queryParameters" json |> to_option (convert_each query_parameter_of_yojson);
    range_partitioning = member "rangePartitioning" json |> to_option range_partitioning_of_yojson;
    schema_update_options = member "schemaUpdateOptions" json |> to_option (convert_each to_string);
    script_options = member "scriptOptions" json |> to_option script_options_of_yojson;
    secure_context = member "secureContext" json |> to_option secure_context_of_yojson;
    system_variables = member "systemVariables" json |> to_option system_variables_of_yojson;
    table_definitions = member "tableDefinitions" json |> to_option (fun json -> List.map (fun (key, value) -> (key, external_data_configuration_of_yojson value)) (to_assoc json));
    time_partitioning = member "timePartitioning" json |> to_option time_partitioning_of_yojson;
    use_legacy_sql = member "useLegacySql" json |> to_option to_bool;
    use_query_cache = member "useQueryCache" json |> to_option to_bool;
    user_defined_function_resources = member "userDefinedFunctionResources" json |> to_option (convert_each user_defined_function_resource_of_yojson);
    write_disposition = member "writeDisposition" json |> to_option to_string;
    write_incremental_results = member "writeIncrementalResults" json |> to_option to_bool;
  }

and yojson_of_job_configuration_query (value : job_configuration_query) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowLargeResults", (fun value -> `Bool value) field)) value.allow_large_results;
         Option.map (fun field -> ("clustering", yojson_of_clustering field)) value.clustering;
         Option.map (fun field -> ("connectionProperties", (fun items -> `List (List.map yojson_of_connection_property items)) field)) value.connection_properties;
         Option.map (fun field -> ("continuous", (fun value -> `Bool value) field)) value.continuous;
         Option.map (fun field -> ("createDisposition", (fun value -> `String value) field)) value.create_disposition;
         Option.map (fun field -> ("createSession", (fun value -> `Bool value) field)) value.create_session;
         Option.map (fun field -> ("defaultDataset", yojson_of_dataset_reference field)) value.default_dataset;
         Option.map (fun field -> ("destinationEncryptionConfiguration", yojson_of_encryption_configuration field)) value.destination_encryption_configuration;
         Option.map (fun field -> ("destinationTable", yojson_of_table_reference field)) value.destination_table;
         Option.map (fun field -> ("flattenResults", (fun value -> `Bool value) field)) value.flatten_results;
         Option.map (fun field -> ("maximumBillingTier", (fun value -> `Int value) field)) value.maximum_billing_tier;
         Option.map (fun field -> ("maximumBytesBilled", (fun value -> `String value) field)) value.maximum_bytes_billed;
         Option.map (fun field -> ("parameterMode", (fun value -> `String value) field)) value.parameter_mode;
         Option.map (fun field -> ("preserveNulls", (fun value -> `Bool value) field)) value.preserve_nulls;
         Option.map (fun field -> ("priority", (fun value -> `String value) field)) value.priority;
         Option.map (fun field -> ("query", (fun value -> `String value) field)) value.query;
         Option.map (fun field -> ("queryParameters", (fun items -> `List (List.map yojson_of_query_parameter items)) field)) value.query_parameters;
         Option.map (fun field -> ("rangePartitioning", yojson_of_range_partitioning field)) value.range_partitioning;
         Option.map (fun field -> ("schemaUpdateOptions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.schema_update_options;
         Option.map (fun field -> ("scriptOptions", yojson_of_script_options field)) value.script_options;
         Option.map (fun field -> ("secureContext", yojson_of_secure_context field)) value.secure_context;
         Option.map (fun field -> ("systemVariables", yojson_of_system_variables field)) value.system_variables;
         Option.map (fun field -> ("tableDefinitions", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_external_data_configuration value)) members)) field)) value.table_definitions;
         Option.map (fun field -> ("timePartitioning", yojson_of_time_partitioning field)) value.time_partitioning;
         Option.map (fun field -> ("useLegacySql", (fun value -> `Bool value) field)) value.use_legacy_sql;
         Option.map (fun field -> ("useQueryCache", (fun value -> `Bool value) field)) value.use_query_cache;
         Option.map (fun field -> ("userDefinedFunctionResources", (fun items -> `List (List.map yojson_of_user_defined_function_resource items)) field)) value.user_defined_function_resources;
         Option.map (fun field -> ("writeDisposition", (fun value -> `String value) field)) value.write_disposition;
         Option.map (fun field -> ("writeIncrementalResults", (fun value -> `Bool value) field)) value.write_incremental_results;
       ])

and job_configuration_table_copy_of_yojson json : job_configuration_table_copy =
  let open Yojson.Safe.Util in
  {
    create_disposition = member "createDisposition" json |> to_option to_string;
    destination_encryption_configuration = member "destinationEncryptionConfiguration" json |> to_option encryption_configuration_of_yojson;
    destination_expiration_time = member "destinationExpirationTime" json |> to_option to_string;
    destination_table = member "destinationTable" json |> to_option table_reference_of_yojson;
    operation_type = member "operationType" json |> to_option (fun json -> match to_string json with "OPERATION_TYPE_UNSPECIFIED" -> `Operation_type_unspecified | "COPY" -> `Copy | "SNAPSHOT" -> `Snapshot | "RESTORE" -> `Restore | "CLONE" -> `Clone | value -> `Unrecognized value);
    source_table = member "sourceTable" json |> to_option table_reference_of_yojson;
    source_tables = member "sourceTables" json |> to_option (convert_each table_reference_of_yojson);
    write_disposition = member "writeDisposition" json |> to_option to_string;
  }

and yojson_of_job_configuration_table_copy (value : job_configuration_table_copy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("createDisposition", (fun value -> `String value) field)) value.create_disposition;
         Option.map (fun field -> ("destinationEncryptionConfiguration", yojson_of_encryption_configuration field)) value.destination_encryption_configuration;
         Option.map (fun field -> ("destinationExpirationTime", (fun value -> `String value) field)) value.destination_expiration_time;
         Option.map (fun field -> ("destinationTable", yojson_of_table_reference field)) value.destination_table;
         Option.map (fun field -> ("operationType", (fun value -> `String ((function `Operation_type_unspecified -> "OPERATION_TYPE_UNSPECIFIED" | `Copy -> "COPY" | `Snapshot -> "SNAPSHOT" | `Restore -> "RESTORE" | `Clone -> "CLONE" | `Unrecognized value -> value) value)) field)) value.operation_type;
         Option.map (fun field -> ("sourceTable", yojson_of_table_reference field)) value.source_table;
         Option.map (fun field -> ("sourceTables", (fun items -> `List (List.map yojson_of_table_reference items)) field)) value.source_tables;
         Option.map (fun field -> ("writeDisposition", (fun value -> `String value) field)) value.write_disposition;
       ])

and job_creation_reason_of_yojson json : job_creation_reason =
  let open Yojson.Safe.Util in
  {
    code = member "code" json |> to_option (fun json -> match to_string json with "CODE_UNSPECIFIED" -> `Code_unspecified | "REQUESTED" -> `Requested | "LONG_RUNNING" -> `Long_running | "LARGE_RESULTS" -> `Large_results | "OTHER" -> `Other | value -> `Unrecognized value);
  }

and yojson_of_job_creation_reason (value : job_creation_reason) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("code", (fun value -> `String ((function `Code_unspecified -> "CODE_UNSPECIFIED" | `Requested -> "REQUESTED" | `Long_running -> "LONG_RUNNING" | `Large_results -> "LARGE_RESULTS" | `Other -> "OTHER" | `Unrecognized value -> value) value)) field)) value.code;
       ])

and job_list_jobs_item_of_yojson json : job_list_jobs_item =
  let open Yojson.Safe.Util in
  {
    configuration = member "configuration" json |> to_option job_configuration_of_yojson;
    error_result = member "errorResult" json |> to_option error_proto_of_yojson;
    id = member "id" json |> to_option to_string;
    job_reference = member "jobReference" json |> to_option job_reference_of_yojson;
    kind = member "kind" json |> to_option to_string;
    principal_subject = member "principal_subject" json |> to_option to_string;
    state = member "state" json |> to_option to_string;
    statistics = member "statistics" json |> to_option job_statistics_of_yojson;
    status = member "status" json |> to_option job_status_of_yojson;
    user_email = member "user_email" json |> to_option to_string;
  }

and yojson_of_job_list_jobs_item (value : job_list_jobs_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("configuration", yojson_of_job_configuration field)) value.configuration;
         Option.map (fun field -> ("errorResult", yojson_of_error_proto field)) value.error_result;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("jobReference", yojson_of_job_reference field)) value.job_reference;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("principal_subject", (fun value -> `String value) field)) value.principal_subject;
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
         Option.map (fun field -> ("statistics", yojson_of_job_statistics field)) value.statistics;
         Option.map (fun field -> ("status", yojson_of_job_status field)) value.status;
         Option.map (fun field -> ("user_email", (fun value -> `String value) field)) value.user_email;
       ])

and job_list_of_yojson json : job_list =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    jobs = member "jobs" json |> to_option (convert_each job_list_jobs_item_of_yojson);
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    unreachable = member "unreachable" json |> to_option (convert_each to_string);
  }

and yojson_of_job_list (value : job_list) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("jobs", (fun items -> `List (List.map yojson_of_job_list_jobs_item items)) field)) value.jobs;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("unreachable", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.unreachable;
       ])

and job_reference_of_yojson json : job_reference =
  let open Yojson.Safe.Util in
  {
    job_id = member "jobId" json |> to_option to_string;
    location = member "location" json |> to_option to_string;
    project_id = member "projectId" json |> to_option to_string;
  }

and yojson_of_job_reference (value : job_reference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("jobId", (fun value -> `String value) field)) value.job_id;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
       ])

and job_statistics_reservation_usage_item_of_yojson json : job_statistics_reservation_usage_item =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    slot_ms = member "slotMs" json |> to_option to_string;
  }

and yojson_of_job_statistics_reservation_usage_item (value : job_statistics_reservation_usage_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("slotMs", (fun value -> `String value) field)) value.slot_ms;
       ])

and job_statistics_of_yojson json : job_statistics =
  let open Yojson.Safe.Util in
  {
    completion_ratio = member "completionRatio" json |> to_option to_number;
    copy = member "copy" json |> to_option job_statistics5_of_yojson;
    creation_time = member "creationTime" json |> to_option to_string;
    data_masking_statistics = member "dataMaskingStatistics" json |> to_option data_masking_statistics_of_yojson;
    edition = member "edition" json |> to_option (fun json -> match to_string json with "RESERVATION_EDITION_UNSPECIFIED" -> `Reservation_edition_unspecified | "STANDARD" -> `Standard | "ENTERPRISE" -> `Enterprise | "ENTERPRISE_PLUS" -> `Enterprise_plus | value -> `Unrecognized value);
    end_time = member "endTime" json |> to_option to_string;
    extract = member "extract" json |> to_option job_statistics4_of_yojson;
    final_execution_duration_ms = member "finalExecutionDurationMs" json |> to_option to_string;
    global_query_remote_regions = member "globalQueryRemoteRegions" json |> to_option (convert_each to_string);
    load = member "load" json |> to_option job_statistics3_of_yojson;
    num_child_jobs = member "numChildJobs" json |> to_option to_string;
    parent_global_query_job = member "parentGlobalQueryJob" json |> to_option job_reference_of_yojson;
    parent_job_id = member "parentJobId" json |> to_option to_string;
    query = member "query" json |> to_option job_statistics2_of_yojson;
    quota_deferments = member "quotaDeferments" json |> to_option (convert_each to_string);
    reservation_group_path = member "reservationGroupPath" json |> to_option (convert_each to_string);
    reservation_usage = member "reservationUsage" json |> to_option (convert_each job_statistics_reservation_usage_item_of_yojson);
    reservation_id = member "reservation_id" json |> to_option to_string;
    row_level_security_statistics = member "rowLevelSecurityStatistics" json |> to_option row_level_security_statistics_of_yojson;
    script_statistics = member "scriptStatistics" json |> to_option script_statistics_of_yojson;
    session_info = member "sessionInfo" json |> to_option session_info_of_yojson;
    start_time = member "startTime" json |> to_option to_string;
    total_bytes_processed = member "totalBytesProcessed" json |> to_option to_string;
    total_slot_ms = member "totalSlotMs" json |> to_option to_string;
    transaction_info = member "transactionInfo" json |> to_option transaction_info_of_yojson;
  }

and yojson_of_job_statistics (value : job_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("completionRatio", (fun value -> `Float value) field)) value.completion_ratio;
         Option.map (fun field -> ("copy", yojson_of_job_statistics5 field)) value.copy;
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("dataMaskingStatistics", yojson_of_data_masking_statistics field)) value.data_masking_statistics;
         Option.map (fun field -> ("edition", (fun value -> `String ((function `Reservation_edition_unspecified -> "RESERVATION_EDITION_UNSPECIFIED" | `Standard -> "STANDARD" | `Enterprise -> "ENTERPRISE" | `Enterprise_plus -> "ENTERPRISE_PLUS" | `Unrecognized value -> value) value)) field)) value.edition;
         Option.map (fun field -> ("endTime", (fun value -> `String value) field)) value.end_time;
         Option.map (fun field -> ("extract", yojson_of_job_statistics4 field)) value.extract;
         Option.map (fun field -> ("finalExecutionDurationMs", (fun value -> `String value) field)) value.final_execution_duration_ms;
         Option.map (fun field -> ("globalQueryRemoteRegions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.global_query_remote_regions;
         Option.map (fun field -> ("load", yojson_of_job_statistics3 field)) value.load;
         Option.map (fun field -> ("numChildJobs", (fun value -> `String value) field)) value.num_child_jobs;
         Option.map (fun field -> ("parentGlobalQueryJob", yojson_of_job_reference field)) value.parent_global_query_job;
         Option.map (fun field -> ("parentJobId", (fun value -> `String value) field)) value.parent_job_id;
         Option.map (fun field -> ("query", yojson_of_job_statistics2 field)) value.query;
         Option.map (fun field -> ("quotaDeferments", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.quota_deferments;
         Option.map (fun field -> ("reservationGroupPath", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.reservation_group_path;
         Option.map (fun field -> ("reservationUsage", (fun items -> `List (List.map yojson_of_job_statistics_reservation_usage_item items)) field)) value.reservation_usage;
         Option.map (fun field -> ("reservation_id", (fun value -> `String value) field)) value.reservation_id;
         Option.map (fun field -> ("rowLevelSecurityStatistics", yojson_of_row_level_security_statistics field)) value.row_level_security_statistics;
         Option.map (fun field -> ("scriptStatistics", yojson_of_script_statistics field)) value.script_statistics;
         Option.map (fun field -> ("sessionInfo", yojson_of_session_info field)) value.session_info;
         Option.map (fun field -> ("startTime", (fun value -> `String value) field)) value.start_time;
         Option.map (fun field -> ("totalBytesProcessed", (fun value -> `String value) field)) value.total_bytes_processed;
         Option.map (fun field -> ("totalSlotMs", (fun value -> `String value) field)) value.total_slot_ms;
         Option.map (fun field -> ("transactionInfo", yojson_of_transaction_info field)) value.transaction_info;
       ])

and job_statistics2_reservation_usage_item_of_yojson json : job_statistics2_reservation_usage_item =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    slot_ms = member "slotMs" json |> to_option to_string;
  }

and yojson_of_job_statistics2_reservation_usage_item (value : job_statistics2_reservation_usage_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("slotMs", (fun value -> `String value) field)) value.slot_ms;
       ])

and job_statistics2_of_yojson json : job_statistics2 =
  let open Yojson.Safe.Util in
  {
    bi_engine_statistics = member "biEngineStatistics" json |> to_option bi_engine_statistics_of_yojson;
    billing_tier = member "billingTier" json |> to_option to_int;
    cache_hit = member "cacheHit" json |> to_option to_bool;
    dcl_target_dataset = member "dclTargetDataset" json |> to_option dataset_reference_of_yojson;
    dcl_target_table = member "dclTargetTable" json |> to_option table_reference_of_yojson;
    dcl_target_view = member "dclTargetView" json |> to_option table_reference_of_yojson;
    ddl_affected_row_access_policy_count = member "ddlAffectedRowAccessPolicyCount" json |> to_option to_string;
    ddl_destination_table = member "ddlDestinationTable" json |> to_option table_reference_of_yojson;
    ddl_operation_performed = member "ddlOperationPerformed" json |> to_option to_string;
    ddl_target_dataset = member "ddlTargetDataset" json |> to_option dataset_reference_of_yojson;
    ddl_target_routine = member "ddlTargetRoutine" json |> to_option routine_reference_of_yojson;
    ddl_target_row_access_policy = member "ddlTargetRowAccessPolicy" json |> to_option row_access_policy_reference_of_yojson;
    ddl_target_table = member "ddlTargetTable" json |> to_option table_reference_of_yojson;
    dml_stats = member "dmlStats" json |> to_option dml_statistics_of_yojson;
    estimated_bytes_processed = member "estimatedBytesProcessed" json |> to_option to_string;
    export_data_statistics = member "exportDataStatistics" json |> to_option export_data_statistics_of_yojson;
    external_service_costs = member "externalServiceCosts" json |> to_option (convert_each external_service_cost_of_yojson);
    gen_ai_stats = member "genAiStats" json |> to_option gen_ai_stats_of_yojson;
    incremental_result_stats = member "incrementalResultStats" json |> to_option incremental_result_stats_of_yojson;
    load_query_statistics = member "loadQueryStatistics" json |> to_option load_query_statistics_of_yojson;
    materialized_view_statistics = member "materializedViewStatistics" json |> to_option materialized_view_statistics_of_yojson;
    metadata_cache_statistics = member "metadataCacheStatistics" json |> to_option metadata_cache_statistics_of_yojson;
    ml_statistics = member "mlStatistics" json |> to_option ml_statistics_of_yojson;
    model_training = member "modelTraining" json |> to_option big_query_model_training_of_yojson;
    model_training_current_iteration = member "modelTrainingCurrentIteration" json |> to_option to_int;
    model_training_expected_total_iteration = member "modelTrainingExpectedTotalIteration" json |> to_option to_string;
    num_dml_affected_rows = member "numDmlAffectedRows" json |> to_option to_string;
    object_storage_stats = member "objectStorageStats" json |> to_option (convert_each object_storage_stats_of_yojson);
    performance_insights = member "performanceInsights" json |> to_option performance_insights_of_yojson;
    query_info = member "queryInfo" json |> to_option query_info_of_yojson;
    query_plan = member "queryPlan" json |> to_option (convert_each explain_query_stage_of_yojson);
    referenced_logical_views = member "referencedLogicalViews" json |> to_option (convert_each table_reference_of_yojson);
    referenced_property_graphs = member "referencedPropertyGraphs" json |> to_option (convert_each property_graph_reference_of_yojson);
    referenced_routines = member "referencedRoutines" json |> to_option (convert_each routine_reference_of_yojson);
    referenced_tables = member "referencedTables" json |> to_option (convert_each table_reference_of_yojson);
    reservation_usage = member "reservationUsage" json |> to_option (convert_each job_statistics2_reservation_usage_item_of_yojson);
    schema = member "schema" json |> to_option table_schema_of_yojson;
    search_statistics = member "searchStatistics" json |> to_option search_statistics_of_yojson;
    spark_statistics = member "sparkStatistics" json |> to_option spark_statistics_of_yojson;
    statement_type = member "statementType" json |> to_option to_string;
    timeline = member "timeline" json |> to_option (convert_each query_timeline_sample_of_yojson);
    total_bytes_billed = member "totalBytesBilled" json |> to_option to_string;
    total_bytes_processed = member "totalBytesProcessed" json |> to_option to_string;
    total_bytes_processed_accuracy = member "totalBytesProcessedAccuracy" json |> to_option to_string;
    total_partitions_processed = member "totalPartitionsProcessed" json |> to_option to_string;
    total_services_sku_slot_ms = member "totalServicesSkuSlotMs" json |> to_option to_string;
    total_slot_ms = member "totalSlotMs" json |> to_option to_string;
    transferred_bytes = member "transferredBytes" json |> to_option to_string;
    undeclared_query_parameters = member "undeclaredQueryParameters" json |> to_option (convert_each query_parameter_of_yojson);
    vector_search_statistics = member "vectorSearchStatistics" json |> to_option vector_search_statistics_of_yojson;
  }

and yojson_of_job_statistics2 (value : job_statistics2) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("biEngineStatistics", yojson_of_bi_engine_statistics field)) value.bi_engine_statistics;
         Option.map (fun field -> ("billingTier", (fun value -> `Int value) field)) value.billing_tier;
         Option.map (fun field -> ("cacheHit", (fun value -> `Bool value) field)) value.cache_hit;
         Option.map (fun field -> ("dclTargetDataset", yojson_of_dataset_reference field)) value.dcl_target_dataset;
         Option.map (fun field -> ("dclTargetTable", yojson_of_table_reference field)) value.dcl_target_table;
         Option.map (fun field -> ("dclTargetView", yojson_of_table_reference field)) value.dcl_target_view;
         Option.map (fun field -> ("ddlAffectedRowAccessPolicyCount", (fun value -> `String value) field)) value.ddl_affected_row_access_policy_count;
         Option.map (fun field -> ("ddlDestinationTable", yojson_of_table_reference field)) value.ddl_destination_table;
         Option.map (fun field -> ("ddlOperationPerformed", (fun value -> `String value) field)) value.ddl_operation_performed;
         Option.map (fun field -> ("ddlTargetDataset", yojson_of_dataset_reference field)) value.ddl_target_dataset;
         Option.map (fun field -> ("ddlTargetRoutine", yojson_of_routine_reference field)) value.ddl_target_routine;
         Option.map (fun field -> ("ddlTargetRowAccessPolicy", yojson_of_row_access_policy_reference field)) value.ddl_target_row_access_policy;
         Option.map (fun field -> ("ddlTargetTable", yojson_of_table_reference field)) value.ddl_target_table;
         Option.map (fun field -> ("dmlStats", yojson_of_dml_statistics field)) value.dml_stats;
         Option.map (fun field -> ("estimatedBytesProcessed", (fun value -> `String value) field)) value.estimated_bytes_processed;
         Option.map (fun field -> ("exportDataStatistics", yojson_of_export_data_statistics field)) value.export_data_statistics;
         Option.map (fun field -> ("externalServiceCosts", (fun items -> `List (List.map yojson_of_external_service_cost items)) field)) value.external_service_costs;
         Option.map (fun field -> ("genAiStats", yojson_of_gen_ai_stats field)) value.gen_ai_stats;
         Option.map (fun field -> ("incrementalResultStats", yojson_of_incremental_result_stats field)) value.incremental_result_stats;
         Option.map (fun field -> ("loadQueryStatistics", yojson_of_load_query_statistics field)) value.load_query_statistics;
         Option.map (fun field -> ("materializedViewStatistics", yojson_of_materialized_view_statistics field)) value.materialized_view_statistics;
         Option.map (fun field -> ("metadataCacheStatistics", yojson_of_metadata_cache_statistics field)) value.metadata_cache_statistics;
         Option.map (fun field -> ("mlStatistics", yojson_of_ml_statistics field)) value.ml_statistics;
         Option.map (fun field -> ("modelTraining", yojson_of_big_query_model_training field)) value.model_training;
         Option.map (fun field -> ("modelTrainingCurrentIteration", (fun value -> `Int value) field)) value.model_training_current_iteration;
         Option.map (fun field -> ("modelTrainingExpectedTotalIteration", (fun value -> `String value) field)) value.model_training_expected_total_iteration;
         Option.map (fun field -> ("numDmlAffectedRows", (fun value -> `String value) field)) value.num_dml_affected_rows;
         Option.map (fun field -> ("objectStorageStats", (fun items -> `List (List.map yojson_of_object_storage_stats items)) field)) value.object_storage_stats;
         Option.map (fun field -> ("performanceInsights", yojson_of_performance_insights field)) value.performance_insights;
         Option.map (fun field -> ("queryInfo", yojson_of_query_info field)) value.query_info;
         Option.map (fun field -> ("queryPlan", (fun items -> `List (List.map yojson_of_explain_query_stage items)) field)) value.query_plan;
         Option.map (fun field -> ("referencedLogicalViews", (fun items -> `List (List.map yojson_of_table_reference items)) field)) value.referenced_logical_views;
         Option.map (fun field -> ("referencedPropertyGraphs", (fun items -> `List (List.map yojson_of_property_graph_reference items)) field)) value.referenced_property_graphs;
         Option.map (fun field -> ("referencedRoutines", (fun items -> `List (List.map yojson_of_routine_reference items)) field)) value.referenced_routines;
         Option.map (fun field -> ("referencedTables", (fun items -> `List (List.map yojson_of_table_reference items)) field)) value.referenced_tables;
         Option.map (fun field -> ("reservationUsage", (fun items -> `List (List.map yojson_of_job_statistics2_reservation_usage_item items)) field)) value.reservation_usage;
         Option.map (fun field -> ("schema", yojson_of_table_schema field)) value.schema;
         Option.map (fun field -> ("searchStatistics", yojson_of_search_statistics field)) value.search_statistics;
         Option.map (fun field -> ("sparkStatistics", yojson_of_spark_statistics field)) value.spark_statistics;
         Option.map (fun field -> ("statementType", (fun value -> `String value) field)) value.statement_type;
         Option.map (fun field -> ("timeline", (fun items -> `List (List.map yojson_of_query_timeline_sample items)) field)) value.timeline;
         Option.map (fun field -> ("totalBytesBilled", (fun value -> `String value) field)) value.total_bytes_billed;
         Option.map (fun field -> ("totalBytesProcessed", (fun value -> `String value) field)) value.total_bytes_processed;
         Option.map (fun field -> ("totalBytesProcessedAccuracy", (fun value -> `String value) field)) value.total_bytes_processed_accuracy;
         Option.map (fun field -> ("totalPartitionsProcessed", (fun value -> `String value) field)) value.total_partitions_processed;
         Option.map (fun field -> ("totalServicesSkuSlotMs", (fun value -> `String value) field)) value.total_services_sku_slot_ms;
         Option.map (fun field -> ("totalSlotMs", (fun value -> `String value) field)) value.total_slot_ms;
         Option.map (fun field -> ("transferredBytes", (fun value -> `String value) field)) value.transferred_bytes;
         Option.map (fun field -> ("undeclaredQueryParameters", (fun items -> `List (List.map yojson_of_query_parameter items)) field)) value.undeclared_query_parameters;
         Option.map (fun field -> ("vectorSearchStatistics", yojson_of_vector_search_statistics field)) value.vector_search_statistics;
       ])

and job_statistics3_of_yojson json : job_statistics3 =
  let open Yojson.Safe.Util in
  {
    bad_records = member "badRecords" json |> to_option to_string;
    input_file_bytes = member "inputFileBytes" json |> to_option to_string;
    input_files = member "inputFiles" json |> to_option to_string;
    output_bytes = member "outputBytes" json |> to_option to_string;
    output_rows = member "outputRows" json |> to_option to_string;
    timeline = member "timeline" json |> to_option (convert_each query_timeline_sample_of_yojson);
  }

and yojson_of_job_statistics3 (value : job_statistics3) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("badRecords", (fun value -> `String value) field)) value.bad_records;
         Option.map (fun field -> ("inputFileBytes", (fun value -> `String value) field)) value.input_file_bytes;
         Option.map (fun field -> ("inputFiles", (fun value -> `String value) field)) value.input_files;
         Option.map (fun field -> ("outputBytes", (fun value -> `String value) field)) value.output_bytes;
         Option.map (fun field -> ("outputRows", (fun value -> `String value) field)) value.output_rows;
         Option.map (fun field -> ("timeline", (fun items -> `List (List.map yojson_of_query_timeline_sample items)) field)) value.timeline;
       ])

and job_statistics4_of_yojson json : job_statistics4 =
  let open Yojson.Safe.Util in
  {
    destination_uri_file_counts = member "destinationUriFileCounts" json |> to_option (convert_each to_string);
    input_bytes = member "inputBytes" json |> to_option to_string;
    timeline = member "timeline" json |> to_option (convert_each query_timeline_sample_of_yojson);
  }

and yojson_of_job_statistics4 (value : job_statistics4) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("destinationUriFileCounts", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.destination_uri_file_counts;
         Option.map (fun field -> ("inputBytes", (fun value -> `String value) field)) value.input_bytes;
         Option.map (fun field -> ("timeline", (fun items -> `List (List.map yojson_of_query_timeline_sample items)) field)) value.timeline;
       ])

and job_statistics5_of_yojson json : job_statistics5 =
  let open Yojson.Safe.Util in
  {
    copied_logical_bytes = member "copiedLogicalBytes" json |> to_option to_string;
    copied_rows = member "copiedRows" json |> to_option to_string;
    remote_destination_region = member "remoteDestinationRegion" json |> to_option to_string;
  }

and yojson_of_job_statistics5 (value : job_statistics5) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("copiedLogicalBytes", (fun value -> `String value) field)) value.copied_logical_bytes;
         Option.map (fun field -> ("copiedRows", (fun value -> `String value) field)) value.copied_rows;
         Option.map (fun field -> ("remoteDestinationRegion", (fun value -> `String value) field)) value.remote_destination_region;
       ])

and job_status_of_yojson json : job_status =
  let open Yojson.Safe.Util in
  {
    error_result = member "errorResult" json |> to_option error_proto_of_yojson;
    errors = member "errors" json |> to_option (convert_each error_proto_of_yojson);
    state = member "state" json |> to_option to_string;
  }

and yojson_of_job_status (value : job_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("errorResult", yojson_of_error_proto field)) value.error_result;
         Option.map (fun field -> ("errors", (fun items -> `List (List.map yojson_of_error_proto items)) field)) value.errors;
         Option.map (fun field -> ("state", (fun value -> `String value) field)) value.state;
       ])

and join_restriction_policy_of_yojson json : join_restriction_policy =
  let open Yojson.Safe.Util in
  {
    join_allowed_columns = member "joinAllowedColumns" json |> to_option (convert_each to_string);
    join_condition = member "joinCondition" json |> to_option (fun json -> match to_string json with "JOIN_CONDITION_UNSPECIFIED" -> `Join_condition_unspecified | "JOIN_ANY" -> `Join_any | "JOIN_ALL" -> `Join_all | "JOIN_NOT_REQUIRED" -> `Join_not_required | "JOIN_BLOCKED" -> `Join_blocked | value -> `Unrecognized value);
  }

and yojson_of_join_restriction_policy (value : join_restriction_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("joinAllowedColumns", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.join_allowed_columns;
         Option.map (fun field -> ("joinCondition", (fun value -> `String ((function `Join_condition_unspecified -> "JOIN_CONDITION_UNSPECIFIED" | `Join_any -> "JOIN_ANY" | `Join_all -> "JOIN_ALL" | `Join_not_required -> "JOIN_NOT_REQUIRED" | `Join_blocked -> "JOIN_BLOCKED" | `Unrecognized value -> value) value)) field)) value.join_condition;
       ])

and json_object_of_yojson json : json_object =
  let open Yojson.Safe.Util in
  (fun json -> List.map (fun (key, value) -> (key, json_value_of_yojson value)) (to_assoc json)) json

and yojson_of_json_object (value : json_object) : Yojson.Safe.t = (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_json_value value)) members)) value

and json_options_of_yojson json : json_options =
  let open Yojson.Safe.Util in
  {
    encoding = member "encoding" json |> to_option to_string;
  }

and yojson_of_json_options (value : json_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("encoding", (fun value -> `String value) field)) value.encoding;
       ])

and json_value_of_yojson json : json_value =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_json_value (value : json_value) : Yojson.Safe.t = Fun.id value

and linked_dataset_metadata_of_yojson json : linked_dataset_metadata =
  let open Yojson.Safe.Util in
  {
    link_state = member "linkState" json |> to_option (fun json -> match to_string json with "LINK_STATE_UNSPECIFIED" -> `Link_state_unspecified | "LINKED" -> `Linked | "UNLINKED" -> `Unlinked | value -> `Unrecognized value);
  }

and yojson_of_linked_dataset_metadata (value : linked_dataset_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("linkState", (fun value -> `String ((function `Link_state_unspecified -> "LINK_STATE_UNSPECIFIED" | `Linked -> "LINKED" | `Unlinked -> "UNLINKED" | `Unrecognized value -> value) value)) field)) value.link_state;
       ])

and linked_dataset_source_of_yojson json : linked_dataset_source =
  let open Yojson.Safe.Util in
  {
    source_dataset = member "sourceDataset" json |> to_option dataset_reference_of_yojson;
  }

and yojson_of_linked_dataset_source (value : linked_dataset_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("sourceDataset", yojson_of_dataset_reference field)) value.source_dataset;
       ])

and list_models_response_of_yojson json : list_models_response =
  let open Yojson.Safe.Util in
  {
    models = member "models" json |> to_option (convert_each model_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_list_models_response (value : list_models_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("models", (fun items -> `List (List.map yojson_of_model items)) field)) value.models;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and list_routines_response_of_yojson json : list_routines_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    routines = member "routines" json |> to_option (convert_each routine_of_yojson);
  }

and yojson_of_list_routines_response (value : list_routines_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("routines", (fun items -> `List (List.map yojson_of_routine items)) field)) value.routines;
       ])

and list_row_access_policies_response_of_yojson json : list_row_access_policies_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    row_access_policies = member "rowAccessPolicies" json |> to_option (convert_each row_access_policy_of_yojson);
  }

and yojson_of_list_row_access_policies_response (value : list_row_access_policies_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("rowAccessPolicies", (fun items -> `List (List.map yojson_of_row_access_policy items)) field)) value.row_access_policies;
       ])

and load_query_statistics_of_yojson json : load_query_statistics =
  let open Yojson.Safe.Util in
  {
    bad_records = member "badRecords" json |> to_option to_string;
    bytes_transferred = member "bytesTransferred" json |> to_option to_string;
    input_file_bytes = member "inputFileBytes" json |> to_option to_string;
    input_files = member "inputFiles" json |> to_option to_string;
    output_bytes = member "outputBytes" json |> to_option to_string;
    output_rows = member "outputRows" json |> to_option to_string;
  }

and yojson_of_load_query_statistics (value : load_query_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("badRecords", (fun value -> `String value) field)) value.bad_records;
         Option.map (fun field -> ("bytesTransferred", (fun value -> `String value) field)) value.bytes_transferred;
         Option.map (fun field -> ("inputFileBytes", (fun value -> `String value) field)) value.input_file_bytes;
         Option.map (fun field -> ("inputFiles", (fun value -> `String value) field)) value.input_files;
         Option.map (fun field -> ("outputBytes", (fun value -> `String value) field)) value.output_bytes;
         Option.map (fun field -> ("outputRows", (fun value -> `String value) field)) value.output_rows;
       ])

and location_metadata_of_yojson json : location_metadata =
  let open Yojson.Safe.Util in
  {
    legacy_location_id = member "legacyLocationId" json |> to_option to_string;
  }

and yojson_of_location_metadata (value : location_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("legacyLocationId", (fun value -> `String value) field)) value.legacy_location_id;
       ])

and materialized_view_of_yojson json : materialized_view =
  let open Yojson.Safe.Util in
  {
    chosen = member "chosen" json |> to_option to_bool;
    estimated_bytes_saved = member "estimatedBytesSaved" json |> to_option to_string;
    rejected_reason = member "rejectedReason" json |> to_option (fun json -> match to_string json with "REJECTED_REASON_UNSPECIFIED" -> `Rejected_reason_unspecified | "NO_DATA" -> `No_data | "COST" -> `Cost | "BASE_TABLE_TRUNCATED" -> `Base_table_truncated | "BASE_TABLE_DATA_CHANGE" -> `Base_table_data_change | "BASE_TABLE_PARTITION_EXPIRATION_CHANGE" -> `Base_table_partition_expiration_change | "BASE_TABLE_EXPIRED_PARTITION" -> `Base_table_expired_partition | "BASE_TABLE_INCOMPATIBLE_METADATA_CHANGE" -> `Base_table_incompatible_metadata_change | "TIME_ZONE" -> `Time_zone | "OUT_OF_TIME_TRAVEL_WINDOW" -> `Out_of_time_travel_window | "BASE_TABLE_FINE_GRAINED_SECURITY_POLICY" -> `Base_table_fine_grained_security_policy | "BASE_TABLE_TOO_STALE" -> `Base_table_too_stale | value -> `Unrecognized value);
    table_reference = member "tableReference" json |> to_option table_reference_of_yojson;
  }

and yojson_of_materialized_view (value : materialized_view) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("chosen", (fun value -> `Bool value) field)) value.chosen;
         Option.map (fun field -> ("estimatedBytesSaved", (fun value -> `String value) field)) value.estimated_bytes_saved;
         Option.map (fun field -> ("rejectedReason", (fun value -> `String ((function `Rejected_reason_unspecified -> "REJECTED_REASON_UNSPECIFIED" | `No_data -> "NO_DATA" | `Cost -> "COST" | `Base_table_truncated -> "BASE_TABLE_TRUNCATED" | `Base_table_data_change -> "BASE_TABLE_DATA_CHANGE" | `Base_table_partition_expiration_change -> "BASE_TABLE_PARTITION_EXPIRATION_CHANGE" | `Base_table_expired_partition -> "BASE_TABLE_EXPIRED_PARTITION" | `Base_table_incompatible_metadata_change -> "BASE_TABLE_INCOMPATIBLE_METADATA_CHANGE" | `Time_zone -> "TIME_ZONE" | `Out_of_time_travel_window -> "OUT_OF_TIME_TRAVEL_WINDOW" | `Base_table_fine_grained_security_policy -> "BASE_TABLE_FINE_GRAINED_SECURITY_POLICY" | `Base_table_too_stale -> "BASE_TABLE_TOO_STALE" | `Unrecognized value -> value) value)) field)) value.rejected_reason;
         Option.map (fun field -> ("tableReference", yojson_of_table_reference field)) value.table_reference;
       ])

and materialized_view_definition_of_yojson json : materialized_view_definition =
  let open Yojson.Safe.Util in
  {
    allow_non_incremental_definition = member "allowNonIncrementalDefinition" json |> to_option to_bool;
    enable_refresh = member "enableRefresh" json |> to_option to_bool;
    last_refresh_time = member "lastRefreshTime" json |> to_option to_string;
    max_staleness = member "maxStaleness" json |> to_option to_string;
    query = member "query" json |> to_option to_string;
    refresh_interval_ms = member "refreshIntervalMs" json |> to_option to_string;
  }

and yojson_of_materialized_view_definition (value : materialized_view_definition) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowNonIncrementalDefinition", (fun value -> `Bool value) field)) value.allow_non_incremental_definition;
         Option.map (fun field -> ("enableRefresh", (fun value -> `Bool value) field)) value.enable_refresh;
         Option.map (fun field -> ("lastRefreshTime", (fun value -> `String value) field)) value.last_refresh_time;
         Option.map (fun field -> ("maxStaleness", (fun value -> `String value) field)) value.max_staleness;
         Option.map (fun field -> ("query", (fun value -> `String value) field)) value.query;
         Option.map (fun field -> ("refreshIntervalMs", (fun value -> `String value) field)) value.refresh_interval_ms;
       ])

and materialized_view_statistics_of_yojson json : materialized_view_statistics =
  let open Yojson.Safe.Util in
  {
    materialized_view = member "materializedView" json |> to_option (convert_each materialized_view_of_yojson);
  }

and yojson_of_materialized_view_statistics (value : materialized_view_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("materializedView", (fun items -> `List (List.map yojson_of_materialized_view items)) field)) value.materialized_view;
       ])

and materialized_view_status_of_yojson json : materialized_view_status =
  let open Yojson.Safe.Util in
  {
    last_refresh_status = member "lastRefreshStatus" json |> to_option error_proto_of_yojson;
    refresh_watermark = member "refreshWatermark" json |> to_option to_string;
  }

and yojson_of_materialized_view_status (value : materialized_view_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("lastRefreshStatus", yojson_of_error_proto field)) value.last_refresh_status;
         Option.map (fun field -> ("refreshWatermark", (fun value -> `String value) field)) value.refresh_watermark;
       ])

and metadata_cache_staleness_insight_of_yojson json : metadata_cache_staleness_insight =
  let open Yojson.Safe.Util in
  {
    avg_previous_staleness_ms = member "avgPreviousStalenessMs" json |> to_option to_string;
    staleness_percentage_increase = member "stalenessPercentageIncrease" json |> to_option to_number;
  }

and yojson_of_metadata_cache_staleness_insight (value : metadata_cache_staleness_insight) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("avgPreviousStalenessMs", (fun value -> `String value) field)) value.avg_previous_staleness_ms;
         Option.map (fun field -> ("stalenessPercentageIncrease", (fun value -> `Float value) field)) value.staleness_percentage_increase;
       ])

and metadata_cache_statistics_of_yojson json : metadata_cache_statistics =
  let open Yojson.Safe.Util in
  {
    table_metadata_cache_usage = member "tableMetadataCacheUsage" json |> to_option (convert_each table_metadata_cache_usage_of_yojson);
  }

and yojson_of_metadata_cache_statistics (value : metadata_cache_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("tableMetadataCacheUsage", (fun items -> `List (List.map yojson_of_table_metadata_cache_usage items)) field)) value.table_metadata_cache_usage;
       ])

and ml_statistics_of_yojson json : ml_statistics =
  let open Yojson.Safe.Util in
  {
    hparam_trials = member "hparamTrials" json |> to_option (convert_each hparam_tuning_trial_of_yojson);
    iteration_results = member "iterationResults" json |> to_option (convert_each iteration_result_of_yojson);
    max_iterations = member "maxIterations" json |> to_option to_string;
    model_type = member "modelType" json |> to_option (fun json -> match to_string json with "MODEL_TYPE_UNSPECIFIED" -> `Model_type_unspecified | "LINEAR_REGRESSION" -> `Linear_regression | "LOGISTIC_REGRESSION" -> `Logistic_regression | "KMEANS" -> `Kmeans | "MATRIX_FACTORIZATION" -> `Matrix_factorization | "DNN_CLASSIFIER" -> `Dnn_classifier | "TENSORFLOW" -> `Tensorflow | "DNN_REGRESSOR" -> `Dnn_regressor | "XGBOOST" -> `Xgboost | "BOOSTED_TREE_REGRESSOR" -> `Boosted_tree_regressor | "BOOSTED_TREE_CLASSIFIER" -> `Boosted_tree_classifier | "ARIMA" -> `Arima | "AUTOML_REGRESSOR" -> `Automl_regressor | "AUTOML_CLASSIFIER" -> `Automl_classifier | "PCA" -> `Pca | "DNN_LINEAR_COMBINED_CLASSIFIER" -> `Dnn_linear_combined_classifier | "DNN_LINEAR_COMBINED_REGRESSOR" -> `Dnn_linear_combined_regressor | "AUTOENCODER" -> `Autoencoder | "ARIMA_PLUS" -> `Arima_plus | "ARIMA_PLUS_XREG" -> `Arima_plus_xreg | "RANDOM_FOREST_REGRESSOR" -> `Random_forest_regressor | "RANDOM_FOREST_CLASSIFIER" -> `Random_forest_classifier | "TENSORFLOW_LITE" -> `Tensorflow_lite | "ONNX" -> `Onnx | "TRANSFORM_ONLY" -> `Transform_only | "CONTRIBUTION_ANALYSIS" -> `Contribution_analysis | value -> `Unrecognized value);
    training_type = member "trainingType" json |> to_option (fun json -> match to_string json with "TRAINING_TYPE_UNSPECIFIED" -> `Training_type_unspecified | "SINGLE_TRAINING" -> `Single_training | "HPARAM_TUNING" -> `Hparam_tuning | value -> `Unrecognized value);
  }

and yojson_of_ml_statistics (value : ml_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("hparamTrials", (fun items -> `List (List.map yojson_of_hparam_tuning_trial items)) field)) value.hparam_trials;
         Option.map (fun field -> ("iterationResults", (fun items -> `List (List.map yojson_of_iteration_result items)) field)) value.iteration_results;
         Option.map (fun field -> ("maxIterations", (fun value -> `String value) field)) value.max_iterations;
         Option.map (fun field -> ("modelType", (fun value -> `String ((function `Model_type_unspecified -> "MODEL_TYPE_UNSPECIFIED" | `Linear_regression -> "LINEAR_REGRESSION" | `Logistic_regression -> "LOGISTIC_REGRESSION" | `Kmeans -> "KMEANS" | `Matrix_factorization -> "MATRIX_FACTORIZATION" | `Dnn_classifier -> "DNN_CLASSIFIER" | `Tensorflow -> "TENSORFLOW" | `Dnn_regressor -> "DNN_REGRESSOR" | `Xgboost -> "XGBOOST" | `Boosted_tree_regressor -> "BOOSTED_TREE_REGRESSOR" | `Boosted_tree_classifier -> "BOOSTED_TREE_CLASSIFIER" | `Arima -> "ARIMA" | `Automl_regressor -> "AUTOML_REGRESSOR" | `Automl_classifier -> "AUTOML_CLASSIFIER" | `Pca -> "PCA" | `Dnn_linear_combined_classifier -> "DNN_LINEAR_COMBINED_CLASSIFIER" | `Dnn_linear_combined_regressor -> "DNN_LINEAR_COMBINED_REGRESSOR" | `Autoencoder -> "AUTOENCODER" | `Arima_plus -> "ARIMA_PLUS" | `Arima_plus_xreg -> "ARIMA_PLUS_XREG" | `Random_forest_regressor -> "RANDOM_FOREST_REGRESSOR" | `Random_forest_classifier -> "RANDOM_FOREST_CLASSIFIER" | `Tensorflow_lite -> "TENSORFLOW_LITE" | `Onnx -> "ONNX" | `Transform_only -> "TRANSFORM_ONLY" | `Contribution_analysis -> "CONTRIBUTION_ANALYSIS" | `Unrecognized value -> value) value)) field)) value.model_type;
         Option.map (fun field -> ("trainingType", (fun value -> `String ((function `Training_type_unspecified -> "TRAINING_TYPE_UNSPECIFIED" | `Single_training -> "SINGLE_TRAINING" | `Hparam_tuning -> "HPARAM_TUNING" | `Unrecognized value -> value) value)) field)) value.training_type;
       ])

and model_of_yojson json : model =
  let open Yojson.Safe.Util in
  {
    best_trial_id = member "bestTrialId" json |> to_option to_string;
    creation_time = member "creationTime" json |> to_option to_string;
    default_trial_id = member "defaultTrialId" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    encryption_configuration = member "encryptionConfiguration" json |> to_option encryption_configuration_of_yojson;
    etag = member "etag" json |> to_option to_string;
    expiration_time = member "expirationTime" json |> to_option to_string;
    feature_columns = member "featureColumns" json |> to_option (convert_each standard_sql_field_of_yojson);
    friendly_name = member "friendlyName" json |> to_option to_string;
    hparam_search_spaces = member "hparamSearchSpaces" json |> to_option hparam_search_spaces_of_yojson;
    hparam_trials = member "hparamTrials" json |> to_option (convert_each hparam_tuning_trial_of_yojson);
    label_columns = member "labelColumns" json |> to_option (convert_each standard_sql_field_of_yojson);
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    last_modified_time = member "lastModifiedTime" json |> to_option to_string;
    location = member "location" json |> to_option to_string;
    model_reference = member "modelReference" json |> to_option model_reference_of_yojson;
    model_type = member "modelType" json |> to_option (fun json -> match to_string json with "MODEL_TYPE_UNSPECIFIED" -> `Model_type_unspecified | "LINEAR_REGRESSION" -> `Linear_regression | "LOGISTIC_REGRESSION" -> `Logistic_regression | "KMEANS" -> `Kmeans | "MATRIX_FACTORIZATION" -> `Matrix_factorization | "DNN_CLASSIFIER" -> `Dnn_classifier | "TENSORFLOW" -> `Tensorflow | "DNN_REGRESSOR" -> `Dnn_regressor | "XGBOOST" -> `Xgboost | "BOOSTED_TREE_REGRESSOR" -> `Boosted_tree_regressor | "BOOSTED_TREE_CLASSIFIER" -> `Boosted_tree_classifier | "ARIMA" -> `Arima | "AUTOML_REGRESSOR" -> `Automl_regressor | "AUTOML_CLASSIFIER" -> `Automl_classifier | "PCA" -> `Pca | "DNN_LINEAR_COMBINED_CLASSIFIER" -> `Dnn_linear_combined_classifier | "DNN_LINEAR_COMBINED_REGRESSOR" -> `Dnn_linear_combined_regressor | "AUTOENCODER" -> `Autoencoder | "ARIMA_PLUS" -> `Arima_plus | "ARIMA_PLUS_XREG" -> `Arima_plus_xreg | "RANDOM_FOREST_REGRESSOR" -> `Random_forest_regressor | "RANDOM_FOREST_CLASSIFIER" -> `Random_forest_classifier | "TENSORFLOW_LITE" -> `Tensorflow_lite | "ONNX" -> `Onnx | "TRANSFORM_ONLY" -> `Transform_only | "CONTRIBUTION_ANALYSIS" -> `Contribution_analysis | value -> `Unrecognized value);
    optimal_trial_ids = member "optimalTrialIds" json |> to_option (convert_each to_string);
    remote_model_info = member "remoteModelInfo" json |> to_option remote_model_info_of_yojson;
    training_runs = member "trainingRuns" json |> to_option (convert_each training_run_of_yojson);
    transform_columns = member "transformColumns" json |> to_option (convert_each transform_column_of_yojson);
  }

and yojson_of_model (value : model) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bestTrialId", (fun value -> `String value) field)) value.best_trial_id;
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("defaultTrialId", (fun value -> `String value) field)) value.default_trial_id;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("encryptionConfiguration", yojson_of_encryption_configuration field)) value.encryption_configuration;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("expirationTime", (fun value -> `String value) field)) value.expiration_time;
         Option.map (fun field -> ("featureColumns", (fun items -> `List (List.map yojson_of_standard_sql_field items)) field)) value.feature_columns;
         Option.map (fun field -> ("friendlyName", (fun value -> `String value) field)) value.friendly_name;
         Option.map (fun field -> ("hparamSearchSpaces", yojson_of_hparam_search_spaces field)) value.hparam_search_spaces;
         Option.map (fun field -> ("hparamTrials", (fun items -> `List (List.map yojson_of_hparam_tuning_trial items)) field)) value.hparam_trials;
         Option.map (fun field -> ("labelColumns", (fun items -> `List (List.map yojson_of_standard_sql_field items)) field)) value.label_columns;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("lastModifiedTime", (fun value -> `String value) field)) value.last_modified_time;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("modelReference", yojson_of_model_reference field)) value.model_reference;
         Option.map (fun field -> ("modelType", (fun value -> `String ((function `Model_type_unspecified -> "MODEL_TYPE_UNSPECIFIED" | `Linear_regression -> "LINEAR_REGRESSION" | `Logistic_regression -> "LOGISTIC_REGRESSION" | `Kmeans -> "KMEANS" | `Matrix_factorization -> "MATRIX_FACTORIZATION" | `Dnn_classifier -> "DNN_CLASSIFIER" | `Tensorflow -> "TENSORFLOW" | `Dnn_regressor -> "DNN_REGRESSOR" | `Xgboost -> "XGBOOST" | `Boosted_tree_regressor -> "BOOSTED_TREE_REGRESSOR" | `Boosted_tree_classifier -> "BOOSTED_TREE_CLASSIFIER" | `Arima -> "ARIMA" | `Automl_regressor -> "AUTOML_REGRESSOR" | `Automl_classifier -> "AUTOML_CLASSIFIER" | `Pca -> "PCA" | `Dnn_linear_combined_classifier -> "DNN_LINEAR_COMBINED_CLASSIFIER" | `Dnn_linear_combined_regressor -> "DNN_LINEAR_COMBINED_REGRESSOR" | `Autoencoder -> "AUTOENCODER" | `Arima_plus -> "ARIMA_PLUS" | `Arima_plus_xreg -> "ARIMA_PLUS_XREG" | `Random_forest_regressor -> "RANDOM_FOREST_REGRESSOR" | `Random_forest_classifier -> "RANDOM_FOREST_CLASSIFIER" | `Tensorflow_lite -> "TENSORFLOW_LITE" | `Onnx -> "ONNX" | `Transform_only -> "TRANSFORM_ONLY" | `Contribution_analysis -> "CONTRIBUTION_ANALYSIS" | `Unrecognized value -> value) value)) field)) value.model_type;
         Option.map (fun field -> ("optimalTrialIds", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.optimal_trial_ids;
         Option.map (fun field -> ("remoteModelInfo", yojson_of_remote_model_info field)) value.remote_model_info;
         Option.map (fun field -> ("trainingRuns", (fun items -> `List (List.map yojson_of_training_run items)) field)) value.training_runs;
         Option.map (fun field -> ("transformColumns", (fun items -> `List (List.map yojson_of_transform_column items)) field)) value.transform_columns;
       ])

and model_definition_model_options_of_yojson json : model_definition_model_options =
  let open Yojson.Safe.Util in
  {
    labels = member "labels" json |> to_option (convert_each to_string);
    loss_type = member "lossType" json |> to_option to_string;
    model_type = member "modelType" json |> to_option to_string;
  }

and yojson_of_model_definition_model_options (value : model_definition_model_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("labels", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.labels;
         Option.map (fun field -> ("lossType", (fun value -> `String value) field)) value.loss_type;
         Option.map (fun field -> ("modelType", (fun value -> `String value) field)) value.model_type;
       ])

and model_definition_of_yojson json : model_definition =
  let open Yojson.Safe.Util in
  {
    model_options = member "modelOptions" json |> to_option model_definition_model_options_of_yojson;
    training_runs = member "trainingRuns" json |> to_option (convert_each bqml_training_run_of_yojson);
  }

and yojson_of_model_definition (value : model_definition) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("modelOptions", yojson_of_model_definition_model_options field)) value.model_options;
         Option.map (fun field -> ("trainingRuns", (fun items -> `List (List.map yojson_of_bqml_training_run items)) field)) value.training_runs;
       ])

and model_extract_options_of_yojson json : model_extract_options =
  let open Yojson.Safe.Util in
  {
    trial_id = member "trialId" json |> to_option to_string;
  }

and yojson_of_model_extract_options (value : model_extract_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("trialId", (fun value -> `String value) field)) value.trial_id;
       ])

and model_reference_of_yojson json : model_reference =
  let open Yojson.Safe.Util in
  {
    dataset_id = member "datasetId" json |> to_option to_string;
    model_id = member "modelId" json |> to_option to_string;
    project_id = member "projectId" json |> to_option to_string;
  }

and yojson_of_model_reference (value : model_reference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("datasetId", (fun value -> `String value) field)) value.dataset_id;
         Option.map (fun field -> ("modelId", (fun value -> `String value) field)) value.model_id;
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
       ])

and multi_class_classification_metrics_of_yojson json : multi_class_classification_metrics =
  let open Yojson.Safe.Util in
  {
    aggregate_classification_metrics = member "aggregateClassificationMetrics" json |> to_option aggregate_classification_metrics_of_yojson;
    confusion_matrix_list = member "confusionMatrixList" json |> to_option (convert_each confusion_matrix_of_yojson);
  }

and yojson_of_multi_class_classification_metrics (value : multi_class_classification_metrics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("aggregateClassificationMetrics", yojson_of_aggregate_classification_metrics field)) value.aggregate_classification_metrics;
         Option.map (fun field -> ("confusionMatrixList", (fun items -> `List (List.map yojson_of_confusion_matrix items)) field)) value.confusion_matrix_list;
       ])

and object_storage_stats_of_yojson json : object_storage_stats =
  let open Yojson.Safe.Util in
  {
    cache_bytes_read = member "cacheBytesRead" json |> to_option to_string;
    cloud_provider = member "cloudProvider" json |> to_option (fun json -> match to_string json with "CLOUD_PROVIDER_UNSPECIFIED" -> `Cloud_provider_unspecified | "GCP" -> `Gcp | "AWS" -> `Aws | "AZURE" -> `Azure | value -> `Unrecognized value);
    object_storage_bytes_read = member "objectStorageBytesRead" json |> to_option to_string;
  }

and yojson_of_object_storage_stats (value : object_storage_stats) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cacheBytesRead", (fun value -> `String value) field)) value.cache_bytes_read;
         Option.map (fun field -> ("cloudProvider", (fun value -> `String ((function `Cloud_provider_unspecified -> "CLOUD_PROVIDER_UNSPECIFIED" | `Gcp -> "GCP" | `Aws -> "AWS" | `Azure -> "AZURE" | `Unrecognized value -> value) value)) field)) value.cloud_provider;
         Option.map (fun field -> ("objectStorageBytesRead", (fun value -> `String value) field)) value.object_storage_bytes_read;
       ])

and parquet_options_of_yojson json : parquet_options =
  let open Yojson.Safe.Util in
  {
    enable_list_inference = member "enableListInference" json |> to_option to_bool;
    enum_as_string = member "enumAsString" json |> to_option to_bool;
    map_target_type = member "mapTargetType" json |> to_option (fun json -> match to_string json with "MAP_TARGET_TYPE_UNSPECIFIED" -> `Map_target_type_unspecified | "ARRAY_OF_STRUCT" -> `Array_of_struct | value -> `Unrecognized value);
  }

and yojson_of_parquet_options (value : parquet_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("enableListInference", (fun value -> `Bool value) field)) value.enable_list_inference;
         Option.map (fun field -> ("enumAsString", (fun value -> `Bool value) field)) value.enum_as_string;
         Option.map (fun field -> ("mapTargetType", (fun value -> `String ((function `Map_target_type_unspecified -> "MAP_TARGET_TYPE_UNSPECIFIED" | `Array_of_struct -> "ARRAY_OF_STRUCT" | `Unrecognized value -> value) value)) field)) value.map_target_type;
       ])

and partition_skew_of_yojson json : partition_skew =
  let open Yojson.Safe.Util in
  {
    skew_sources = member "skewSources" json |> to_option (convert_each skew_source_of_yojson);
  }

and yojson_of_partition_skew (value : partition_skew) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("skewSources", (fun items -> `List (List.map yojson_of_skew_source items)) field)) value.skew_sources;
       ])

and partitioned_column_of_yojson json : partitioned_column =
  let open Yojson.Safe.Util in
  {
    field = member "field" json |> to_option to_string;
  }

and yojson_of_partitioned_column (value : partitioned_column) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("field", (fun value -> `String value) field)) value.field;
       ])

and partitioning_definition_of_yojson json : partitioning_definition =
  let open Yojson.Safe.Util in
  {
    partitioned_column = member "partitionedColumn" json |> to_option (convert_each partitioned_column_of_yojson);
  }

and yojson_of_partitioning_definition (value : partitioning_definition) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("partitionedColumn", (fun items -> `List (List.map yojson_of_partitioned_column items)) field)) value.partitioned_column;
       ])

and performance_insights_of_yojson json : performance_insights =
  let open Yojson.Safe.Util in
  {
    avg_previous_execution_ms = member "avgPreviousExecutionMs" json |> to_option to_string;
    stage_performance_change_insights = member "stagePerformanceChangeInsights" json |> to_option (convert_each stage_performance_change_insight_of_yojson);
    stage_performance_standalone_insights = member "stagePerformanceStandaloneInsights" json |> to_option (convert_each stage_performance_standalone_insight_of_yojson);
    table_change_insights = member "tableChangeInsights" json |> to_option (convert_each table_change_insight_of_yojson);
  }

and yojson_of_performance_insights (value : performance_insights) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("avgPreviousExecutionMs", (fun value -> `String value) field)) value.avg_previous_execution_ms;
         Option.map (fun field -> ("stagePerformanceChangeInsights", (fun items -> `List (List.map yojson_of_stage_performance_change_insight items)) field)) value.stage_performance_change_insights;
         Option.map (fun field -> ("stagePerformanceStandaloneInsights", (fun items -> `List (List.map yojson_of_stage_performance_standalone_insight items)) field)) value.stage_performance_standalone_insights;
         Option.map (fun field -> ("tableChangeInsights", (fun items -> `List (List.map yojson_of_table_change_insight items)) field)) value.table_change_insights;
       ])

and policy_of_yojson json : policy =
  let open Yojson.Safe.Util in
  {
    audit_configs = member "auditConfigs" json |> to_option (convert_each audit_config_of_yojson);
    bindings = member "bindings" json |> to_option (convert_each binding_of_yojson);
    etag = member "etag" json |> to_option to_string;
    version = member "version" json |> to_option to_int;
  }

and yojson_of_policy (value : policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("auditConfigs", (fun items -> `List (List.map yojson_of_audit_config items)) field)) value.audit_configs;
         Option.map (fun field -> ("bindings", (fun items -> `List (List.map yojson_of_binding items)) field)) value.bindings;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("version", (fun value -> `Int value) field)) value.version;
       ])

and principal_component_info_of_yojson json : principal_component_info =
  let open Yojson.Safe.Util in
  {
    cumulative_explained_variance_ratio = member "cumulativeExplainedVarianceRatio" json |> to_option to_number;
    explained_variance = member "explainedVariance" json |> to_option to_number;
    explained_variance_ratio = member "explainedVarianceRatio" json |> to_option to_number;
    principal_component_id = member "principalComponentId" json |> to_option to_string;
  }

and yojson_of_principal_component_info (value : principal_component_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cumulativeExplainedVarianceRatio", (fun value -> `Float value) field)) value.cumulative_explained_variance_ratio;
         Option.map (fun field -> ("explainedVariance", (fun value -> `Float value) field)) value.explained_variance;
         Option.map (fun field -> ("explainedVarianceRatio", (fun value -> `Float value) field)) value.explained_variance_ratio;
         Option.map (fun field -> ("principalComponentId", (fun value -> `String value) field)) value.principal_component_id;
       ])

and privacy_policy_of_yojson json : privacy_policy =
  let open Yojson.Safe.Util in
  {
    aggregation_threshold_policy = member "aggregationThresholdPolicy" json |> to_option aggregation_threshold_policy_of_yojson;
    differential_privacy_policy = member "differentialPrivacyPolicy" json |> to_option differential_privacy_policy_of_yojson;
    join_restriction_policy = member "joinRestrictionPolicy" json |> to_option join_restriction_policy_of_yojson;
  }

and yojson_of_privacy_policy (value : privacy_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("aggregationThresholdPolicy", yojson_of_aggregation_threshold_policy field)) value.aggregation_threshold_policy;
         Option.map (fun field -> ("differentialPrivacyPolicy", yojson_of_differential_privacy_policy field)) value.differential_privacy_policy;
         Option.map (fun field -> ("joinRestrictionPolicy", yojson_of_join_restriction_policy field)) value.join_restriction_policy;
       ])

and project_list_projects_item_of_yojson json : project_list_projects_item =
  let open Yojson.Safe.Util in
  {
    friendly_name = member "friendlyName" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    numeric_id = member "numericId" json |> to_option to_string;
    project_reference = member "projectReference" json |> to_option project_reference_of_yojson;
  }

and yojson_of_project_list_projects_item (value : project_list_projects_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("friendlyName", (fun value -> `String value) field)) value.friendly_name;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("numericId", (fun value -> `String value) field)) value.numeric_id;
         Option.map (fun field -> ("projectReference", yojson_of_project_reference field)) value.project_reference;
       ])

and project_list_of_yojson json : project_list =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    projects = member "projects" json |> to_option (convert_each project_list_projects_item_of_yojson);
    total_items = member "totalItems" json |> to_option to_int;
  }

and yojson_of_project_list (value : project_list) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("projects", (fun items -> `List (List.map yojson_of_project_list_projects_item items)) field)) value.projects;
         Option.map (fun field -> ("totalItems", (fun value -> `Int value) field)) value.total_items;
       ])

and project_reference_of_yojson json : project_reference =
  let open Yojson.Safe.Util in
  {
    project_id = member "projectId" json |> to_option to_string;
  }

and yojson_of_project_reference (value : project_reference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
       ])

and property_graph_reference_of_yojson json : property_graph_reference =
  let open Yojson.Safe.Util in
  {
    dataset_id = member "datasetId" json |> to_option to_string;
    project_id = member "projectId" json |> to_option to_string;
    property_graph_id = member "propertyGraphId" json |> to_option to_string;
  }

and yojson_of_property_graph_reference (value : property_graph_reference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("datasetId", (fun value -> `String value) field)) value.dataset_id;
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
         Option.map (fun field -> ("propertyGraphId", (fun value -> `String value) field)) value.property_graph_id;
       ])

and pruning_stats_of_yojson json : pruning_stats =
  let open Yojson.Safe.Util in
  {
    post_cmeta_pruning_parallel_input_count = member "postCmetaPruningParallelInputCount" json |> to_option to_string;
    post_cmeta_pruning_partition_count = member "postCmetaPruningPartitionCount" json |> to_option to_string;
    pre_cmeta_pruning_parallel_input_count = member "preCmetaPruningParallelInputCount" json |> to_option to_string;
  }

and yojson_of_pruning_stats (value : pruning_stats) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("postCmetaPruningParallelInputCount", (fun value -> `String value) field)) value.post_cmeta_pruning_parallel_input_count;
         Option.map (fun field -> ("postCmetaPruningPartitionCount", (fun value -> `String value) field)) value.post_cmeta_pruning_partition_count;
         Option.map (fun field -> ("preCmetaPruningParallelInputCount", (fun value -> `String value) field)) value.pre_cmeta_pruning_parallel_input_count;
       ])

and python_options_of_yojson json : python_options =
  let open Yojson.Safe.Util in
  {
    entry_point = member "entryPoint" json |> to_option to_string;
    packages = member "packages" json |> to_option (convert_each to_string);
  }

and yojson_of_python_options (value : python_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("entryPoint", (fun value -> `String value) field)) value.entry_point;
         Option.map (fun field -> ("packages", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.packages;
       ])

and query_info_of_yojson json : query_info =
  let open Yojson.Safe.Util in
  {
    optimization_details = member "optimizationDetails" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
  }

and yojson_of_query_info (value : query_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("optimizationDetails", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.optimization_details;
       ])

and query_parameter_of_yojson json : query_parameter =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    parameter_type = member "parameterType" json |> to_option query_parameter_type_of_yojson;
    parameter_value = member "parameterValue" json |> to_option query_parameter_value_of_yojson;
  }

and yojson_of_query_parameter (value : query_parameter) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("parameterType", yojson_of_query_parameter_type field)) value.parameter_type;
         Option.map (fun field -> ("parameterValue", yojson_of_query_parameter_value field)) value.parameter_value;
       ])

and query_parameter_type_struct_types_item_of_yojson json : query_parameter_type_struct_types_item =
  let open Yojson.Safe.Util in
  {
    description = member "description" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    type_ = member "type" json |> to_option query_parameter_type_of_yojson;
  }

and yojson_of_query_parameter_type_struct_types_item (value : query_parameter_type_struct_types_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("type", yojson_of_query_parameter_type field)) value.type_;
       ])

and query_parameter_type_of_yojson json : query_parameter_type =
  let open Yojson.Safe.Util in
  {
    array_type = member "arrayType" json |> to_option query_parameter_type_of_yojson;
    range_element_type = member "rangeElementType" json |> to_option query_parameter_type_of_yojson;
    struct_types = member "structTypes" json |> to_option (convert_each query_parameter_type_struct_types_item_of_yojson);
    timestamp_precision = member "timestampPrecision" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_query_parameter_type (value : query_parameter_type) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arrayType", yojson_of_query_parameter_type field)) value.array_type;
         Option.map (fun field -> ("rangeElementType", yojson_of_query_parameter_type field)) value.range_element_type;
         Option.map (fun field -> ("structTypes", (fun items -> `List (List.map yojson_of_query_parameter_type_struct_types_item items)) field)) value.struct_types;
         Option.map (fun field -> ("timestampPrecision", (fun value -> `String value) field)) value.timestamp_precision;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and query_parameter_value_of_yojson json : query_parameter_value =
  let open Yojson.Safe.Util in
  {
    array_values = member "arrayValues" json |> to_option (convert_each query_parameter_value_of_yojson);
    range_value = member "rangeValue" json |> to_option range_value_of_yojson;
    struct_values = member "structValues" json |> to_option (fun json -> List.map (fun (key, value) -> (key, query_parameter_value_of_yojson value)) (to_assoc json));
    value = member "value" json |> to_option to_string;
  }

and yojson_of_query_parameter_value (value : query_parameter_value) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arrayValues", (fun items -> `List (List.map yojson_of_query_parameter_value items)) field)) value.array_values;
         Option.map (fun field -> ("rangeValue", yojson_of_range_value field)) value.range_value;
         Option.map (fun field -> ("structValues", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_query_parameter_value value)) members)) field)) value.struct_values;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and query_request_of_yojson json : query_request =
  let open Yojson.Safe.Util in
  {
    arrow_serialization_options = member "arrowSerializationOptions" json |> to_option arrow_serialization_options_of_yojson;
    connection_properties = member "connectionProperties" json |> to_option (convert_each connection_property_of_yojson);
    continuous = member "continuous" json |> to_option to_bool;
    create_session = member "createSession" json |> to_option to_bool;
    default_dataset = member "defaultDataset" json |> to_option dataset_reference_of_yojson;
    destination_encryption_configuration = member "destinationEncryptionConfiguration" json |> to_option encryption_configuration_of_yojson;
    dry_run = member "dryRun" json |> to_option to_bool;
    format_options = member "formatOptions" json |> to_option data_format_options_of_yojson;
    job_creation_mode = member "jobCreationMode" json |> to_option (fun json -> match to_string json with "JOB_CREATION_MODE_UNSPECIFIED" -> `Job_creation_mode_unspecified | "JOB_CREATION_REQUIRED" -> `Job_creation_required | "JOB_CREATION_OPTIONAL" -> `Job_creation_optional | value -> `Unrecognized value);
    job_timeout_ms = member "jobTimeoutMs" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    location = member "location" json |> to_option to_string;
    max_results = member "maxResults" json |> to_option to_int;
    max_slots = member "maxSlots" json |> to_option to_int;
    maximum_bytes_billed = member "maximumBytesBilled" json |> to_option to_string;
    parameter_mode = member "parameterMode" json |> to_option to_string;
    preserve_nulls = member "preserveNulls" json |> to_option to_bool;
    query = member "query" json |> to_option to_string;
    query_parameters = member "queryParameters" json |> to_option (convert_each query_parameter_of_yojson);
    query_results_format = member "queryResultsFormat" json |> to_option (fun json -> match to_string json with "QUERY_RESULTS_FORMAT_UNSPECIFIED" -> `Query_results_format_unspecified | "STRUCT_ENCODING" -> `Struct_encoding | "ARROW" -> `Arrow | value -> `Unrecognized value);
    request_id = member "requestId" json |> to_option to_string;
    reservation = member "reservation" json |> to_option to_string;
    secure_context = member "secureContext" json |> to_option secure_context_of_yojson;
    timeout_ms = member "timeoutMs" json |> to_option to_int;
    use_legacy_sql = member "useLegacySql" json |> to_option to_bool;
    use_query_cache = member "useQueryCache" json |> to_option to_bool;
    write_incremental_results = member "writeIncrementalResults" json |> to_option to_bool;
  }

and yojson_of_query_request (value : query_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arrowSerializationOptions", yojson_of_arrow_serialization_options field)) value.arrow_serialization_options;
         Option.map (fun field -> ("connectionProperties", (fun items -> `List (List.map yojson_of_connection_property items)) field)) value.connection_properties;
         Option.map (fun field -> ("continuous", (fun value -> `Bool value) field)) value.continuous;
         Option.map (fun field -> ("createSession", (fun value -> `Bool value) field)) value.create_session;
         Option.map (fun field -> ("defaultDataset", yojson_of_dataset_reference field)) value.default_dataset;
         Option.map (fun field -> ("destinationEncryptionConfiguration", yojson_of_encryption_configuration field)) value.destination_encryption_configuration;
         Option.map (fun field -> ("dryRun", (fun value -> `Bool value) field)) value.dry_run;
         Option.map (fun field -> ("formatOptions", yojson_of_data_format_options field)) value.format_options;
         Option.map (fun field -> ("jobCreationMode", (fun value -> `String ((function `Job_creation_mode_unspecified -> "JOB_CREATION_MODE_UNSPECIFIED" | `Job_creation_required -> "JOB_CREATION_REQUIRED" | `Job_creation_optional -> "JOB_CREATION_OPTIONAL" | `Unrecognized value -> value) value)) field)) value.job_creation_mode;
         Option.map (fun field -> ("jobTimeoutMs", (fun value -> `String value) field)) value.job_timeout_ms;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("maxResults", (fun value -> `Int value) field)) value.max_results;
         Option.map (fun field -> ("maxSlots", (fun value -> `Int value) field)) value.max_slots;
         Option.map (fun field -> ("maximumBytesBilled", (fun value -> `String value) field)) value.maximum_bytes_billed;
         Option.map (fun field -> ("parameterMode", (fun value -> `String value) field)) value.parameter_mode;
         Option.map (fun field -> ("preserveNulls", (fun value -> `Bool value) field)) value.preserve_nulls;
         Option.map (fun field -> ("query", (fun value -> `String value) field)) value.query;
         Option.map (fun field -> ("queryParameters", (fun items -> `List (List.map yojson_of_query_parameter items)) field)) value.query_parameters;
         Option.map (fun field -> ("queryResultsFormat", (fun value -> `String ((function `Query_results_format_unspecified -> "QUERY_RESULTS_FORMAT_UNSPECIFIED" | `Struct_encoding -> "STRUCT_ENCODING" | `Arrow -> "ARROW" | `Unrecognized value -> value) value)) field)) value.query_results_format;
         Option.map (fun field -> ("requestId", (fun value -> `String value) field)) value.request_id;
         Option.map (fun field -> ("reservation", (fun value -> `String value) field)) value.reservation;
         Option.map (fun field -> ("secureContext", yojson_of_secure_context field)) value.secure_context;
         Option.map (fun field -> ("timeoutMs", (fun value -> `Int value) field)) value.timeout_ms;
         Option.map (fun field -> ("useLegacySql", (fun value -> `Bool value) field)) value.use_legacy_sql;
         Option.map (fun field -> ("useQueryCache", (fun value -> `Bool value) field)) value.use_query_cache;
         Option.map (fun field -> ("writeIncrementalResults", (fun value -> `Bool value) field)) value.write_incremental_results;
       ])

and query_response_of_yojson json : query_response =
  let open Yojson.Safe.Util in
  {
    arrow_record_batch = member "arrowRecordBatch" json |> to_option arrow_record_batch_of_yojson;
    arrow_schema = member "arrowSchema" json |> to_option arrow_schema_of_yojson;
    cache_hit = member "cacheHit" json |> to_option to_bool;
    creation_time = member "creationTime" json |> to_option to_string;
    dml_stats = member "dmlStats" json |> to_option dml_statistics_of_yojson;
    end_time = member "endTime" json |> to_option to_string;
    errors = member "errors" json |> to_option (convert_each error_proto_of_yojson);
    job_complete = member "jobComplete" json |> to_option to_bool;
    job_creation_reason = member "jobCreationReason" json |> to_option job_creation_reason_of_yojson;
    job_reference = member "jobReference" json |> to_option job_reference_of_yojson;
    kind = member "kind" json |> to_option to_string;
    location = member "location" json |> to_option to_string;
    num_dml_affected_rows = member "numDmlAffectedRows" json |> to_option to_string;
    page_row_count = member "pageRowCount" json |> to_option to_string;
    page_token = member "pageToken" json |> to_option to_string;
    query_id = member "queryId" json |> to_option to_string;
    rows = member "rows" json |> to_option (convert_each table_row_of_yojson);
    schema = member "schema" json |> to_option table_schema_of_yojson;
    session_info = member "sessionInfo" json |> to_option session_info_of_yojson;
    start_time = member "startTime" json |> to_option to_string;
    statement_type = member "statementType" json |> to_option to_string;
    total_bytes_billed = member "totalBytesBilled" json |> to_option to_string;
    total_bytes_processed = member "totalBytesProcessed" json |> to_option to_string;
    total_rows = member "totalRows" json |> to_option to_string;
    total_slot_ms = member "totalSlotMs" json |> to_option to_string;
  }

and yojson_of_query_response (value : query_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arrowRecordBatch", yojson_of_arrow_record_batch field)) value.arrow_record_batch;
         Option.map (fun field -> ("arrowSchema", yojson_of_arrow_schema field)) value.arrow_schema;
         Option.map (fun field -> ("cacheHit", (fun value -> `Bool value) field)) value.cache_hit;
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("dmlStats", yojson_of_dml_statistics field)) value.dml_stats;
         Option.map (fun field -> ("endTime", (fun value -> `String value) field)) value.end_time;
         Option.map (fun field -> ("errors", (fun items -> `List (List.map yojson_of_error_proto items)) field)) value.errors;
         Option.map (fun field -> ("jobComplete", (fun value -> `Bool value) field)) value.job_complete;
         Option.map (fun field -> ("jobCreationReason", yojson_of_job_creation_reason field)) value.job_creation_reason;
         Option.map (fun field -> ("jobReference", yojson_of_job_reference field)) value.job_reference;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("numDmlAffectedRows", (fun value -> `String value) field)) value.num_dml_affected_rows;
         Option.map (fun field -> ("pageRowCount", (fun value -> `String value) field)) value.page_row_count;
         Option.map (fun field -> ("pageToken", (fun value -> `String value) field)) value.page_token;
         Option.map (fun field -> ("queryId", (fun value -> `String value) field)) value.query_id;
         Option.map (fun field -> ("rows", (fun items -> `List (List.map yojson_of_table_row items)) field)) value.rows;
         Option.map (fun field -> ("schema", yojson_of_table_schema field)) value.schema;
         Option.map (fun field -> ("sessionInfo", yojson_of_session_info field)) value.session_info;
         Option.map (fun field -> ("startTime", (fun value -> `String value) field)) value.start_time;
         Option.map (fun field -> ("statementType", (fun value -> `String value) field)) value.statement_type;
         Option.map (fun field -> ("totalBytesBilled", (fun value -> `String value) field)) value.total_bytes_billed;
         Option.map (fun field -> ("totalBytesProcessed", (fun value -> `String value) field)) value.total_bytes_processed;
         Option.map (fun field -> ("totalRows", (fun value -> `String value) field)) value.total_rows;
         Option.map (fun field -> ("totalSlotMs", (fun value -> `String value) field)) value.total_slot_ms;
       ])

and query_timeline_sample_of_yojson json : query_timeline_sample =
  let open Yojson.Safe.Util in
  {
    active_units = member "activeUnits" json |> to_option to_string;
    completed_units = member "completedUnits" json |> to_option to_string;
    elapsed_ms = member "elapsedMs" json |> to_option to_string;
    estimated_runnable_units = member "estimatedRunnableUnits" json |> to_option to_string;
    pending_units = member "pendingUnits" json |> to_option to_string;
    shuffle_ram_usage_ratio = member "shuffleRamUsageRatio" json |> to_option to_number;
    total_slot_ms = member "totalSlotMs" json |> to_option to_string;
  }

and yojson_of_query_timeline_sample (value : query_timeline_sample) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("activeUnits", (fun value -> `String value) field)) value.active_units;
         Option.map (fun field -> ("completedUnits", (fun value -> `String value) field)) value.completed_units;
         Option.map (fun field -> ("elapsedMs", (fun value -> `String value) field)) value.elapsed_ms;
         Option.map (fun field -> ("estimatedRunnableUnits", (fun value -> `String value) field)) value.estimated_runnable_units;
         Option.map (fun field -> ("pendingUnits", (fun value -> `String value) field)) value.pending_units;
         Option.map (fun field -> ("shuffleRamUsageRatio", (fun value -> `Float value) field)) value.shuffle_ram_usage_ratio;
         Option.map (fun field -> ("totalSlotMs", (fun value -> `String value) field)) value.total_slot_ms;
       ])

and range_partitioning_range_of_yojson json : range_partitioning_range =
  let open Yojson.Safe.Util in
  {
    end_ = member "end" json |> to_option to_string;
    interval = member "interval" json |> to_option to_string;
    start = member "start" json |> to_option to_string;
  }

and yojson_of_range_partitioning_range (value : range_partitioning_range) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("end", (fun value -> `String value) field)) value.end_;
         Option.map (fun field -> ("interval", (fun value -> `String value) field)) value.interval;
         Option.map (fun field -> ("start", (fun value -> `String value) field)) value.start;
       ])

and range_partitioning_of_yojson json : range_partitioning =
  let open Yojson.Safe.Util in
  {
    field = member "field" json |> to_option to_string;
    range = member "range" json |> to_option range_partitioning_range_of_yojson;
  }

and yojson_of_range_partitioning (value : range_partitioning) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("field", (fun value -> `String value) field)) value.field;
         Option.map (fun field -> ("range", yojson_of_range_partitioning_range field)) value.range;
       ])

and range_value_of_yojson json : range_value =
  let open Yojson.Safe.Util in
  {
    end_ = member "end" json |> to_option query_parameter_value_of_yojson;
    start = member "start" json |> to_option query_parameter_value_of_yojson;
  }

and yojson_of_range_value (value : range_value) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("end", yojson_of_query_parameter_value field)) value.end_;
         Option.map (fun field -> ("start", yojson_of_query_parameter_value field)) value.start;
       ])

and ranking_metrics_of_yojson json : ranking_metrics =
  let open Yojson.Safe.Util in
  {
    average_rank = member "averageRank" json |> to_option to_number;
    mean_average_precision = member "meanAveragePrecision" json |> to_option to_number;
    mean_squared_error = member "meanSquaredError" json |> to_option to_number;
    normalized_discounted_cumulative_gain = member "normalizedDiscountedCumulativeGain" json |> to_option to_number;
  }

and yojson_of_ranking_metrics (value : ranking_metrics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("averageRank", (fun value -> `Float value) field)) value.average_rank;
         Option.map (fun field -> ("meanAveragePrecision", (fun value -> `Float value) field)) value.mean_average_precision;
         Option.map (fun field -> ("meanSquaredError", (fun value -> `Float value) field)) value.mean_squared_error;
         Option.map (fun field -> ("normalizedDiscountedCumulativeGain", (fun value -> `Float value) field)) value.normalized_discounted_cumulative_gain;
       ])

and regression_metrics_of_yojson json : regression_metrics =
  let open Yojson.Safe.Util in
  {
    mean_absolute_error = member "meanAbsoluteError" json |> to_option to_number;
    mean_squared_error = member "meanSquaredError" json |> to_option to_number;
    mean_squared_log_error = member "meanSquaredLogError" json |> to_option to_number;
    median_absolute_error = member "medianAbsoluteError" json |> to_option to_number;
    r_squared = member "rSquared" json |> to_option to_number;
  }

and yojson_of_regression_metrics (value : regression_metrics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("meanAbsoluteError", (fun value -> `Float value) field)) value.mean_absolute_error;
         Option.map (fun field -> ("meanSquaredError", (fun value -> `Float value) field)) value.mean_squared_error;
         Option.map (fun field -> ("meanSquaredLogError", (fun value -> `Float value) field)) value.mean_squared_log_error;
         Option.map (fun field -> ("medianAbsoluteError", (fun value -> `Float value) field)) value.median_absolute_error;
         Option.map (fun field -> ("rSquared", (fun value -> `Float value) field)) value.r_squared;
       ])

and remote_function_options_of_yojson json : remote_function_options =
  let open Yojson.Safe.Util in
  {
    connection = member "connection" json |> to_option to_string;
    endpoint = member "endpoint" json |> to_option to_string;
    max_batching_rows = member "maxBatchingRows" json |> to_option to_string;
    user_defined_context = member "userDefinedContext" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
  }

and yojson_of_remote_function_options (value : remote_function_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("connection", (fun value -> `String value) field)) value.connection;
         Option.map (fun field -> ("endpoint", (fun value -> `String value) field)) value.endpoint;
         Option.map (fun field -> ("maxBatchingRows", (fun value -> `String value) field)) value.max_batching_rows;
         Option.map (fun field -> ("userDefinedContext", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.user_defined_context;
       ])

and remote_model_info_of_yojson json : remote_model_info =
  let open Yojson.Safe.Util in
  {
    connection = member "connection" json |> to_option to_string;
    endpoint = member "endpoint" json |> to_option to_string;
    max_batching_rows = member "maxBatchingRows" json |> to_option to_string;
    remote_model_version = member "remoteModelVersion" json |> to_option to_string;
    remote_service_type = member "remoteServiceType" json |> to_option (fun json -> match to_string json with "REMOTE_SERVICE_TYPE_UNSPECIFIED" -> `Remote_service_type_unspecified | "CLOUD_AI_TRANSLATE_V3" -> `Cloud_ai_translate_v3 | "CLOUD_AI_VISION_V1" -> `Cloud_ai_vision_v1 | "CLOUD_AI_NATURAL_LANGUAGE_V1" -> `Cloud_ai_natural_language_v1 | "CLOUD_AI_SPEECH_TO_TEXT_V2" -> `Cloud_ai_speech_to_text_v2 | value -> `Unrecognized value);
    speech_recognizer = member "speechRecognizer" json |> to_option to_string;
  }

and yojson_of_remote_model_info (value : remote_model_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("connection", (fun value -> `String value) field)) value.connection;
         Option.map (fun field -> ("endpoint", (fun value -> `String value) field)) value.endpoint;
         Option.map (fun field -> ("maxBatchingRows", (fun value -> `String value) field)) value.max_batching_rows;
         Option.map (fun field -> ("remoteModelVersion", (fun value -> `String value) field)) value.remote_model_version;
         Option.map (fun field -> ("remoteServiceType", (fun value -> `String ((function `Remote_service_type_unspecified -> "REMOTE_SERVICE_TYPE_UNSPECIFIED" | `Cloud_ai_translate_v3 -> "CLOUD_AI_TRANSLATE_V3" | `Cloud_ai_vision_v1 -> "CLOUD_AI_VISION_V1" | `Cloud_ai_natural_language_v1 -> "CLOUD_AI_NATURAL_LANGUAGE_V1" | `Cloud_ai_speech_to_text_v2 -> "CLOUD_AI_SPEECH_TO_TEXT_V2" | `Unrecognized value -> value) value)) field)) value.remote_service_type;
         Option.map (fun field -> ("speechRecognizer", (fun value -> `String value) field)) value.speech_recognizer;
       ])

and restriction_config_of_yojson json : restriction_config =
  let open Yojson.Safe.Util in
  {
    type_ = member "type" json |> to_option (fun json -> match to_string json with "RESTRICTION_TYPE_UNSPECIFIED" -> `Restriction_type_unspecified | "RESTRICTED_DATA_EGRESS" -> `Restricted_data_egress | value -> `Unrecognized value);
  }

and yojson_of_restriction_config (value : restriction_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("type", (fun value -> `String ((function `Restriction_type_unspecified -> "RESTRICTION_TYPE_UNSPECIFIED" | `Restricted_data_egress -> "RESTRICTED_DATA_EGRESS" | `Unrecognized value -> value) value)) field)) value.type_;
       ])

and routine_of_yojson json : routine =
  let open Yojson.Safe.Util in
  {
    arguments = member "arguments" json |> to_option (convert_each argument_of_yojson);
    build_status = member "buildStatus" json |> to_option routine_build_status_of_yojson;
    creation_time = member "creationTime" json |> to_option to_string;
    data_governance_type = member "dataGovernanceType" json |> to_option (fun json -> match to_string json with "DATA_GOVERNANCE_TYPE_UNSPECIFIED" -> `Data_governance_type_unspecified | "DATA_MASKING" -> `Data_masking | value -> `Unrecognized value);
    definition_body = member "definitionBody" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    determinism_level = member "determinismLevel" json |> to_option (fun json -> match to_string json with "DETERMINISM_LEVEL_UNSPECIFIED" -> `Determinism_level_unspecified | "DETERMINISTIC" -> `Deterministic | "NOT_DETERMINISTIC" -> `Not_deterministic | value -> `Unrecognized value);
    etag = member "etag" json |> to_option to_string;
    external_runtime_options = member "externalRuntimeOptions" json |> to_option external_runtime_options_of_yojson;
    imported_libraries = member "importedLibraries" json |> to_option (convert_each to_string);
    language = member "language" json |> to_option (fun json -> match to_string json with "LANGUAGE_UNSPECIFIED" -> `Language_unspecified | "SQL" -> `Sql | "JAVASCRIPT" -> `Javascript | "PYTHON" -> `Python | "JAVA" -> `Java | "SCALA" -> `Scala | value -> `Unrecognized value);
    last_modified_time = member "lastModifiedTime" json |> to_option to_string;
    python_options = member "pythonOptions" json |> to_option python_options_of_yojson;
    remote_function_options = member "remoteFunctionOptions" json |> to_option remote_function_options_of_yojson;
    return_table_type = member "returnTableType" json |> to_option standard_sql_table_type_of_yojson;
    return_type = member "returnType" json |> to_option standard_sql_data_type_of_yojson;
    routine_reference = member "routineReference" json |> to_option routine_reference_of_yojson;
    routine_type = member "routineType" json |> to_option (fun json -> match to_string json with "ROUTINE_TYPE_UNSPECIFIED" -> `Routine_type_unspecified | "SCALAR_FUNCTION" -> `Scalar_function | "PROCEDURE" -> `Procedure | "TABLE_VALUED_FUNCTION" -> `Table_valued_function | "AGGREGATE_FUNCTION" -> `Aggregate_function | value -> `Unrecognized value);
    security_mode = member "securityMode" json |> to_option (fun json -> match to_string json with "SECURITY_MODE_UNSPECIFIED" -> `Security_mode_unspecified | "DEFINER" -> `Definer | "INVOKER" -> `Invoker | value -> `Unrecognized value);
    spark_options = member "sparkOptions" json |> to_option spark_options_of_yojson;
    strict_mode = member "strictMode" json |> to_option to_bool;
  }

and yojson_of_routine (value : routine) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arguments", (fun items -> `List (List.map yojson_of_argument items)) field)) value.arguments;
         Option.map (fun field -> ("buildStatus", yojson_of_routine_build_status field)) value.build_status;
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("dataGovernanceType", (fun value -> `String ((function `Data_governance_type_unspecified -> "DATA_GOVERNANCE_TYPE_UNSPECIFIED" | `Data_masking -> "DATA_MASKING" | `Unrecognized value -> value) value)) field)) value.data_governance_type;
         Option.map (fun field -> ("definitionBody", (fun value -> `String value) field)) value.definition_body;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("determinismLevel", (fun value -> `String ((function `Determinism_level_unspecified -> "DETERMINISM_LEVEL_UNSPECIFIED" | `Deterministic -> "DETERMINISTIC" | `Not_deterministic -> "NOT_DETERMINISTIC" | `Unrecognized value -> value) value)) field)) value.determinism_level;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("externalRuntimeOptions", yojson_of_external_runtime_options field)) value.external_runtime_options;
         Option.map (fun field -> ("importedLibraries", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.imported_libraries;
         Option.map (fun field -> ("language", (fun value -> `String ((function `Language_unspecified -> "LANGUAGE_UNSPECIFIED" | `Sql -> "SQL" | `Javascript -> "JAVASCRIPT" | `Python -> "PYTHON" | `Java -> "JAVA" | `Scala -> "SCALA" | `Unrecognized value -> value) value)) field)) value.language;
         Option.map (fun field -> ("lastModifiedTime", (fun value -> `String value) field)) value.last_modified_time;
         Option.map (fun field -> ("pythonOptions", yojson_of_python_options field)) value.python_options;
         Option.map (fun field -> ("remoteFunctionOptions", yojson_of_remote_function_options field)) value.remote_function_options;
         Option.map (fun field -> ("returnTableType", yojson_of_standard_sql_table_type field)) value.return_table_type;
         Option.map (fun field -> ("returnType", yojson_of_standard_sql_data_type field)) value.return_type;
         Option.map (fun field -> ("routineReference", yojson_of_routine_reference field)) value.routine_reference;
         Option.map (fun field -> ("routineType", (fun value -> `String ((function `Routine_type_unspecified -> "ROUTINE_TYPE_UNSPECIFIED" | `Scalar_function -> "SCALAR_FUNCTION" | `Procedure -> "PROCEDURE" | `Table_valued_function -> "TABLE_VALUED_FUNCTION" | `Aggregate_function -> "AGGREGATE_FUNCTION" | `Unrecognized value -> value) value)) field)) value.routine_type;
         Option.map (fun field -> ("securityMode", (fun value -> `String ((function `Security_mode_unspecified -> "SECURITY_MODE_UNSPECIFIED" | `Definer -> "DEFINER" | `Invoker -> "INVOKER" | `Unrecognized value -> value) value)) field)) value.security_mode;
         Option.map (fun field -> ("sparkOptions", yojson_of_spark_options field)) value.spark_options;
         Option.map (fun field -> ("strictMode", (fun value -> `Bool value) field)) value.strict_mode;
       ])

and routine_build_status_of_yojson json : routine_build_status =
  let open Yojson.Safe.Util in
  {
    build_duration = member "buildDuration" json |> to_option to_string;
    build_state = member "buildState" json |> to_option (fun json -> match to_string json with "BUILD_STATE_UNSPECIFIED" -> `Build_state_unspecified | "IN_PROGRESS" -> `In_progress | "SUCCEEDED" -> `Succeeded | "FAILED" -> `Failed | value -> `Unrecognized value);
    build_state_update_time = member "buildStateUpdateTime" json |> to_option to_string;
    error_result = member "errorResult" json |> to_option error_proto_of_yojson;
    image_size_bytes = member "imageSizeBytes" json |> to_option to_string;
  }

and yojson_of_routine_build_status (value : routine_build_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("buildDuration", (fun value -> `String value) field)) value.build_duration;
         Option.map (fun field -> ("buildState", (fun value -> `String ((function `Build_state_unspecified -> "BUILD_STATE_UNSPECIFIED" | `In_progress -> "IN_PROGRESS" | `Succeeded -> "SUCCEEDED" | `Failed -> "FAILED" | `Unrecognized value -> value) value)) field)) value.build_state;
         Option.map (fun field -> ("buildStateUpdateTime", (fun value -> `String value) field)) value.build_state_update_time;
         Option.map (fun field -> ("errorResult", yojson_of_error_proto field)) value.error_result;
         Option.map (fun field -> ("imageSizeBytes", (fun value -> `String value) field)) value.image_size_bytes;
       ])

and routine_reference_of_yojson json : routine_reference =
  let open Yojson.Safe.Util in
  {
    dataset_id = member "datasetId" json |> to_option to_string;
    project_id = member "projectId" json |> to_option to_string;
    routine_id = member "routineId" json |> to_option to_string;
  }

and yojson_of_routine_reference (value : routine_reference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("datasetId", (fun value -> `String value) field)) value.dataset_id;
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
         Option.map (fun field -> ("routineId", (fun value -> `String value) field)) value.routine_id;
       ])

and row_of_yojson json : row =
  let open Yojson.Safe.Util in
  {
    actual_label = member "actualLabel" json |> to_option to_string;
    entries = member "entries" json |> to_option (convert_each entry_of_yojson);
  }

and yojson_of_row (value : row) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("actualLabel", (fun value -> `String value) field)) value.actual_label;
         Option.map (fun field -> ("entries", (fun items -> `List (List.map yojson_of_entry items)) field)) value.entries;
       ])

and row_access_policy_of_yojson json : row_access_policy =
  let open Yojson.Safe.Util in
  {
    creation_time = member "creationTime" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    filter_predicate = member "filterPredicate" json |> to_option to_string;
    grantees = member "grantees" json |> to_option (convert_each to_string);
    last_modified_time = member "lastModifiedTime" json |> to_option to_string;
    row_access_policy_reference = member "rowAccessPolicyReference" json |> to_option row_access_policy_reference_of_yojson;
  }

and yojson_of_row_access_policy (value : row_access_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("filterPredicate", (fun value -> `String value) field)) value.filter_predicate;
         Option.map (fun field -> ("grantees", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.grantees;
         Option.map (fun field -> ("lastModifiedTime", (fun value -> `String value) field)) value.last_modified_time;
         Option.map (fun field -> ("rowAccessPolicyReference", yojson_of_row_access_policy_reference field)) value.row_access_policy_reference;
       ])

and row_access_policy_reference_of_yojson json : row_access_policy_reference =
  let open Yojson.Safe.Util in
  {
    dataset_id = member "datasetId" json |> to_option to_string;
    policy_id = member "policyId" json |> to_option to_string;
    project_id = member "projectId" json |> to_option to_string;
    table_id = member "tableId" json |> to_option to_string;
  }

and yojson_of_row_access_policy_reference (value : row_access_policy_reference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("datasetId", (fun value -> `String value) field)) value.dataset_id;
         Option.map (fun field -> ("policyId", (fun value -> `String value) field)) value.policy_id;
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
         Option.map (fun field -> ("tableId", (fun value -> `String value) field)) value.table_id;
       ])

and row_level_security_statistics_of_yojson json : row_level_security_statistics =
  let open Yojson.Safe.Util in
  {
    row_level_security_applied = member "rowLevelSecurityApplied" json |> to_option to_bool;
  }

and yojson_of_row_level_security_statistics (value : row_level_security_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("rowLevelSecurityApplied", (fun value -> `Bool value) field)) value.row_level_security_applied;
       ])

and script_options_of_yojson json : script_options =
  let open Yojson.Safe.Util in
  {
    key_result_statement = member "keyResultStatement" json |> to_option (fun json -> match to_string json with "KEY_RESULT_STATEMENT_KIND_UNSPECIFIED" -> `Key_result_statement_kind_unspecified | "LAST" -> `Last | "FIRST_SELECT" -> `First_select | value -> `Unrecognized value);
    statement_byte_budget = member "statementByteBudget" json |> to_option to_string;
    statement_timeout_ms = member "statementTimeoutMs" json |> to_option to_string;
  }

and yojson_of_script_options (value : script_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("keyResultStatement", (fun value -> `String ((function `Key_result_statement_kind_unspecified -> "KEY_RESULT_STATEMENT_KIND_UNSPECIFIED" | `Last -> "LAST" | `First_select -> "FIRST_SELECT" | `Unrecognized value -> value) value)) field)) value.key_result_statement;
         Option.map (fun field -> ("statementByteBudget", (fun value -> `String value) field)) value.statement_byte_budget;
         Option.map (fun field -> ("statementTimeoutMs", (fun value -> `String value) field)) value.statement_timeout_ms;
       ])

and script_stack_frame_of_yojson json : script_stack_frame =
  let open Yojson.Safe.Util in
  {
    end_column = member "endColumn" json |> to_option to_int;
    end_line = member "endLine" json |> to_option to_int;
    procedure_id = member "procedureId" json |> to_option to_string;
    start_column = member "startColumn" json |> to_option to_int;
    start_line = member "startLine" json |> to_option to_int;
    text = member "text" json |> to_option to_string;
  }

and yojson_of_script_stack_frame (value : script_stack_frame) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("endColumn", (fun value -> `Int value) field)) value.end_column;
         Option.map (fun field -> ("endLine", (fun value -> `Int value) field)) value.end_line;
         Option.map (fun field -> ("procedureId", (fun value -> `String value) field)) value.procedure_id;
         Option.map (fun field -> ("startColumn", (fun value -> `Int value) field)) value.start_column;
         Option.map (fun field -> ("startLine", (fun value -> `Int value) field)) value.start_line;
         Option.map (fun field -> ("text", (fun value -> `String value) field)) value.text;
       ])

and script_statistics_of_yojson json : script_statistics =
  let open Yojson.Safe.Util in
  {
    evaluation_kind = member "evaluationKind" json |> to_option (fun json -> match to_string json with "EVALUATION_KIND_UNSPECIFIED" -> `Evaluation_kind_unspecified | "STATEMENT" -> `Statement | "EXPRESSION" -> `Expression | value -> `Unrecognized value);
    stack_frames = member "stackFrames" json |> to_option (convert_each script_stack_frame_of_yojson);
  }

and yojson_of_script_statistics (value : script_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("evaluationKind", (fun value -> `String ((function `Evaluation_kind_unspecified -> "EVALUATION_KIND_UNSPECIFIED" | `Statement -> "STATEMENT" | `Expression -> "EXPRESSION" | `Unrecognized value -> value) value)) field)) value.evaluation_kind;
         Option.map (fun field -> ("stackFrames", (fun items -> `List (List.map yojson_of_script_stack_frame items)) field)) value.stack_frames;
       ])

and search_statistics_of_yojson json : search_statistics =
  let open Yojson.Safe.Util in
  {
    index_pruning_stats = member "indexPruningStats" json |> to_option (convert_each index_pruning_stats_of_yojson);
    index_unused_reasons = member "indexUnusedReasons" json |> to_option (convert_each index_unused_reason_of_yojson);
    index_usage_mode = member "indexUsageMode" json |> to_option (fun json -> match to_string json with "INDEX_USAGE_MODE_UNSPECIFIED" -> `Index_usage_mode_unspecified | "UNUSED" -> `Unused | "PARTIALLY_USED" -> `Partially_used | "FULLY_USED" -> `Fully_used | value -> `Unrecognized value);
  }

and yojson_of_search_statistics (value : search_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("indexPruningStats", (fun items -> `List (List.map yojson_of_index_pruning_stats items)) field)) value.index_pruning_stats;
         Option.map (fun field -> ("indexUnusedReasons", (fun items -> `List (List.map yojson_of_index_unused_reason items)) field)) value.index_unused_reasons;
         Option.map (fun field -> ("indexUsageMode", (fun value -> `String ((function `Index_usage_mode_unspecified -> "INDEX_USAGE_MODE_UNSPECIFIED" | `Unused -> "UNUSED" | `Partially_used -> "PARTIALLY_USED" | `Fully_used -> "FULLY_USED" | `Unrecognized value -> value) value)) field)) value.index_usage_mode;
       ])

and secure_context_of_yojson json : secure_context =
  let open Yojson.Safe.Util in
  {
    secure_parameter_entries = member "secureParameterEntries" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
  }

and yojson_of_secure_context (value : secure_context) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("secureParameterEntries", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.secure_parameter_entries;
       ])

and ser_de_info_of_yojson json : ser_de_info =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    parameters = member "parameters" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    serialization_library = member "serializationLibrary" json |> to_option to_string;
  }

and yojson_of_ser_de_info (value : ser_de_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("parameters", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.parameters;
         Option.map (fun field -> ("serializationLibrary", (fun value -> `String value) field)) value.serialization_library;
       ])

and session_info_of_yojson json : session_info =
  let open Yojson.Safe.Util in
  {
    session_id = member "sessionId" json |> to_option to_string;
  }

and yojson_of_session_info (value : session_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("sessionId", (fun value -> `String value) field)) value.session_id;
       ])

and set_iam_policy_request_of_yojson json : set_iam_policy_request =
  let open Yojson.Safe.Util in
  {
    policy = member "policy" json |> to_option policy_of_yojson;
    update_mask = member "updateMask" json |> to_option to_string;
  }

and yojson_of_set_iam_policy_request (value : set_iam_policy_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("policy", yojson_of_policy field)) value.policy;
         Option.map (fun field -> ("updateMask", (fun value -> `String value) field)) value.update_mask;
       ])

and skew_source_of_yojson json : skew_source =
  let open Yojson.Safe.Util in
  {
    output_bytes_max = member "outputBytesMax" json |> to_option to_string;
    output_bytes_median = member "outputBytesMedian" json |> to_option to_string;
    output_bytes_p95 = member "outputBytesP95" json |> to_option to_string;
    stage_id = member "stageId" json |> to_option to_string;
  }

and yojson_of_skew_source (value : skew_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("outputBytesMax", (fun value -> `String value) field)) value.output_bytes_max;
         Option.map (fun field -> ("outputBytesMedian", (fun value -> `String value) field)) value.output_bytes_median;
         Option.map (fun field -> ("outputBytesP95", (fun value -> `String value) field)) value.output_bytes_p95;
         Option.map (fun field -> ("stageId", (fun value -> `String value) field)) value.stage_id;
       ])

and snapshot_definition_of_yojson json : snapshot_definition =
  let open Yojson.Safe.Util in
  {
    base_table_reference = member "baseTableReference" json |> to_option table_reference_of_yojson;
    snapshot_time = member "snapshotTime" json |> to_option to_string;
  }

and yojson_of_snapshot_definition (value : snapshot_definition) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("baseTableReference", yojson_of_table_reference field)) value.base_table_reference;
         Option.map (fun field -> ("snapshotTime", (fun value -> `String value) field)) value.snapshot_time;
       ])

and spark_logging_info_of_yojson json : spark_logging_info =
  let open Yojson.Safe.Util in
  {
    project_id = member "projectId" json |> to_option to_string;
    resource_type = member "resourceType" json |> to_option to_string;
  }

and yojson_of_spark_logging_info (value : spark_logging_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
         Option.map (fun field -> ("resourceType", (fun value -> `String value) field)) value.resource_type;
       ])

and spark_options_of_yojson json : spark_options =
  let open Yojson.Safe.Util in
  {
    archive_uris = member "archiveUris" json |> to_option (convert_each to_string);
    connection = member "connection" json |> to_option to_string;
    container_image = member "containerImage" json |> to_option to_string;
    file_uris = member "fileUris" json |> to_option (convert_each to_string);
    jar_uris = member "jarUris" json |> to_option (convert_each to_string);
    main_class = member "mainClass" json |> to_option to_string;
    main_file_uri = member "mainFileUri" json |> to_option to_string;
    properties = member "properties" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    py_file_uris = member "pyFileUris" json |> to_option (convert_each to_string);
    runtime_version = member "runtimeVersion" json |> to_option to_string;
  }

and yojson_of_spark_options (value : spark_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("archiveUris", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.archive_uris;
         Option.map (fun field -> ("connection", (fun value -> `String value) field)) value.connection;
         Option.map (fun field -> ("containerImage", (fun value -> `String value) field)) value.container_image;
         Option.map (fun field -> ("fileUris", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.file_uris;
         Option.map (fun field -> ("jarUris", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.jar_uris;
         Option.map (fun field -> ("mainClass", (fun value -> `String value) field)) value.main_class;
         Option.map (fun field -> ("mainFileUri", (fun value -> `String value) field)) value.main_file_uri;
         Option.map (fun field -> ("properties", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.properties;
         Option.map (fun field -> ("pyFileUris", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.py_file_uris;
         Option.map (fun field -> ("runtimeVersion", (fun value -> `String value) field)) value.runtime_version;
       ])

and spark_statistics_of_yojson json : spark_statistics =
  let open Yojson.Safe.Util in
  {
    endpoints = member "endpoints" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    gcs_staging_bucket = member "gcsStagingBucket" json |> to_option to_string;
    kms_key_name = member "kmsKeyName" json |> to_option to_string;
    logging_info = member "loggingInfo" json |> to_option spark_logging_info_of_yojson;
    spark_job_id = member "sparkJobId" json |> to_option to_string;
    spark_job_location = member "sparkJobLocation" json |> to_option to_string;
  }

and yojson_of_spark_statistics (value : spark_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("endpoints", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.endpoints;
         Option.map (fun field -> ("gcsStagingBucket", (fun value -> `String value) field)) value.gcs_staging_bucket;
         Option.map (fun field -> ("kmsKeyName", (fun value -> `String value) field)) value.kms_key_name;
         Option.map (fun field -> ("loggingInfo", yojson_of_spark_logging_info field)) value.logging_info;
         Option.map (fun field -> ("sparkJobId", (fun value -> `String value) field)) value.spark_job_id;
         Option.map (fun field -> ("sparkJobLocation", (fun value -> `String value) field)) value.spark_job_location;
       ])

and stage_performance_change_insight_of_yojson json : stage_performance_change_insight =
  let open Yojson.Safe.Util in
  {
    input_data_change = member "inputDataChange" json |> to_option input_data_change_of_yojson;
    stage_id = member "stageId" json |> to_option to_string;
  }

and yojson_of_stage_performance_change_insight (value : stage_performance_change_insight) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("inputDataChange", yojson_of_input_data_change field)) value.input_data_change;
         Option.map (fun field -> ("stageId", (fun value -> `String value) field)) value.stage_id;
       ])

and stage_performance_standalone_insight_of_yojson json : stage_performance_standalone_insight =
  let open Yojson.Safe.Util in
  {
    bi_engine_reasons = member "biEngineReasons" json |> to_option (convert_each bi_engine_reason_of_yojson);
    high_cardinality_joins = member "highCardinalityJoins" json |> to_option (convert_each high_cardinality_join_of_yojson);
    insufficient_shuffle_quota = member "insufficientShuffleQuota" json |> to_option to_bool;
    partition_skew = member "partitionSkew" json |> to_option partition_skew_of_yojson;
    slot_contention = member "slotContention" json |> to_option to_bool;
    stage_id = member "stageId" json |> to_option to_string;
  }

and yojson_of_stage_performance_standalone_insight (value : stage_performance_standalone_insight) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("biEngineReasons", (fun items -> `List (List.map yojson_of_bi_engine_reason items)) field)) value.bi_engine_reasons;
         Option.map (fun field -> ("highCardinalityJoins", (fun items -> `List (List.map yojson_of_high_cardinality_join items)) field)) value.high_cardinality_joins;
         Option.map (fun field -> ("insufficientShuffleQuota", (fun value -> `Bool value) field)) value.insufficient_shuffle_quota;
         Option.map (fun field -> ("partitionSkew", yojson_of_partition_skew field)) value.partition_skew;
         Option.map (fun field -> ("slotContention", (fun value -> `Bool value) field)) value.slot_contention;
         Option.map (fun field -> ("stageId", (fun value -> `String value) field)) value.stage_id;
       ])

and standard_sql_data_type_of_yojson json : standard_sql_data_type =
  let open Yojson.Safe.Util in
  {
    array_element_type = member "arrayElementType" json |> to_option standard_sql_data_type_of_yojson;
    range_element_type = member "rangeElementType" json |> to_option standard_sql_data_type_of_yojson;
    struct_type = member "structType" json |> to_option standard_sql_struct_type_of_yojson;
    type_kind = member "typeKind" json |> to_option (fun json -> match to_string json with "TYPE_KIND_UNSPECIFIED" -> `Type_kind_unspecified | "INT64" -> `Int64 | "BOOL" -> `Bool | "FLOAT64" -> `Float64 | "STRING" -> `String | "BYTES" -> `Bytes | "TIMESTAMP" -> `Timestamp | "DATE" -> `Date | "TIME" -> `Time | "DATETIME" -> `Datetime | "INTERVAL" -> `Interval | "GEOGRAPHY" -> `Geography | "NUMERIC" -> `Numeric | "BIGNUMERIC" -> `Bignumeric | "JSON" -> `Json | "ARRAY" -> `Array | "STRUCT" -> `Struct | "RANGE" -> `Range | "UUID" -> `Uuid | value -> `Unrecognized value);
  }

and yojson_of_standard_sql_data_type (value : standard_sql_data_type) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("arrayElementType", yojson_of_standard_sql_data_type field)) value.array_element_type;
         Option.map (fun field -> ("rangeElementType", yojson_of_standard_sql_data_type field)) value.range_element_type;
         Option.map (fun field -> ("structType", yojson_of_standard_sql_struct_type field)) value.struct_type;
         Option.map (fun field -> ("typeKind", (fun value -> `String ((function `Type_kind_unspecified -> "TYPE_KIND_UNSPECIFIED" | `Int64 -> "INT64" | `Bool -> "BOOL" | `Float64 -> "FLOAT64" | `String -> "STRING" | `Bytes -> "BYTES" | `Timestamp -> "TIMESTAMP" | `Date -> "DATE" | `Time -> "TIME" | `Datetime -> "DATETIME" | `Interval -> "INTERVAL" | `Geography -> "GEOGRAPHY" | `Numeric -> "NUMERIC" | `Bignumeric -> "BIGNUMERIC" | `Json -> "JSON" | `Array -> "ARRAY" | `Struct -> "STRUCT" | `Range -> "RANGE" | `Uuid -> "UUID" | `Unrecognized value -> value) value)) field)) value.type_kind;
       ])

and standard_sql_field_of_yojson json : standard_sql_field =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    type_ = member "type" json |> to_option standard_sql_data_type_of_yojson;
  }

and yojson_of_standard_sql_field (value : standard_sql_field) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("type", yojson_of_standard_sql_data_type field)) value.type_;
       ])

and standard_sql_struct_type_of_yojson json : standard_sql_struct_type =
  let open Yojson.Safe.Util in
  {
    fields = member "fields" json |> to_option (convert_each standard_sql_field_of_yojson);
  }

and yojson_of_standard_sql_struct_type (value : standard_sql_struct_type) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("fields", (fun items -> `List (List.map yojson_of_standard_sql_field items)) field)) value.fields;
       ])

and standard_sql_table_type_of_yojson json : standard_sql_table_type =
  let open Yojson.Safe.Util in
  {
    columns = member "columns" json |> to_option (convert_each standard_sql_field_of_yojson);
  }

and yojson_of_standard_sql_table_type (value : standard_sql_table_type) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("columns", (fun items -> `List (List.map yojson_of_standard_sql_field items)) field)) value.columns;
       ])

and storage_descriptor_of_yojson json : storage_descriptor =
  let open Yojson.Safe.Util in
  {
    input_format = member "inputFormat" json |> to_option to_string;
    location_uri = member "locationUri" json |> to_option to_string;
    output_format = member "outputFormat" json |> to_option to_string;
    serde_info = member "serdeInfo" json |> to_option ser_de_info_of_yojson;
  }

and yojson_of_storage_descriptor (value : storage_descriptor) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("inputFormat", (fun value -> `String value) field)) value.input_format;
         Option.map (fun field -> ("locationUri", (fun value -> `String value) field)) value.location_uri;
         Option.map (fun field -> ("outputFormat", (fun value -> `String value) field)) value.output_format;
         Option.map (fun field -> ("serdeInfo", yojson_of_ser_de_info field)) value.serde_info;
       ])

and stored_columns_unused_reason_of_yojson json : stored_columns_unused_reason =
  let open Yojson.Safe.Util in
  {
    code = member "code" json |> to_option (fun json -> match to_string json with "CODE_UNSPECIFIED" -> `Code_unspecified | "STORED_COLUMNS_COVER_INSUFFICIENT" -> `Stored_columns_cover_insufficient | "BASE_TABLE_HAS_RLS" -> `Base_table_has_rls | "BASE_TABLE_HAS_CLS" -> `Base_table_has_cls | "UNSUPPORTED_PREFILTER" -> `Unsupported_prefilter | "INTERNAL_ERROR" -> `Internal_error | "OTHER_REASON" -> `Other_reason | value -> `Unrecognized value);
    message = member "message" json |> to_option to_string;
    uncovered_columns = member "uncoveredColumns" json |> to_option (convert_each to_string);
  }

and yojson_of_stored_columns_unused_reason (value : stored_columns_unused_reason) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("code", (fun value -> `String ((function `Code_unspecified -> "CODE_UNSPECIFIED" | `Stored_columns_cover_insufficient -> "STORED_COLUMNS_COVER_INSUFFICIENT" | `Base_table_has_rls -> "BASE_TABLE_HAS_RLS" | `Base_table_has_cls -> "BASE_TABLE_HAS_CLS" | `Unsupported_prefilter -> "UNSUPPORTED_PREFILTER" | `Internal_error -> "INTERNAL_ERROR" | `Other_reason -> "OTHER_REASON" | `Unrecognized value -> value) value)) field)) value.code;
         Option.map (fun field -> ("message", (fun value -> `String value) field)) value.message;
         Option.map (fun field -> ("uncoveredColumns", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.uncovered_columns;
       ])

and stored_columns_usage_of_yojson json : stored_columns_usage =
  let open Yojson.Safe.Util in
  {
    base_table = member "baseTable" json |> to_option table_reference_of_yojson;
    is_query_accelerated = member "isQueryAccelerated" json |> to_option to_bool;
    stored_columns_unused_reasons = member "storedColumnsUnusedReasons" json |> to_option (convert_each stored_columns_unused_reason_of_yojson);
  }

and yojson_of_stored_columns_usage (value : stored_columns_usage) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("baseTable", yojson_of_table_reference field)) value.base_table;
         Option.map (fun field -> ("isQueryAccelerated", (fun value -> `Bool value) field)) value.is_query_accelerated;
         Option.map (fun field -> ("storedColumnsUnusedReasons", (fun items -> `List (List.map yojson_of_stored_columns_unused_reason items)) field)) value.stored_columns_unused_reasons;
       ])

and streamingbuffer_of_yojson json : streamingbuffer =
  let open Yojson.Safe.Util in
  {
    estimated_bytes = member "estimatedBytes" json |> to_option to_string;
    estimated_rows = member "estimatedRows" json |> to_option to_string;
    oldest_entry_time = member "oldestEntryTime" json |> to_option to_string;
  }

and yojson_of_streamingbuffer (value : streamingbuffer) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("estimatedBytes", (fun value -> `String value) field)) value.estimated_bytes;
         Option.map (fun field -> ("estimatedRows", (fun value -> `String value) field)) value.estimated_rows;
         Option.map (fun field -> ("oldestEntryTime", (fun value -> `String value) field)) value.oldest_entry_time;
       ])

and string_hparam_search_space_of_yojson json : string_hparam_search_space =
  let open Yojson.Safe.Util in
  {
    candidates = member "candidates" json |> to_option (convert_each to_string);
  }

and yojson_of_string_hparam_search_space (value : string_hparam_search_space) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("candidates", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.candidates;
       ])

and system_variables_of_yojson json : system_variables =
  let open Yojson.Safe.Util in
  {
    types = member "types" json |> to_option (fun json -> List.map (fun (key, value) -> (key, standard_sql_data_type_of_yojson value)) (to_assoc json));
    values = member "values" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
  }

and yojson_of_system_variables (value : system_variables) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("types", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_standard_sql_data_type value)) members)) field)) value.types;
         Option.map (fun field -> ("values", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.values;
       ])

and table_of_yojson json : table =
  let open Yojson.Safe.Util in
  {
    biglake_configuration = member "biglakeConfiguration" json |> to_option big_lake_configuration_of_yojson;
    clone_definition = member "cloneDefinition" json |> to_option clone_definition_of_yojson;
    clustering = member "clustering" json |> to_option clustering_of_yojson;
    creation_time = member "creationTime" json |> to_option to_string;
    default_collation = member "defaultCollation" json |> to_option to_string;
    default_rounding_mode = member "defaultRoundingMode" json |> to_option (fun json -> match to_string json with "ROUNDING_MODE_UNSPECIFIED" -> `Rounding_mode_unspecified | "ROUND_HALF_AWAY_FROM_ZERO" -> `Round_half_away_from_zero | "ROUND_HALF_EVEN" -> `Round_half_even | value -> `Unrecognized value);
    description = member "description" json |> to_option to_string;
    encryption_configuration = member "encryptionConfiguration" json |> to_option encryption_configuration_of_yojson;
    etag = member "etag" json |> to_option to_string;
    expiration_time = member "expirationTime" json |> to_option to_string;
    external_catalog_table_options = member "externalCatalogTableOptions" json |> to_option external_catalog_table_options_of_yojson;
    external_data_configuration = member "externalDataConfiguration" json |> to_option external_data_configuration_of_yojson;
    friendly_name = member "friendlyName" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    last_modified_time = member "lastModifiedTime" json |> to_option to_string;
    location = member "location" json |> to_option to_string;
    managed_table_type = member "managedTableType" json |> to_option (fun json -> match to_string json with "MANAGED_TABLE_TYPE_UNSPECIFIED" -> `Managed_table_type_unspecified | "NATIVE" -> `Native | "BIGLAKE" -> `Biglake | value -> `Unrecognized value);
    materialized_view = member "materializedView" json |> to_option materialized_view_definition_of_yojson;
    materialized_view_status = member "materializedViewStatus" json |> to_option materialized_view_status_of_yojson;
    max_staleness = member "maxStaleness" json |> to_option to_string;
    model = member "model" json |> to_option model_definition_of_yojson;
    num_active_logical_bytes = member "numActiveLogicalBytes" json |> to_option to_string;
    num_active_physical_bytes = member "numActivePhysicalBytes" json |> to_option to_string;
    num_bytes = member "numBytes" json |> to_option to_string;
    num_current_physical_bytes = member "numCurrentPhysicalBytes" json |> to_option to_string;
    num_long_term_bytes = member "numLongTermBytes" json |> to_option to_string;
    num_long_term_logical_bytes = member "numLongTermLogicalBytes" json |> to_option to_string;
    num_long_term_physical_bytes = member "numLongTermPhysicalBytes" json |> to_option to_string;
    num_partitions = member "numPartitions" json |> to_option to_string;
    num_physical_bytes = member "numPhysicalBytes" json |> to_option to_string;
    num_rows = member "numRows" json |> to_option to_string;
    num_time_travel_physical_bytes = member "numTimeTravelPhysicalBytes" json |> to_option to_string;
    num_total_logical_bytes = member "numTotalLogicalBytes" json |> to_option to_string;
    num_total_physical_bytes = member "numTotalPhysicalBytes" json |> to_option to_string;
    partition_definition = member "partitionDefinition" json |> to_option partitioning_definition_of_yojson;
    range_partitioning = member "rangePartitioning" json |> to_option range_partitioning_of_yojson;
    replicas = member "replicas" json |> to_option (convert_each table_reference_of_yojson);
    require_partition_filter = member "requirePartitionFilter" json |> to_option to_bool;
    resource_tags = member "resourceTags" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    restrictions = member "restrictions" json |> to_option restriction_config_of_yojson;
    schema = member "schema" json |> to_option table_schema_of_yojson;
    self_link = member "selfLink" json |> to_option to_string;
    snapshot_definition = member "snapshotDefinition" json |> to_option snapshot_definition_of_yojson;
    streaming_buffer = member "streamingBuffer" json |> to_option streamingbuffer_of_yojson;
    table_constraints = member "tableConstraints" json |> to_option table_constraints_of_yojson;
    table_reference = member "tableReference" json |> to_option table_reference_of_yojson;
    table_replication_info = member "tableReplicationInfo" json |> to_option table_replication_info_of_yojson;
    time_partitioning = member "timePartitioning" json |> to_option time_partitioning_of_yojson;
    type_ = member "type" json |> to_option to_string;
    view = member "view" json |> to_option view_definition_of_yojson;
  }

and yojson_of_table (value : table) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("biglakeConfiguration", yojson_of_big_lake_configuration field)) value.biglake_configuration;
         Option.map (fun field -> ("cloneDefinition", yojson_of_clone_definition field)) value.clone_definition;
         Option.map (fun field -> ("clustering", yojson_of_clustering field)) value.clustering;
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("defaultCollation", (fun value -> `String value) field)) value.default_collation;
         Option.map (fun field -> ("defaultRoundingMode", (fun value -> `String ((function `Rounding_mode_unspecified -> "ROUNDING_MODE_UNSPECIFIED" | `Round_half_away_from_zero -> "ROUND_HALF_AWAY_FROM_ZERO" | `Round_half_even -> "ROUND_HALF_EVEN" | `Unrecognized value -> value) value)) field)) value.default_rounding_mode;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("encryptionConfiguration", yojson_of_encryption_configuration field)) value.encryption_configuration;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("expirationTime", (fun value -> `String value) field)) value.expiration_time;
         Option.map (fun field -> ("externalCatalogTableOptions", yojson_of_external_catalog_table_options field)) value.external_catalog_table_options;
         Option.map (fun field -> ("externalDataConfiguration", yojson_of_external_data_configuration field)) value.external_data_configuration;
         Option.map (fun field -> ("friendlyName", (fun value -> `String value) field)) value.friendly_name;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("lastModifiedTime", (fun value -> `String value) field)) value.last_modified_time;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("managedTableType", (fun value -> `String ((function `Managed_table_type_unspecified -> "MANAGED_TABLE_TYPE_UNSPECIFIED" | `Native -> "NATIVE" | `Biglake -> "BIGLAKE" | `Unrecognized value -> value) value)) field)) value.managed_table_type;
         Option.map (fun field -> ("materializedView", yojson_of_materialized_view_definition field)) value.materialized_view;
         Option.map (fun field -> ("materializedViewStatus", yojson_of_materialized_view_status field)) value.materialized_view_status;
         Option.map (fun field -> ("maxStaleness", (fun value -> `String value) field)) value.max_staleness;
         Option.map (fun field -> ("model", yojson_of_model_definition field)) value.model;
         Option.map (fun field -> ("numActiveLogicalBytes", (fun value -> `String value) field)) value.num_active_logical_bytes;
         Option.map (fun field -> ("numActivePhysicalBytes", (fun value -> `String value) field)) value.num_active_physical_bytes;
         Option.map (fun field -> ("numBytes", (fun value -> `String value) field)) value.num_bytes;
         Option.map (fun field -> ("numCurrentPhysicalBytes", (fun value -> `String value) field)) value.num_current_physical_bytes;
         Option.map (fun field -> ("numLongTermBytes", (fun value -> `String value) field)) value.num_long_term_bytes;
         Option.map (fun field -> ("numLongTermLogicalBytes", (fun value -> `String value) field)) value.num_long_term_logical_bytes;
         Option.map (fun field -> ("numLongTermPhysicalBytes", (fun value -> `String value) field)) value.num_long_term_physical_bytes;
         Option.map (fun field -> ("numPartitions", (fun value -> `String value) field)) value.num_partitions;
         Option.map (fun field -> ("numPhysicalBytes", (fun value -> `String value) field)) value.num_physical_bytes;
         Option.map (fun field -> ("numRows", (fun value -> `String value) field)) value.num_rows;
         Option.map (fun field -> ("numTimeTravelPhysicalBytes", (fun value -> `String value) field)) value.num_time_travel_physical_bytes;
         Option.map (fun field -> ("numTotalLogicalBytes", (fun value -> `String value) field)) value.num_total_logical_bytes;
         Option.map (fun field -> ("numTotalPhysicalBytes", (fun value -> `String value) field)) value.num_total_physical_bytes;
         Option.map (fun field -> ("partitionDefinition", yojson_of_partitioning_definition field)) value.partition_definition;
         Option.map (fun field -> ("rangePartitioning", yojson_of_range_partitioning field)) value.range_partitioning;
         Option.map (fun field -> ("replicas", (fun items -> `List (List.map yojson_of_table_reference items)) field)) value.replicas;
         Option.map (fun field -> ("requirePartitionFilter", (fun value -> `Bool value) field)) value.require_partition_filter;
         Option.map (fun field -> ("resourceTags", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.resource_tags;
         Option.map (fun field -> ("restrictions", yojson_of_restriction_config field)) value.restrictions;
         Option.map (fun field -> ("schema", yojson_of_table_schema field)) value.schema;
         Option.map (fun field -> ("selfLink", (fun value -> `String value) field)) value.self_link;
         Option.map (fun field -> ("snapshotDefinition", yojson_of_snapshot_definition field)) value.snapshot_definition;
         Option.map (fun field -> ("streamingBuffer", yojson_of_streamingbuffer field)) value.streaming_buffer;
         Option.map (fun field -> ("tableConstraints", yojson_of_table_constraints field)) value.table_constraints;
         Option.map (fun field -> ("tableReference", yojson_of_table_reference field)) value.table_reference;
         Option.map (fun field -> ("tableReplicationInfo", yojson_of_table_replication_info field)) value.table_replication_info;
         Option.map (fun field -> ("timePartitioning", yojson_of_time_partitioning field)) value.time_partitioning;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
         Option.map (fun field -> ("view", yojson_of_view_definition field)) value.view;
       ])

and table_cell_of_yojson json : table_cell =
  let open Yojson.Safe.Util in
  {
    v = member "v" json |> to_option Fun.id;
  }

and yojson_of_table_cell (value : table_cell) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("v", Fun.id field)) value.v;
       ])

and table_change_insight_of_yojson json : table_change_insight =
  let open Yojson.Safe.Util in
  {
    metadata_cache_not_used_but_used_previously = member "metadataCacheNotUsedButUsedPreviously" json |> to_option to_bool;
    metadata_cache_staleness_insight = member "metadataCacheStalenessInsight" json |> to_option metadata_cache_staleness_insight_of_yojson;
    table_reference = member "tableReference" json |> to_option table_reference_of_yojson;
  }

and yojson_of_table_change_insight (value : table_change_insight) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("metadataCacheNotUsedButUsedPreviously", (fun value -> `Bool value) field)) value.metadata_cache_not_used_but_used_previously;
         Option.map (fun field -> ("metadataCacheStalenessInsight", yojson_of_metadata_cache_staleness_insight field)) value.metadata_cache_staleness_insight;
         Option.map (fun field -> ("tableReference", yojson_of_table_reference field)) value.table_reference;
       ])

and table_constraints_foreign_keys_item_column_references_item_of_yojson json : table_constraints_foreign_keys_item_column_references_item =
  let open Yojson.Safe.Util in
  {
    referenced_column = member "referencedColumn" json |> to_option to_string;
    referencing_column = member "referencingColumn" json |> to_option to_string;
  }

and yojson_of_table_constraints_foreign_keys_item_column_references_item (value : table_constraints_foreign_keys_item_column_references_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("referencedColumn", (fun value -> `String value) field)) value.referenced_column;
         Option.map (fun field -> ("referencingColumn", (fun value -> `String value) field)) value.referencing_column;
       ])

and table_constraints_foreign_keys_item_referenced_table_of_yojson json : table_constraints_foreign_keys_item_referenced_table =
  let open Yojson.Safe.Util in
  {
    dataset_id = member "datasetId" json |> to_option to_string;
    project_id = member "projectId" json |> to_option to_string;
    table_id = member "tableId" json |> to_option to_string;
  }

and yojson_of_table_constraints_foreign_keys_item_referenced_table (value : table_constraints_foreign_keys_item_referenced_table) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("datasetId", (fun value -> `String value) field)) value.dataset_id;
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
         Option.map (fun field -> ("tableId", (fun value -> `String value) field)) value.table_id;
       ])

and table_constraints_foreign_keys_item_of_yojson json : table_constraints_foreign_keys_item =
  let open Yojson.Safe.Util in
  {
    column_references = member "columnReferences" json |> to_option (convert_each table_constraints_foreign_keys_item_column_references_item_of_yojson);
    name = member "name" json |> to_option to_string;
    referenced_table = member "referencedTable" json |> to_option table_constraints_foreign_keys_item_referenced_table_of_yojson;
  }

and yojson_of_table_constraints_foreign_keys_item (value : table_constraints_foreign_keys_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("columnReferences", (fun items -> `List (List.map yojson_of_table_constraints_foreign_keys_item_column_references_item items)) field)) value.column_references;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("referencedTable", yojson_of_table_constraints_foreign_keys_item_referenced_table field)) value.referenced_table;
       ])

and table_constraints_primary_key_of_yojson json : table_constraints_primary_key =
  let open Yojson.Safe.Util in
  {
    columns = member "columns" json |> to_option (convert_each to_string);
  }

and yojson_of_table_constraints_primary_key (value : table_constraints_primary_key) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("columns", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.columns;
       ])

and table_constraints_of_yojson json : table_constraints =
  let open Yojson.Safe.Util in
  {
    foreign_keys = member "foreignKeys" json |> to_option (convert_each table_constraints_foreign_keys_item_of_yojson);
    primary_key = member "primaryKey" json |> to_option table_constraints_primary_key_of_yojson;
  }

and yojson_of_table_constraints (value : table_constraints) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("foreignKeys", (fun items -> `List (List.map yojson_of_table_constraints_foreign_keys_item items)) field)) value.foreign_keys;
         Option.map (fun field -> ("primaryKey", yojson_of_table_constraints_primary_key field)) value.primary_key;
       ])

and table_data_insert_all_request_rows_item_of_yojson json : table_data_insert_all_request_rows_item =
  let open Yojson.Safe.Util in
  {
    insert_id = member "insertId" json |> to_option to_string;
    json = member "json" json |> to_option json_object_of_yojson;
  }

and yojson_of_table_data_insert_all_request_rows_item (value : table_data_insert_all_request_rows_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("insertId", (fun value -> `String value) field)) value.insert_id;
         Option.map (fun field -> ("json", yojson_of_json_object field)) value.json;
       ])

and table_data_insert_all_request_of_yojson json : table_data_insert_all_request =
  let open Yojson.Safe.Util in
  {
    ignore_unknown_values = member "ignoreUnknownValues" json |> to_option to_bool;
    kind = member "kind" json |> to_option to_string;
    rows = member "rows" json |> to_option (convert_each table_data_insert_all_request_rows_item_of_yojson);
    skip_invalid_rows = member "skipInvalidRows" json |> to_option to_bool;
    template_suffix = member "templateSuffix" json |> to_option to_string;
    trace_id = member "traceId" json |> to_option to_string;
  }

and yojson_of_table_data_insert_all_request (value : table_data_insert_all_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ignoreUnknownValues", (fun value -> `Bool value) field)) value.ignore_unknown_values;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("rows", (fun items -> `List (List.map yojson_of_table_data_insert_all_request_rows_item items)) field)) value.rows;
         Option.map (fun field -> ("skipInvalidRows", (fun value -> `Bool value) field)) value.skip_invalid_rows;
         Option.map (fun field -> ("templateSuffix", (fun value -> `String value) field)) value.template_suffix;
         Option.map (fun field -> ("traceId", (fun value -> `String value) field)) value.trace_id;
       ])

and table_data_insert_all_response_insert_errors_item_of_yojson json : table_data_insert_all_response_insert_errors_item =
  let open Yojson.Safe.Util in
  {
    errors = member "errors" json |> to_option (convert_each error_proto_of_yojson);
    index = member "index" json |> to_option to_int;
  }

and yojson_of_table_data_insert_all_response_insert_errors_item (value : table_data_insert_all_response_insert_errors_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("errors", (fun items -> `List (List.map yojson_of_error_proto items)) field)) value.errors;
         Option.map (fun field -> ("index", (fun value -> `Int value) field)) value.index;
       ])

and table_data_insert_all_response_of_yojson json : table_data_insert_all_response =
  let open Yojson.Safe.Util in
  {
    insert_errors = member "insertErrors" json |> to_option (convert_each table_data_insert_all_response_insert_errors_item_of_yojson);
    kind = member "kind" json |> to_option to_string;
  }

and yojson_of_table_data_insert_all_response (value : table_data_insert_all_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("insertErrors", (fun items -> `List (List.map yojson_of_table_data_insert_all_response_insert_errors_item items)) field)) value.insert_errors;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
       ])

and table_data_list_of_yojson json : table_data_list =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    page_token = member "pageToken" json |> to_option to_string;
    rows = member "rows" json |> to_option (convert_each table_row_of_yojson);
    total_rows = member "totalRows" json |> to_option to_string;
  }

and yojson_of_table_data_list (value : table_data_list) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("pageToken", (fun value -> `String value) field)) value.page_token;
         Option.map (fun field -> ("rows", (fun items -> `List (List.map yojson_of_table_row items)) field)) value.rows;
         Option.map (fun field -> ("totalRows", (fun value -> `String value) field)) value.total_rows;
       ])

and table_field_schema_categories_of_yojson json : table_field_schema_categories =
  let open Yojson.Safe.Util in
  {
    names = member "names" json |> to_option (convert_each to_string);
  }

and yojson_of_table_field_schema_categories (value : table_field_schema_categories) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("names", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.names;
       ])

and table_field_schema_data_governance_tags_info_of_yojson json : table_field_schema_data_governance_tags_info =
  let open Yojson.Safe.Util in
  {
    data_governance_tags = member "dataGovernanceTags" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
  }

and yojson_of_table_field_schema_data_governance_tags_info (value : table_field_schema_data_governance_tags_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dataGovernanceTags", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.data_governance_tags;
       ])

and table_field_schema_policy_tags_of_yojson json : table_field_schema_policy_tags =
  let open Yojson.Safe.Util in
  {
    names = member "names" json |> to_option (convert_each to_string);
  }

and yojson_of_table_field_schema_policy_tags (value : table_field_schema_policy_tags) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("names", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.names;
       ])

and table_field_schema_range_element_type_of_yojson json : table_field_schema_range_element_type =
  let open Yojson.Safe.Util in
  {
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_table_field_schema_range_element_type (value : table_field_schema_range_element_type) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and table_field_schema_of_yojson json : table_field_schema =
  let open Yojson.Safe.Util in
  {
    categories = member "categories" json |> to_option table_field_schema_categories_of_yojson;
    collation = member "collation" json |> to_option to_string;
    data_governance_tags_info = member "dataGovernanceTagsInfo" json |> to_option table_field_schema_data_governance_tags_info_of_yojson;
    data_policies = member "dataPolicies" json |> to_option (convert_each data_policy_option_of_yojson);
    data_policy_list = member "dataPolicyList" json |> to_option data_policy_list_of_yojson;
    default_value_expression = member "defaultValueExpression" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    fields = member "fields" json |> to_option (convert_each table_field_schema_of_yojson);
    foreign_type_definition = member "foreignTypeDefinition" json |> to_option to_string;
    generated_column = member "generatedColumn" json |> to_option generated_column_of_yojson;
    max_length = member "maxLength" json |> to_option to_string;
    mode = member "mode" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    policy_tags = member "policyTags" json |> to_option table_field_schema_policy_tags_of_yojson;
    precision = member "precision" json |> to_option to_string;
    range_element_type = member "rangeElementType" json |> to_option table_field_schema_range_element_type_of_yojson;
    rounding_mode = member "roundingMode" json |> to_option (fun json -> match to_string json with "ROUNDING_MODE_UNSPECIFIED" -> `Rounding_mode_unspecified | "ROUND_HALF_AWAY_FROM_ZERO" -> `Round_half_away_from_zero | "ROUND_HALF_EVEN" -> `Round_half_even | value -> `Unrecognized value);
    scale = member "scale" json |> to_option to_string;
    timestamp_precision = member "timestampPrecision" json |> to_option to_string;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_table_field_schema (value : table_field_schema) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("categories", yojson_of_table_field_schema_categories field)) value.categories;
         Option.map (fun field -> ("collation", (fun value -> `String value) field)) value.collation;
         Option.map (fun field -> ("dataGovernanceTagsInfo", yojson_of_table_field_schema_data_governance_tags_info field)) value.data_governance_tags_info;
         Option.map (fun field -> ("dataPolicies", (fun items -> `List (List.map yojson_of_data_policy_option items)) field)) value.data_policies;
         Option.map (fun field -> ("dataPolicyList", yojson_of_data_policy_list field)) value.data_policy_list;
         Option.map (fun field -> ("defaultValueExpression", (fun value -> `String value) field)) value.default_value_expression;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("fields", (fun items -> `List (List.map yojson_of_table_field_schema items)) field)) value.fields;
         Option.map (fun field -> ("foreignTypeDefinition", (fun value -> `String value) field)) value.foreign_type_definition;
         Option.map (fun field -> ("generatedColumn", yojson_of_generated_column field)) value.generated_column;
         Option.map (fun field -> ("maxLength", (fun value -> `String value) field)) value.max_length;
         Option.map (fun field -> ("mode", (fun value -> `String value) field)) value.mode;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("policyTags", yojson_of_table_field_schema_policy_tags field)) value.policy_tags;
         Option.map (fun field -> ("precision", (fun value -> `String value) field)) value.precision;
         Option.map (fun field -> ("rangeElementType", yojson_of_table_field_schema_range_element_type field)) value.range_element_type;
         Option.map (fun field -> ("roundingMode", (fun value -> `String ((function `Rounding_mode_unspecified -> "ROUNDING_MODE_UNSPECIFIED" | `Round_half_away_from_zero -> "ROUND_HALF_AWAY_FROM_ZERO" | `Round_half_even -> "ROUND_HALF_EVEN" | `Unrecognized value -> value) value)) field)) value.rounding_mode;
         Option.map (fun field -> ("scale", (fun value -> `String value) field)) value.scale;
         Option.map (fun field -> ("timestampPrecision", (fun value -> `String value) field)) value.timestamp_precision;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and table_list_tables_item_view_of_yojson json : table_list_tables_item_view =
  let open Yojson.Safe.Util in
  {
    privacy_policy = member "privacyPolicy" json |> to_option privacy_policy_of_yojson;
    use_legacy_sql = member "useLegacySql" json |> to_option to_bool;
  }

and yojson_of_table_list_tables_item_view (value : table_list_tables_item_view) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("privacyPolicy", yojson_of_privacy_policy field)) value.privacy_policy;
         Option.map (fun field -> ("useLegacySql", (fun value -> `Bool value) field)) value.use_legacy_sql;
       ])

and table_list_tables_item_of_yojson json : table_list_tables_item =
  let open Yojson.Safe.Util in
  {
    clustering = member "clustering" json |> to_option clustering_of_yojson;
    creation_time = member "creationTime" json |> to_option to_string;
    expiration_time = member "expirationTime" json |> to_option to_string;
    friendly_name = member "friendlyName" json |> to_option to_string;
    id = member "id" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    range_partitioning = member "rangePartitioning" json |> to_option range_partitioning_of_yojson;
    require_partition_filter = member "requirePartitionFilter" json |> to_option to_bool;
    table_reference = member "tableReference" json |> to_option table_reference_of_yojson;
    time_partitioning = member "timePartitioning" json |> to_option time_partitioning_of_yojson;
    type_ = member "type" json |> to_option to_string;
    view = member "view" json |> to_option table_list_tables_item_view_of_yojson;
  }

and yojson_of_table_list_tables_item (value : table_list_tables_item) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("clustering", yojson_of_clustering field)) value.clustering;
         Option.map (fun field -> ("creationTime", (fun value -> `String value) field)) value.creation_time;
         Option.map (fun field -> ("expirationTime", (fun value -> `String value) field)) value.expiration_time;
         Option.map (fun field -> ("friendlyName", (fun value -> `String value) field)) value.friendly_name;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("rangePartitioning", yojson_of_range_partitioning field)) value.range_partitioning;
         Option.map (fun field -> ("requirePartitionFilter", (fun value -> `Bool value) field)) value.require_partition_filter;
         Option.map (fun field -> ("tableReference", yojson_of_table_reference field)) value.table_reference;
         Option.map (fun field -> ("timePartitioning", yojson_of_time_partitioning field)) value.time_partitioning;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
         Option.map (fun field -> ("view", yojson_of_table_list_tables_item_view field)) value.view;
       ])

and table_list_of_yojson json : table_list =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    kind = member "kind" json |> to_option to_string;
    next_page_token = member "nextPageToken" json |> to_option to_string;
    tables = member "tables" json |> to_option (convert_each table_list_tables_item_of_yojson);
    total_items = member "totalItems" json |> to_option to_int;
  }

and yojson_of_table_list (value : table_list) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("kind", (fun value -> `String value) field)) value.kind;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("tables", (fun items -> `List (List.map yojson_of_table_list_tables_item items)) field)) value.tables;
         Option.map (fun field -> ("totalItems", (fun value -> `Int value) field)) value.total_items;
       ])

and table_metadata_cache_usage_of_yojson json : table_metadata_cache_usage =
  let open Yojson.Safe.Util in
  {
    explanation = member "explanation" json |> to_option to_string;
    pruning_stats = member "pruningStats" json |> to_option pruning_stats_of_yojson;
    staleness = member "staleness" json |> to_option to_string;
    table_reference = member "tableReference" json |> to_option table_reference_of_yojson;
    table_type = member "tableType" json |> to_option to_string;
    unused_reason = member "unusedReason" json |> to_option (fun json -> match to_string json with "UNUSED_REASON_UNSPECIFIED" -> `Unused_reason_unspecified | "EXCEEDED_MAX_STALENESS" -> `Exceeded_max_staleness | "METADATA_CACHING_NOT_ENABLED" -> `Metadata_caching_not_enabled | "OTHER_REASON" -> `Other_reason | value -> `Unrecognized value);
  }

and yojson_of_table_metadata_cache_usage (value : table_metadata_cache_usage) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("explanation", (fun value -> `String value) field)) value.explanation;
         Option.map (fun field -> ("pruningStats", yojson_of_pruning_stats field)) value.pruning_stats;
         Option.map (fun field -> ("staleness", (fun value -> `String value) field)) value.staleness;
         Option.map (fun field -> ("tableReference", yojson_of_table_reference field)) value.table_reference;
         Option.map (fun field -> ("tableType", (fun value -> `String value) field)) value.table_type;
         Option.map (fun field -> ("unusedReason", (fun value -> `String ((function `Unused_reason_unspecified -> "UNUSED_REASON_UNSPECIFIED" | `Exceeded_max_staleness -> "EXCEEDED_MAX_STALENESS" | `Metadata_caching_not_enabled -> "METADATA_CACHING_NOT_ENABLED" | `Other_reason -> "OTHER_REASON" | `Unrecognized value -> value) value)) field)) value.unused_reason;
       ])

and table_reference_of_yojson json : table_reference =
  let open Yojson.Safe.Util in
  {
    dataset_id = member "datasetId" json |> to_option to_string;
    project_id = member "projectId" json |> to_option to_string;
    table_id = member "tableId" json |> to_option to_string;
  }

and yojson_of_table_reference (value : table_reference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("datasetId", (fun value -> `String value) field)) value.dataset_id;
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
         Option.map (fun field -> ("tableId", (fun value -> `String value) field)) value.table_id;
       ])

and table_replication_info_of_yojson json : table_replication_info =
  let open Yojson.Safe.Util in
  {
    replicated_source_last_refresh_time = member "replicatedSourceLastRefreshTime" json |> to_option to_string;
    replication_error = member "replicationError" json |> to_option error_proto_of_yojson;
    replication_interval_ms = member "replicationIntervalMs" json |> to_option to_string;
    replication_status = member "replicationStatus" json |> to_option (fun json -> match to_string json with "REPLICATION_STATUS_UNSPECIFIED" -> `Replication_status_unspecified | "ACTIVE" -> `Active | "SOURCE_DELETED" -> `Source_deleted | "PERMISSION_DENIED" -> `Permission_denied | "UNSUPPORTED_CONFIGURATION" -> `Unsupported_configuration | value -> `Unrecognized value);
    source_table = member "sourceTable" json |> to_option table_reference_of_yojson;
  }

and yojson_of_table_replication_info (value : table_replication_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("replicatedSourceLastRefreshTime", (fun value -> `String value) field)) value.replicated_source_last_refresh_time;
         Option.map (fun field -> ("replicationError", yojson_of_error_proto field)) value.replication_error;
         Option.map (fun field -> ("replicationIntervalMs", (fun value -> `String value) field)) value.replication_interval_ms;
         Option.map (fun field -> ("replicationStatus", (fun value -> `String ((function `Replication_status_unspecified -> "REPLICATION_STATUS_UNSPECIFIED" | `Active -> "ACTIVE" | `Source_deleted -> "SOURCE_DELETED" | `Permission_denied -> "PERMISSION_DENIED" | `Unsupported_configuration -> "UNSUPPORTED_CONFIGURATION" | `Unrecognized value -> value) value)) field)) value.replication_status;
         Option.map (fun field -> ("sourceTable", yojson_of_table_reference field)) value.source_table;
       ])

and table_row_of_yojson json : table_row =
  let open Yojson.Safe.Util in
  {
    f = member "f" json |> to_option (convert_each table_cell_of_yojson);
  }

and yojson_of_table_row (value : table_row) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("f", (fun items -> `List (List.map yojson_of_table_cell items)) field)) value.f;
       ])

and table_schema_of_yojson json : table_schema =
  let open Yojson.Safe.Util in
  {
    fields = member "fields" json |> to_option (convert_each table_field_schema_of_yojson);
    foreign_type_info = member "foreignTypeInfo" json |> to_option foreign_type_info_of_yojson;
  }

and yojson_of_table_schema (value : table_schema) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("fields", (fun items -> `List (List.map yojson_of_table_field_schema items)) field)) value.fields;
         Option.map (fun field -> ("foreignTypeInfo", yojson_of_foreign_type_info field)) value.foreign_type_info;
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

and time_partitioning_of_yojson json : time_partitioning =
  let open Yojson.Safe.Util in
  {
    expiration_ms = member "expirationMs" json |> to_option to_string;
    field = member "field" json |> to_option to_string;
    require_partition_filter = member "requirePartitionFilter" json |> to_option to_bool;
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_time_partitioning (value : time_partitioning) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("expirationMs", (fun value -> `String value) field)) value.expiration_ms;
         Option.map (fun field -> ("field", (fun value -> `String value) field)) value.field;
         Option.map (fun field -> ("requirePartitionFilter", (fun value -> `Bool value) field)) value.require_partition_filter;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and training_options_of_yojson json : training_options =
  let open Yojson.Safe.Util in
  {
    activation_fn = member "activationFn" json |> to_option to_string;
    adjust_step_changes = member "adjustStepChanges" json |> to_option to_bool;
    approx_global_feature_contrib = member "approxGlobalFeatureContrib" json |> to_option to_bool;
    auto_arima = member "autoArima" json |> to_option to_bool;
    auto_arima_max_order = member "autoArimaMaxOrder" json |> to_option to_string;
    auto_arima_min_order = member "autoArimaMinOrder" json |> to_option to_string;
    auto_class_weights = member "autoClassWeights" json |> to_option to_bool;
    batch_size = member "batchSize" json |> to_option to_string;
    booster_type = member "boosterType" json |> to_option (fun json -> match to_string json with "BOOSTER_TYPE_UNSPECIFIED" -> `Booster_type_unspecified | "GBTREE" -> `Gbtree | "DART" -> `Dart | value -> `Unrecognized value);
    budget_hours = member "budgetHours" json |> to_option to_number;
    calculate_p_values = member "calculatePValues" json |> to_option to_bool;
    category_encoding_method = member "categoryEncodingMethod" json |> to_option (fun json -> match to_string json with "ENCODING_METHOD_UNSPECIFIED" -> `Encoding_method_unspecified | "ONE_HOT_ENCODING" -> `One_hot_encoding | "LABEL_ENCODING" -> `Label_encoding | "DUMMY_ENCODING" -> `Dummy_encoding | value -> `Unrecognized value);
    clean_spikes_and_dips = member "cleanSpikesAndDips" json |> to_option to_bool;
    color_space = member "colorSpace" json |> to_option (fun json -> match to_string json with "COLOR_SPACE_UNSPECIFIED" -> `Color_space_unspecified | "RGB" -> `Rgb | "HSV" -> `Hsv | "YIQ" -> `Yiq | "YUV" -> `Yuv | "GRAYSCALE" -> `Grayscale | value -> `Unrecognized value);
    colsample_bylevel = member "colsampleBylevel" json |> to_option to_number;
    colsample_bynode = member "colsampleBynode" json |> to_option to_number;
    colsample_bytree = member "colsampleBytree" json |> to_option to_number;
    contribution_metric = member "contributionMetric" json |> to_option to_string;
    dart_normalize_type = member "dartNormalizeType" json |> to_option (fun json -> match to_string json with "DART_NORMALIZE_TYPE_UNSPECIFIED" -> `Dart_normalize_type_unspecified | "TREE" -> `Tree | "FOREST" -> `Forest | value -> `Unrecognized value);
    data_frequency = member "dataFrequency" json |> to_option (fun json -> match to_string json with "DATA_FREQUENCY_UNSPECIFIED" -> `Data_frequency_unspecified | "AUTO_FREQUENCY" -> `Auto_frequency | "YEARLY" -> `Yearly | "QUARTERLY" -> `Quarterly | "MONTHLY" -> `Monthly | "WEEKLY" -> `Weekly | "DAILY" -> `Daily | "HOURLY" -> `Hourly | "PER_MINUTE" -> `Per_minute | value -> `Unrecognized value);
    data_split_column = member "dataSplitColumn" json |> to_option to_string;
    data_split_eval_fraction = member "dataSplitEvalFraction" json |> to_option to_number;
    data_split_method = member "dataSplitMethod" json |> to_option (fun json -> match to_string json with "DATA_SPLIT_METHOD_UNSPECIFIED" -> `Data_split_method_unspecified | "RANDOM" -> `Random | "CUSTOM" -> `Custom | "SEQUENTIAL" -> `Sequential | "NO_SPLIT" -> `No_split | "AUTO_SPLIT" -> `Auto_split | value -> `Unrecognized value);
    decompose_time_series = member "decomposeTimeSeries" json |> to_option to_bool;
    dimension_id_columns = member "dimensionIdColumns" json |> to_option (convert_each to_string);
    distance_type = member "distanceType" json |> to_option (fun json -> match to_string json with "DISTANCE_TYPE_UNSPECIFIED" -> `Distance_type_unspecified | "EUCLIDEAN" -> `Euclidean | "COSINE" -> `Cosine | value -> `Unrecognized value);
    dropout = member "dropout" json |> to_option to_number;
    early_stop = member "earlyStop" json |> to_option to_bool;
    enable_global_explain = member "enableGlobalExplain" json |> to_option to_bool;
    endpoint_idle_ttl = member "endpointIdleTtl" json |> to_option to_string;
    feedback_type = member "feedbackType" json |> to_option (fun json -> match to_string json with "FEEDBACK_TYPE_UNSPECIFIED" -> `Feedback_type_unspecified | "IMPLICIT" -> `Implicit | "EXPLICIT" -> `Explicit | value -> `Unrecognized value);
    fit_intercept = member "fitIntercept" json |> to_option to_bool;
    forecast_limit_lower_bound = member "forecastLimitLowerBound" json |> to_option to_number;
    forecast_limit_upper_bound = member "forecastLimitUpperBound" json |> to_option to_number;
    hidden_units = member "hiddenUnits" json |> to_option (convert_each to_string);
    holiday_region = member "holidayRegion" json |> to_option (fun json -> match to_string json with "HOLIDAY_REGION_UNSPECIFIED" -> `Holiday_region_unspecified | "GLOBAL" -> `Global | "NA" -> `Na | "JAPAC" -> `Japac | "EMEA" -> `Emea | "LAC" -> `Lac | "AE" -> `Ae | "AR" -> `Ar | "AT" -> `At | "AU" -> `Au | "BE" -> `Be | "BR" -> `Br | "CA" -> `Ca | "CH" -> `Ch | "CL" -> `Cl | "CN" -> `Cn | "CO" -> `Co | "CS" -> `Cs | "CZ" -> `Cz | "DE" -> `De | "DK" -> `Dk | "DZ" -> `Dz | "EC" -> `Ec | "EE" -> `Ee | "EG" -> `Eg | "ES" -> `Es | "FI" -> `Fi | "FR" -> `Fr | "GB" -> `Gb | "GR" -> `Gr | "HK" -> `Hk | "HU" -> `Hu | "ID" -> `Id | "IE" -> `Ie | "IL" -> `Il | "IN" -> `In | "IR" -> `Ir | "IT" -> `It | "JP" -> `Jp | "KR" -> `Kr | "LV" -> `Lv | "MA" -> `Ma | "MX" -> `Mx | "MY" -> `My | "NG" -> `Ng | "NL" -> `Nl | "NO" -> `No | "NZ" -> `Nz | "PE" -> `Pe | "PH" -> `Ph | "PK" -> `Pk | "PL" -> `Pl | "PT" -> `Pt | "RO" -> `Ro | "RS" -> `Rs | "RU" -> `Ru | "SA" -> `Sa | "SE" -> `Se | "SG" -> `Sg | "SI" -> `Si | "SK" -> `Sk | "TH" -> `Th | "TR" -> `Tr | "TW" -> `Tw | "UA" -> `Ua | "US" -> `Us | "VE" -> `Ve | "VN" -> `Vn | "ZA" -> `Za | value -> `Unrecognized value);
    holiday_regions = member "holidayRegions" json |> to_option (convert_each (fun json -> match to_string json with "HOLIDAY_REGION_UNSPECIFIED" -> `Holiday_region_unspecified | "GLOBAL" -> `Global | "NA" -> `Na | "JAPAC" -> `Japac | "EMEA" -> `Emea | "LAC" -> `Lac | "AE" -> `Ae | "AR" -> `Ar | "AT" -> `At | "AU" -> `Au | "BE" -> `Be | "BR" -> `Br | "CA" -> `Ca | "CH" -> `Ch | "CL" -> `Cl | "CN" -> `Cn | "CO" -> `Co | "CS" -> `Cs | "CZ" -> `Cz | "DE" -> `De | "DK" -> `Dk | "DZ" -> `Dz | "EC" -> `Ec | "EE" -> `Ee | "EG" -> `Eg | "ES" -> `Es | "FI" -> `Fi | "FR" -> `Fr | "GB" -> `Gb | "GR" -> `Gr | "HK" -> `Hk | "HU" -> `Hu | "ID" -> `Id | "IE" -> `Ie | "IL" -> `Il | "IN" -> `In | "IR" -> `Ir | "IT" -> `It | "JP" -> `Jp | "KR" -> `Kr | "LV" -> `Lv | "MA" -> `Ma | "MX" -> `Mx | "MY" -> `My | "NG" -> `Ng | "NL" -> `Nl | "NO" -> `No | "NZ" -> `Nz | "PE" -> `Pe | "PH" -> `Ph | "PK" -> `Pk | "PL" -> `Pl | "PT" -> `Pt | "RO" -> `Ro | "RS" -> `Rs | "RU" -> `Ru | "SA" -> `Sa | "SE" -> `Se | "SG" -> `Sg | "SI" -> `Si | "SK" -> `Sk | "TH" -> `Th | "TR" -> `Tr | "TW" -> `Tw | "UA" -> `Ua | "US" -> `Us | "VE" -> `Ve | "VN" -> `Vn | "ZA" -> `Za | value -> `Unrecognized value));
    horizon = member "horizon" json |> to_option to_string;
    hparam_tuning_objectives = member "hparamTuningObjectives" json |> to_option (convert_each (fun json -> match to_string json with "HPARAM_TUNING_OBJECTIVE_UNSPECIFIED" -> `Hparam_tuning_objective_unspecified | "MEAN_ABSOLUTE_ERROR" -> `Mean_absolute_error | "MEAN_SQUARED_ERROR" -> `Mean_squared_error | "MEAN_SQUARED_LOG_ERROR" -> `Mean_squared_log_error | "MEDIAN_ABSOLUTE_ERROR" -> `Median_absolute_error | "R_SQUARED" -> `R_squared | "EXPLAINED_VARIANCE" -> `Explained_variance | "PRECISION" -> `Precision | "RECALL" -> `Recall | "ACCURACY" -> `Accuracy | "F1_SCORE" -> `F1_score | "LOG_LOSS" -> `Log_loss | "ROC_AUC" -> `Roc_auc | "DAVIES_BOULDIN_INDEX" -> `Davies_bouldin_index | "MEAN_AVERAGE_PRECISION" -> `Mean_average_precision | "NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN" -> `Normalized_discounted_cumulative_gain | "AVERAGE_RANK" -> `Average_rank | value -> `Unrecognized value));
    hugging_face_model_id = member "huggingFaceModelId" json |> to_option to_string;
    include_drift = member "includeDrift" json |> to_option to_bool;
    initial_learn_rate = member "initialLearnRate" json |> to_option to_number;
    input_label_columns = member "inputLabelColumns" json |> to_option (convert_each to_string);
    instance_weight_column = member "instanceWeightColumn" json |> to_option to_string;
    integrated_gradients_num_steps = member "integratedGradientsNumSteps" json |> to_option to_string;
    is_test_column = member "isTestColumn" json |> to_option to_string;
    item_column = member "itemColumn" json |> to_option to_string;
    kmeans_initialization_column = member "kmeansInitializationColumn" json |> to_option to_string;
    kmeans_initialization_method = member "kmeansInitializationMethod" json |> to_option (fun json -> match to_string json with "KMEANS_INITIALIZATION_METHOD_UNSPECIFIED" -> `Kmeans_initialization_method_unspecified | "RANDOM" -> `Random | "CUSTOM" -> `Custom | "KMEANS_PLUS_PLUS" -> `Kmeans_plus_plus | value -> `Unrecognized value);
    l1_reg_activation = member "l1RegActivation" json |> to_option to_number;
    l1_regularization = member "l1Regularization" json |> to_option to_number;
    l2_regularization = member "l2Regularization" json |> to_option to_number;
    label_class_weights = member "labelClassWeights" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_number value)) (to_assoc json));
    learn_rate = member "learnRate" json |> to_option to_number;
    learn_rate_strategy = member "learnRateStrategy" json |> to_option (fun json -> match to_string json with "LEARN_RATE_STRATEGY_UNSPECIFIED" -> `Learn_rate_strategy_unspecified | "LINE_SEARCH" -> `Line_search | "CONSTANT" -> `Constant | value -> `Unrecognized value);
    loss_type = member "lossType" json |> to_option (fun json -> match to_string json with "LOSS_TYPE_UNSPECIFIED" -> `Loss_type_unspecified | "MEAN_SQUARED_LOSS" -> `Mean_squared_loss | "MEAN_LOG_LOSS" -> `Mean_log_loss | value -> `Unrecognized value);
    machine_type = member "machineType" json |> to_option to_string;
    max_iterations = member "maxIterations" json |> to_option to_string;
    max_parallel_trials = member "maxParallelTrials" json |> to_option to_string;
    max_replica_count = member "maxReplicaCount" json |> to_option to_string;
    max_time_series_length = member "maxTimeSeriesLength" json |> to_option to_string;
    max_tree_depth = member "maxTreeDepth" json |> to_option to_string;
    min_apriori_support = member "minAprioriSupport" json |> to_option to_number;
    min_relative_progress = member "minRelativeProgress" json |> to_option to_number;
    min_replica_count = member "minReplicaCount" json |> to_option to_string;
    min_split_loss = member "minSplitLoss" json |> to_option to_number;
    min_time_series_length = member "minTimeSeriesLength" json |> to_option to_string;
    min_tree_child_weight = member "minTreeChildWeight" json |> to_option to_string;
    model_garden_model_name = member "modelGardenModelName" json |> to_option to_string;
    model_registry = member "modelRegistry" json |> to_option (fun json -> match to_string json with "MODEL_REGISTRY_UNSPECIFIED" -> `Model_registry_unspecified | "VERTEX_AI" -> `Vertex_ai | value -> `Unrecognized value);
    model_uri = member "modelUri" json |> to_option to_string;
    non_seasonal_order = member "nonSeasonalOrder" json |> to_option arima_order_of_yojson;
    num_clusters = member "numClusters" json |> to_option to_string;
    num_factors = member "numFactors" json |> to_option to_string;
    num_parallel_tree = member "numParallelTree" json |> to_option to_string;
    num_principal_components = member "numPrincipalComponents" json |> to_option to_string;
    num_trials = member "numTrials" json |> to_option to_string;
    optimization_strategy = member "optimizationStrategy" json |> to_option (fun json -> match to_string json with "OPTIMIZATION_STRATEGY_UNSPECIFIED" -> `Optimization_strategy_unspecified | "BATCH_GRADIENT_DESCENT" -> `Batch_gradient_descent | "NORMAL_EQUATION" -> `Normal_equation | value -> `Unrecognized value);
    optimizer = member "optimizer" json |> to_option to_string;
    pca_explained_variance_ratio = member "pcaExplainedVarianceRatio" json |> to_option to_number;
    pca_solver = member "pcaSolver" json |> to_option (fun json -> match to_string json with "UNSPECIFIED" -> `Unspecified | "FULL" -> `Full | "RANDOMIZED" -> `Randomized | "AUTO" -> `Auto | value -> `Unrecognized value);
    reservation_affinity_key = member "reservationAffinityKey" json |> to_option to_string;
    reservation_affinity_type = member "reservationAffinityType" json |> to_option (fun json -> match to_string json with "RESERVATION_AFFINITY_TYPE_UNSPECIFIED" -> `Reservation_affinity_type_unspecified | "NO_RESERVATION" -> `No_reservation | "ANY_RESERVATION" -> `Any_reservation | "SPECIFIC_RESERVATION" -> `Specific_reservation | value -> `Unrecognized value);
    reservation_affinity_values = member "reservationAffinityValues" json |> to_option (convert_each to_string);
    sampled_shapley_num_paths = member "sampledShapleyNumPaths" json |> to_option to_string;
    scale_features = member "scaleFeatures" json |> to_option to_bool;
    standardize_features = member "standardizeFeatures" json |> to_option to_bool;
    subsample = member "subsample" json |> to_option to_number;
    tf_version = member "tfVersion" json |> to_option to_string;
    time_series_data_column = member "timeSeriesDataColumn" json |> to_option to_string;
    time_series_id_column = member "timeSeriesIdColumn" json |> to_option to_string;
    time_series_id_columns = member "timeSeriesIdColumns" json |> to_option (convert_each to_string);
    time_series_length_fraction = member "timeSeriesLengthFraction" json |> to_option to_number;
    time_series_timestamp_column = member "timeSeriesTimestampColumn" json |> to_option to_string;
    tree_method = member "treeMethod" json |> to_option (fun json -> match to_string json with "TREE_METHOD_UNSPECIFIED" -> `Tree_method_unspecified | "AUTO" -> `Auto | "EXACT" -> `Exact | "APPROX" -> `Approx | "HIST" -> `Hist | value -> `Unrecognized value);
    trend_smoothing_window_size = member "trendSmoothingWindowSize" json |> to_option to_string;
    user_column = member "userColumn" json |> to_option to_string;
    vertex_ai_model_version_aliases = member "vertexAiModelVersionAliases" json |> to_option (convert_each to_string);
    wals_alpha = member "walsAlpha" json |> to_option to_number;
    warm_start = member "warmStart" json |> to_option to_bool;
    xgboost_version = member "xgboostVersion" json |> to_option to_string;
  }

and yojson_of_training_options (value : training_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("activationFn", (fun value -> `String value) field)) value.activation_fn;
         Option.map (fun field -> ("adjustStepChanges", (fun value -> `Bool value) field)) value.adjust_step_changes;
         Option.map (fun field -> ("approxGlobalFeatureContrib", (fun value -> `Bool value) field)) value.approx_global_feature_contrib;
         Option.map (fun field -> ("autoArima", (fun value -> `Bool value) field)) value.auto_arima;
         Option.map (fun field -> ("autoArimaMaxOrder", (fun value -> `String value) field)) value.auto_arima_max_order;
         Option.map (fun field -> ("autoArimaMinOrder", (fun value -> `String value) field)) value.auto_arima_min_order;
         Option.map (fun field -> ("autoClassWeights", (fun value -> `Bool value) field)) value.auto_class_weights;
         Option.map (fun field -> ("batchSize", (fun value -> `String value) field)) value.batch_size;
         Option.map (fun field -> ("boosterType", (fun value -> `String ((function `Booster_type_unspecified -> "BOOSTER_TYPE_UNSPECIFIED" | `Gbtree -> "GBTREE" | `Dart -> "DART" | `Unrecognized value -> value) value)) field)) value.booster_type;
         Option.map (fun field -> ("budgetHours", (fun value -> `Float value) field)) value.budget_hours;
         Option.map (fun field -> ("calculatePValues", (fun value -> `Bool value) field)) value.calculate_p_values;
         Option.map (fun field -> ("categoryEncodingMethod", (fun value -> `String ((function `Encoding_method_unspecified -> "ENCODING_METHOD_UNSPECIFIED" | `One_hot_encoding -> "ONE_HOT_ENCODING" | `Label_encoding -> "LABEL_ENCODING" | `Dummy_encoding -> "DUMMY_ENCODING" | `Unrecognized value -> value) value)) field)) value.category_encoding_method;
         Option.map (fun field -> ("cleanSpikesAndDips", (fun value -> `Bool value) field)) value.clean_spikes_and_dips;
         Option.map (fun field -> ("colorSpace", (fun value -> `String ((function `Color_space_unspecified -> "COLOR_SPACE_UNSPECIFIED" | `Rgb -> "RGB" | `Hsv -> "HSV" | `Yiq -> "YIQ" | `Yuv -> "YUV" | `Grayscale -> "GRAYSCALE" | `Unrecognized value -> value) value)) field)) value.color_space;
         Option.map (fun field -> ("colsampleBylevel", (fun value -> `Float value) field)) value.colsample_bylevel;
         Option.map (fun field -> ("colsampleBynode", (fun value -> `Float value) field)) value.colsample_bynode;
         Option.map (fun field -> ("colsampleBytree", (fun value -> `Float value) field)) value.colsample_bytree;
         Option.map (fun field -> ("contributionMetric", (fun value -> `String value) field)) value.contribution_metric;
         Option.map (fun field -> ("dartNormalizeType", (fun value -> `String ((function `Dart_normalize_type_unspecified -> "DART_NORMALIZE_TYPE_UNSPECIFIED" | `Tree -> "TREE" | `Forest -> "FOREST" | `Unrecognized value -> value) value)) field)) value.dart_normalize_type;
         Option.map (fun field -> ("dataFrequency", (fun value -> `String ((function `Data_frequency_unspecified -> "DATA_FREQUENCY_UNSPECIFIED" | `Auto_frequency -> "AUTO_FREQUENCY" | `Yearly -> "YEARLY" | `Quarterly -> "QUARTERLY" | `Monthly -> "MONTHLY" | `Weekly -> "WEEKLY" | `Daily -> "DAILY" | `Hourly -> "HOURLY" | `Per_minute -> "PER_MINUTE" | `Unrecognized value -> value) value)) field)) value.data_frequency;
         Option.map (fun field -> ("dataSplitColumn", (fun value -> `String value) field)) value.data_split_column;
         Option.map (fun field -> ("dataSplitEvalFraction", (fun value -> `Float value) field)) value.data_split_eval_fraction;
         Option.map (fun field -> ("dataSplitMethod", (fun value -> `String ((function `Data_split_method_unspecified -> "DATA_SPLIT_METHOD_UNSPECIFIED" | `Random -> "RANDOM" | `Custom -> "CUSTOM" | `Sequential -> "SEQUENTIAL" | `No_split -> "NO_SPLIT" | `Auto_split -> "AUTO_SPLIT" | `Unrecognized value -> value) value)) field)) value.data_split_method;
         Option.map (fun field -> ("decomposeTimeSeries", (fun value -> `Bool value) field)) value.decompose_time_series;
         Option.map (fun field -> ("dimensionIdColumns", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.dimension_id_columns;
         Option.map (fun field -> ("distanceType", (fun value -> `String ((function `Distance_type_unspecified -> "DISTANCE_TYPE_UNSPECIFIED" | `Euclidean -> "EUCLIDEAN" | `Cosine -> "COSINE" | `Unrecognized value -> value) value)) field)) value.distance_type;
         Option.map (fun field -> ("dropout", (fun value -> `Float value) field)) value.dropout;
         Option.map (fun field -> ("earlyStop", (fun value -> `Bool value) field)) value.early_stop;
         Option.map (fun field -> ("enableGlobalExplain", (fun value -> `Bool value) field)) value.enable_global_explain;
         Option.map (fun field -> ("endpointIdleTtl", (fun value -> `String value) field)) value.endpoint_idle_ttl;
         Option.map (fun field -> ("feedbackType", (fun value -> `String ((function `Feedback_type_unspecified -> "FEEDBACK_TYPE_UNSPECIFIED" | `Implicit -> "IMPLICIT" | `Explicit -> "EXPLICIT" | `Unrecognized value -> value) value)) field)) value.feedback_type;
         Option.map (fun field -> ("fitIntercept", (fun value -> `Bool value) field)) value.fit_intercept;
         Option.map (fun field -> ("forecastLimitLowerBound", (fun value -> `Float value) field)) value.forecast_limit_lower_bound;
         Option.map (fun field -> ("forecastLimitUpperBound", (fun value -> `Float value) field)) value.forecast_limit_upper_bound;
         Option.map (fun field -> ("hiddenUnits", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.hidden_units;
         Option.map (fun field -> ("holidayRegion", (fun value -> `String ((function `Holiday_region_unspecified -> "HOLIDAY_REGION_UNSPECIFIED" | `Global -> "GLOBAL" | `Na -> "NA" | `Japac -> "JAPAC" | `Emea -> "EMEA" | `Lac -> "LAC" | `Ae -> "AE" | `Ar -> "AR" | `At -> "AT" | `Au -> "AU" | `Be -> "BE" | `Br -> "BR" | `Ca -> "CA" | `Ch -> "CH" | `Cl -> "CL" | `Cn -> "CN" | `Co -> "CO" | `Cs -> "CS" | `Cz -> "CZ" | `De -> "DE" | `Dk -> "DK" | `Dz -> "DZ" | `Ec -> "EC" | `Ee -> "EE" | `Eg -> "EG" | `Es -> "ES" | `Fi -> "FI" | `Fr -> "FR" | `Gb -> "GB" | `Gr -> "GR" | `Hk -> "HK" | `Hu -> "HU" | `Id -> "ID" | `Ie -> "IE" | `Il -> "IL" | `In -> "IN" | `Ir -> "IR" | `It -> "IT" | `Jp -> "JP" | `Kr -> "KR" | `Lv -> "LV" | `Ma -> "MA" | `Mx -> "MX" | `My -> "MY" | `Ng -> "NG" | `Nl -> "NL" | `No -> "NO" | `Nz -> "NZ" | `Pe -> "PE" | `Ph -> "PH" | `Pk -> "PK" | `Pl -> "PL" | `Pt -> "PT" | `Ro -> "RO" | `Rs -> "RS" | `Ru -> "RU" | `Sa -> "SA" | `Se -> "SE" | `Sg -> "SG" | `Si -> "SI" | `Sk -> "SK" | `Th -> "TH" | `Tr -> "TR" | `Tw -> "TW" | `Ua -> "UA" | `Us -> "US" | `Ve -> "VE" | `Vn -> "VN" | `Za -> "ZA" | `Unrecognized value -> value) value)) field)) value.holiday_region;
         Option.map (fun field -> ("holidayRegions", (fun items -> `List (List.map (fun value -> `String ((function `Holiday_region_unspecified -> "HOLIDAY_REGION_UNSPECIFIED" | `Global -> "GLOBAL" | `Na -> "NA" | `Japac -> "JAPAC" | `Emea -> "EMEA" | `Lac -> "LAC" | `Ae -> "AE" | `Ar -> "AR" | `At -> "AT" | `Au -> "AU" | `Be -> "BE" | `Br -> "BR" | `Ca -> "CA" | `Ch -> "CH" | `Cl -> "CL" | `Cn -> "CN" | `Co -> "CO" | `Cs -> "CS" | `Cz -> "CZ" | `De -> "DE" | `Dk -> "DK" | `Dz -> "DZ" | `Ec -> "EC" | `Ee -> "EE" | `Eg -> "EG" | `Es -> "ES" | `Fi -> "FI" | `Fr -> "FR" | `Gb -> "GB" | `Gr -> "GR" | `Hk -> "HK" | `Hu -> "HU" | `Id -> "ID" | `Ie -> "IE" | `Il -> "IL" | `In -> "IN" | `Ir -> "IR" | `It -> "IT" | `Jp -> "JP" | `Kr -> "KR" | `Lv -> "LV" | `Ma -> "MA" | `Mx -> "MX" | `My -> "MY" | `Ng -> "NG" | `Nl -> "NL" | `No -> "NO" | `Nz -> "NZ" | `Pe -> "PE" | `Ph -> "PH" | `Pk -> "PK" | `Pl -> "PL" | `Pt -> "PT" | `Ro -> "RO" | `Rs -> "RS" | `Ru -> "RU" | `Sa -> "SA" | `Se -> "SE" | `Sg -> "SG" | `Si -> "SI" | `Sk -> "SK" | `Th -> "TH" | `Tr -> "TR" | `Tw -> "TW" | `Ua -> "UA" | `Us -> "US" | `Ve -> "VE" | `Vn -> "VN" | `Za -> "ZA" | `Unrecognized value -> value) value)) items)) field)) value.holiday_regions;
         Option.map (fun field -> ("horizon", (fun value -> `String value) field)) value.horizon;
         Option.map (fun field -> ("hparamTuningObjectives", (fun items -> `List (List.map (fun value -> `String ((function `Hparam_tuning_objective_unspecified -> "HPARAM_TUNING_OBJECTIVE_UNSPECIFIED" | `Mean_absolute_error -> "MEAN_ABSOLUTE_ERROR" | `Mean_squared_error -> "MEAN_SQUARED_ERROR" | `Mean_squared_log_error -> "MEAN_SQUARED_LOG_ERROR" | `Median_absolute_error -> "MEDIAN_ABSOLUTE_ERROR" | `R_squared -> "R_SQUARED" | `Explained_variance -> "EXPLAINED_VARIANCE" | `Precision -> "PRECISION" | `Recall -> "RECALL" | `Accuracy -> "ACCURACY" | `F1_score -> "F1_SCORE" | `Log_loss -> "LOG_LOSS" | `Roc_auc -> "ROC_AUC" | `Davies_bouldin_index -> "DAVIES_BOULDIN_INDEX" | `Mean_average_precision -> "MEAN_AVERAGE_PRECISION" | `Normalized_discounted_cumulative_gain -> "NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN" | `Average_rank -> "AVERAGE_RANK" | `Unrecognized value -> value) value)) items)) field)) value.hparam_tuning_objectives;
         Option.map (fun field -> ("huggingFaceModelId", (fun value -> `String value) field)) value.hugging_face_model_id;
         Option.map (fun field -> ("includeDrift", (fun value -> `Bool value) field)) value.include_drift;
         Option.map (fun field -> ("initialLearnRate", (fun value -> `Float value) field)) value.initial_learn_rate;
         Option.map (fun field -> ("inputLabelColumns", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.input_label_columns;
         Option.map (fun field -> ("instanceWeightColumn", (fun value -> `String value) field)) value.instance_weight_column;
         Option.map (fun field -> ("integratedGradientsNumSteps", (fun value -> `String value) field)) value.integrated_gradients_num_steps;
         Option.map (fun field -> ("isTestColumn", (fun value -> `String value) field)) value.is_test_column;
         Option.map (fun field -> ("itemColumn", (fun value -> `String value) field)) value.item_column;
         Option.map (fun field -> ("kmeansInitializationColumn", (fun value -> `String value) field)) value.kmeans_initialization_column;
         Option.map (fun field -> ("kmeansInitializationMethod", (fun value -> `String ((function `Kmeans_initialization_method_unspecified -> "KMEANS_INITIALIZATION_METHOD_UNSPECIFIED" | `Random -> "RANDOM" | `Custom -> "CUSTOM" | `Kmeans_plus_plus -> "KMEANS_PLUS_PLUS" | `Unrecognized value -> value) value)) field)) value.kmeans_initialization_method;
         Option.map (fun field -> ("l1RegActivation", (fun value -> `Float value) field)) value.l1_reg_activation;
         Option.map (fun field -> ("l1Regularization", (fun value -> `Float value) field)) value.l1_regularization;
         Option.map (fun field -> ("l2Regularization", (fun value -> `Float value) field)) value.l2_regularization;
         Option.map (fun field -> ("labelClassWeights", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `Float value) value)) members)) field)) value.label_class_weights;
         Option.map (fun field -> ("learnRate", (fun value -> `Float value) field)) value.learn_rate;
         Option.map (fun field -> ("learnRateStrategy", (fun value -> `String ((function `Learn_rate_strategy_unspecified -> "LEARN_RATE_STRATEGY_UNSPECIFIED" | `Line_search -> "LINE_SEARCH" | `Constant -> "CONSTANT" | `Unrecognized value -> value) value)) field)) value.learn_rate_strategy;
         Option.map (fun field -> ("lossType", (fun value -> `String ((function `Loss_type_unspecified -> "LOSS_TYPE_UNSPECIFIED" | `Mean_squared_loss -> "MEAN_SQUARED_LOSS" | `Mean_log_loss -> "MEAN_LOG_LOSS" | `Unrecognized value -> value) value)) field)) value.loss_type;
         Option.map (fun field -> ("machineType", (fun value -> `String value) field)) value.machine_type;
         Option.map (fun field -> ("maxIterations", (fun value -> `String value) field)) value.max_iterations;
         Option.map (fun field -> ("maxParallelTrials", (fun value -> `String value) field)) value.max_parallel_trials;
         Option.map (fun field -> ("maxReplicaCount", (fun value -> `String value) field)) value.max_replica_count;
         Option.map (fun field -> ("maxTimeSeriesLength", (fun value -> `String value) field)) value.max_time_series_length;
         Option.map (fun field -> ("maxTreeDepth", (fun value -> `String value) field)) value.max_tree_depth;
         Option.map (fun field -> ("minAprioriSupport", (fun value -> `Float value) field)) value.min_apriori_support;
         Option.map (fun field -> ("minRelativeProgress", (fun value -> `Float value) field)) value.min_relative_progress;
         Option.map (fun field -> ("minReplicaCount", (fun value -> `String value) field)) value.min_replica_count;
         Option.map (fun field -> ("minSplitLoss", (fun value -> `Float value) field)) value.min_split_loss;
         Option.map (fun field -> ("minTimeSeriesLength", (fun value -> `String value) field)) value.min_time_series_length;
         Option.map (fun field -> ("minTreeChildWeight", (fun value -> `String value) field)) value.min_tree_child_weight;
         Option.map (fun field -> ("modelGardenModelName", (fun value -> `String value) field)) value.model_garden_model_name;
         Option.map (fun field -> ("modelRegistry", (fun value -> `String ((function `Model_registry_unspecified -> "MODEL_REGISTRY_UNSPECIFIED" | `Vertex_ai -> "VERTEX_AI" | `Unrecognized value -> value) value)) field)) value.model_registry;
         Option.map (fun field -> ("modelUri", (fun value -> `String value) field)) value.model_uri;
         Option.map (fun field -> ("nonSeasonalOrder", yojson_of_arima_order field)) value.non_seasonal_order;
         Option.map (fun field -> ("numClusters", (fun value -> `String value) field)) value.num_clusters;
         Option.map (fun field -> ("numFactors", (fun value -> `String value) field)) value.num_factors;
         Option.map (fun field -> ("numParallelTree", (fun value -> `String value) field)) value.num_parallel_tree;
         Option.map (fun field -> ("numPrincipalComponents", (fun value -> `String value) field)) value.num_principal_components;
         Option.map (fun field -> ("numTrials", (fun value -> `String value) field)) value.num_trials;
         Option.map (fun field -> ("optimizationStrategy", (fun value -> `String ((function `Optimization_strategy_unspecified -> "OPTIMIZATION_STRATEGY_UNSPECIFIED" | `Batch_gradient_descent -> "BATCH_GRADIENT_DESCENT" | `Normal_equation -> "NORMAL_EQUATION" | `Unrecognized value -> value) value)) field)) value.optimization_strategy;
         Option.map (fun field -> ("optimizer", (fun value -> `String value) field)) value.optimizer;
         Option.map (fun field -> ("pcaExplainedVarianceRatio", (fun value -> `Float value) field)) value.pca_explained_variance_ratio;
         Option.map (fun field -> ("pcaSolver", (fun value -> `String ((function `Unspecified -> "UNSPECIFIED" | `Full -> "FULL" | `Randomized -> "RANDOMIZED" | `Auto -> "AUTO" | `Unrecognized value -> value) value)) field)) value.pca_solver;
         Option.map (fun field -> ("reservationAffinityKey", (fun value -> `String value) field)) value.reservation_affinity_key;
         Option.map (fun field -> ("reservationAffinityType", (fun value -> `String ((function `Reservation_affinity_type_unspecified -> "RESERVATION_AFFINITY_TYPE_UNSPECIFIED" | `No_reservation -> "NO_RESERVATION" | `Any_reservation -> "ANY_RESERVATION" | `Specific_reservation -> "SPECIFIC_RESERVATION" | `Unrecognized value -> value) value)) field)) value.reservation_affinity_type;
         Option.map (fun field -> ("reservationAffinityValues", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.reservation_affinity_values;
         Option.map (fun field -> ("sampledShapleyNumPaths", (fun value -> `String value) field)) value.sampled_shapley_num_paths;
         Option.map (fun field -> ("scaleFeatures", (fun value -> `Bool value) field)) value.scale_features;
         Option.map (fun field -> ("standardizeFeatures", (fun value -> `Bool value) field)) value.standardize_features;
         Option.map (fun field -> ("subsample", (fun value -> `Float value) field)) value.subsample;
         Option.map (fun field -> ("tfVersion", (fun value -> `String value) field)) value.tf_version;
         Option.map (fun field -> ("timeSeriesDataColumn", (fun value -> `String value) field)) value.time_series_data_column;
         Option.map (fun field -> ("timeSeriesIdColumn", (fun value -> `String value) field)) value.time_series_id_column;
         Option.map (fun field -> ("timeSeriesIdColumns", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.time_series_id_columns;
         Option.map (fun field -> ("timeSeriesLengthFraction", (fun value -> `Float value) field)) value.time_series_length_fraction;
         Option.map (fun field -> ("timeSeriesTimestampColumn", (fun value -> `String value) field)) value.time_series_timestamp_column;
         Option.map (fun field -> ("treeMethod", (fun value -> `String ((function `Tree_method_unspecified -> "TREE_METHOD_UNSPECIFIED" | `Auto -> "AUTO" | `Exact -> "EXACT" | `Approx -> "APPROX" | `Hist -> "HIST" | `Unrecognized value -> value) value)) field)) value.tree_method;
         Option.map (fun field -> ("trendSmoothingWindowSize", (fun value -> `String value) field)) value.trend_smoothing_window_size;
         Option.map (fun field -> ("userColumn", (fun value -> `String value) field)) value.user_column;
         Option.map (fun field -> ("vertexAiModelVersionAliases", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.vertex_ai_model_version_aliases;
         Option.map (fun field -> ("walsAlpha", (fun value -> `Float value) field)) value.wals_alpha;
         Option.map (fun field -> ("warmStart", (fun value -> `Bool value) field)) value.warm_start;
         Option.map (fun field -> ("xgboostVersion", (fun value -> `String value) field)) value.xgboost_version;
       ])

and training_run_of_yojson json : training_run =
  let open Yojson.Safe.Util in
  {
    class_level_global_explanations = member "classLevelGlobalExplanations" json |> to_option (convert_each global_explanation_of_yojson);
    data_split_result = member "dataSplitResult" json |> to_option data_split_result_of_yojson;
    evaluation_metrics = member "evaluationMetrics" json |> to_option evaluation_metrics_of_yojson;
    model_level_global_explanation = member "modelLevelGlobalExplanation" json |> to_option global_explanation_of_yojson;
    results = member "results" json |> to_option (convert_each iteration_result_of_yojson);
    start_time = member "startTime" json |> to_option to_string;
    training_options = member "trainingOptions" json |> to_option training_options_of_yojson;
    training_start_time = member "trainingStartTime" json |> to_option to_string;
    vertex_ai_model_id = member "vertexAiModelId" json |> to_option to_string;
    vertex_ai_model_version = member "vertexAiModelVersion" json |> to_option to_string;
  }

and yojson_of_training_run (value : training_run) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("classLevelGlobalExplanations", (fun items -> `List (List.map yojson_of_global_explanation items)) field)) value.class_level_global_explanations;
         Option.map (fun field -> ("dataSplitResult", yojson_of_data_split_result field)) value.data_split_result;
         Option.map (fun field -> ("evaluationMetrics", yojson_of_evaluation_metrics field)) value.evaluation_metrics;
         Option.map (fun field -> ("modelLevelGlobalExplanation", yojson_of_global_explanation field)) value.model_level_global_explanation;
         Option.map (fun field -> ("results", (fun items -> `List (List.map yojson_of_iteration_result items)) field)) value.results;
         Option.map (fun field -> ("startTime", (fun value -> `String value) field)) value.start_time;
         Option.map (fun field -> ("trainingOptions", yojson_of_training_options field)) value.training_options;
         Option.map (fun field -> ("trainingStartTime", (fun value -> `String value) field)) value.training_start_time;
         Option.map (fun field -> ("vertexAiModelId", (fun value -> `String value) field)) value.vertex_ai_model_id;
         Option.map (fun field -> ("vertexAiModelVersion", (fun value -> `String value) field)) value.vertex_ai_model_version;
       ])

and transaction_info_of_yojson json : transaction_info =
  let open Yojson.Safe.Util in
  {
    transaction_id = member "transactionId" json |> to_option to_string;
  }

and yojson_of_transaction_info (value : transaction_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("transactionId", (fun value -> `String value) field)) value.transaction_id;
       ])

and transform_column_of_yojson json : transform_column =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    transform_sql = member "transformSql" json |> to_option to_string;
    type_ = member "type" json |> to_option standard_sql_data_type_of_yojson;
  }

and yojson_of_transform_column (value : transform_column) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("transformSql", (fun value -> `String value) field)) value.transform_sql;
         Option.map (fun field -> ("type", yojson_of_standard_sql_data_type field)) value.type_;
       ])

and undelete_dataset_request_of_yojson json : undelete_dataset_request =
  let open Yojson.Safe.Util in
  {
    deletion_time = member "deletionTime" json |> to_option to_string;
  }

and yojson_of_undelete_dataset_request (value : undelete_dataset_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deletionTime", (fun value -> `String value) field)) value.deletion_time;
       ])

and user_defined_function_resource_of_yojson json : user_defined_function_resource =
  let open Yojson.Safe.Util in
  {
    inline_code = member "inlineCode" json |> to_option to_string;
    resource_uri = member "resourceUri" json |> to_option to_string;
  }

and yojson_of_user_defined_function_resource (value : user_defined_function_resource) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("inlineCode", (fun value -> `String value) field)) value.inline_code;
         Option.map (fun field -> ("resourceUri", (fun value -> `String value) field)) value.resource_uri;
       ])

and vector_search_statistics_of_yojson json : vector_search_statistics =
  let open Yojson.Safe.Util in
  {
    index_unused_reasons = member "indexUnusedReasons" json |> to_option (convert_each index_unused_reason_of_yojson);
    index_usage_mode = member "indexUsageMode" json |> to_option (fun json -> match to_string json with "INDEX_USAGE_MODE_UNSPECIFIED" -> `Index_usage_mode_unspecified | "UNUSED" -> `Unused | "PARTIALLY_USED" -> `Partially_used | "FULLY_USED" -> `Fully_used | value -> `Unrecognized value);
    stored_columns_usages = member "storedColumnsUsages" json |> to_option (convert_each stored_columns_usage_of_yojson);
  }

and yojson_of_vector_search_statistics (value : vector_search_statistics) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("indexUnusedReasons", (fun items -> `List (List.map yojson_of_index_unused_reason items)) field)) value.index_unused_reasons;
         Option.map (fun field -> ("indexUsageMode", (fun value -> `String ((function `Index_usage_mode_unspecified -> "INDEX_USAGE_MODE_UNSPECIFIED" | `Unused -> "UNUSED" | `Partially_used -> "PARTIALLY_USED" | `Fully_used -> "FULLY_USED" | `Unrecognized value -> value) value)) field)) value.index_usage_mode;
         Option.map (fun field -> ("storedColumnsUsages", (fun items -> `List (List.map yojson_of_stored_columns_usage items)) field)) value.stored_columns_usages;
       ])

and view_definition_of_yojson json : view_definition =
  let open Yojson.Safe.Util in
  {
    foreign_definitions = member "foreignDefinitions" json |> to_option (convert_each foreign_view_definition_of_yojson);
    privacy_policy = member "privacyPolicy" json |> to_option privacy_policy_of_yojson;
    query = member "query" json |> to_option to_string;
    use_explicit_column_names = member "useExplicitColumnNames" json |> to_option to_bool;
    use_legacy_sql = member "useLegacySql" json |> to_option to_bool;
    user_defined_function_resources = member "userDefinedFunctionResources" json |> to_option (convert_each user_defined_function_resource_of_yojson);
  }

and yojson_of_view_definition (value : view_definition) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("foreignDefinitions", (fun items -> `List (List.map yojson_of_foreign_view_definition items)) field)) value.foreign_definitions;
         Option.map (fun field -> ("privacyPolicy", yojson_of_privacy_policy field)) value.privacy_policy;
         Option.map (fun field -> ("query", (fun value -> `String value) field)) value.query;
         Option.map (fun field -> ("useExplicitColumnNames", (fun value -> `Bool value) field)) value.use_explicit_column_names;
         Option.map (fun field -> ("useLegacySql", (fun value -> `Bool value) field)) value.use_legacy_sql;
         Option.map (fun field -> ("userDefinedFunctionResources", (fun items -> `List (List.map yojson_of_user_defined_function_resource items)) field)) value.user_defined_function_resources;
       ])

let make_aggregate_classification_metrics ?accuracy ?f1_score ?log_loss ?precision ?recall ?roc_auc ?threshold () : aggregate_classification_metrics = { accuracy; f1_score; log_loss; precision; recall; roc_auc; threshold }

let make_aggregation_threshold_policy ?privacy_unit_columns ?threshold () : aggregation_threshold_policy = { privacy_unit_columns; threshold }

let make_argument ?argument_kind ?data_type ?is_aggregate ?mode ?name ?table_type () : argument = { argument_kind; data_type; is_aggregate; mode; name; table_type }

let make_arima_coefficients ?auto_regressive_coefficients ?intercept_coefficient ?moving_average_coefficients () : arima_coefficients = { auto_regressive_coefficients; intercept_coefficient; moving_average_coefficients }

let make_arima_fitting_metrics ?aic ?log_likelihood ?variance () : arima_fitting_metrics = { aic; log_likelihood; variance }

let make_arima_forecasting_metrics ?arima_fitting_metrics ?arima_single_model_forecasting_metrics ?has_drift ?non_seasonal_order ?seasonal_periods ?time_series_id () : arima_forecasting_metrics = { arima_fitting_metrics; arima_single_model_forecasting_metrics; has_drift; non_seasonal_order; seasonal_periods; time_series_id }

let make_arima_model_info ?arima_coefficients ?arima_fitting_metrics ?has_drift ?has_holiday_effect ?has_spikes_and_dips ?has_step_changes ?non_seasonal_order ?seasonal_periods ?time_series_id ?time_series_ids () : arima_model_info = { arima_coefficients; arima_fitting_metrics; has_drift; has_holiday_effect; has_spikes_and_dips; has_step_changes; non_seasonal_order; seasonal_periods; time_series_id; time_series_ids }

let make_arima_order ?d ?p ?q () : arima_order = { d; p; q }

let make_arima_result ?arima_model_info ?seasonal_periods () : arima_result = { arima_model_info; seasonal_periods }

let make_arima_single_model_forecasting_metrics ?arima_fitting_metrics ?has_drift ?has_holiday_effect ?has_spikes_and_dips ?has_step_changes ?non_seasonal_order ?seasonal_periods ?time_series_id ?time_series_ids () : arima_single_model_forecasting_metrics = { arima_fitting_metrics; has_drift; has_holiday_effect; has_spikes_and_dips; has_step_changes; non_seasonal_order; seasonal_periods; time_series_id; time_series_ids }

let make_arrow_record_batch ?serialized_record_batch () : arrow_record_batch = { serialized_record_batch }

let make_arrow_schema ?serialized_schema () : arrow_schema = { serialized_schema }

let make_arrow_serialization_options ?buffer_compression ?picos_timestamp_precision () : arrow_serialization_options = { buffer_compression; picos_timestamp_precision }

let make_audit_config ?audit_log_configs ?service () : audit_config = { audit_log_configs; service }

let make_audit_log_config ?exempted_members ?log_type () : audit_log_config = { exempted_members; log_type }

let make_avro_options ?use_avro_logical_types () : avro_options = { use_avro_logical_types }

let make_batch_delete_row_access_policies_request ?force ?policy_ids () : batch_delete_row_access_policies_request = { force; policy_ids }

let make_bi_engine_reason ?code ?message () : bi_engine_reason = { code; message }

let make_bi_engine_statistics ?acceleration_mode ?bi_engine_mode ?bi_engine_reasons () : bi_engine_statistics = { acceleration_mode; bi_engine_mode; bi_engine_reasons }

let make_big_lake_configuration ?connection_id ?file_format ?storage_uri ?table_format () : big_lake_configuration = { connection_id; file_format; storage_uri; table_format }

let make_big_query_model_training ?current_iteration ?expected_total_iterations () : big_query_model_training = { current_iteration; expected_total_iterations }

let make_bigtable_column ?encoding ?field_name ?only_read_latest ?proto_config ?qualifier_encoded ?qualifier_string ?type_ () : bigtable_column = { encoding; field_name; only_read_latest; proto_config; qualifier_encoded; qualifier_string; type_ }

let make_bigtable_column_family ?columns ?encoding ?family_id ?only_read_latest ?proto_config ?type_ () : bigtable_column_family = { columns; encoding; family_id; only_read_latest; proto_config; type_ }

let make_bigtable_options ?column_families ?ignore_unspecified_column_families ?output_column_families_as_json ?read_rowkey_as_string () : bigtable_options = { column_families; ignore_unspecified_column_families; output_column_families_as_json; read_rowkey_as_string }

let make_bigtable_proto_config ?proto_message_name ?schema_bundle_id () : bigtable_proto_config = { proto_message_name; schema_bundle_id }

let make_binary_classification_metrics ?aggregate_classification_metrics ?binary_confusion_matrix_list ?negative_label ?positive_label () : binary_classification_metrics = { aggregate_classification_metrics; binary_confusion_matrix_list; negative_label; positive_label }

let make_binary_confusion_matrix ?accuracy ?f1_score ?false_negatives ?false_positives ?positive_class_threshold ?precision ?recall ?true_negatives ?true_positives () : binary_confusion_matrix = { accuracy; f1_score; false_negatives; false_positives; positive_class_threshold; precision; recall; true_negatives; true_positives }

let make_binding ?condition ?members ?role () : binding = { condition; members; role }

let make_bqml_iteration_result ?duration_ms ?eval_loss ?index ?learn_rate ?training_loss () : bqml_iteration_result = { duration_ms; eval_loss; index; learn_rate; training_loss }

let make_bqml_training_run_training_options ?early_stop ?l1_reg ?l2_reg ?learn_rate ?learn_rate_strategy ?line_search_init_learn_rate ?max_iteration ?min_rel_progress ?warm_start () : bqml_training_run_training_options = { early_stop; l1_reg; l2_reg; learn_rate; learn_rate_strategy; line_search_init_learn_rate; max_iteration; min_rel_progress; warm_start }

let make_bqml_training_run ?iteration_results ?start_time ?state ?training_options () : bqml_training_run = { iteration_results; start_time; state; training_options }

let make_categorical_value ?category_counts () : categorical_value = { category_counts }

let make_category_count ?category ?count () : category_count = { category; count }

let make_clone_definition ?base_table_reference ?clone_time () : clone_definition = { base_table_reference; clone_time }

let make_cluster ?centroid_id ?count ?feature_values () : cluster = { centroid_id; count; feature_values }

let make_cluster_info ?centroid_id ?cluster_radius ?cluster_size () : cluster_info = { centroid_id; cluster_radius; cluster_size }

let make_clustering ?fields () : clustering = { fields }

let make_clustering_metrics ?clusters ?davies_bouldin_index ?mean_squared_distance () : clustering_metrics = { clusters; davies_bouldin_index; mean_squared_distance }

let make_confusion_matrix ?confidence_threshold ?rows () : confusion_matrix = { confidence_threshold; rows }

let make_connection_property ?key ?value () : connection_property = { key; value }

let make_csv_options ?allow_jagged_rows ?allow_quoted_newlines ?encoding ?field_delimiter ?null_marker ?null_markers ?preserve_ascii_control_characters ?quote ?skip_leading_rows ?source_column_match () : csv_options = { allow_jagged_rows; allow_quoted_newlines; encoding; field_delimiter; null_marker; null_markers; preserve_ascii_control_characters; quote; skip_leading_rows; source_column_match }

let make_data_format_options ?timestamp_output_format ?use_int64_timestamp () : data_format_options = { timestamp_output_format; use_int64_timestamp }

let make_data_masking_statistics ?data_masking_applied () : data_masking_statistics = { data_masking_applied }

let make_data_policy_list ?data_policies () : data_policy_list = { data_policies }

let make_data_policy_option ?name () : data_policy_option = { name }

let make_data_split_result ?evaluation_table ?test_table ?training_table () : data_split_result = { evaluation_table; test_table; training_table }

let make_dataset_access_item ?condition ?dataset ?domain ?group_by_email ?iam_member ?role ?routine ?special_group ?user_by_email ?view () : dataset_access_item = { condition; dataset; domain; group_by_email; iam_member; role; routine; special_group; user_by_email; view }

let make_dataset_tags_item ?tag_key ?tag_value () : dataset_tags_item = { tag_key; tag_value }

let make_dataset ?access ?catalog_source ?creation_time ?dataset_reference ?default_collation ?default_encryption_configuration ?default_partition_expiration_ms ?default_rounding_mode ?default_table_expiration_ms ?description ?etag ?external_catalog_dataset_options ?external_dataset_reference ?friendly_name ?id ?is_case_insensitive ?kind ?labels ?last_modified_time ?linked_dataset_metadata ?linked_dataset_source ?location ?max_time_travel_hours ?resource_tags ?restrictions ?satisfies_pzi ?satisfies_pzs ?self_link ?storage_billing_model ?tags ?type_ () : dataset = { access; catalog_source; creation_time; dataset_reference; default_collation; default_encryption_configuration; default_partition_expiration_ms; default_rounding_mode; default_table_expiration_ms; description; etag; external_catalog_dataset_options; external_dataset_reference; friendly_name; id; is_case_insensitive; kind; labels; last_modified_time; linked_dataset_metadata; linked_dataset_source; location; max_time_travel_hours; resource_tags; restrictions; satisfies_pzi; satisfies_pzs; self_link; storage_billing_model; tags; type_ }

let make_dataset_access_entry ?dataset ?target_types () : dataset_access_entry = { dataset; target_types }

let make_dataset_list_datasets_item ?catalog_source ?dataset_reference ?external_dataset_reference ?friendly_name ?id ?kind ?labels ?location ?type_ () : dataset_list_datasets_item = { catalog_source; dataset_reference; external_dataset_reference; friendly_name; id; kind; labels; location; type_ }

let make_dataset_list ?datasets ?etag ?kind ?next_page_token ?unreachable () : dataset_list = { datasets; etag; kind; next_page_token; unreachable }

let make_dataset_reference ?dataset_id ?project_id () : dataset_reference = { dataset_id; project_id }

let make_destination_table_properties ?description ?expiration_time ?friendly_name ?labels () : destination_table_properties = { description; expiration_time; friendly_name; labels }

let make_differential_privacy_policy ?delta_budget ?delta_budget_remaining ?delta_per_query ?epsilon_budget ?epsilon_budget_remaining ?max_epsilon_per_query ?max_groups_contributed ?privacy_unit_column () : differential_privacy_policy = { delta_budget; delta_budget_remaining; delta_per_query; epsilon_budget; epsilon_budget_remaining; max_epsilon_per_query; max_groups_contributed; privacy_unit_column }

let make_dimensionality_reduction_metrics ?total_explained_variance_ratio () : dimensionality_reduction_metrics = { total_explained_variance_ratio }

let make_dml_statistics ?deleted_row_count ?dml_mode ?fine_grained_dml_unused_reason ?inserted_row_count ?updated_row_count () : dml_statistics = { deleted_row_count; dml_mode; fine_grained_dml_unused_reason; inserted_row_count; updated_row_count }

let make_double_candidates ?candidates () : double_candidates = { candidates }

let make_double_hparam_search_space ?candidates ?range () : double_hparam_search_space = { candidates; range }

let make_double_range ?max ?min () : double_range = { max; min }

let make_encryption_configuration ?kms_key_name () : encryption_configuration = { kms_key_name }

let make_entry ?item_count ?predicted_label () : entry = { item_count; predicted_label }

let make_error_proto ?debug_info ?location ?message ?reason () : error_proto = { debug_info; location; message; reason }

let make_evaluation_metrics ?arima_forecasting_metrics ?binary_classification_metrics ?clustering_metrics ?dimensionality_reduction_metrics ?multi_class_classification_metrics ?ranking_metrics ?regression_metrics () : evaluation_metrics = { arima_forecasting_metrics; binary_classification_metrics; clustering_metrics; dimensionality_reduction_metrics; multi_class_classification_metrics; ranking_metrics; regression_metrics }

let make_explain_query_stage ?completed_parallel_inputs ?compute_mode ?compute_ms_avg ?compute_ms_max ?compute_ratio_avg ?compute_ratio_max ?end_ms ?id ?input_stages ?name ?parallel_inputs ?read_ms_avg ?read_ms_max ?read_ratio_avg ?read_ratio_max ?records_read ?records_written ?shuffle_output_bytes ?shuffle_output_bytes_spilled ?slot_ms ?start_ms ?status ?steps ?wait_ms_avg ?wait_ms_max ?wait_ratio_avg ?wait_ratio_max ?write_ms_avg ?write_ms_max ?write_ratio_avg ?write_ratio_max () : explain_query_stage = { completed_parallel_inputs; compute_mode; compute_ms_avg; compute_ms_max; compute_ratio_avg; compute_ratio_max; end_ms; id; input_stages; name; parallel_inputs; read_ms_avg; read_ms_max; read_ratio_avg; read_ratio_max; records_read; records_written; shuffle_output_bytes; shuffle_output_bytes_spilled; slot_ms; start_ms; status; steps; wait_ms_avg; wait_ms_max; wait_ratio_avg; wait_ratio_max; write_ms_avg; write_ms_max; write_ratio_avg; write_ratio_max }

let make_explain_query_step ?kind ?substeps () : explain_query_step = { kind; substeps }

let make_explanation ?attribution ?feature_name () : explanation = { attribution; feature_name }

let make_export_data_statistics ?file_count ?row_count () : export_data_statistics = { file_count; row_count }

let make_expr ?description ?expression ?location ?title () : expr = { description; expression; location; title }

let make_external_catalog_dataset_options ?default_storage_location_uri ?parameters () : external_catalog_dataset_options = { default_storage_location_uri; parameters }

let make_external_catalog_table_options ?connection_id ?parameters ?storage_descriptor () : external_catalog_table_options = { connection_id; parameters; storage_descriptor }

let make_external_data_configuration ?autodetect ?avro_options ?bigtable_options ?compression ?connection_id ?csv_options ?date_format ?datetime_format ?decimal_target_types ?file_set_spec_type ?google_sheets_options ?hive_partitioning_options ?ignore_unknown_values ?json_extension ?json_options ?max_bad_records ?metadata_cache_mode ?object_metadata ?parquet_options ?reference_file_schema_uri ?schema ?source_format ?source_uris ?time_format ?time_zone ?timestamp_format ?timestamp_target_precision () : external_data_configuration = { autodetect; avro_options; bigtable_options; compression; connection_id; csv_options; date_format; datetime_format; decimal_target_types; file_set_spec_type; google_sheets_options; hive_partitioning_options; ignore_unknown_values; json_extension; json_options; max_bad_records; metadata_cache_mode; object_metadata; parquet_options; reference_file_schema_uri; schema; source_format; source_uris; time_format; time_zone; timestamp_format; timestamp_target_precision }

let make_external_dataset_reference ?connection ?external_source () : external_dataset_reference = { connection; external_source }

let make_external_runtime_options ?container_cpu ?container_memory ?container_request_concurrency ?max_batching_rows ?runtime_connection ?runtime_version ?volume_mounts () : external_runtime_options = { container_cpu; container_memory; container_request_concurrency; max_batching_rows; runtime_connection; runtime_version; volume_mounts }

let make_external_service_cost ?billing_method ?bytes_billed ?bytes_processed ?external_service ?reserved_slot_count ?slot_ms () : external_service_cost = { billing_method; bytes_billed; bytes_processed; external_service; reserved_slot_count; slot_ms }

let make_external_volume_mount ?mount_path ?source_path () : external_volume_mount = { mount_path; source_path }

let make_feature_value ?categorical_value ?feature_column ?numerical_value () : feature_value = { categorical_value; feature_column; numerical_value }

let make_foreign_type_info ?type_system () : foreign_type_info = { type_system }

let make_foreign_view_definition ?dialect ?query () : foreign_view_definition = { dialect; query }

let make_gen_ai_error_stats ?errors () : gen_ai_error_stats = { errors }

let make_gen_ai_function_cache_stats ?num_cache_hit_rows () : gen_ai_function_cache_stats = { num_cache_hit_rows }

let make_gen_ai_function_cost_optimization_stats ?message ?num_cost_optimized_rows () : gen_ai_function_cost_optimization_stats = { message; num_cost_optimized_rows }

let make_gen_ai_function_error_stats ?errors ?num_failed_rows () : gen_ai_function_error_stats = { errors; num_failed_rows }

let make_gen_ai_function_stats ?cache_stats ?cost_optimization_stats ?error_stats ?function_name ?num_processed_rows ?prompt () : gen_ai_function_stats = { cache_stats; cost_optimization_stats; error_stats; function_name; num_processed_rows; prompt }

let make_gen_ai_stats ?error_stats ?function_stats () : gen_ai_stats = { error_stats; function_stats }

let make_generated_column ?generated_expression_info ?generated_mode () : generated_column = { generated_expression_info; generated_mode }

let make_generated_expression_info ?asynchronous ?generation_expression ?stored () : generated_expression_info = { asynchronous; generation_expression; stored }

let make_get_iam_policy_request ?options () : get_iam_policy_request = { options }

let make_get_policy_options ?requested_policy_version () : get_policy_options = { requested_policy_version }

let make_get_query_results_response ?cache_hit ?errors ?etag ?job_complete ?job_reference ?kind ?num_dml_affected_rows ?page_token ?rows ?schema ?total_bytes_processed ?total_rows () : get_query_results_response = { cache_hit; errors; etag; job_complete; job_reference; kind; num_dml_affected_rows; page_token; rows; schema; total_bytes_processed; total_rows }

let make_get_service_account_response ?email ?kind () : get_service_account_response = { email; kind }

let make_global_explanation ?class_label ?explanations () : global_explanation = { class_label; explanations }

let make_google_sheets_options ?range ?skip_leading_rows () : google_sheets_options = { range; skip_leading_rows }

let make_high_cardinality_join ?left_rows ?output_rows ?right_rows ?step_index () : high_cardinality_join = { left_rows; output_rows; right_rows; step_index }

let make_hive_partitioning_options ?fields ?mode ?require_partition_filter ?source_uri_prefix () : hive_partitioning_options = { fields; mode; require_partition_filter; source_uri_prefix }

let make_hparam_search_spaces ?activation_fn ?batch_size ?booster_type ?colsample_bylevel ?colsample_bynode ?colsample_bytree ?dart_normalize_type ?dropout ?hidden_units ?l1_reg ?l2_reg ?learn_rate ?max_tree_depth ?min_split_loss ?min_tree_child_weight ?num_clusters ?num_factors ?num_parallel_tree ?optimizer ?subsample ?tree_method ?wals_alpha () : hparam_search_spaces = { activation_fn; batch_size; booster_type; colsample_bylevel; colsample_bynode; colsample_bytree; dart_normalize_type; dropout; hidden_units; l1_reg; l2_reg; learn_rate; max_tree_depth; min_split_loss; min_tree_child_weight; num_clusters; num_factors; num_parallel_tree; optimizer; subsample; tree_method; wals_alpha }

let make_hparam_tuning_trial ?end_time_ms ?error_message ?eval_loss ?evaluation_metrics ?hparam_tuning_evaluation_metrics ?hparams ?start_time_ms ?status ?training_loss ?trial_id () : hparam_tuning_trial = { end_time_ms; error_message; eval_loss; evaluation_metrics; hparam_tuning_evaluation_metrics; hparams; start_time_ms; status; training_loss; trial_id }

let make_incremental_result_stats ?disabled_reason ?disabled_reason_details ?first_incremental_row_time ?incremental_row_count ?last_incremental_row_time ?result_set_last_modify_time ?result_set_last_replace_time () : incremental_result_stats = { disabled_reason; disabled_reason_details; first_incremental_row_time; incremental_row_count; last_incremental_row_time; result_set_last_modify_time; result_set_last_replace_time }

let make_index_pruning_stats ?base_table ?index_id ?post_index_pruning_parallel_input_count ?pre_index_pruning_parallel_input_count () : index_pruning_stats = { base_table; index_id; post_index_pruning_parallel_input_count; pre_index_pruning_parallel_input_count }

let make_index_unused_reason ?base_table ?code ?index_name ?message () : index_unused_reason = { base_table; code; index_name; message }

let make_input_data_change ?records_read_diff_percentage () : input_data_change = { records_read_diff_percentage }

let make_int_array ?elements () : int_array = { elements }

let make_int_array_hparam_search_space ?candidates () : int_array_hparam_search_space = { candidates }

let make_int_candidates ?candidates () : int_candidates = { candidates }

let make_int_hparam_search_space ?candidates ?range () : int_hparam_search_space = { candidates; range }

let make_int_range ?max ?min () : int_range = { max; min }

let make_iteration_result ?arima_result ?cluster_infos ?duration_ms ?eval_loss ?index ?learn_rate ?principal_component_infos ?training_loss () : iteration_result = { arima_result; cluster_infos; duration_ms; eval_loss; index; learn_rate; principal_component_infos; training_loss }

let make_job ?configuration ?etag ?id ?job_creation_reason ?job_reference ?kind ?principal_subject ?self_link ?statistics ?status ?user_email () : job = { configuration; etag; id; job_creation_reason; job_reference; kind; principal_subject; self_link; statistics; status; user_email }

let make_job_cancel_response ?job ?kind () : job_cancel_response = { job; kind }

let make_job_configuration ?copy ?dry_run ?extract ?job_timeout_ms ?job_type ?labels ?load ?max_slots ?query ?reservation () : job_configuration = { copy; dry_run; extract; job_timeout_ms; job_type; labels; load; max_slots; query; reservation }

let make_job_configuration_extract ?compression ?destination_format ?destination_uri ?destination_uris ?field_delimiter ?model_extract_options ?native_geography_export_enabled ?print_header ?source_model ?source_table ?use_avro_logical_types () : job_configuration_extract = { compression; destination_format; destination_uri; destination_uris; field_delimiter; model_extract_options; native_geography_export_enabled; print_header; source_model; source_table; use_avro_logical_types }

let make_job_configuration_load ?allow_jagged_rows ?allow_quoted_newlines ?autodetect ?clustering ?column_name_character_map ?connection_properties ?copy_files_only ?create_disposition ?create_session ?date_format ?datetime_format ?decimal_target_types ?destination_encryption_configuration ?destination_table ?destination_table_properties ?encoding ?field_delimiter ?file_set_spec_type ?hive_partitioning_options ?ignore_unknown_values ?json_extension ?max_bad_records ?null_marker ?null_markers ?parquet_options ?preserve_ascii_control_characters ?projection_fields ?quote ?range_partitioning ?reference_file_schema_uri ?schema ?schema_inline ?schema_inline_format ?schema_update_options ?skip_leading_rows ?source_column_match ?source_format ?source_uris ?time_format ?time_partitioning ?time_zone ?timestamp_format ?timestamp_target_precision ?use_avro_logical_types ?write_disposition () : job_configuration_load = { allow_jagged_rows; allow_quoted_newlines; autodetect; clustering; column_name_character_map; connection_properties; copy_files_only; create_disposition; create_session; date_format; datetime_format; decimal_target_types; destination_encryption_configuration; destination_table; destination_table_properties; encoding; field_delimiter; file_set_spec_type; hive_partitioning_options; ignore_unknown_values; json_extension; max_bad_records; null_marker; null_markers; parquet_options; preserve_ascii_control_characters; projection_fields; quote; range_partitioning; reference_file_schema_uri; schema; schema_inline; schema_inline_format; schema_update_options; skip_leading_rows; source_column_match; source_format; source_uris; time_format; time_partitioning; time_zone; timestamp_format; timestamp_target_precision; use_avro_logical_types; write_disposition }

let make_job_configuration_query ?allow_large_results ?clustering ?connection_properties ?continuous ?create_disposition ?create_session ?default_dataset ?destination_encryption_configuration ?destination_table ?flatten_results ?maximum_billing_tier ?maximum_bytes_billed ?parameter_mode ?preserve_nulls ?priority ?query ?query_parameters ?range_partitioning ?schema_update_options ?script_options ?secure_context ?system_variables ?table_definitions ?time_partitioning ?use_legacy_sql ?use_query_cache ?user_defined_function_resources ?write_disposition ?write_incremental_results () : job_configuration_query = { allow_large_results; clustering; connection_properties; continuous; create_disposition; create_session; default_dataset; destination_encryption_configuration; destination_table; flatten_results; maximum_billing_tier; maximum_bytes_billed; parameter_mode; preserve_nulls; priority; query; query_parameters; range_partitioning; schema_update_options; script_options; secure_context; system_variables; table_definitions; time_partitioning; use_legacy_sql; use_query_cache; user_defined_function_resources; write_disposition; write_incremental_results }

let make_job_configuration_table_copy ?create_disposition ?destination_encryption_configuration ?destination_expiration_time ?destination_table ?operation_type ?source_table ?source_tables ?write_disposition () : job_configuration_table_copy = { create_disposition; destination_encryption_configuration; destination_expiration_time; destination_table; operation_type; source_table; source_tables; write_disposition }

let make_job_creation_reason ?code () : job_creation_reason = { code }

let make_job_list_jobs_item ?configuration ?error_result ?id ?job_reference ?kind ?principal_subject ?state ?statistics ?status ?user_email () : job_list_jobs_item = { configuration; error_result; id; job_reference; kind; principal_subject; state; statistics; status; user_email }

let make_job_list ?etag ?jobs ?kind ?next_page_token ?unreachable () : job_list = { etag; jobs; kind; next_page_token; unreachable }

let make_job_reference ?job_id ?location ?project_id () : job_reference = { job_id; location; project_id }

let make_job_statistics_reservation_usage_item ?name ?slot_ms () : job_statistics_reservation_usage_item = { name; slot_ms }

let make_job_statistics ?completion_ratio ?copy ?creation_time ?data_masking_statistics ?edition ?end_time ?extract ?final_execution_duration_ms ?global_query_remote_regions ?load ?num_child_jobs ?parent_global_query_job ?parent_job_id ?query ?quota_deferments ?reservation_group_path ?reservation_usage ?reservation_id ?row_level_security_statistics ?script_statistics ?session_info ?start_time ?total_bytes_processed ?total_slot_ms ?transaction_info () : job_statistics = { completion_ratio; copy; creation_time; data_masking_statistics; edition; end_time; extract; final_execution_duration_ms; global_query_remote_regions; load; num_child_jobs; parent_global_query_job; parent_job_id; query; quota_deferments; reservation_group_path; reservation_usage; reservation_id; row_level_security_statistics; script_statistics; session_info; start_time; total_bytes_processed; total_slot_ms; transaction_info }

let make_job_statistics2_reservation_usage_item ?name ?slot_ms () : job_statistics2_reservation_usage_item = { name; slot_ms }

let make_job_statistics2 ?bi_engine_statistics ?billing_tier ?cache_hit ?dcl_target_dataset ?dcl_target_table ?dcl_target_view ?ddl_affected_row_access_policy_count ?ddl_destination_table ?ddl_operation_performed ?ddl_target_dataset ?ddl_target_routine ?ddl_target_row_access_policy ?ddl_target_table ?dml_stats ?estimated_bytes_processed ?export_data_statistics ?external_service_costs ?gen_ai_stats ?incremental_result_stats ?load_query_statistics ?materialized_view_statistics ?metadata_cache_statistics ?ml_statistics ?model_training ?model_training_current_iteration ?model_training_expected_total_iteration ?num_dml_affected_rows ?object_storage_stats ?performance_insights ?query_info ?query_plan ?referenced_logical_views ?referenced_property_graphs ?referenced_routines ?referenced_tables ?reservation_usage ?schema ?search_statistics ?spark_statistics ?statement_type ?timeline ?total_bytes_billed ?total_bytes_processed ?total_bytes_processed_accuracy ?total_partitions_processed ?total_services_sku_slot_ms ?total_slot_ms ?transferred_bytes ?undeclared_query_parameters ?vector_search_statistics () : job_statistics2 = { bi_engine_statistics; billing_tier; cache_hit; dcl_target_dataset; dcl_target_table; dcl_target_view; ddl_affected_row_access_policy_count; ddl_destination_table; ddl_operation_performed; ddl_target_dataset; ddl_target_routine; ddl_target_row_access_policy; ddl_target_table; dml_stats; estimated_bytes_processed; export_data_statistics; external_service_costs; gen_ai_stats; incremental_result_stats; load_query_statistics; materialized_view_statistics; metadata_cache_statistics; ml_statistics; model_training; model_training_current_iteration; model_training_expected_total_iteration; num_dml_affected_rows; object_storage_stats; performance_insights; query_info; query_plan; referenced_logical_views; referenced_property_graphs; referenced_routines; referenced_tables; reservation_usage; schema; search_statistics; spark_statistics; statement_type; timeline; total_bytes_billed; total_bytes_processed; total_bytes_processed_accuracy; total_partitions_processed; total_services_sku_slot_ms; total_slot_ms; transferred_bytes; undeclared_query_parameters; vector_search_statistics }

let make_job_statistics3 ?bad_records ?input_file_bytes ?input_files ?output_bytes ?output_rows ?timeline () : job_statistics3 = { bad_records; input_file_bytes; input_files; output_bytes; output_rows; timeline }

let make_job_statistics4 ?destination_uri_file_counts ?input_bytes ?timeline () : job_statistics4 = { destination_uri_file_counts; input_bytes; timeline }

let make_job_statistics5 ?copied_logical_bytes ?copied_rows ?remote_destination_region () : job_statistics5 = { copied_logical_bytes; copied_rows; remote_destination_region }

let make_job_status ?error_result ?errors ?state () : job_status = { error_result; errors; state }

let make_join_restriction_policy ?join_allowed_columns ?join_condition () : join_restriction_policy = { join_allowed_columns; join_condition }

let make_json_options ?encoding () : json_options = { encoding }

let make_linked_dataset_metadata ?link_state () : linked_dataset_metadata = { link_state }

let make_linked_dataset_source ?source_dataset () : linked_dataset_source = { source_dataset }

let make_list_models_response ?models ?next_page_token () : list_models_response = { models; next_page_token }

let make_list_routines_response ?next_page_token ?routines () : list_routines_response = { next_page_token; routines }

let make_list_row_access_policies_response ?next_page_token ?row_access_policies () : list_row_access_policies_response = { next_page_token; row_access_policies }

let make_load_query_statistics ?bad_records ?bytes_transferred ?input_file_bytes ?input_files ?output_bytes ?output_rows () : load_query_statistics = { bad_records; bytes_transferred; input_file_bytes; input_files; output_bytes; output_rows }

let make_location_metadata ?legacy_location_id () : location_metadata = { legacy_location_id }

let make_materialized_view ?chosen ?estimated_bytes_saved ?rejected_reason ?table_reference () : materialized_view = { chosen; estimated_bytes_saved; rejected_reason; table_reference }

let make_materialized_view_definition ?allow_non_incremental_definition ?enable_refresh ?last_refresh_time ?max_staleness ?query ?refresh_interval_ms () : materialized_view_definition = { allow_non_incremental_definition; enable_refresh; last_refresh_time; max_staleness; query; refresh_interval_ms }

let make_materialized_view_statistics ?materialized_view () : materialized_view_statistics = { materialized_view }

let make_materialized_view_status ?last_refresh_status ?refresh_watermark () : materialized_view_status = { last_refresh_status; refresh_watermark }

let make_metadata_cache_staleness_insight ?avg_previous_staleness_ms ?staleness_percentage_increase () : metadata_cache_staleness_insight = { avg_previous_staleness_ms; staleness_percentage_increase }

let make_metadata_cache_statistics ?table_metadata_cache_usage () : metadata_cache_statistics = { table_metadata_cache_usage }

let make_ml_statistics ?hparam_trials ?iteration_results ?max_iterations ?model_type ?training_type () : ml_statistics = { hparam_trials; iteration_results; max_iterations; model_type; training_type }

let make_model ?best_trial_id ?creation_time ?default_trial_id ?description ?encryption_configuration ?etag ?expiration_time ?feature_columns ?friendly_name ?hparam_search_spaces ?hparam_trials ?label_columns ?labels ?last_modified_time ?location ?model_reference ?model_type ?optimal_trial_ids ?remote_model_info ?training_runs ?transform_columns () : model = { best_trial_id; creation_time; default_trial_id; description; encryption_configuration; etag; expiration_time; feature_columns; friendly_name; hparam_search_spaces; hparam_trials; label_columns; labels; last_modified_time; location; model_reference; model_type; optimal_trial_ids; remote_model_info; training_runs; transform_columns }

let make_model_definition_model_options ?labels ?loss_type ?model_type () : model_definition_model_options = { labels; loss_type; model_type }

let make_model_definition ?model_options ?training_runs () : model_definition = { model_options; training_runs }

let make_model_extract_options ?trial_id () : model_extract_options = { trial_id }

let make_model_reference ?dataset_id ?model_id ?project_id () : model_reference = { dataset_id; model_id; project_id }

let make_multi_class_classification_metrics ?aggregate_classification_metrics ?confusion_matrix_list () : multi_class_classification_metrics = { aggregate_classification_metrics; confusion_matrix_list }

let make_object_storage_stats ?cache_bytes_read ?cloud_provider ?object_storage_bytes_read () : object_storage_stats = { cache_bytes_read; cloud_provider; object_storage_bytes_read }

let make_parquet_options ?enable_list_inference ?enum_as_string ?map_target_type () : parquet_options = { enable_list_inference; enum_as_string; map_target_type }

let make_partition_skew ?skew_sources () : partition_skew = { skew_sources }

let make_partitioned_column ?field () : partitioned_column = { field }

let make_partitioning_definition ?partitioned_column () : partitioning_definition = { partitioned_column }

let make_performance_insights ?avg_previous_execution_ms ?stage_performance_change_insights ?stage_performance_standalone_insights ?table_change_insights () : performance_insights = { avg_previous_execution_ms; stage_performance_change_insights; stage_performance_standalone_insights; table_change_insights }

let make_policy ?audit_configs ?bindings ?etag ?version () : policy = { audit_configs; bindings; etag; version }

let make_principal_component_info ?cumulative_explained_variance_ratio ?explained_variance ?explained_variance_ratio ?principal_component_id () : principal_component_info = { cumulative_explained_variance_ratio; explained_variance; explained_variance_ratio; principal_component_id }

let make_privacy_policy ?aggregation_threshold_policy ?differential_privacy_policy ?join_restriction_policy () : privacy_policy = { aggregation_threshold_policy; differential_privacy_policy; join_restriction_policy }

let make_project_list_projects_item ?friendly_name ?id ?kind ?numeric_id ?project_reference () : project_list_projects_item = { friendly_name; id; kind; numeric_id; project_reference }

let make_project_list ?etag ?kind ?next_page_token ?projects ?total_items () : project_list = { etag; kind; next_page_token; projects; total_items }

let make_project_reference ?project_id () : project_reference = { project_id }

let make_property_graph_reference ?dataset_id ?project_id ?property_graph_id () : property_graph_reference = { dataset_id; project_id; property_graph_id }

let make_pruning_stats ?post_cmeta_pruning_parallel_input_count ?post_cmeta_pruning_partition_count ?pre_cmeta_pruning_parallel_input_count () : pruning_stats = { post_cmeta_pruning_parallel_input_count; post_cmeta_pruning_partition_count; pre_cmeta_pruning_parallel_input_count }

let make_python_options ?entry_point ?packages () : python_options = { entry_point; packages }

let make_query_info ?optimization_details () : query_info = { optimization_details }

let make_query_parameter ?name ?parameter_type ?parameter_value () : query_parameter = { name; parameter_type; parameter_value }

let make_query_parameter_type_struct_types_item ?description ?name ?type_ () : query_parameter_type_struct_types_item = { description; name; type_ }

let make_query_parameter_type ?array_type ?range_element_type ?struct_types ?timestamp_precision ?type_ () : query_parameter_type = { array_type; range_element_type; struct_types; timestamp_precision; type_ }

let make_query_parameter_value ?array_values ?range_value ?struct_values ?value () : query_parameter_value = { array_values; range_value; struct_values; value }

let make_query_request ?arrow_serialization_options ?connection_properties ?continuous ?create_session ?default_dataset ?destination_encryption_configuration ?dry_run ?format_options ?job_creation_mode ?job_timeout_ms ?kind ?labels ?location ?max_results ?max_slots ?maximum_bytes_billed ?parameter_mode ?preserve_nulls ?query ?query_parameters ?query_results_format ?request_id ?reservation ?secure_context ?timeout_ms ?use_legacy_sql ?use_query_cache ?write_incremental_results () : query_request = { arrow_serialization_options; connection_properties; continuous; create_session; default_dataset; destination_encryption_configuration; dry_run; format_options; job_creation_mode; job_timeout_ms; kind; labels; location; max_results; max_slots; maximum_bytes_billed; parameter_mode; preserve_nulls; query; query_parameters; query_results_format; request_id; reservation; secure_context; timeout_ms; use_legacy_sql; use_query_cache; write_incremental_results }

let make_query_response ?arrow_record_batch ?arrow_schema ?cache_hit ?creation_time ?dml_stats ?end_time ?errors ?job_complete ?job_creation_reason ?job_reference ?kind ?location ?num_dml_affected_rows ?page_row_count ?page_token ?query_id ?rows ?schema ?session_info ?start_time ?statement_type ?total_bytes_billed ?total_bytes_processed ?total_rows ?total_slot_ms () : query_response = { arrow_record_batch; arrow_schema; cache_hit; creation_time; dml_stats; end_time; errors; job_complete; job_creation_reason; job_reference; kind; location; num_dml_affected_rows; page_row_count; page_token; query_id; rows; schema; session_info; start_time; statement_type; total_bytes_billed; total_bytes_processed; total_rows; total_slot_ms }

let make_query_timeline_sample ?active_units ?completed_units ?elapsed_ms ?estimated_runnable_units ?pending_units ?shuffle_ram_usage_ratio ?total_slot_ms () : query_timeline_sample = { active_units; completed_units; elapsed_ms; estimated_runnable_units; pending_units; shuffle_ram_usage_ratio; total_slot_ms }

let make_range_partitioning_range ?end_ ?interval ?start () : range_partitioning_range = { end_; interval; start }

let make_range_partitioning ?field ?range () : range_partitioning = { field; range }

let make_range_value ?end_ ?start () : range_value = { end_; start }

let make_ranking_metrics ?average_rank ?mean_average_precision ?mean_squared_error ?normalized_discounted_cumulative_gain () : ranking_metrics = { average_rank; mean_average_precision; mean_squared_error; normalized_discounted_cumulative_gain }

let make_regression_metrics ?mean_absolute_error ?mean_squared_error ?mean_squared_log_error ?median_absolute_error ?r_squared () : regression_metrics = { mean_absolute_error; mean_squared_error; mean_squared_log_error; median_absolute_error; r_squared }

let make_remote_function_options ?connection ?endpoint ?max_batching_rows ?user_defined_context () : remote_function_options = { connection; endpoint; max_batching_rows; user_defined_context }

let make_remote_model_info ?connection ?endpoint ?max_batching_rows ?remote_model_version ?remote_service_type ?speech_recognizer () : remote_model_info = { connection; endpoint; max_batching_rows; remote_model_version; remote_service_type; speech_recognizer }

let make_restriction_config ?type_ () : restriction_config = { type_ }

let make_routine ?arguments ?build_status ?creation_time ?data_governance_type ?definition_body ?description ?determinism_level ?etag ?external_runtime_options ?imported_libraries ?language ?last_modified_time ?python_options ?remote_function_options ?return_table_type ?return_type ?routine_reference ?routine_type ?security_mode ?spark_options ?strict_mode () : routine = { arguments; build_status; creation_time; data_governance_type; definition_body; description; determinism_level; etag; external_runtime_options; imported_libraries; language; last_modified_time; python_options; remote_function_options; return_table_type; return_type; routine_reference; routine_type; security_mode; spark_options; strict_mode }

let make_routine_build_status ?build_duration ?build_state ?build_state_update_time ?error_result ?image_size_bytes () : routine_build_status = { build_duration; build_state; build_state_update_time; error_result; image_size_bytes }

let make_routine_reference ?dataset_id ?project_id ?routine_id () : routine_reference = { dataset_id; project_id; routine_id }

let make_row ?actual_label ?entries () : row = { actual_label; entries }

let make_row_access_policy ?creation_time ?etag ?filter_predicate ?grantees ?last_modified_time ?row_access_policy_reference () : row_access_policy = { creation_time; etag; filter_predicate; grantees; last_modified_time; row_access_policy_reference }

let make_row_access_policy_reference ?dataset_id ?policy_id ?project_id ?table_id () : row_access_policy_reference = { dataset_id; policy_id; project_id; table_id }

let make_row_level_security_statistics ?row_level_security_applied () : row_level_security_statistics = { row_level_security_applied }

let make_script_options ?key_result_statement ?statement_byte_budget ?statement_timeout_ms () : script_options = { key_result_statement; statement_byte_budget; statement_timeout_ms }

let make_script_stack_frame ?end_column ?end_line ?procedure_id ?start_column ?start_line ?text () : script_stack_frame = { end_column; end_line; procedure_id; start_column; start_line; text }

let make_script_statistics ?evaluation_kind ?stack_frames () : script_statistics = { evaluation_kind; stack_frames }

let make_search_statistics ?index_pruning_stats ?index_unused_reasons ?index_usage_mode () : search_statistics = { index_pruning_stats; index_unused_reasons; index_usage_mode }

let make_secure_context ?secure_parameter_entries () : secure_context = { secure_parameter_entries }

let make_ser_de_info ?name ?parameters ?serialization_library () : ser_de_info = { name; parameters; serialization_library }

let make_session_info ?session_id () : session_info = { session_id }

let make_set_iam_policy_request ?policy ?update_mask () : set_iam_policy_request = { policy; update_mask }

let make_skew_source ?output_bytes_max ?output_bytes_median ?output_bytes_p95 ?stage_id () : skew_source = { output_bytes_max; output_bytes_median; output_bytes_p95; stage_id }

let make_snapshot_definition ?base_table_reference ?snapshot_time () : snapshot_definition = { base_table_reference; snapshot_time }

let make_spark_logging_info ?project_id ?resource_type () : spark_logging_info = { project_id; resource_type }

let make_spark_options ?archive_uris ?connection ?container_image ?file_uris ?jar_uris ?main_class ?main_file_uri ?properties ?py_file_uris ?runtime_version () : spark_options = { archive_uris; connection; container_image; file_uris; jar_uris; main_class; main_file_uri; properties; py_file_uris; runtime_version }

let make_spark_statistics ?endpoints ?gcs_staging_bucket ?kms_key_name ?logging_info ?spark_job_id ?spark_job_location () : spark_statistics = { endpoints; gcs_staging_bucket; kms_key_name; logging_info; spark_job_id; spark_job_location }

let make_stage_performance_change_insight ?input_data_change ?stage_id () : stage_performance_change_insight = { input_data_change; stage_id }

let make_stage_performance_standalone_insight ?bi_engine_reasons ?high_cardinality_joins ?insufficient_shuffle_quota ?partition_skew ?slot_contention ?stage_id () : stage_performance_standalone_insight = { bi_engine_reasons; high_cardinality_joins; insufficient_shuffle_quota; partition_skew; slot_contention; stage_id }

let make_standard_sql_data_type ?array_element_type ?range_element_type ?struct_type ?type_kind () : standard_sql_data_type = { array_element_type; range_element_type; struct_type; type_kind }

let make_standard_sql_field ?name ?type_ () : standard_sql_field = { name; type_ }

let make_standard_sql_struct_type ?fields () : standard_sql_struct_type = { fields }

let make_standard_sql_table_type ?columns () : standard_sql_table_type = { columns }

let make_storage_descriptor ?input_format ?location_uri ?output_format ?serde_info () : storage_descriptor = { input_format; location_uri; output_format; serde_info }

let make_stored_columns_unused_reason ?code ?message ?uncovered_columns () : stored_columns_unused_reason = { code; message; uncovered_columns }

let make_stored_columns_usage ?base_table ?is_query_accelerated ?stored_columns_unused_reasons () : stored_columns_usage = { base_table; is_query_accelerated; stored_columns_unused_reasons }

let make_streamingbuffer ?estimated_bytes ?estimated_rows ?oldest_entry_time () : streamingbuffer = { estimated_bytes; estimated_rows; oldest_entry_time }

let make_string_hparam_search_space ?candidates () : string_hparam_search_space = { candidates }

let make_system_variables ?types ?values () : system_variables = { types; values }

let make_table ?biglake_configuration ?clone_definition ?clustering ?creation_time ?default_collation ?default_rounding_mode ?description ?encryption_configuration ?etag ?expiration_time ?external_catalog_table_options ?external_data_configuration ?friendly_name ?id ?kind ?labels ?last_modified_time ?location ?managed_table_type ?materialized_view ?materialized_view_status ?max_staleness ?model ?num_active_logical_bytes ?num_active_physical_bytes ?num_bytes ?num_current_physical_bytes ?num_long_term_bytes ?num_long_term_logical_bytes ?num_long_term_physical_bytes ?num_partitions ?num_physical_bytes ?num_rows ?num_time_travel_physical_bytes ?num_total_logical_bytes ?num_total_physical_bytes ?partition_definition ?range_partitioning ?replicas ?require_partition_filter ?resource_tags ?restrictions ?schema ?self_link ?snapshot_definition ?streaming_buffer ?table_constraints ?table_reference ?table_replication_info ?time_partitioning ?type_ ?view () : table = { biglake_configuration; clone_definition; clustering; creation_time; default_collation; default_rounding_mode; description; encryption_configuration; etag; expiration_time; external_catalog_table_options; external_data_configuration; friendly_name; id; kind; labels; last_modified_time; location; managed_table_type; materialized_view; materialized_view_status; max_staleness; model; num_active_logical_bytes; num_active_physical_bytes; num_bytes; num_current_physical_bytes; num_long_term_bytes; num_long_term_logical_bytes; num_long_term_physical_bytes; num_partitions; num_physical_bytes; num_rows; num_time_travel_physical_bytes; num_total_logical_bytes; num_total_physical_bytes; partition_definition; range_partitioning; replicas; require_partition_filter; resource_tags; restrictions; schema; self_link; snapshot_definition; streaming_buffer; table_constraints; table_reference; table_replication_info; time_partitioning; type_; view }

let make_table_cell ?v () : table_cell = { v }

let make_table_change_insight ?metadata_cache_not_used_but_used_previously ?metadata_cache_staleness_insight ?table_reference () : table_change_insight = { metadata_cache_not_used_but_used_previously; metadata_cache_staleness_insight; table_reference }

let make_table_constraints_foreign_keys_item_column_references_item ?referenced_column ?referencing_column () : table_constraints_foreign_keys_item_column_references_item = { referenced_column; referencing_column }

let make_table_constraints_foreign_keys_item_referenced_table ?dataset_id ?project_id ?table_id () : table_constraints_foreign_keys_item_referenced_table = { dataset_id; project_id; table_id }

let make_table_constraints_foreign_keys_item ?column_references ?name ?referenced_table () : table_constraints_foreign_keys_item = { column_references; name; referenced_table }

let make_table_constraints_primary_key ?columns () : table_constraints_primary_key = { columns }

let make_table_constraints ?foreign_keys ?primary_key () : table_constraints = { foreign_keys; primary_key }

let make_table_data_insert_all_request_rows_item ?insert_id ?json () : table_data_insert_all_request_rows_item = { insert_id; json }

let make_table_data_insert_all_request ?ignore_unknown_values ?kind ?rows ?skip_invalid_rows ?template_suffix ?trace_id () : table_data_insert_all_request = { ignore_unknown_values; kind; rows; skip_invalid_rows; template_suffix; trace_id }

let make_table_data_insert_all_response_insert_errors_item ?errors ?index () : table_data_insert_all_response_insert_errors_item = { errors; index }

let make_table_data_insert_all_response ?insert_errors ?kind () : table_data_insert_all_response = { insert_errors; kind }

let make_table_data_list ?etag ?kind ?page_token ?rows ?total_rows () : table_data_list = { etag; kind; page_token; rows; total_rows }

let make_table_field_schema_categories ?names () : table_field_schema_categories = { names }

let make_table_field_schema_data_governance_tags_info ?data_governance_tags () : table_field_schema_data_governance_tags_info = { data_governance_tags }

let make_table_field_schema_policy_tags ?names () : table_field_schema_policy_tags = { names }

let make_table_field_schema_range_element_type ?type_ () : table_field_schema_range_element_type = { type_ }

let make_table_field_schema ?categories ?collation ?data_governance_tags_info ?data_policies ?data_policy_list ?default_value_expression ?description ?fields ?foreign_type_definition ?generated_column ?max_length ?mode ?name ?policy_tags ?precision ?range_element_type ?rounding_mode ?scale ?timestamp_precision ?type_ () : table_field_schema = { categories; collation; data_governance_tags_info; data_policies; data_policy_list; default_value_expression; description; fields; foreign_type_definition; generated_column; max_length; mode; name; policy_tags; precision; range_element_type; rounding_mode; scale; timestamp_precision; type_ }

let make_table_list_tables_item_view ?privacy_policy ?use_legacy_sql () : table_list_tables_item_view = { privacy_policy; use_legacy_sql }

let make_table_list_tables_item ?clustering ?creation_time ?expiration_time ?friendly_name ?id ?kind ?labels ?range_partitioning ?require_partition_filter ?table_reference ?time_partitioning ?type_ ?view () : table_list_tables_item = { clustering; creation_time; expiration_time; friendly_name; id; kind; labels; range_partitioning; require_partition_filter; table_reference; time_partitioning; type_; view }

let make_table_list ?etag ?kind ?next_page_token ?tables ?total_items () : table_list = { etag; kind; next_page_token; tables; total_items }

let make_table_metadata_cache_usage ?explanation ?pruning_stats ?staleness ?table_reference ?table_type ?unused_reason () : table_metadata_cache_usage = { explanation; pruning_stats; staleness; table_reference; table_type; unused_reason }

let make_table_reference ?dataset_id ?project_id ?table_id () : table_reference = { dataset_id; project_id; table_id }

let make_table_replication_info ?replicated_source_last_refresh_time ?replication_error ?replication_interval_ms ?replication_status ?source_table () : table_replication_info = { replicated_source_last_refresh_time; replication_error; replication_interval_ms; replication_status; source_table }

let make_table_row ?f () : table_row = { f }

let make_table_schema ?fields ?foreign_type_info () : table_schema = { fields; foreign_type_info }

let make_test_iam_permissions_request ?permissions () : test_iam_permissions_request = { permissions }

let make_test_iam_permissions_response ?permissions () : test_iam_permissions_response = { permissions }

let make_time_partitioning ?expiration_ms ?field ?require_partition_filter ?type_ () : time_partitioning = { expiration_ms; field; require_partition_filter; type_ }

let make_training_options ?activation_fn ?adjust_step_changes ?approx_global_feature_contrib ?auto_arima ?auto_arima_max_order ?auto_arima_min_order ?auto_class_weights ?batch_size ?booster_type ?budget_hours ?calculate_p_values ?category_encoding_method ?clean_spikes_and_dips ?color_space ?colsample_bylevel ?colsample_bynode ?colsample_bytree ?contribution_metric ?dart_normalize_type ?data_frequency ?data_split_column ?data_split_eval_fraction ?data_split_method ?decompose_time_series ?dimension_id_columns ?distance_type ?dropout ?early_stop ?enable_global_explain ?endpoint_idle_ttl ?feedback_type ?fit_intercept ?forecast_limit_lower_bound ?forecast_limit_upper_bound ?hidden_units ?holiday_region ?holiday_regions ?horizon ?hparam_tuning_objectives ?hugging_face_model_id ?include_drift ?initial_learn_rate ?input_label_columns ?instance_weight_column ?integrated_gradients_num_steps ?is_test_column ?item_column ?kmeans_initialization_column ?kmeans_initialization_method ?l1_reg_activation ?l1_regularization ?l2_regularization ?label_class_weights ?learn_rate ?learn_rate_strategy ?loss_type ?machine_type ?max_iterations ?max_parallel_trials ?max_replica_count ?max_time_series_length ?max_tree_depth ?min_apriori_support ?min_relative_progress ?min_replica_count ?min_split_loss ?min_time_series_length ?min_tree_child_weight ?model_garden_model_name ?model_registry ?model_uri ?non_seasonal_order ?num_clusters ?num_factors ?num_parallel_tree ?num_principal_components ?num_trials ?optimization_strategy ?optimizer ?pca_explained_variance_ratio ?pca_solver ?reservation_affinity_key ?reservation_affinity_type ?reservation_affinity_values ?sampled_shapley_num_paths ?scale_features ?standardize_features ?subsample ?tf_version ?time_series_data_column ?time_series_id_column ?time_series_id_columns ?time_series_length_fraction ?time_series_timestamp_column ?tree_method ?trend_smoothing_window_size ?user_column ?vertex_ai_model_version_aliases ?wals_alpha ?warm_start ?xgboost_version () : training_options = { activation_fn; adjust_step_changes; approx_global_feature_contrib; auto_arima; auto_arima_max_order; auto_arima_min_order; auto_class_weights; batch_size; booster_type; budget_hours; calculate_p_values; category_encoding_method; clean_spikes_and_dips; color_space; colsample_bylevel; colsample_bynode; colsample_bytree; contribution_metric; dart_normalize_type; data_frequency; data_split_column; data_split_eval_fraction; data_split_method; decompose_time_series; dimension_id_columns; distance_type; dropout; early_stop; enable_global_explain; endpoint_idle_ttl; feedback_type; fit_intercept; forecast_limit_lower_bound; forecast_limit_upper_bound; hidden_units; holiday_region; holiday_regions; horizon; hparam_tuning_objectives; hugging_face_model_id; include_drift; initial_learn_rate; input_label_columns; instance_weight_column; integrated_gradients_num_steps; is_test_column; item_column; kmeans_initialization_column; kmeans_initialization_method; l1_reg_activation; l1_regularization; l2_regularization; label_class_weights; learn_rate; learn_rate_strategy; loss_type; machine_type; max_iterations; max_parallel_trials; max_replica_count; max_time_series_length; max_tree_depth; min_apriori_support; min_relative_progress; min_replica_count; min_split_loss; min_time_series_length; min_tree_child_weight; model_garden_model_name; model_registry; model_uri; non_seasonal_order; num_clusters; num_factors; num_parallel_tree; num_principal_components; num_trials; optimization_strategy; optimizer; pca_explained_variance_ratio; pca_solver; reservation_affinity_key; reservation_affinity_type; reservation_affinity_values; sampled_shapley_num_paths; scale_features; standardize_features; subsample; tf_version; time_series_data_column; time_series_id_column; time_series_id_columns; time_series_length_fraction; time_series_timestamp_column; tree_method; trend_smoothing_window_size; user_column; vertex_ai_model_version_aliases; wals_alpha; warm_start; xgboost_version }

let make_training_run ?class_level_global_explanations ?data_split_result ?evaluation_metrics ?model_level_global_explanation ?results ?start_time ?training_options ?training_start_time ?vertex_ai_model_id ?vertex_ai_model_version () : training_run = { class_level_global_explanations; data_split_result; evaluation_metrics; model_level_global_explanation; results; start_time; training_options; training_start_time; vertex_ai_model_id; vertex_ai_model_version }

let make_transaction_info ?transaction_id () : transaction_info = { transaction_id }

let make_transform_column ?name ?transform_sql ?type_ () : transform_column = { name; transform_sql; type_ }

let make_undelete_dataset_request ?deletion_time () : undelete_dataset_request = { deletion_time }

let make_user_defined_function_resource ?inline_code ?resource_uri () : user_defined_function_resource = { inline_code; resource_uri }

let make_vector_search_statistics ?index_unused_reasons ?index_usage_mode ?stored_columns_usages () : vector_search_statistics = { index_unused_reasons; index_usage_mode; stored_columns_usages }

let make_view_definition ?foreign_definitions ?privacy_policy ?query ?use_explicit_column_names ?use_legacy_sql ?user_defined_function_resources () : view_definition = { foreign_definitions; privacy_policy; query; use_explicit_column_names; use_legacy_sql; user_defined_function_resources }

let base_url = "https://bigquery.googleapis.com/bigquery/v2/"
let batch_endpoint = Uri.of_string "https://bigquery.googleapis.com/batch/bigquery/v2"
let batch ~access_token calls = Google_api.Batch.execute ~access_token ~endpoint:batch_endpoint calls

module Datasets = struct
  let delete ~project_id ~dataset_id ?delete_contents () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "deleteContents" string_of_bool delete_contents;
              ]))
      Google_api_runtime.Call.empty

  let get ~project_id ~dataset_id ?access_policy_version ?dataset_view () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "accessPolicyVersion" string_of_int access_policy_version;
                Google_api_runtime.Query.optional "datasetView" (function `Dataset_view_unspecified -> "DATASET_VIEW_UNSPECIFIED" | `Metadata -> "METADATA" | `Acl -> "ACL" | `Full -> "FULL" | `Unrecognized value -> value) dataset_view;
              ]))
      (Google_api_runtime.Call.json dataset_of_yojson)

  let insert ~project_id ~body ?access_policy_version () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets"))
           (List.concat
              [
                Google_api_runtime.Query.optional "accessPolicyVersion" string_of_int access_policy_version;
              ]))
      ~body:(yojson_of_dataset body)
      (Google_api_runtime.Call.json dataset_of_yojson)

  let list ~project_id ?all ?filter ?max_results ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets"))
           (List.concat
              [
                Google_api_runtime.Query.optional "all" string_of_bool all;
                Google_api_runtime.Query.optional "filter" Fun.id filter;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json dataset_list_of_yojson)

  let patch ~project_id ~dataset_id ~body ?access_policy_version ?update_mode () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "accessPolicyVersion" string_of_int access_policy_version;
                Google_api_runtime.Query.optional "updateMode" (function `Update_mode_unspecified -> "UPDATE_MODE_UNSPECIFIED" | `Update_metadata -> "UPDATE_METADATA" | `Update_acl -> "UPDATE_ACL" | `Update_full -> "UPDATE_FULL" | `Unrecognized value -> value) update_mode;
              ]))
      ~body:(yojson_of_dataset body)
      (Google_api_runtime.Call.json dataset_of_yojson)

  let undelete ~project_id ~dataset_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ ":undelete"))
      ~body:(yojson_of_undelete_dataset_request body)
      (Google_api_runtime.Call.json dataset_of_yojson)

  let update ~project_id ~dataset_id ~body ?access_policy_version ?update_mode () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "accessPolicyVersion" string_of_int access_policy_version;
                Google_api_runtime.Query.optional "updateMode" (function `Update_mode_unspecified -> "UPDATE_MODE_UNSPECIFIED" | `Update_metadata -> "UPDATE_METADATA" | `Update_acl -> "UPDATE_ACL" | `Update_full -> "UPDATE_FULL" | `Unrecognized value -> value) update_mode;
              ]))
      ~body:(yojson_of_dataset body)
      (Google_api_runtime.Call.json dataset_of_yojson)
end

module Jobs = struct
  let cancel ~project_id ~job_id ?location () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/jobs/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) job_id ^ "/cancel"))
           (List.concat
              [
                Google_api_runtime.Query.optional "location" Fun.id location;
              ]))
      (Google_api_runtime.Call.json job_cancel_response_of_yojson)

  let delete ~project_id ~job_id ?location () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/jobs/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) job_id ^ "/delete"))
           (List.concat
              [
                Google_api_runtime.Query.optional "location" Fun.id location;
              ]))
      Google_api_runtime.Call.empty

  let get ~project_id ~job_id ?location () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/jobs/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) job_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "location" Fun.id location;
              ]))
      (Google_api_runtime.Call.json job_of_yojson)

  let get_query_results ~project_id ~job_id ?format_options_timestamp_output_format ?format_options_use_int64_timestamp ?location ?max_results ?page_token ?start_index ?timeout_ms () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/queries/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) job_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "formatOptions.timestampOutputFormat" (function `Timestamp_output_format_unspecified -> "TIMESTAMP_OUTPUT_FORMAT_UNSPECIFIED" | `Float64 -> "FLOAT64" | `Int64 -> "INT64" | `Iso8601_string -> "ISO8601_STRING" | `Unrecognized value -> value) format_options_timestamp_output_format;
                Google_api_runtime.Query.optional "formatOptions.useInt64Timestamp" string_of_bool format_options_use_int64_timestamp;
                Google_api_runtime.Query.optional "location" Fun.id location;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "startIndex" Fun.id start_index;
                Google_api_runtime.Query.optional "timeoutMs" string_of_int timeout_ms;
              ]))
      (Google_api_runtime.Call.json get_query_results_response_of_yojson)

  let insert ~project_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/jobs"))
      ~body:(yojson_of_job body)
      (Google_api_runtime.Call.json job_of_yojson)

  let list ~project_id ?all_users ?max_creation_time ?max_results ?min_creation_time ?page_token ?parent_job_id ?projection ?state_filter () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/jobs"))
           (List.concat
              [
                Google_api_runtime.Query.optional "allUsers" string_of_bool all_users;
                Google_api_runtime.Query.optional "maxCreationTime" Fun.id max_creation_time;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "minCreationTime" Fun.id min_creation_time;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "parentJobId" Fun.id parent_job_id;
                Google_api_runtime.Query.optional "projection" (function `Full -> "full" | `Minimal -> "minimal" | `Unrecognized value -> value) projection;
                Google_api_runtime.Query.repeated "stateFilter" (function `Done -> "done" | `Pending -> "pending" | `Running -> "running" | `Unrecognized value -> value) state_filter;
              ]))
      (Google_api_runtime.Call.json job_list_of_yojson)

  let query ~project_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/queries"))
      ~body:(yojson_of_query_request body)
      (Google_api_runtime.Call.json query_response_of_yojson)
end

module Models = struct
  let delete ~project_id ~dataset_id ~model_id () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/models/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) model_id))
      Google_api_runtime.Call.empty

  let get ~project_id ~dataset_id ~model_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/models/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) model_id))
      (Google_api_runtime.Call.json model_of_yojson)

  let list ~project_id ~dataset_id ?max_results ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/models"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json list_models_response_of_yojson)

  let patch ~project_id ~dataset_id ~model_id ~body () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/models/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) model_id))
      ~body:(yojson_of_model body)
      (Google_api_runtime.Call.json model_of_yojson)
end

module Projects = struct
  let get_service_account ~project_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/serviceAccount"))
      (Google_api_runtime.Call.json get_service_account_response_of_yojson)

  let list ?max_results ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json project_list_of_yojson)
end

module Routines = struct
  let delete ~project_id ~dataset_id ~routine_id () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/routines/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) routine_id))
      Google_api_runtime.Call.empty

  let get ~project_id ~dataset_id ~routine_id ?read_mask () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/routines/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) routine_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "readMask" Fun.id read_mask;
              ]))
      (Google_api_runtime.Call.json routine_of_yojson)

  let get_iam_policy ~resource ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":getIamPolicy"))
      ~body:(yojson_of_get_iam_policy_request body)
      (Google_api_runtime.Call.json policy_of_yojson)

  let insert ~project_id ~dataset_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/routines"))
      ~body:(yojson_of_routine body)
      (Google_api_runtime.Call.json routine_of_yojson)

  let list ~project_id ~dataset_id ?filter ?max_results ?page_token ?read_mask () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/routines"))
           (List.concat
              [
                Google_api_runtime.Query.optional "filter" Fun.id filter;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "readMask" Fun.id read_mask;
              ]))
      (Google_api_runtime.Call.json list_routines_response_of_yojson)

  let set_iam_policy ~resource ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":setIamPolicy"))
      ~body:(yojson_of_set_iam_policy_request body)
      (Google_api_runtime.Call.json policy_of_yojson)

  let test_iam_permissions ~resource ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":testIamPermissions"))
      ~body:(yojson_of_test_iam_permissions_request body)
      (Google_api_runtime.Call.json test_iam_permissions_response_of_yojson)

  let update ~project_id ~dataset_id ~routine_id ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/routines/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) routine_id))
      ~body:(yojson_of_routine body)
      (Google_api_runtime.Call.json routine_of_yojson)
end

module Row_access_policies = struct
  let batch_delete ~project_id ~dataset_id ~table_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id ^ "/rowAccessPolicies:batchDelete"))
      ~body:(yojson_of_batch_delete_row_access_policies_request body)
      Google_api_runtime.Call.empty

  let delete ~project_id ~dataset_id ~table_id ~policy_id ?force () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id ^ "/rowAccessPolicies/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) policy_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "force" string_of_bool force;
              ]))
      Google_api_runtime.Call.empty

  let get ~project_id ~dataset_id ~table_id ~policy_id () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id ^ "/rowAccessPolicies/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) policy_id))
      (Google_api_runtime.Call.json row_access_policy_of_yojson)

  let get_iam_policy ~resource ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":getIamPolicy"))
      ~body:(yojson_of_get_iam_policy_request body)
      (Google_api_runtime.Call.json policy_of_yojson)

  let insert ~project_id ~dataset_id ~table_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id ^ "/rowAccessPolicies"))
      ~body:(yojson_of_row_access_policy body)
      (Google_api_runtime.Call.json row_access_policy_of_yojson)

  let list ~project_id ~dataset_id ~table_id ?page_size ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id ^ "/rowAccessPolicies"))
           (List.concat
              [
                Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json list_row_access_policies_response_of_yojson)

  let test_iam_permissions ~resource ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":testIamPermissions"))
      ~body:(yojson_of_test_iam_permissions_request body)
      (Google_api_runtime.Call.json test_iam_permissions_response_of_yojson)

  let update ~project_id ~dataset_id ~table_id ~policy_id ~body () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id ^ "/rowAccessPolicies/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) policy_id))
      ~body:(yojson_of_row_access_policy body)
      (Google_api_runtime.Call.json row_access_policy_of_yojson)
end

module Tabledata = struct
  let insert_all ~project_id ~dataset_id ~table_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id ^ "/insertAll"))
      ~body:(yojson_of_table_data_insert_all_request body)
      (Google_api_runtime.Call.json table_data_insert_all_response_of_yojson)

  let list ~project_id ~dataset_id ~table_id ?format_options_timestamp_output_format ?format_options_use_int64_timestamp ?max_results ?page_token ?selected_fields ?start_index () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id ^ "/data"))
           (List.concat
              [
                Google_api_runtime.Query.optional "formatOptions.timestampOutputFormat" (function `Timestamp_output_format_unspecified -> "TIMESTAMP_OUTPUT_FORMAT_UNSPECIFIED" | `Float64 -> "FLOAT64" | `Int64 -> "INT64" | `Iso8601_string -> "ISO8601_STRING" | `Unrecognized value -> value) format_options_timestamp_output_format;
                Google_api_runtime.Query.optional "formatOptions.useInt64Timestamp" string_of_bool format_options_use_int64_timestamp;
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                Google_api_runtime.Query.optional "selectedFields" Fun.id selected_fields;
                Google_api_runtime.Query.optional "startIndex" Fun.id start_index;
              ]))
      (Google_api_runtime.Call.json table_data_list_of_yojson)
end

module Tables = struct
  let delete ~project_id ~dataset_id ~table_id () =
    Google_api_runtime.Call.make ~meth:`DELETE
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id))
      Google_api_runtime.Call.empty

  let get ~project_id ~dataset_id ~table_id ?selected_fields ?view () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "selectedFields" Fun.id selected_fields;
                Google_api_runtime.Query.optional "view" (function `Table_metadata_view_unspecified -> "TABLE_METADATA_VIEW_UNSPECIFIED" | `Basic -> "BASIC" | `Storage_stats -> "STORAGE_STATS" | `Full -> "FULL" | `Unrecognized value -> value) view;
              ]))
      (Google_api_runtime.Call.json table_of_yojson)

  let get_iam_policy ~resource ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":getIamPolicy"))
      ~body:(yojson_of_get_iam_policy_request body)
      (Google_api_runtime.Call.json policy_of_yojson)

  let insert ~project_id ~dataset_id ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables"))
      ~body:(yojson_of_table body)
      (Google_api_runtime.Call.json table_of_yojson)

  let list ~project_id ~dataset_id ?max_results ?page_token () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables"))
           (List.concat
              [
                Google_api_runtime.Query.optional "maxResults" string_of_int max_results;
                Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
              ]))
      (Google_api_runtime.Call.json table_list_of_yojson)

  let patch ~project_id ~dataset_id ~table_id ~body ?autodetect_schema () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "autodetect_schema" string_of_bool autodetect_schema;
              ]))
      ~body:(yojson_of_table body)
      (Google_api_runtime.Call.json table_of_yojson)

  let set_iam_policy ~resource ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":setIamPolicy"))
      ~body:(yojson_of_set_iam_policy_request body)
      (Google_api_runtime.Call.json policy_of_yojson)

  let test_iam_permissions ~resource ~body () =
    Google_api_runtime.Call.make ~meth:`POST
      ~uri:
        (Uri.of_string (base_url ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":testIamPermissions"))
      ~body:(yojson_of_test_iam_permissions_request body)
      (Google_api_runtime.Call.json test_iam_permissions_response_of_yojson)

  let update ~project_id ~dataset_id ~table_id ~body ?autodetect_schema () =
    Google_api_runtime.Call.make ~meth:`PUT
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "projects/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project_id ^ "/datasets/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) dataset_id ^ "/tables/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) table_id))
           (List.concat
              [
                Google_api_runtime.Query.optional "autodetect_schema" string_of_bool autodetect_schema;
              ]))
      ~body:(yojson_of_table body)
      (Google_api_runtime.Call.json table_of_yojson)
end
