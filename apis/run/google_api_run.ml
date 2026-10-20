(* Generated from the Discovery document of run v2 (revision 20261016). Do not edit. *)

[@@@alert "-internal"]

type google_cloud_run_v2_ambient_networking = {
  ambient_scope : [ `Ambient_scope_unspecified | `Ambient_scope_regional | `Ambient_scope_global | `Unrecognized of string ] option;
  enabled : bool option;
}

and google_cloud_run_v2_binary_authorization = {
  breakglass_justification : string option;
  policy : string option;
  use_default : bool option;
}

and google_cloud_run_v2_build_config = {
  base_image : string option;
  enable_automatic_updates : bool option;
  environment_variables : (string * string) list option;
  function_target : string option;
  image_uri : string option;
  name : string option;
  service_account : string option;
  source_location : string option;
  worker_pool : string option;
}

and google_cloud_run_v2_build_info = {
  function_target : string option;
  source_location : string option;
}

and google_cloud_run_v2_buildpacks_build = {
  base_image : string option;
  cache_image_uri : string option;
  enable_automatic_updates : bool option;
  environment_variables : (string * string) list option;
  function_target : string option;
  project_descriptor : string option;
  runtime : string option;
}

and google_cloud_run_v2_cancel_execution_request = {
  etag : string option;
  validate_only : bool option;
}

and google_cloud_run_v2_cloud_sql_instance = {
  instances : string list option;
}

and google_cloud_run_v2_cloud_storage_source = {
  bucket : string option;
  generation : string option;
  object_ : string option;
}

and google_cloud_run_v2_condition = {
  execution_reason : [ `Execution_reason_undefined | `Job_status_service_polling_error | `Non_zero_exit_code | `Cancelled | `Cancelling | `Deleted | `Delayed_start_pending | `Delayed_execution_exceeding_duration_limit | `Unrecognized of string ] option;
  instance_reason : [ `Instance_reason_unspecified | `Instance_deleted | `Instance_stopped | `Instance_stopping | `Instance_non_zero_exit_code | `Unrecognized of string ] option;
  last_transition_time : string option;
  message : string option;
  reason : [ `Common_reason_undefined | `Unknown | `Revision_failed | `Progress_deadline_exceeded | `Container_missing | `Container_permission_denied | `Container_image_unauthorized | `Container_image_authorization_check_failed | `Encryption_key_permission_denied | `Encryption_key_check_failed | `Secrets_access_check_failed | `Waiting_for_operation | `Immediate_retry | `Postponed_retry | `Internal | `Vpc_network_not_found | `Unrecognized of string ] option;
  revision_reason : [ `Revision_reason_undefined | `Pending | `Reserve | `Retired | `Retiring | `Recreating | `Health_check_container_error | `Customized_path_response_pending | `Min_instances_not_provisioned | `Active_revision_limit_reached | `No_deployment | `Health_check_skipped | `Min_instances_warming | `Unrecognized of string ] option;
  severity : [ `Severity_unspecified | `Error | `Warning | `Info | `Unrecognized of string ] option;
  state : [ `State_unspecified | `Condition_pending | `Condition_reconciling | `Condition_failed | `Condition_succeeded | `Unrecognized of string ] option;
  type_ : string option;
}

and google_cloud_run_v2_container = {
  args : string list option;
  base_image_uri : string option;
  build_info : google_cloud_run_v2_build_info option;
  command : string list option;
  depends_on : string list option;
  env : google_cloud_run_v2_env_var list option;
  image : string option;
  liveness_probe : google_cloud_run_v2_probe option;
  name : string option;
  ports : google_cloud_run_v2_container_port list option;
  readiness_probe : google_cloud_run_v2_probe option;
  resources : google_cloud_run_v2_resource_requirements option;
  sandbox_launcher : bool option;
  source_code : google_cloud_run_v2_source_code option;
  startup_probe : google_cloud_run_v2_probe option;
  volume_mounts : google_cloud_run_v2_volume_mount list option;
  working_dir : string option;
}

and google_cloud_run_v2_container_override = {
  args : string list option;
  clear_args : bool option;
  env : google_cloud_run_v2_env_var list option;
  name : string option;
}

and google_cloud_run_v2_container_port = {
  container_port : int option;
  name : string option;
}

and google_cloud_run_v2_container_status = {
  image_digest : string option;
  name : string option;
}

and google_cloud_run_v2_docker_build = Yojson.Safe.t

and google_cloud_run_v2_empty_dir_volume_source = {
  medium : [ `Medium_unspecified | `Memory | `Disk | `Unrecognized of string ] option;
  size_limit : string option;
}

and google_cloud_run_v2_env_var = {
  name : string option;
  value : string option;
  value_source : google_cloud_run_v2_env_var_source option;
}

and google_cloud_run_v2_env_var_source = {
  secret_key_ref : google_cloud_run_v2_secret_key_selector option;
}

and google_cloud_run_v2_execution = {
  annotations : (string * string) list option;
  cancelled_count : int option;
  client : string option;
  client_version : string option;
  completion_time : string option;
  conditions : google_cloud_run_v2_condition list option;
  create_time : string option;
  creator : string option;
  delete_time : string option;
  etag : string option;
  expire_time : string option;
  failed_count : int option;
  generation : string option;
  job : string option;
  labels : (string * string) list option;
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;
  log_uri : string option;
  name : string option;
  observed_generation : string option;
  parallelism : int option;
  reconciling : bool option;
  retried_count : int option;
  running_count : int option;
  satisfies_pzs : bool option;
  start_time : string option;
  succeeded_count : int option;
  task_count : int option;
  template : google_cloud_run_v2_task_template option;
  uid : string option;
  update_time : string option;
}

and google_cloud_run_v2_execution_reference = {
  completion_status : [ `Completion_status_unspecified | `Execution_succeeded | `Execution_failed | `Execution_running | `Execution_pending | `Execution_cancelled | `Unrecognized of string ] option;
  completion_time : string option;
  create_time : string option;
  delete_time : string option;
  name : string option;
}

and google_cloud_run_v2_execution_template = {
  annotations : (string * string) list option;
  client : string option;
  client_version : string option;
  delay_execution : bool option;
  labels : (string * string) list option;
  parallelism : int option;
  task_count : int option;
  template : google_cloud_run_v2_task_template option;
}

and google_cloud_run_v2_export_image_request = {
  destination_repo : string option;
}

and google_cloud_run_v2_export_image_response = {
  operation_id : string option;
}

and google_cloud_run_v2_export_status_response = {
  image_export_statuses : google_cloud_run_v2_image_export_status list option;
  operation_id : string option;
  operation_state : [ `Operation_state_unspecified | `In_progress | `Finished | `Unrecognized of string ] option;
}

and google_cloud_run_v2_gcs_volume_source = {
  bucket : string option;
  mount_options : string list option;
  read_only : bool option;
}

and google_cloud_run_v2_grpc_action = {
  port : int option;
  service : string option;
}

and google_cloud_run_v2_http_get_action = {
  http_headers : google_cloud_run_v2_http_header list option;
  path : string option;
  port : int option;
}

and google_cloud_run_v2_http_header = {
  name : string option;
  value : string option;
}

and google_cloud_run_v2_image_export_status = {
  export_job_state : [ `Export_job_state_unspecified | `In_progress | `Finished | `Unrecognized of string ] option;
  exported_image_digest : string option;
  status : util_status_proto option;
  tag : string option;
}

and google_cloud_run_v2_inlined_source = {
  sources : google_cloud_run_v2_source_file list option;
}

and google_cloud_run_v2_instance = {
  annotations : (string * string) list option;
  binary_authorization : google_cloud_run_v2_binary_authorization option;
  client : string option;
  client_version : string option;
  conditions : google_cloud_run_v2_condition list option;
  container_statuses : google_cloud_run_v2_container_status list option;
  containers : google_cloud_run_v2_container list option;
  create_time : string option;
  creator : string option;
  default_uri_disabled : bool option;
  delete_time : string option;
  description : string option;
  encryption_key : string option;
  encryption_key_revocation_action : [ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] option;
  encryption_key_shutdown_duration : string option;
  etag : string option;
  expire_time : string option;
  generation : string option;
  gpu_zonal_redundancy_disabled : bool option;
  iap_enabled : bool option;
  ingress : [ `Ingress_traffic_unspecified | `Ingress_traffic_all | `Ingress_traffic_internal_only | `Ingress_traffic_internal_load_balancer | `Ingress_traffic_none | `Unrecognized of string ] option;
  invoker_iam_disabled : bool option;
  labels : (string * string) list option;
  last_modifier : string option;
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;
  log_uri : string option;
  name : string option;
  node_selector : google_cloud_run_v2_node_selector option;
  observed_generation : string option;
  reconciling : bool option;
  restart_policy : [ `Restart_policy_unspecified | `Always | `On_failure | `Never | `Unrecognized of string ] option;
  satisfies_pzs : bool option;
  service_account : string option;
  ssh_enabled : bool option;
  terminal_condition : google_cloud_run_v2_condition option;
  uid : string option;
  update_time : string option;
  urls : string list option;
  volumes : google_cloud_run_v2_volume list option;
  vpc_access : google_cloud_run_v2_vpc_access option;
}

and google_cloud_run_v2_instance_split = {
  percent : int option;
  revision : string option;
  type_ : [ `Instance_split_allocation_type_unspecified | `Instance_split_allocation_type_latest | `Instance_split_allocation_type_revision | `Unrecognized of string ] option;
}

and google_cloud_run_v2_instance_split_status = {
  percent : int option;
  revision : string option;
  type_ : [ `Instance_split_allocation_type_unspecified | `Instance_split_allocation_type_latest | `Instance_split_allocation_type_revision | `Unrecognized of string ] option;
}

and google_cloud_run_v2_job = {
  annotations : (string * string) list option;
  binary_authorization : google_cloud_run_v2_binary_authorization option;
  client : string option;
  client_version : string option;
  conditions : google_cloud_run_v2_condition list option;
  create_time : string option;
  creator : string option;
  delete_time : string option;
  etag : string option;
  execution_count : int option;
  expire_time : string option;
  functional_type : [ `Functional_type_unspecified | `Functional_type_agent | `Functional_type_mcp_server | `Unrecognized of string ] option;
  generation : string option;
  labels : (string * string) list option;
  last_modifier : string option;
  latest_created_execution : google_cloud_run_v2_execution_reference option;
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;
  name : string option;
  observed_generation : string option;
  reconciling : bool option;
  run_execution_token : string option;
  satisfies_pzs : bool option;
  start_execution_token : string option;
  template : google_cloud_run_v2_execution_template option;
  terminal_condition : google_cloud_run_v2_condition option;
  uid : string option;
  update_time : string option;
}

and google_cloud_run_v2_list_executions_response = {
  executions : google_cloud_run_v2_execution list option;
  next_page_token : string option;
}

and google_cloud_run_v2_list_instances_response = {
  instances : google_cloud_run_v2_instance list option;
  next_page_token : string option;
}

and google_cloud_run_v2_list_jobs_response = {
  jobs : google_cloud_run_v2_job list option;
  next_page_token : string option;
}

and google_cloud_run_v2_list_revisions_response = {
  next_page_token : string option;
  revisions : google_cloud_run_v2_revision list option;
}

and google_cloud_run_v2_list_services_response = {
  next_page_token : string option;
  services : google_cloud_run_v2_service list option;
  unreachable : string list option;
}

and google_cloud_run_v2_list_tasks_response = {
  next_page_token : string option;
  tasks : google_cloud_run_v2_task list option;
}

and google_cloud_run_v2_list_worker_pools_response = {
  next_page_token : string option;
  worker_pools : google_cloud_run_v2_worker_pool list option;
}

and google_cloud_run_v2_metadata = {
  metadata : string option;
}

and google_cloud_run_v2_multi_region_settings = {
  multi_region_id : string option;
  regions : string list option;
}

and google_cloud_run_v2_nfs_volume_source = {
  path : string option;
  read_only : bool option;
  server : string option;
}

and google_cloud_run_v2_network_interface = {
  network : string option;
  subnetwork : string option;
  tags : string list option;
}

and google_cloud_run_v2_node_selector = {
  accelerator : string option;
}

and google_cloud_run_v2_overrides = {
  container_overrides : google_cloud_run_v2_container_override list option;
  delay_execution : bool option;
  task_count : int option;
  timeout : string option;
}

and google_cloud_run_v2_probe = {
  failure_threshold : int option;
  grpc : google_cloud_run_v2_grpc_action option;
  http_get : google_cloud_run_v2_http_get_action option;
  initial_delay_seconds : int option;
  period_seconds : int option;
  tcp_socket : google_cloud_run_v2_tcp_socket_action option;
  timeout_seconds : int option;
}

and google_cloud_run_v2_resource_requirements = {
  cpu_idle : bool option;
  limits : (string * string) list option;
  startup_cpu_boost : bool option;
}

and google_cloud_run_v2_revision = {
  ambient_networking : google_cloud_run_v2_ambient_networking option;
  annotations : (string * string) list option;
  client : string option;
  client_version : string option;
  conditions : google_cloud_run_v2_condition list option;
  containers : google_cloud_run_v2_container list option;
  create_time : string option;
  creator : string option;
  delete_time : string option;
  encryption_key : string option;
  encryption_key_revocation_action : [ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] option;
  encryption_key_shutdown_duration : string option;
  etag : string option;
  execution_environment : [ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] option;
  expire_time : string option;
  generation : string option;
  gpu_zonal_redundancy_disabled : bool option;
  labels : (string * string) list option;
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;
  log_uri : string option;
  max_instance_request_concurrency : int option;
  name : string option;
  node_selector : google_cloud_run_v2_node_selector option;
  observed_generation : string option;
  reconciling : bool option;
  satisfies_pzs : bool option;
  scaling : google_cloud_run_v2_revision_scaling option;
  scaling_status : google_cloud_run_v2_revision_scaling_status option;
  service : string option;
  service_account : string option;
  service_mesh : google_cloud_run_v2_service_mesh option;
  session_affinity : bool option;
  timeout : string option;
  uid : string option;
  update_time : string option;
  volumes : google_cloud_run_v2_volume list option;
  vpc_access : google_cloud_run_v2_vpc_access option;
  workload_identity_config : google_cloud_run_v2_workload_identity_config option;
}

and google_cloud_run_v2_revision_scaling = {
  concurrency_utilization : float option;
  cpu_utilization : float option;
  max_instance_count : int option;
  min_instance_count : int option;
}

and google_cloud_run_v2_revision_scaling_status = {
  desired_min_instance_count : int option;
}

and google_cloud_run_v2_revision_template = {
  ambient_networking : google_cloud_run_v2_ambient_networking option;
  annotations : (string * string) list option;
  client : string option;
  client_version : string option;
  containers : google_cloud_run_v2_container list option;
  encryption_key : string option;
  encryption_key_revocation_action : [ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] option;
  encryption_key_shutdown_duration : string option;
  execution_environment : [ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] option;
  gpu_zonal_redundancy_disabled : bool option;
  health_check_disabled : bool option;
  labels : (string * string) list option;
  max_instance_request_concurrency : int option;
  node_selector : google_cloud_run_v2_node_selector option;
  revision : string option;
  scaling : google_cloud_run_v2_revision_scaling option;
  service_account : string option;
  service_mesh : google_cloud_run_v2_service_mesh option;
  session_affinity : bool option;
  timeout : string option;
  volumes : google_cloud_run_v2_volume list option;
  vpc_access : google_cloud_run_v2_vpc_access option;
  workload_identity_config : google_cloud_run_v2_workload_identity_config option;
}

and google_cloud_run_v2_run_job_request = {
  etag : string option;
  overrides : google_cloud_run_v2_overrides option;
  validate_only : bool option;
}

and google_cloud_run_v2_secret_key_selector = {
  secret : string option;
  version : string option;
}

and google_cloud_run_v2_secret_volume_source = {
  default_mode : int option;
  items : google_cloud_run_v2_version_to_path list option;
  secret : string option;
}

and google_cloud_run_v2_service = {
  annotations : (string * string) list option;
  binary_authorization : google_cloud_run_v2_binary_authorization option;
  build_config : google_cloud_run_v2_build_config option;
  client : string option;
  client_version : string option;
  conditions : google_cloud_run_v2_condition list option;
  create_time : string option;
  creator : string option;
  custom_audiences : string list option;
  default_uri_disabled : bool option;
  delete_time : string option;
  description : string option;
  etag : string option;
  expire_time : string option;
  functional_type : [ `Functional_type_unspecified | `Functional_type_agent | `Functional_type_mcp_server | `Unrecognized of string ] option;
  generation : string option;
  iap_enabled : bool option;
  ingress : [ `Ingress_traffic_unspecified | `Ingress_traffic_all | `Ingress_traffic_internal_only | `Ingress_traffic_internal_load_balancer | `Ingress_traffic_none | `Unrecognized of string ] option;
  invoker_iam_disabled : bool option;
  labels : (string * string) list option;
  last_modifier : string option;
  latest_created_revision : string option;
  latest_ready_revision : string option;
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;
  multi_region_settings : google_cloud_run_v2_multi_region_settings option;
  name : string option;
  observed_generation : string option;
  reconciling : bool option;
  satisfies_pzs : bool option;
  scaling : google_cloud_run_v2_service_scaling option;
  ssh_enabled : bool option;
  template : google_cloud_run_v2_revision_template option;
  terminal_condition : google_cloud_run_v2_condition option;
  threat_detection_enabled : bool option;
  traffic : google_cloud_run_v2_traffic_target list option;
  traffic_statuses : google_cloud_run_v2_traffic_target_status list option;
  uid : string option;
  update_time : string option;
  uri : string option;
  urls : string list option;
}

and google_cloud_run_v2_service_mesh = {
  mesh : string option;
}

and google_cloud_run_v2_service_scaling = {
  manual_instance_count : int option;
  max_instance_count : int option;
  min_instance_count : int option;
  scaling_mode : [ `Scaling_mode_unspecified | `Automatic | `Manual | `Unrecognized of string ] option;
}

and google_cloud_run_v2_source_code = {
  cloud_storage_source : google_cloud_run_v2_cloud_storage_source option;
  inlined_source : google_cloud_run_v2_inlined_source option;
}

and google_cloud_run_v2_source_file = {
  content : string option;
  filename : string option;
}

and google_cloud_run_v2_start_instance_request = {
  etag : string option;
  validate_only : bool option;
}

and google_cloud_run_v2_stop_instance_request = {
  etag : string option;
  validate_only : bool option;
}

and google_cloud_run_v2_storage_source = {
  bucket : string option;
  generation : string option;
  object_ : string option;
}

and google_cloud_run_v2_submit_build_request = {
  buildpack_build : google_cloud_run_v2_buildpacks_build option;
  client : string option;
  docker_build : google_cloud_run_v2_docker_build option;
  image_uri : string option;
  machine_type : string option;
  release_track : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;
  service_account : string option;
  storage_source : google_cloud_run_v2_storage_source option;
  tags : string list option;
  worker_pool : string option;
}

and google_cloud_run_v2_submit_build_response = {
  base_image_uri : string option;
  base_image_warning : string option;
  build_operation : google_longrunning_operation option;
}

and google_cloud_run_v2_tcp_socket_action = {
  port : int option;
}

and google_cloud_run_v2_task = {
  annotations : (string * string) list option;
  completion_time : string option;
  conditions : google_cloud_run_v2_condition list option;
  containers : google_cloud_run_v2_container list option;
  create_time : string option;
  delete_time : string option;
  encryption_key : string option;
  etag : string option;
  execution : string option;
  execution_environment : [ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] option;
  expire_time : string option;
  generation : string option;
  gpu_zonal_redundancy_disabled : bool option;
  index : int option;
  job : string option;
  labels : (string * string) list option;
  last_attempt_result : google_cloud_run_v2_task_attempt_result option;
  log_uri : string option;
  max_retries : int option;
  name : string option;
  node_selector : google_cloud_run_v2_node_selector option;
  observed_generation : string option;
  reconciling : bool option;
  retried : int option;
  satisfies_pzs : bool option;
  scheduled_time : string option;
  service_account : string option;
  start_time : string option;
  timeout : string option;
  uid : string option;
  update_time : string option;
  volumes : google_cloud_run_v2_volume list option;
  vpc_access : google_cloud_run_v2_vpc_access option;
  workload_identity_config : google_cloud_run_v2_workload_identity_config option;
}

and google_cloud_run_v2_task_attempt_result = {
  exit_code : int option;
  status : google_rpc_status option;
  term_signal : int option;
}

and google_cloud_run_v2_task_template = {
  containers : google_cloud_run_v2_container list option;
  encryption_key : string option;
  execution_environment : [ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] option;
  gpu_zonal_redundancy_disabled : bool option;
  max_retries : int option;
  node_selector : google_cloud_run_v2_node_selector option;
  service_account : string option;
  timeout : string option;
  volumes : google_cloud_run_v2_volume list option;
  vpc_access : google_cloud_run_v2_vpc_access option;
  workload_identity_config : google_cloud_run_v2_workload_identity_config option;
}

and google_cloud_run_v2_traffic_target = {
  percent : int option;
  revision : string option;
  tag : string option;
  type_ : [ `Traffic_target_allocation_type_unspecified | `Traffic_target_allocation_type_latest | `Traffic_target_allocation_type_revision | `Unrecognized of string ] option;
}

and google_cloud_run_v2_traffic_target_status = {
  percent : int option;
  revision : string option;
  tag : string option;
  type_ : [ `Traffic_target_allocation_type_unspecified | `Traffic_target_allocation_type_latest | `Traffic_target_allocation_type_revision | `Unrecognized of string ] option;
  uri : string option;
}

and google_cloud_run_v2_upload_source_request = {
  service : string option;
}

and google_cloud_run_v2_upload_source_response = {
  cloud_storage_source : google_cloud_run_v2_cloud_storage_source option;
}

and google_cloud_run_v2_version_to_path = {
  mode : int option;
  path : string option;
  version : string option;
}

and google_cloud_run_v2_volume = {
  cloud_sql_instance : google_cloud_run_v2_cloud_sql_instance option;
  empty_dir : google_cloud_run_v2_empty_dir_volume_source option;
  gcs : google_cloud_run_v2_gcs_volume_source option;
  name : string option;
  nfs : google_cloud_run_v2_nfs_volume_source option;
  secret : google_cloud_run_v2_secret_volume_source option;
}

and google_cloud_run_v2_volume_mount = {
  mount_path : string option;
  name : string option;
  sub_path : string option;
}

and google_cloud_run_v2_vpc_access = {
  connector : string option;
  egress : [ `Vpc_egress_unspecified | `All_traffic | `Private_ranges_only | `Unrecognized of string ] option;
  network_interfaces : google_cloud_run_v2_network_interface list option;
}

and google_cloud_run_v2_worker_pool = {
  annotations : (string * string) list option;
  binary_authorization : google_cloud_run_v2_binary_authorization option;
  client : string option;
  client_version : string option;
  conditions : google_cloud_run_v2_condition list option;
  create_time : string option;
  creator : string option;
  custom_audiences : string list option;
  delete_time : string option;
  description : string option;
  etag : string option;
  expire_time : string option;
  generation : string option;
  instance_split_statuses : google_cloud_run_v2_instance_split_status list option;
  instance_splits : google_cloud_run_v2_instance_split list option;
  labels : (string * string) list option;
  last_modifier : string option;
  latest_created_revision : string option;
  latest_ready_revision : string option;
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;
  name : string option;
  observed_generation : string option;
  reconciling : bool option;
  satisfies_pzs : bool option;
  scaling : google_cloud_run_v2_worker_pool_scaling option;
  template : google_cloud_run_v2_worker_pool_revision_template option;
  terminal_condition : google_cloud_run_v2_condition option;
  threat_detection_enabled : bool option;
  uid : string option;
  update_time : string option;
}

and google_cloud_run_v2_worker_pool_revision_template = {
  annotations : (string * string) list option;
  client : string option;
  client_version : string option;
  containers : google_cloud_run_v2_container list option;
  encryption_key : string option;
  encryption_key_revocation_action : [ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] option;
  encryption_key_shutdown_duration : string option;
  gpu_zonal_redundancy_disabled : bool option;
  labels : (string * string) list option;
  node_selector : google_cloud_run_v2_node_selector option;
  revision : string option;
  service_account : string option;
  service_mesh : google_cloud_run_v2_service_mesh option;
  volumes : google_cloud_run_v2_volume list option;
  vpc_access : google_cloud_run_v2_vpc_access option;
}

and google_cloud_run_v2_worker_pool_scaling = {
  manual_instance_count : int option;
}

and google_cloud_run_v2_workload_identity_config = {
  identity : string option;
  identity_certificate_enabled : bool option;
  identity_type : [ `Identity_type_unspecified | `Identity_type_service_account | `Identity_type_agent_identity | `Unrecognized of string ] option;
}

and google_devtools_cloudbuild_v1_approval_config = {
  approval_required : bool option;
}

and google_devtools_cloudbuild_v1_approval_result = {
  approval_time : string option;
  approver_account : string option;
  comment : string option;
  decision : [ `Decision_unspecified | `Approved | `Rejected | `Unrecognized of string ] option;
  url : string option;
}

and google_devtools_cloudbuild_v1_artifact_objects = {
  location : string option;
  paths : string list option;
  timing : google_devtools_cloudbuild_v1_time_span option;
}

and google_devtools_cloudbuild_v1_artifacts = {
  generic_artifacts : google_devtools_cloudbuild_v1_generic_artifact list option;
  go_modules : google_devtools_cloudbuild_v1_go_module list option;
  images : string list option;
  maven_artifacts : google_devtools_cloudbuild_v1_maven_artifact list option;
  npm_packages : google_devtools_cloudbuild_v1_npm_package list option;
  objects : google_devtools_cloudbuild_v1_artifact_objects option;
  oci : google_devtools_cloudbuild_v1_oci list option;
  python_packages : google_devtools_cloudbuild_v1_python_package list option;
}

and google_devtools_cloudbuild_v1_build = {
  approval : google_devtools_cloudbuild_v1_build_approval option;
  artifacts : google_devtools_cloudbuild_v1_artifacts option;
  available_secrets : google_devtools_cloudbuild_v1_secrets option;
  build_trigger_id : string option;
  create_time : string option;
  dependencies : google_devtools_cloudbuild_v1_dependency list option;
  failure_info : google_devtools_cloudbuild_v1_failure_info option;
  finish_time : string option;
  git_config : google_devtools_cloudbuild_v1_git_config option;
  id : string option;
  images : string list option;
  log_url : string option;
  logs_bucket : string option;
  name : string option;
  options : google_devtools_cloudbuild_v1_build_options option;
  project_id : string option;
  queue_ttl : string option;
  results : google_devtools_cloudbuild_v1_results option;
  secrets : google_devtools_cloudbuild_v1_secret list option;
  service_account : string option;
  source : google_devtools_cloudbuild_v1_source option;
  source_provenance : google_devtools_cloudbuild_v1_source_provenance option;
  start_time : string option;
  status : [ `Status_unknown | `Pending | `Queued | `Working | `Success | `Failure | `Internal_error | `Timeout | `Cancelled | `Expired | `Unrecognized of string ] option;
  status_detail : string option;
  steps : google_devtools_cloudbuild_v1_build_step list option;
  substitutions : (string * string) list option;
  tags : string list option;
  timeout : string option;
  timing : (string * google_devtools_cloudbuild_v1_time_span) list option;
  warnings : google_devtools_cloudbuild_v1_warning list option;
}

and google_devtools_cloudbuild_v1_build_approval = {
  config : google_devtools_cloudbuild_v1_approval_config option;
  result : google_devtools_cloudbuild_v1_approval_result option;
  state : [ `State_unspecified | `Pending | `Approved | `Rejected | `Cancelled | `Unrecognized of string ] option;
}

and google_devtools_cloudbuild_v1_build_operation_metadata = {
  build : google_devtools_cloudbuild_v1_build option;
}

and google_devtools_cloudbuild_v1_build_options = {
  automap_substitutions : bool option;
  default_logs_bucket_behavior : [ `Default_logs_bucket_behavior_unspecified | `Regional_user_owned_bucket | `Legacy_bucket | `Unrecognized of string ] option;
  disk_size_gb : string option;
  dynamic_substitutions : bool option;
  enable_structured_logging : bool option;
  env : string list option;
  log_streaming_option : [ `Stream_default | `Stream_on | `Stream_off | `Unrecognized of string ] option;
  logging : [ `Logging_unspecified | `Legacy | `Gcs_only | `Stackdriver_only | `Cloud_logging_only | `None | `Unrecognized of string ] option;
  machine_type : [ `Unspecified | `N1_highcpu_8 | `N1_highcpu_32 | `E2_highcpu_8 | `E2_highcpu_32 | `E2_medium | `E2_standard_2 | `Unrecognized of string ] option;
  pool : google_devtools_cloudbuild_v1_pool_option option;
  pubsub_topic : string option;
  ranked_machine_series : [ `Machine_series_unspecified | `Machine_series_e | `Machine_series_n | `Machine_series_c | `Unrecognized of string ] list option;
  requested_verify_option : [ `Not_verified | `Verified | `Best_effort | `Unrecognized of string ] option;
  resolved_worker_release : string option;
  secret_env : string list option;
  source_provenance_hash : [ `None | `Sha256 | `Md5 | `Go_module_h1 | `Sha512 | `Dirsum_sha256 | `Unrecognized of string ] list option;
  substitution_option : [ `Must_match | `Allow_loose | `Unrecognized of string ] option;
  volumes : google_devtools_cloudbuild_v1_volume list option;
  worker_pool : string option;
  worker_release : string option;
}

and google_devtools_cloudbuild_v1_build_resource_usage = {
  average_cpu_utilization : float option;
  average_memory_utilization : float option;
  peak_cpu_utilization : float option;
  peak_memory_utilization : float option;
  total_cpu_duration : string option;
}

and google_devtools_cloudbuild_v1_build_step = {
  allow_exit_codes : int list option;
  allow_failure : bool option;
  args : string list option;
  automap_substitutions : bool option;
  dir : string option;
  entrypoint : string option;
  env : string list option;
  exit_code : int option;
  id : string option;
  name : string option;
  pull_timing : google_devtools_cloudbuild_v1_time_span option;
  results : google_devtools_cloudbuild_v1_step_result list option;
  script : string option;
  secret_env : string list option;
  status : [ `Status_unknown | `Pending | `Queued | `Working | `Success | `Failure | `Internal_error | `Timeout | `Cancelled | `Expired | `Unrecognized of string ] option;
  timeout : string option;
  timing : google_devtools_cloudbuild_v1_time_span option;
  volumes : google_devtools_cloudbuild_v1_volume list option;
  wait_for : string list option;
}

and google_devtools_cloudbuild_v1_build_step_results = {
  results : (string * string) list option;
}

and google_devtools_cloudbuild_v1_built_image = {
  artifact_registry_package : string option;
  digest : string option;
  name : string option;
  oci_media_type : [ `Oci_media_type_unspecified | `Image_manifest | `Image_index | `Unrecognized of string ] option;
  push_timing : google_devtools_cloudbuild_v1_time_span option;
}

and google_devtools_cloudbuild_v1_connected_repository = {
  dir : string option;
  repository : string option;
  revision : string option;
}

and google_devtools_cloudbuild_v1_dependency = {
  empty : bool option;
  generic_artifact : google_devtools_cloudbuild_v1_generic_artifact_dependency option;
  git_source : google_devtools_cloudbuild_v1_git_source_dependency option;
}

and google_devtools_cloudbuild_v1_developer_connect_config = {
  dir : string option;
  git_repository_link : string option;
  revision : string option;
}

and google_devtools_cloudbuild_v1_failure_info = {
  detail : string option;
  type_ : [ `Failure_type_unspecified | `Push_failed | `Push_image_not_found | `Push_not_authorized | `Logging_failure | `User_build_step | `Fetch_source_failed | `Unrecognized of string ] option;
}

and google_devtools_cloudbuild_v1_file_hashes = {
  file_hash : google_devtools_cloudbuild_v1_hash list option;
}

and google_devtools_cloudbuild_v1_generic_artifact = {
  folder : string option;
  registry_path : string option;
}

and google_devtools_cloudbuild_v1_generic_artifact_dependency = {
  dest_path : string option;
  resource : string option;
}

and google_devtools_cloudbuild_v1_git_config = {
  http : google_devtools_cloudbuild_v1_http_config option;
}

and google_devtools_cloudbuild_v1_git_source = {
  dir : string option;
  revision : string option;
  url : string option;
}

and google_devtools_cloudbuild_v1_git_source_dependency = {
  depth : string option;
  dest_path : string option;
  fetch_tags : bool option;
  recurse_submodules : bool option;
  repository : google_devtools_cloudbuild_v1_git_source_repository option;
  revision : string option;
}

and google_devtools_cloudbuild_v1_git_source_repository = {
  developer_connect : string option;
  url : string option;
}

and google_devtools_cloudbuild_v1_go_module = {
  module_path : string option;
  module_version : string option;
  repository_location : string option;
  repository_name : string option;
  repository_project_id : string option;
  source_path : string option;
}

and google_devtools_cloudbuild_v1_hash = {
  type_ : [ `None | `Sha256 | `Md5 | `Go_module_h1 | `Sha512 | `Dirsum_sha256 | `Unrecognized of string ] option;
  value : string option;
}

and google_devtools_cloudbuild_v1_http_config = {
  proxy_secret_version_name : string option;
}

and google_devtools_cloudbuild_v1_inline_secret = {
  env_map : (string * string) list option;
  kms_key_name : string option;
}

and google_devtools_cloudbuild_v1_maven_artifact = {
  artifact_id : string option;
  deploy_folder : string option;
  group_id : string option;
  path : string option;
  repository : string option;
  version : string option;
}

and google_devtools_cloudbuild_v1_npm_package = {
  package_path : string option;
  repository : string option;
}

and google_devtools_cloudbuild_v1_oci = {
  file : string option;
  registry_path : string option;
  tags : string list option;
}

and google_devtools_cloudbuild_v1_pool_option = {
  name : string option;
  resolved_worker_release : string option;
  worker_release : string option;
}

and google_devtools_cloudbuild_v1_python_package = {
  paths : string list option;
  repository : string option;
}

and google_devtools_cloudbuild_v1_repo_source = {
  branch_name : string option;
  commit_sha : string option;
  dir : string option;
  invert_regex : bool option;
  project_id : string option;
  repo_name : string option;
  substitutions : (string * string) list option;
  tag_name : string option;
}

and google_devtools_cloudbuild_v1_results = {
  artifact_manifest : string option;
  artifact_timing : google_devtools_cloudbuild_v1_time_span option;
  build_step_images : string list option;
  build_step_outputs : string list option;
  build_step_results : (string * google_devtools_cloudbuild_v1_build_step_results) list option;
  generic_artifacts : google_devtools_cloudbuild_v1_uploaded_generic_artifact list option;
  go_modules : google_devtools_cloudbuild_v1_uploaded_go_module list option;
  images : google_devtools_cloudbuild_v1_built_image list option;
  maven_artifacts : google_devtools_cloudbuild_v1_uploaded_maven_artifact list option;
  npm_packages : google_devtools_cloudbuild_v1_uploaded_npm_package list option;
  num_artifacts : string option;
  python_packages : google_devtools_cloudbuild_v1_uploaded_python_package list option;
  resource_usage : google_devtools_cloudbuild_v1_build_resource_usage option;
}

and google_devtools_cloudbuild_v1_secret = {
  kms_key_name : string option;
  secret_env : (string * string) list option;
}

and google_devtools_cloudbuild_v1_secret_manager_secret = {
  env : string option;
  version_name : string option;
}

and google_devtools_cloudbuild_v1_secrets = {
  inline : google_devtools_cloudbuild_v1_inline_secret list option;
  secret_manager : google_devtools_cloudbuild_v1_secret_manager_secret list option;
}

and google_devtools_cloudbuild_v1_source = {
  connected_repository : google_devtools_cloudbuild_v1_connected_repository option;
  developer_connect_config : google_devtools_cloudbuild_v1_developer_connect_config option;
  git_source : google_devtools_cloudbuild_v1_git_source option;
  repo_source : google_devtools_cloudbuild_v1_repo_source option;
  storage_source : google_devtools_cloudbuild_v1_storage_source option;
  storage_source_manifest : google_devtools_cloudbuild_v1_storage_source_manifest option;
}

and google_devtools_cloudbuild_v1_source_provenance = {
  file_hashes : (string * google_devtools_cloudbuild_v1_file_hashes) list option;
  resolved_connected_repository : google_devtools_cloudbuild_v1_connected_repository option;
  resolved_git_source : google_devtools_cloudbuild_v1_git_source option;
  resolved_repo_source : google_devtools_cloudbuild_v1_repo_source option;
  resolved_storage_source : google_devtools_cloudbuild_v1_storage_source option;
  resolved_storage_source_manifest : google_devtools_cloudbuild_v1_storage_source_manifest option;
}

and google_devtools_cloudbuild_v1_step_result = {
  attestation_content : string option;
  attestation_type : string option;
  name : string option;
}

and google_devtools_cloudbuild_v1_storage_source = {
  bucket : string option;
  generation : string option;
  object_ : string option;
  source_fetcher : [ `Source_fetcher_unspecified | `Gsutil | `Gcs_fetcher | `Unrecognized of string ] option;
}

and google_devtools_cloudbuild_v1_storage_source_manifest = {
  bucket : string option;
  generation : string option;
  object_ : string option;
}

and google_devtools_cloudbuild_v1_time_span = {
  end_time : string option;
  start_time : string option;
}

and google_devtools_cloudbuild_v1_uploaded_generic_artifact = {
  artifact_fingerprint : google_devtools_cloudbuild_v1_file_hashes option;
  artifact_registry_package : string option;
  file_hashes : (string * google_devtools_cloudbuild_v1_file_hashes) list option;
  push_timing : google_devtools_cloudbuild_v1_time_span option;
  uri : string option;
}

and google_devtools_cloudbuild_v1_uploaded_go_module = {
  artifact_registry_package : string option;
  file_hashes : google_devtools_cloudbuild_v1_file_hashes option;
  push_timing : google_devtools_cloudbuild_v1_time_span option;
  uri : string option;
}

and google_devtools_cloudbuild_v1_uploaded_maven_artifact = {
  artifact_registry_package : string option;
  file_hashes : google_devtools_cloudbuild_v1_file_hashes option;
  push_timing : google_devtools_cloudbuild_v1_time_span option;
  uri : string option;
}

and google_devtools_cloudbuild_v1_uploaded_npm_package = {
  artifact_registry_package : string option;
  file_hashes : google_devtools_cloudbuild_v1_file_hashes option;
  push_timing : google_devtools_cloudbuild_v1_time_span option;
  uri : string option;
}

and google_devtools_cloudbuild_v1_uploaded_python_package = {
  artifact_registry_package : string option;
  file_hashes : google_devtools_cloudbuild_v1_file_hashes option;
  push_timing : google_devtools_cloudbuild_v1_time_span option;
  uri : string option;
}

and google_devtools_cloudbuild_v1_volume = {
  name : string option;
  path : string option;
}

and google_devtools_cloudbuild_v1_warning = {
  priority : [ `Priority_unspecified | `Info | `Warning | `Alert | `Unrecognized of string ] option;
  text : string option;
}

and google_iam_v1_audit_config = {
  audit_log_configs : google_iam_v1_audit_log_config list option;
  service : string option;
}

and google_iam_v1_audit_log_config = {
  exempted_members : string list option;
  log_type : [ `Log_type_unspecified | `Admin_read | `Data_write | `Data_read | `Unrecognized of string ] option;
}

and google_iam_v1_binding = {
  condition : google_type_expr option;
  members : string list option;
  role : string option;
}

and google_iam_v1_policy = {
  audit_configs : google_iam_v1_audit_config list option;
  bindings : google_iam_v1_binding list option;
  etag : string option;
  version : int option;
}

and google_iam_v1_set_iam_policy_request = {
  policy : google_iam_v1_policy option;
  update_mask : string option;
}

and google_iam_v1_test_iam_permissions_request = {
  permissions : string list option;
}

and google_iam_v1_test_iam_permissions_response = {
  permissions : string list option;
}

and google_longrunning_list_operations_response = {
  next_page_token : string option;
  operations : google_longrunning_operation list option;
  unreachable : string list option;
}

and google_longrunning_operation = {
  done_ : bool option;
  error : google_rpc_status option;
  metadata : (string * Yojson.Safe.t) list option;
  name : string option;
  response : (string * Yojson.Safe.t) list option;
}

and google_longrunning_wait_operation_request = {
  timeout : string option;
}

and google_protobuf_empty = Yojson.Safe.t

and google_rpc_status = {
  code : int option;
  details : (string * Yojson.Safe.t) list list option;
  message : string option;
}

and google_type_expr = {
  description : string option;
  expression : string option;
  location : string option;
  title : string option;
}

and proto2_bridge_message_set = Yojson.Safe.t

and util_status_proto = {
  canonical_code : int option;
  code : int option;
  message : string option;
  message_set : proto2_bridge_message_set option;
  space : string option;
}

let rec google_cloud_run_v2_ambient_networking_of_yojson json : google_cloud_run_v2_ambient_networking =
  let open Yojson.Safe.Util in
  {
    ambient_scope = member "ambientScope" json |> to_option (fun json -> match to_string json with "AMBIENT_SCOPE_UNSPECIFIED" -> `Ambient_scope_unspecified | "AMBIENT_SCOPE_REGIONAL" -> `Ambient_scope_regional | "AMBIENT_SCOPE_GLOBAL" -> `Ambient_scope_global | value -> `Unrecognized value);
    enabled = member "enabled" json |> to_option to_bool;
  }

and yojson_of_google_cloud_run_v2_ambient_networking (value : google_cloud_run_v2_ambient_networking) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ambientScope", (fun value -> `String ((function `Ambient_scope_unspecified -> "AMBIENT_SCOPE_UNSPECIFIED" | `Ambient_scope_regional -> "AMBIENT_SCOPE_REGIONAL" | `Ambient_scope_global -> "AMBIENT_SCOPE_GLOBAL" | `Unrecognized value -> value) value)) field)) value.ambient_scope;
         Option.map (fun field -> ("enabled", (fun value -> `Bool value) field)) value.enabled;
       ])

and google_cloud_run_v2_binary_authorization_of_yojson json : google_cloud_run_v2_binary_authorization =
  let open Yojson.Safe.Util in
  {
    breakglass_justification = member "breakglassJustification" json |> to_option to_string;
    policy = member "policy" json |> to_option to_string;
    use_default = member "useDefault" json |> to_option to_bool;
  }

and yojson_of_google_cloud_run_v2_binary_authorization (value : google_cloud_run_v2_binary_authorization) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("breakglassJustification", (fun value -> `String value) field)) value.breakglass_justification;
         Option.map (fun field -> ("policy", (fun value -> `String value) field)) value.policy;
         Option.map (fun field -> ("useDefault", (fun value -> `Bool value) field)) value.use_default;
       ])

and google_cloud_run_v2_build_config_of_yojson json : google_cloud_run_v2_build_config =
  let open Yojson.Safe.Util in
  {
    base_image = member "baseImage" json |> to_option to_string;
    enable_automatic_updates = member "enableAutomaticUpdates" json |> to_option to_bool;
    environment_variables = member "environmentVariables" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    function_target = member "functionTarget" json |> to_option to_string;
    image_uri = member "imageUri" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    service_account = member "serviceAccount" json |> to_option to_string;
    source_location = member "sourceLocation" json |> to_option to_string;
    worker_pool = member "workerPool" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_build_config (value : google_cloud_run_v2_build_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("baseImage", (fun value -> `String value) field)) value.base_image;
         Option.map (fun field -> ("enableAutomaticUpdates", (fun value -> `Bool value) field)) value.enable_automatic_updates;
         Option.map (fun field -> ("environmentVariables", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.environment_variables;
         Option.map (fun field -> ("functionTarget", (fun value -> `String value) field)) value.function_target;
         Option.map (fun field -> ("imageUri", (fun value -> `String value) field)) value.image_uri;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("serviceAccount", (fun value -> `String value) field)) value.service_account;
         Option.map (fun field -> ("sourceLocation", (fun value -> `String value) field)) value.source_location;
         Option.map (fun field -> ("workerPool", (fun value -> `String value) field)) value.worker_pool;
       ])

and google_cloud_run_v2_build_info_of_yojson json : google_cloud_run_v2_build_info =
  let open Yojson.Safe.Util in
  {
    function_target = member "functionTarget" json |> to_option to_string;
    source_location = member "sourceLocation" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_build_info (value : google_cloud_run_v2_build_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("functionTarget", (fun value -> `String value) field)) value.function_target;
         Option.map (fun field -> ("sourceLocation", (fun value -> `String value) field)) value.source_location;
       ])

and google_cloud_run_v2_buildpacks_build_of_yojson json : google_cloud_run_v2_buildpacks_build =
  let open Yojson.Safe.Util in
  {
    base_image = member "baseImage" json |> to_option to_string;
    cache_image_uri = member "cacheImageUri" json |> to_option to_string;
    enable_automatic_updates = member "enableAutomaticUpdates" json |> to_option to_bool;
    environment_variables = member "environmentVariables" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    function_target = member "functionTarget" json |> to_option to_string;
    project_descriptor = member "projectDescriptor" json |> to_option to_string;
    runtime = member "runtime" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_buildpacks_build (value : google_cloud_run_v2_buildpacks_build) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("baseImage", (fun value -> `String value) field)) value.base_image;
         Option.map (fun field -> ("cacheImageUri", (fun value -> `String value) field)) value.cache_image_uri;
         Option.map (fun field -> ("enableAutomaticUpdates", (fun value -> `Bool value) field)) value.enable_automatic_updates;
         Option.map (fun field -> ("environmentVariables", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.environment_variables;
         Option.map (fun field -> ("functionTarget", (fun value -> `String value) field)) value.function_target;
         Option.map (fun field -> ("projectDescriptor", (fun value -> `String value) field)) value.project_descriptor;
         Option.map (fun field -> ("runtime", (fun value -> `String value) field)) value.runtime;
       ])

and google_cloud_run_v2_cancel_execution_request_of_yojson json : google_cloud_run_v2_cancel_execution_request =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    validate_only = member "validateOnly" json |> to_option to_bool;
  }

and yojson_of_google_cloud_run_v2_cancel_execution_request (value : google_cloud_run_v2_cancel_execution_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("validateOnly", (fun value -> `Bool value) field)) value.validate_only;
       ])

and google_cloud_run_v2_cloud_sql_instance_of_yojson json : google_cloud_run_v2_cloud_sql_instance =
  let open Yojson.Safe.Util in
  {
    instances = member "instances" json |> to_option (convert_each to_string);
  }

and yojson_of_google_cloud_run_v2_cloud_sql_instance (value : google_cloud_run_v2_cloud_sql_instance) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("instances", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.instances;
       ])

and google_cloud_run_v2_cloud_storage_source_of_yojson json : google_cloud_run_v2_cloud_storage_source =
  let open Yojson.Safe.Util in
  {
    bucket = member "bucket" json |> to_option to_string;
    generation = member "generation" json |> to_option to_string;
    object_ = member "object" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_cloud_storage_source (value : google_cloud_run_v2_cloud_storage_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("object", (fun value -> `String value) field)) value.object_;
       ])

and google_cloud_run_v2_condition_of_yojson json : google_cloud_run_v2_condition =
  let open Yojson.Safe.Util in
  {
    execution_reason = member "executionReason" json |> to_option (fun json -> match to_string json with "EXECUTION_REASON_UNDEFINED" -> `Execution_reason_undefined | "JOB_STATUS_SERVICE_POLLING_ERROR" -> `Job_status_service_polling_error | "NON_ZERO_EXIT_CODE" -> `Non_zero_exit_code | "CANCELLED" -> `Cancelled | "CANCELLING" -> `Cancelling | "DELETED" -> `Deleted | "DELAYED_START_PENDING" -> `Delayed_start_pending | "DELAYED_EXECUTION_EXCEEDING_DURATION_LIMIT" -> `Delayed_execution_exceeding_duration_limit | value -> `Unrecognized value);
    instance_reason = member "instanceReason" json |> to_option (fun json -> match to_string json with "INSTANCE_REASON_UNSPECIFIED" -> `Instance_reason_unspecified | "INSTANCE_DELETED" -> `Instance_deleted | "INSTANCE_STOPPED" -> `Instance_stopped | "INSTANCE_STOPPING" -> `Instance_stopping | "INSTANCE_NON_ZERO_EXIT_CODE" -> `Instance_non_zero_exit_code | value -> `Unrecognized value);
    last_transition_time = member "lastTransitionTime" json |> to_option to_string;
    message = member "message" json |> to_option to_string;
    reason = member "reason" json |> to_option (fun json -> match to_string json with "COMMON_REASON_UNDEFINED" -> `Common_reason_undefined | "UNKNOWN" -> `Unknown | "REVISION_FAILED" -> `Revision_failed | "PROGRESS_DEADLINE_EXCEEDED" -> `Progress_deadline_exceeded | "CONTAINER_MISSING" -> `Container_missing | "CONTAINER_PERMISSION_DENIED" -> `Container_permission_denied | "CONTAINER_IMAGE_UNAUTHORIZED" -> `Container_image_unauthorized | "CONTAINER_IMAGE_AUTHORIZATION_CHECK_FAILED" -> `Container_image_authorization_check_failed | "ENCRYPTION_KEY_PERMISSION_DENIED" -> `Encryption_key_permission_denied | "ENCRYPTION_KEY_CHECK_FAILED" -> `Encryption_key_check_failed | "SECRETS_ACCESS_CHECK_FAILED" -> `Secrets_access_check_failed | "WAITING_FOR_OPERATION" -> `Waiting_for_operation | "IMMEDIATE_RETRY" -> `Immediate_retry | "POSTPONED_RETRY" -> `Postponed_retry | "INTERNAL" -> `Internal | "VPC_NETWORK_NOT_FOUND" -> `Vpc_network_not_found | value -> `Unrecognized value);
    revision_reason = member "revisionReason" json |> to_option (fun json -> match to_string json with "REVISION_REASON_UNDEFINED" -> `Revision_reason_undefined | "PENDING" -> `Pending | "RESERVE" -> `Reserve | "RETIRED" -> `Retired | "RETIRING" -> `Retiring | "RECREATING" -> `Recreating | "HEALTH_CHECK_CONTAINER_ERROR" -> `Health_check_container_error | "CUSTOMIZED_PATH_RESPONSE_PENDING" -> `Customized_path_response_pending | "MIN_INSTANCES_NOT_PROVISIONED" -> `Min_instances_not_provisioned | "ACTIVE_REVISION_LIMIT_REACHED" -> `Active_revision_limit_reached | "NO_DEPLOYMENT" -> `No_deployment | "HEALTH_CHECK_SKIPPED" -> `Health_check_skipped | "MIN_INSTANCES_WARMING" -> `Min_instances_warming | value -> `Unrecognized value);
    severity = member "severity" json |> to_option (fun json -> match to_string json with "SEVERITY_UNSPECIFIED" -> `Severity_unspecified | "ERROR" -> `Error | "WARNING" -> `Warning | "INFO" -> `Info | value -> `Unrecognized value);
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "CONDITION_PENDING" -> `Condition_pending | "CONDITION_RECONCILING" -> `Condition_reconciling | "CONDITION_FAILED" -> `Condition_failed | "CONDITION_SUCCEEDED" -> `Condition_succeeded | value -> `Unrecognized value);
    type_ = member "type" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_condition (value : google_cloud_run_v2_condition) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("executionReason", (fun value -> `String ((function `Execution_reason_undefined -> "EXECUTION_REASON_UNDEFINED" | `Job_status_service_polling_error -> "JOB_STATUS_SERVICE_POLLING_ERROR" | `Non_zero_exit_code -> "NON_ZERO_EXIT_CODE" | `Cancelled -> "CANCELLED" | `Cancelling -> "CANCELLING" | `Deleted -> "DELETED" | `Delayed_start_pending -> "DELAYED_START_PENDING" | `Delayed_execution_exceeding_duration_limit -> "DELAYED_EXECUTION_EXCEEDING_DURATION_LIMIT" | `Unrecognized value -> value) value)) field)) value.execution_reason;
         Option.map (fun field -> ("instanceReason", (fun value -> `String ((function `Instance_reason_unspecified -> "INSTANCE_REASON_UNSPECIFIED" | `Instance_deleted -> "INSTANCE_DELETED" | `Instance_stopped -> "INSTANCE_STOPPED" | `Instance_stopping -> "INSTANCE_STOPPING" | `Instance_non_zero_exit_code -> "INSTANCE_NON_ZERO_EXIT_CODE" | `Unrecognized value -> value) value)) field)) value.instance_reason;
         Option.map (fun field -> ("lastTransitionTime", (fun value -> `String value) field)) value.last_transition_time;
         Option.map (fun field -> ("message", (fun value -> `String value) field)) value.message;
         Option.map (fun field -> ("reason", (fun value -> `String ((function `Common_reason_undefined -> "COMMON_REASON_UNDEFINED" | `Unknown -> "UNKNOWN" | `Revision_failed -> "REVISION_FAILED" | `Progress_deadline_exceeded -> "PROGRESS_DEADLINE_EXCEEDED" | `Container_missing -> "CONTAINER_MISSING" | `Container_permission_denied -> "CONTAINER_PERMISSION_DENIED" | `Container_image_unauthorized -> "CONTAINER_IMAGE_UNAUTHORIZED" | `Container_image_authorization_check_failed -> "CONTAINER_IMAGE_AUTHORIZATION_CHECK_FAILED" | `Encryption_key_permission_denied -> "ENCRYPTION_KEY_PERMISSION_DENIED" | `Encryption_key_check_failed -> "ENCRYPTION_KEY_CHECK_FAILED" | `Secrets_access_check_failed -> "SECRETS_ACCESS_CHECK_FAILED" | `Waiting_for_operation -> "WAITING_FOR_OPERATION" | `Immediate_retry -> "IMMEDIATE_RETRY" | `Postponed_retry -> "POSTPONED_RETRY" | `Internal -> "INTERNAL" | `Vpc_network_not_found -> "VPC_NETWORK_NOT_FOUND" | `Unrecognized value -> value) value)) field)) value.reason;
         Option.map (fun field -> ("revisionReason", (fun value -> `String ((function `Revision_reason_undefined -> "REVISION_REASON_UNDEFINED" | `Pending -> "PENDING" | `Reserve -> "RESERVE" | `Retired -> "RETIRED" | `Retiring -> "RETIRING" | `Recreating -> "RECREATING" | `Health_check_container_error -> "HEALTH_CHECK_CONTAINER_ERROR" | `Customized_path_response_pending -> "CUSTOMIZED_PATH_RESPONSE_PENDING" | `Min_instances_not_provisioned -> "MIN_INSTANCES_NOT_PROVISIONED" | `Active_revision_limit_reached -> "ACTIVE_REVISION_LIMIT_REACHED" | `No_deployment -> "NO_DEPLOYMENT" | `Health_check_skipped -> "HEALTH_CHECK_SKIPPED" | `Min_instances_warming -> "MIN_INSTANCES_WARMING" | `Unrecognized value -> value) value)) field)) value.revision_reason;
         Option.map (fun field -> ("severity", (fun value -> `String ((function `Severity_unspecified -> "SEVERITY_UNSPECIFIED" | `Error -> "ERROR" | `Warning -> "WARNING" | `Info -> "INFO" | `Unrecognized value -> value) value)) field)) value.severity;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Condition_pending -> "CONDITION_PENDING" | `Condition_reconciling -> "CONDITION_RECONCILING" | `Condition_failed -> "CONDITION_FAILED" | `Condition_succeeded -> "CONDITION_SUCCEEDED" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("type", (fun value -> `String value) field)) value.type_;
       ])

and google_cloud_run_v2_container_of_yojson json : google_cloud_run_v2_container =
  let open Yojson.Safe.Util in
  {
    args = member "args" json |> to_option (convert_each to_string);
    base_image_uri = member "baseImageUri" json |> to_option to_string;
    build_info = member "buildInfo" json |> to_option google_cloud_run_v2_build_info_of_yojson;
    command = member "command" json |> to_option (convert_each to_string);
    depends_on = member "dependsOn" json |> to_option (convert_each to_string);
    env = member "env" json |> to_option (convert_each google_cloud_run_v2_env_var_of_yojson);
    image = member "image" json |> to_option to_string;
    liveness_probe = member "livenessProbe" json |> to_option google_cloud_run_v2_probe_of_yojson;
    name = member "name" json |> to_option to_string;
    ports = member "ports" json |> to_option (convert_each google_cloud_run_v2_container_port_of_yojson);
    readiness_probe = member "readinessProbe" json |> to_option google_cloud_run_v2_probe_of_yojson;
    resources = member "resources" json |> to_option google_cloud_run_v2_resource_requirements_of_yojson;
    sandbox_launcher = member "sandboxLauncher" json |> to_option to_bool;
    source_code = member "sourceCode" json |> to_option google_cloud_run_v2_source_code_of_yojson;
    startup_probe = member "startupProbe" json |> to_option google_cloud_run_v2_probe_of_yojson;
    volume_mounts = member "volumeMounts" json |> to_option (convert_each google_cloud_run_v2_volume_mount_of_yojson);
    working_dir = member "workingDir" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_container (value : google_cloud_run_v2_container) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("args", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.args;
         Option.map (fun field -> ("baseImageUri", (fun value -> `String value) field)) value.base_image_uri;
         Option.map (fun field -> ("buildInfo", yojson_of_google_cloud_run_v2_build_info field)) value.build_info;
         Option.map (fun field -> ("command", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.command;
         Option.map (fun field -> ("dependsOn", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.depends_on;
         Option.map (fun field -> ("env", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_env_var items)) field)) value.env;
         Option.map (fun field -> ("image", (fun value -> `String value) field)) value.image;
         Option.map (fun field -> ("livenessProbe", yojson_of_google_cloud_run_v2_probe field)) value.liveness_probe;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("ports", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_container_port items)) field)) value.ports;
         Option.map (fun field -> ("readinessProbe", yojson_of_google_cloud_run_v2_probe field)) value.readiness_probe;
         Option.map (fun field -> ("resources", yojson_of_google_cloud_run_v2_resource_requirements field)) value.resources;
         Option.map (fun field -> ("sandboxLauncher", (fun value -> `Bool value) field)) value.sandbox_launcher;
         Option.map (fun field -> ("sourceCode", yojson_of_google_cloud_run_v2_source_code field)) value.source_code;
         Option.map (fun field -> ("startupProbe", yojson_of_google_cloud_run_v2_probe field)) value.startup_probe;
         Option.map (fun field -> ("volumeMounts", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_volume_mount items)) field)) value.volume_mounts;
         Option.map (fun field -> ("workingDir", (fun value -> `String value) field)) value.working_dir;
       ])

and google_cloud_run_v2_container_override_of_yojson json : google_cloud_run_v2_container_override =
  let open Yojson.Safe.Util in
  {
    args = member "args" json |> to_option (convert_each to_string);
    clear_args = member "clearArgs" json |> to_option to_bool;
    env = member "env" json |> to_option (convert_each google_cloud_run_v2_env_var_of_yojson);
    name = member "name" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_container_override (value : google_cloud_run_v2_container_override) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("args", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.args;
         Option.map (fun field -> ("clearArgs", (fun value -> `Bool value) field)) value.clear_args;
         Option.map (fun field -> ("env", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_env_var items)) field)) value.env;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and google_cloud_run_v2_container_port_of_yojson json : google_cloud_run_v2_container_port =
  let open Yojson.Safe.Util in
  {
    container_port = member "containerPort" json |> to_option to_int;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_container_port (value : google_cloud_run_v2_container_port) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("containerPort", (fun value -> `Int value) field)) value.container_port;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and google_cloud_run_v2_container_status_of_yojson json : google_cloud_run_v2_container_status =
  let open Yojson.Safe.Util in
  {
    image_digest = member "imageDigest" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_container_status (value : google_cloud_run_v2_container_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("imageDigest", (fun value -> `String value) field)) value.image_digest;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and google_cloud_run_v2_docker_build_of_yojson json : google_cloud_run_v2_docker_build =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_cloud_run_v2_docker_build (value : google_cloud_run_v2_docker_build) : Yojson.Safe.t = Fun.id value

and google_cloud_run_v2_empty_dir_volume_source_of_yojson json : google_cloud_run_v2_empty_dir_volume_source =
  let open Yojson.Safe.Util in
  {
    medium = member "medium" json |> to_option (fun json -> match to_string json with "MEDIUM_UNSPECIFIED" -> `Medium_unspecified | "MEMORY" -> `Memory | "DISK" -> `Disk | value -> `Unrecognized value);
    size_limit = member "sizeLimit" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_empty_dir_volume_source (value : google_cloud_run_v2_empty_dir_volume_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("medium", (fun value -> `String ((function `Medium_unspecified -> "MEDIUM_UNSPECIFIED" | `Memory -> "MEMORY" | `Disk -> "DISK" | `Unrecognized value -> value) value)) field)) value.medium;
         Option.map (fun field -> ("sizeLimit", (fun value -> `String value) field)) value.size_limit;
       ])

and google_cloud_run_v2_env_var_of_yojson json : google_cloud_run_v2_env_var =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
    value_source = member "valueSource" json |> to_option google_cloud_run_v2_env_var_source_of_yojson;
  }

and yojson_of_google_cloud_run_v2_env_var (value : google_cloud_run_v2_env_var) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
         Option.map (fun field -> ("valueSource", yojson_of_google_cloud_run_v2_env_var_source field)) value.value_source;
       ])

and google_cloud_run_v2_env_var_source_of_yojson json : google_cloud_run_v2_env_var_source =
  let open Yojson.Safe.Util in
  {
    secret_key_ref = member "secretKeyRef" json |> to_option google_cloud_run_v2_secret_key_selector_of_yojson;
  }

and yojson_of_google_cloud_run_v2_env_var_source (value : google_cloud_run_v2_env_var_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("secretKeyRef", yojson_of_google_cloud_run_v2_secret_key_selector field)) value.secret_key_ref;
       ])

and google_cloud_run_v2_execution_of_yojson json : google_cloud_run_v2_execution =
  let open Yojson.Safe.Util in
  {
    annotations = member "annotations" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    cancelled_count = member "cancelledCount" json |> to_option to_int;
    client = member "client" json |> to_option to_string;
    client_version = member "clientVersion" json |> to_option to_string;
    completion_time = member "completionTime" json |> to_option to_string;
    conditions = member "conditions" json |> to_option (convert_each google_cloud_run_v2_condition_of_yojson);
    create_time = member "createTime" json |> to_option to_string;
    creator = member "creator" json |> to_option to_string;
    delete_time = member "deleteTime" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    expire_time = member "expireTime" json |> to_option to_string;
    failed_count = member "failedCount" json |> to_option to_int;
    generation = member "generation" json |> to_option to_string;
    job = member "job" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    launch_stage = member "launchStage" json |> to_option (fun json -> match to_string json with "LAUNCH_STAGE_UNSPECIFIED" -> `Launch_stage_unspecified | "UNIMPLEMENTED" -> `Unimplemented | "PRELAUNCH" -> `Prelaunch | "EARLY_ACCESS" -> `Early_access | "ALPHA" -> `Alpha | "BETA" -> `Beta | "GA" -> `Ga | "DEPRECATED" -> `Deprecated | value -> `Unrecognized value);
    log_uri = member "logUri" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    observed_generation = member "observedGeneration" json |> to_option to_string;
    parallelism = member "parallelism" json |> to_option to_int;
    reconciling = member "reconciling" json |> to_option to_bool;
    retried_count = member "retriedCount" json |> to_option to_int;
    running_count = member "runningCount" json |> to_option to_int;
    satisfies_pzs = member "satisfiesPzs" json |> to_option to_bool;
    start_time = member "startTime" json |> to_option to_string;
    succeeded_count = member "succeededCount" json |> to_option to_int;
    task_count = member "taskCount" json |> to_option to_int;
    template = member "template" json |> to_option google_cloud_run_v2_task_template_of_yojson;
    uid = member "uid" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_execution (value : google_cloud_run_v2_execution) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("annotations", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.annotations;
         Option.map (fun field -> ("cancelledCount", (fun value -> `Int value) field)) value.cancelled_count;
         Option.map (fun field -> ("client", (fun value -> `String value) field)) value.client;
         Option.map (fun field -> ("clientVersion", (fun value -> `String value) field)) value.client_version;
         Option.map (fun field -> ("completionTime", (fun value -> `String value) field)) value.completion_time;
         Option.map (fun field -> ("conditions", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_condition items)) field)) value.conditions;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("creator", (fun value -> `String value) field)) value.creator;
         Option.map (fun field -> ("deleteTime", (fun value -> `String value) field)) value.delete_time;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
         Option.map (fun field -> ("failedCount", (fun value -> `Int value) field)) value.failed_count;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("job", (fun value -> `String value) field)) value.job;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("launchStage", (fun value -> `String ((function `Launch_stage_unspecified -> "LAUNCH_STAGE_UNSPECIFIED" | `Unimplemented -> "UNIMPLEMENTED" | `Prelaunch -> "PRELAUNCH" | `Early_access -> "EARLY_ACCESS" | `Alpha -> "ALPHA" | `Beta -> "BETA" | `Ga -> "GA" | `Deprecated -> "DEPRECATED" | `Unrecognized value -> value) value)) field)) value.launch_stage;
         Option.map (fun field -> ("logUri", (fun value -> `String value) field)) value.log_uri;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("observedGeneration", (fun value -> `String value) field)) value.observed_generation;
         Option.map (fun field -> ("parallelism", (fun value -> `Int value) field)) value.parallelism;
         Option.map (fun field -> ("reconciling", (fun value -> `Bool value) field)) value.reconciling;
         Option.map (fun field -> ("retriedCount", (fun value -> `Int value) field)) value.retried_count;
         Option.map (fun field -> ("runningCount", (fun value -> `Int value) field)) value.running_count;
         Option.map (fun field -> ("satisfiesPzs", (fun value -> `Bool value) field)) value.satisfies_pzs;
         Option.map (fun field -> ("startTime", (fun value -> `String value) field)) value.start_time;
         Option.map (fun field -> ("succeededCount", (fun value -> `Int value) field)) value.succeeded_count;
         Option.map (fun field -> ("taskCount", (fun value -> `Int value) field)) value.task_count;
         Option.map (fun field -> ("template", yojson_of_google_cloud_run_v2_task_template field)) value.template;
         Option.map (fun field -> ("uid", (fun value -> `String value) field)) value.uid;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
       ])

and google_cloud_run_v2_execution_reference_of_yojson json : google_cloud_run_v2_execution_reference =
  let open Yojson.Safe.Util in
  {
    completion_status = member "completionStatus" json |> to_option (fun json -> match to_string json with "COMPLETION_STATUS_UNSPECIFIED" -> `Completion_status_unspecified | "EXECUTION_SUCCEEDED" -> `Execution_succeeded | "EXECUTION_FAILED" -> `Execution_failed | "EXECUTION_RUNNING" -> `Execution_running | "EXECUTION_PENDING" -> `Execution_pending | "EXECUTION_CANCELLED" -> `Execution_cancelled | value -> `Unrecognized value);
    completion_time = member "completionTime" json |> to_option to_string;
    create_time = member "createTime" json |> to_option to_string;
    delete_time = member "deleteTime" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_execution_reference (value : google_cloud_run_v2_execution_reference) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("completionStatus", (fun value -> `String ((function `Completion_status_unspecified -> "COMPLETION_STATUS_UNSPECIFIED" | `Execution_succeeded -> "EXECUTION_SUCCEEDED" | `Execution_failed -> "EXECUTION_FAILED" | `Execution_running -> "EXECUTION_RUNNING" | `Execution_pending -> "EXECUTION_PENDING" | `Execution_cancelled -> "EXECUTION_CANCELLED" | `Unrecognized value -> value) value)) field)) value.completion_status;
         Option.map (fun field -> ("completionTime", (fun value -> `String value) field)) value.completion_time;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("deleteTime", (fun value -> `String value) field)) value.delete_time;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and google_cloud_run_v2_execution_template_of_yojson json : google_cloud_run_v2_execution_template =
  let open Yojson.Safe.Util in
  {
    annotations = member "annotations" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    client = member "client" json |> to_option to_string;
    client_version = member "clientVersion" json |> to_option to_string;
    delay_execution = member "delayExecution" json |> to_option to_bool;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    parallelism = member "parallelism" json |> to_option to_int;
    task_count = member "taskCount" json |> to_option to_int;
    template = member "template" json |> to_option google_cloud_run_v2_task_template_of_yojson;
  }

and yojson_of_google_cloud_run_v2_execution_template (value : google_cloud_run_v2_execution_template) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("annotations", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.annotations;
         Option.map (fun field -> ("client", (fun value -> `String value) field)) value.client;
         Option.map (fun field -> ("clientVersion", (fun value -> `String value) field)) value.client_version;
         Option.map (fun field -> ("delayExecution", (fun value -> `Bool value) field)) value.delay_execution;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("parallelism", (fun value -> `Int value) field)) value.parallelism;
         Option.map (fun field -> ("taskCount", (fun value -> `Int value) field)) value.task_count;
         Option.map (fun field -> ("template", yojson_of_google_cloud_run_v2_task_template field)) value.template;
       ])

and google_cloud_run_v2_export_image_request_of_yojson json : google_cloud_run_v2_export_image_request =
  let open Yojson.Safe.Util in
  {
    destination_repo = member "destinationRepo" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_export_image_request (value : google_cloud_run_v2_export_image_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("destinationRepo", (fun value -> `String value) field)) value.destination_repo;
       ])

and google_cloud_run_v2_export_image_response_of_yojson json : google_cloud_run_v2_export_image_response =
  let open Yojson.Safe.Util in
  {
    operation_id = member "operationId" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_export_image_response (value : google_cloud_run_v2_export_image_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("operationId", (fun value -> `String value) field)) value.operation_id;
       ])

and google_cloud_run_v2_export_status_response_of_yojson json : google_cloud_run_v2_export_status_response =
  let open Yojson.Safe.Util in
  {
    image_export_statuses = member "imageExportStatuses" json |> to_option (convert_each google_cloud_run_v2_image_export_status_of_yojson);
    operation_id = member "operationId" json |> to_option to_string;
    operation_state = member "operationState" json |> to_option (fun json -> match to_string json with "OPERATION_STATE_UNSPECIFIED" -> `Operation_state_unspecified | "IN_PROGRESS" -> `In_progress | "FINISHED" -> `Finished | value -> `Unrecognized value);
  }

and yojson_of_google_cloud_run_v2_export_status_response (value : google_cloud_run_v2_export_status_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("imageExportStatuses", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_image_export_status items)) field)) value.image_export_statuses;
         Option.map (fun field -> ("operationId", (fun value -> `String value) field)) value.operation_id;
         Option.map (fun field -> ("operationState", (fun value -> `String ((function `Operation_state_unspecified -> "OPERATION_STATE_UNSPECIFIED" | `In_progress -> "IN_PROGRESS" | `Finished -> "FINISHED" | `Unrecognized value -> value) value)) field)) value.operation_state;
       ])

and google_cloud_run_v2_gcs_volume_source_of_yojson json : google_cloud_run_v2_gcs_volume_source =
  let open Yojson.Safe.Util in
  {
    bucket = member "bucket" json |> to_option to_string;
    mount_options = member "mountOptions" json |> to_option (convert_each to_string);
    read_only = member "readOnly" json |> to_option to_bool;
  }

and yojson_of_google_cloud_run_v2_gcs_volume_source (value : google_cloud_run_v2_gcs_volume_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("mountOptions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.mount_options;
         Option.map (fun field -> ("readOnly", (fun value -> `Bool value) field)) value.read_only;
       ])

and google_cloud_run_v2_grpc_action_of_yojson json : google_cloud_run_v2_grpc_action =
  let open Yojson.Safe.Util in
  {
    port = member "port" json |> to_option to_int;
    service = member "service" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_grpc_action (value : google_cloud_run_v2_grpc_action) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("port", (fun value -> `Int value) field)) value.port;
         Option.map (fun field -> ("service", (fun value -> `String value) field)) value.service;
       ])

and google_cloud_run_v2_http_get_action_of_yojson json : google_cloud_run_v2_http_get_action =
  let open Yojson.Safe.Util in
  {
    http_headers = member "httpHeaders" json |> to_option (convert_each google_cloud_run_v2_http_header_of_yojson);
    path = member "path" json |> to_option to_string;
    port = member "port" json |> to_option to_int;
  }

and yojson_of_google_cloud_run_v2_http_get_action (value : google_cloud_run_v2_http_get_action) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("httpHeaders", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_http_header items)) field)) value.http_headers;
         Option.map (fun field -> ("path", (fun value -> `String value) field)) value.path;
         Option.map (fun field -> ("port", (fun value -> `Int value) field)) value.port;
       ])

and google_cloud_run_v2_http_header_of_yojson json : google_cloud_run_v2_http_header =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    value = member "value" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_http_header (value : google_cloud_run_v2_http_header) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and google_cloud_run_v2_image_export_status_of_yojson json : google_cloud_run_v2_image_export_status =
  let open Yojson.Safe.Util in
  {
    export_job_state = member "exportJobState" json |> to_option (fun json -> match to_string json with "EXPORT_JOB_STATE_UNSPECIFIED" -> `Export_job_state_unspecified | "IN_PROGRESS" -> `In_progress | "FINISHED" -> `Finished | value -> `Unrecognized value);
    exported_image_digest = member "exportedImageDigest" json |> to_option to_string;
    status = member "status" json |> to_option util_status_proto_of_yojson;
    tag = member "tag" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_image_export_status (value : google_cloud_run_v2_image_export_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("exportJobState", (fun value -> `String ((function `Export_job_state_unspecified -> "EXPORT_JOB_STATE_UNSPECIFIED" | `In_progress -> "IN_PROGRESS" | `Finished -> "FINISHED" | `Unrecognized value -> value) value)) field)) value.export_job_state;
         Option.map (fun field -> ("exportedImageDigest", (fun value -> `String value) field)) value.exported_image_digest;
         Option.map (fun field -> ("status", yojson_of_util_status_proto field)) value.status;
         Option.map (fun field -> ("tag", (fun value -> `String value) field)) value.tag;
       ])

and google_cloud_run_v2_inlined_source_of_yojson json : google_cloud_run_v2_inlined_source =
  let open Yojson.Safe.Util in
  {
    sources = member "sources" json |> to_option (convert_each google_cloud_run_v2_source_file_of_yojson);
  }

and yojson_of_google_cloud_run_v2_inlined_source (value : google_cloud_run_v2_inlined_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("sources", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_source_file items)) field)) value.sources;
       ])

and google_cloud_run_v2_instance_of_yojson json : google_cloud_run_v2_instance =
  let open Yojson.Safe.Util in
  {
    annotations = member "annotations" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    binary_authorization = member "binaryAuthorization" json |> to_option google_cloud_run_v2_binary_authorization_of_yojson;
    client = member "client" json |> to_option to_string;
    client_version = member "clientVersion" json |> to_option to_string;
    conditions = member "conditions" json |> to_option (convert_each google_cloud_run_v2_condition_of_yojson);
    container_statuses = member "containerStatuses" json |> to_option (convert_each google_cloud_run_v2_container_status_of_yojson);
    containers = member "containers" json |> to_option (convert_each google_cloud_run_v2_container_of_yojson);
    create_time = member "createTime" json |> to_option to_string;
    creator = member "creator" json |> to_option to_string;
    default_uri_disabled = member "defaultUriDisabled" json |> to_option to_bool;
    delete_time = member "deleteTime" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    encryption_key = member "encryptionKey" json |> to_option to_string;
    encryption_key_revocation_action = member "encryptionKeyRevocationAction" json |> to_option (fun json -> match to_string json with "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED" -> `Encryption_key_revocation_action_unspecified | "PREVENT_NEW" -> `Prevent_new | "SHUTDOWN" -> `Shutdown | value -> `Unrecognized value);
    encryption_key_shutdown_duration = member "encryptionKeyShutdownDuration" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    expire_time = member "expireTime" json |> to_option to_string;
    generation = member "generation" json |> to_option to_string;
    gpu_zonal_redundancy_disabled = member "gpuZonalRedundancyDisabled" json |> to_option to_bool;
    iap_enabled = member "iapEnabled" json |> to_option to_bool;
    ingress = member "ingress" json |> to_option (fun json -> match to_string json with "INGRESS_TRAFFIC_UNSPECIFIED" -> `Ingress_traffic_unspecified | "INGRESS_TRAFFIC_ALL" -> `Ingress_traffic_all | "INGRESS_TRAFFIC_INTERNAL_ONLY" -> `Ingress_traffic_internal_only | "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER" -> `Ingress_traffic_internal_load_balancer | "INGRESS_TRAFFIC_NONE" -> `Ingress_traffic_none | value -> `Unrecognized value);
    invoker_iam_disabled = member "invokerIamDisabled" json |> to_option to_bool;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    last_modifier = member "lastModifier" json |> to_option to_string;
    launch_stage = member "launchStage" json |> to_option (fun json -> match to_string json with "LAUNCH_STAGE_UNSPECIFIED" -> `Launch_stage_unspecified | "UNIMPLEMENTED" -> `Unimplemented | "PRELAUNCH" -> `Prelaunch | "EARLY_ACCESS" -> `Early_access | "ALPHA" -> `Alpha | "BETA" -> `Beta | "GA" -> `Ga | "DEPRECATED" -> `Deprecated | value -> `Unrecognized value);
    log_uri = member "logUri" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    node_selector = member "nodeSelector" json |> to_option google_cloud_run_v2_node_selector_of_yojson;
    observed_generation = member "observedGeneration" json |> to_option to_string;
    reconciling = member "reconciling" json |> to_option to_bool;
    restart_policy = member "restartPolicy" json |> to_option (fun json -> match to_string json with "RESTART_POLICY_UNSPECIFIED" -> `Restart_policy_unspecified | "ALWAYS" -> `Always | "ON_FAILURE" -> `On_failure | "NEVER" -> `Never | value -> `Unrecognized value);
    satisfies_pzs = member "satisfiesPzs" json |> to_option to_bool;
    service_account = member "serviceAccount" json |> to_option to_string;
    ssh_enabled = member "sshEnabled" json |> to_option to_bool;
    terminal_condition = member "terminalCondition" json |> to_option google_cloud_run_v2_condition_of_yojson;
    uid = member "uid" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
    urls = member "urls" json |> to_option (convert_each to_string);
    volumes = member "volumes" json |> to_option (convert_each google_cloud_run_v2_volume_of_yojson);
    vpc_access = member "vpcAccess" json |> to_option google_cloud_run_v2_vpc_access_of_yojson;
  }

and yojson_of_google_cloud_run_v2_instance (value : google_cloud_run_v2_instance) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("annotations", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.annotations;
         Option.map (fun field -> ("binaryAuthorization", yojson_of_google_cloud_run_v2_binary_authorization field)) value.binary_authorization;
         Option.map (fun field -> ("client", (fun value -> `String value) field)) value.client;
         Option.map (fun field -> ("clientVersion", (fun value -> `String value) field)) value.client_version;
         Option.map (fun field -> ("conditions", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_condition items)) field)) value.conditions;
         Option.map (fun field -> ("containerStatuses", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_container_status items)) field)) value.container_statuses;
         Option.map (fun field -> ("containers", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_container items)) field)) value.containers;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("creator", (fun value -> `String value) field)) value.creator;
         Option.map (fun field -> ("defaultUriDisabled", (fun value -> `Bool value) field)) value.default_uri_disabled;
         Option.map (fun field -> ("deleteTime", (fun value -> `String value) field)) value.delete_time;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("encryptionKey", (fun value -> `String value) field)) value.encryption_key;
         Option.map (fun field -> ("encryptionKeyRevocationAction", (fun value -> `String ((function `Encryption_key_revocation_action_unspecified -> "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED" | `Prevent_new -> "PREVENT_NEW" | `Shutdown -> "SHUTDOWN" | `Unrecognized value -> value) value)) field)) value.encryption_key_revocation_action;
         Option.map (fun field -> ("encryptionKeyShutdownDuration", (fun value -> `String value) field)) value.encryption_key_shutdown_duration;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("gpuZonalRedundancyDisabled", (fun value -> `Bool value) field)) value.gpu_zonal_redundancy_disabled;
         Option.map (fun field -> ("iapEnabled", (fun value -> `Bool value) field)) value.iap_enabled;
         Option.map (fun field -> ("ingress", (fun value -> `String ((function `Ingress_traffic_unspecified -> "INGRESS_TRAFFIC_UNSPECIFIED" | `Ingress_traffic_all -> "INGRESS_TRAFFIC_ALL" | `Ingress_traffic_internal_only -> "INGRESS_TRAFFIC_INTERNAL_ONLY" | `Ingress_traffic_internal_load_balancer -> "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER" | `Ingress_traffic_none -> "INGRESS_TRAFFIC_NONE" | `Unrecognized value -> value) value)) field)) value.ingress;
         Option.map (fun field -> ("invokerIamDisabled", (fun value -> `Bool value) field)) value.invoker_iam_disabled;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("lastModifier", (fun value -> `String value) field)) value.last_modifier;
         Option.map (fun field -> ("launchStage", (fun value -> `String ((function `Launch_stage_unspecified -> "LAUNCH_STAGE_UNSPECIFIED" | `Unimplemented -> "UNIMPLEMENTED" | `Prelaunch -> "PRELAUNCH" | `Early_access -> "EARLY_ACCESS" | `Alpha -> "ALPHA" | `Beta -> "BETA" | `Ga -> "GA" | `Deprecated -> "DEPRECATED" | `Unrecognized value -> value) value)) field)) value.launch_stage;
         Option.map (fun field -> ("logUri", (fun value -> `String value) field)) value.log_uri;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("nodeSelector", yojson_of_google_cloud_run_v2_node_selector field)) value.node_selector;
         Option.map (fun field -> ("observedGeneration", (fun value -> `String value) field)) value.observed_generation;
         Option.map (fun field -> ("reconciling", (fun value -> `Bool value) field)) value.reconciling;
         Option.map (fun field -> ("restartPolicy", (fun value -> `String ((function `Restart_policy_unspecified -> "RESTART_POLICY_UNSPECIFIED" | `Always -> "ALWAYS" | `On_failure -> "ON_FAILURE" | `Never -> "NEVER" | `Unrecognized value -> value) value)) field)) value.restart_policy;
         Option.map (fun field -> ("satisfiesPzs", (fun value -> `Bool value) field)) value.satisfies_pzs;
         Option.map (fun field -> ("serviceAccount", (fun value -> `String value) field)) value.service_account;
         Option.map (fun field -> ("sshEnabled", (fun value -> `Bool value) field)) value.ssh_enabled;
         Option.map (fun field -> ("terminalCondition", yojson_of_google_cloud_run_v2_condition field)) value.terminal_condition;
         Option.map (fun field -> ("uid", (fun value -> `String value) field)) value.uid;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
         Option.map (fun field -> ("urls", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.urls;
         Option.map (fun field -> ("volumes", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_volume items)) field)) value.volumes;
         Option.map (fun field -> ("vpcAccess", yojson_of_google_cloud_run_v2_vpc_access field)) value.vpc_access;
       ])

and google_cloud_run_v2_instance_split_of_yojson json : google_cloud_run_v2_instance_split =
  let open Yojson.Safe.Util in
  {
    percent = member "percent" json |> to_option to_int;
    revision = member "revision" json |> to_option to_string;
    type_ = member "type" json |> to_option (fun json -> match to_string json with "INSTANCE_SPLIT_ALLOCATION_TYPE_UNSPECIFIED" -> `Instance_split_allocation_type_unspecified | "INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST" -> `Instance_split_allocation_type_latest | "INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION" -> `Instance_split_allocation_type_revision | value -> `Unrecognized value);
  }

and yojson_of_google_cloud_run_v2_instance_split (value : google_cloud_run_v2_instance_split) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("percent", (fun value -> `Int value) field)) value.percent;
         Option.map (fun field -> ("revision", (fun value -> `String value) field)) value.revision;
         Option.map (fun field -> ("type", (fun value -> `String ((function `Instance_split_allocation_type_unspecified -> "INSTANCE_SPLIT_ALLOCATION_TYPE_UNSPECIFIED" | `Instance_split_allocation_type_latest -> "INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST" | `Instance_split_allocation_type_revision -> "INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION" | `Unrecognized value -> value) value)) field)) value.type_;
       ])

and google_cloud_run_v2_instance_split_status_of_yojson json : google_cloud_run_v2_instance_split_status =
  let open Yojson.Safe.Util in
  {
    percent = member "percent" json |> to_option to_int;
    revision = member "revision" json |> to_option to_string;
    type_ = member "type" json |> to_option (fun json -> match to_string json with "INSTANCE_SPLIT_ALLOCATION_TYPE_UNSPECIFIED" -> `Instance_split_allocation_type_unspecified | "INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST" -> `Instance_split_allocation_type_latest | "INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION" -> `Instance_split_allocation_type_revision | value -> `Unrecognized value);
  }

and yojson_of_google_cloud_run_v2_instance_split_status (value : google_cloud_run_v2_instance_split_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("percent", (fun value -> `Int value) field)) value.percent;
         Option.map (fun field -> ("revision", (fun value -> `String value) field)) value.revision;
         Option.map (fun field -> ("type", (fun value -> `String ((function `Instance_split_allocation_type_unspecified -> "INSTANCE_SPLIT_ALLOCATION_TYPE_UNSPECIFIED" | `Instance_split_allocation_type_latest -> "INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST" | `Instance_split_allocation_type_revision -> "INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION" | `Unrecognized value -> value) value)) field)) value.type_;
       ])

and google_cloud_run_v2_job_of_yojson json : google_cloud_run_v2_job =
  let open Yojson.Safe.Util in
  {
    annotations = member "annotations" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    binary_authorization = member "binaryAuthorization" json |> to_option google_cloud_run_v2_binary_authorization_of_yojson;
    client = member "client" json |> to_option to_string;
    client_version = member "clientVersion" json |> to_option to_string;
    conditions = member "conditions" json |> to_option (convert_each google_cloud_run_v2_condition_of_yojson);
    create_time = member "createTime" json |> to_option to_string;
    creator = member "creator" json |> to_option to_string;
    delete_time = member "deleteTime" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    execution_count = member "executionCount" json |> to_option to_int;
    expire_time = member "expireTime" json |> to_option to_string;
    functional_type = member "functionalType" json |> to_option (fun json -> match to_string json with "FUNCTIONAL_TYPE_UNSPECIFIED" -> `Functional_type_unspecified | "FUNCTIONAL_TYPE_AGENT" -> `Functional_type_agent | "FUNCTIONAL_TYPE_MCP_SERVER" -> `Functional_type_mcp_server | value -> `Unrecognized value);
    generation = member "generation" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    last_modifier = member "lastModifier" json |> to_option to_string;
    latest_created_execution = member "latestCreatedExecution" json |> to_option google_cloud_run_v2_execution_reference_of_yojson;
    launch_stage = member "launchStage" json |> to_option (fun json -> match to_string json with "LAUNCH_STAGE_UNSPECIFIED" -> `Launch_stage_unspecified | "UNIMPLEMENTED" -> `Unimplemented | "PRELAUNCH" -> `Prelaunch | "EARLY_ACCESS" -> `Early_access | "ALPHA" -> `Alpha | "BETA" -> `Beta | "GA" -> `Ga | "DEPRECATED" -> `Deprecated | value -> `Unrecognized value);
    name = member "name" json |> to_option to_string;
    observed_generation = member "observedGeneration" json |> to_option to_string;
    reconciling = member "reconciling" json |> to_option to_bool;
    run_execution_token = member "runExecutionToken" json |> to_option to_string;
    satisfies_pzs = member "satisfiesPzs" json |> to_option to_bool;
    start_execution_token = member "startExecutionToken" json |> to_option to_string;
    template = member "template" json |> to_option google_cloud_run_v2_execution_template_of_yojson;
    terminal_condition = member "terminalCondition" json |> to_option google_cloud_run_v2_condition_of_yojson;
    uid = member "uid" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_job (value : google_cloud_run_v2_job) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("annotations", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.annotations;
         Option.map (fun field -> ("binaryAuthorization", yojson_of_google_cloud_run_v2_binary_authorization field)) value.binary_authorization;
         Option.map (fun field -> ("client", (fun value -> `String value) field)) value.client;
         Option.map (fun field -> ("clientVersion", (fun value -> `String value) field)) value.client_version;
         Option.map (fun field -> ("conditions", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_condition items)) field)) value.conditions;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("creator", (fun value -> `String value) field)) value.creator;
         Option.map (fun field -> ("deleteTime", (fun value -> `String value) field)) value.delete_time;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("executionCount", (fun value -> `Int value) field)) value.execution_count;
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
         Option.map (fun field -> ("functionalType", (fun value -> `String ((function `Functional_type_unspecified -> "FUNCTIONAL_TYPE_UNSPECIFIED" | `Functional_type_agent -> "FUNCTIONAL_TYPE_AGENT" | `Functional_type_mcp_server -> "FUNCTIONAL_TYPE_MCP_SERVER" | `Unrecognized value -> value) value)) field)) value.functional_type;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("lastModifier", (fun value -> `String value) field)) value.last_modifier;
         Option.map (fun field -> ("latestCreatedExecution", yojson_of_google_cloud_run_v2_execution_reference field)) value.latest_created_execution;
         Option.map (fun field -> ("launchStage", (fun value -> `String ((function `Launch_stage_unspecified -> "LAUNCH_STAGE_UNSPECIFIED" | `Unimplemented -> "UNIMPLEMENTED" | `Prelaunch -> "PRELAUNCH" | `Early_access -> "EARLY_ACCESS" | `Alpha -> "ALPHA" | `Beta -> "BETA" | `Ga -> "GA" | `Deprecated -> "DEPRECATED" | `Unrecognized value -> value) value)) field)) value.launch_stage;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("observedGeneration", (fun value -> `String value) field)) value.observed_generation;
         Option.map (fun field -> ("reconciling", (fun value -> `Bool value) field)) value.reconciling;
         Option.map (fun field -> ("runExecutionToken", (fun value -> `String value) field)) value.run_execution_token;
         Option.map (fun field -> ("satisfiesPzs", (fun value -> `Bool value) field)) value.satisfies_pzs;
         Option.map (fun field -> ("startExecutionToken", (fun value -> `String value) field)) value.start_execution_token;
         Option.map (fun field -> ("template", yojson_of_google_cloud_run_v2_execution_template field)) value.template;
         Option.map (fun field -> ("terminalCondition", yojson_of_google_cloud_run_v2_condition field)) value.terminal_condition;
         Option.map (fun field -> ("uid", (fun value -> `String value) field)) value.uid;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
       ])

and google_cloud_run_v2_list_executions_response_of_yojson json : google_cloud_run_v2_list_executions_response =
  let open Yojson.Safe.Util in
  {
    executions = member "executions" json |> to_option (convert_each google_cloud_run_v2_execution_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_list_executions_response (value : google_cloud_run_v2_list_executions_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("executions", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_execution items)) field)) value.executions;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and google_cloud_run_v2_list_instances_response_of_yojson json : google_cloud_run_v2_list_instances_response =
  let open Yojson.Safe.Util in
  {
    instances = member "instances" json |> to_option (convert_each google_cloud_run_v2_instance_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_list_instances_response (value : google_cloud_run_v2_list_instances_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("instances", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_instance items)) field)) value.instances;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and google_cloud_run_v2_list_jobs_response_of_yojson json : google_cloud_run_v2_list_jobs_response =
  let open Yojson.Safe.Util in
  {
    jobs = member "jobs" json |> to_option (convert_each google_cloud_run_v2_job_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_list_jobs_response (value : google_cloud_run_v2_list_jobs_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("jobs", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_job items)) field)) value.jobs;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and google_cloud_run_v2_list_revisions_response_of_yojson json : google_cloud_run_v2_list_revisions_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    revisions = member "revisions" json |> to_option (convert_each google_cloud_run_v2_revision_of_yojson);
  }

and yojson_of_google_cloud_run_v2_list_revisions_response (value : google_cloud_run_v2_list_revisions_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("revisions", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_revision items)) field)) value.revisions;
       ])

and google_cloud_run_v2_list_services_response_of_yojson json : google_cloud_run_v2_list_services_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    services = member "services" json |> to_option (convert_each google_cloud_run_v2_service_of_yojson);
    unreachable = member "unreachable" json |> to_option (convert_each to_string);
  }

and yojson_of_google_cloud_run_v2_list_services_response (value : google_cloud_run_v2_list_services_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("services", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_service items)) field)) value.services;
         Option.map (fun field -> ("unreachable", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.unreachable;
       ])

and google_cloud_run_v2_list_tasks_response_of_yojson json : google_cloud_run_v2_list_tasks_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    tasks = member "tasks" json |> to_option (convert_each google_cloud_run_v2_task_of_yojson);
  }

and yojson_of_google_cloud_run_v2_list_tasks_response (value : google_cloud_run_v2_list_tasks_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("tasks", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_task items)) field)) value.tasks;
       ])

and google_cloud_run_v2_list_worker_pools_response_of_yojson json : google_cloud_run_v2_list_worker_pools_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    worker_pools = member "workerPools" json |> to_option (convert_each google_cloud_run_v2_worker_pool_of_yojson);
  }

and yojson_of_google_cloud_run_v2_list_worker_pools_response (value : google_cloud_run_v2_list_worker_pools_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("workerPools", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_worker_pool items)) field)) value.worker_pools;
       ])

and google_cloud_run_v2_metadata_of_yojson json : google_cloud_run_v2_metadata =
  let open Yojson.Safe.Util in
  {
    metadata = member "metadata" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_metadata (value : google_cloud_run_v2_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("metadata", (fun value -> `String value) field)) value.metadata;
       ])

and google_cloud_run_v2_multi_region_settings_of_yojson json : google_cloud_run_v2_multi_region_settings =
  let open Yojson.Safe.Util in
  {
    multi_region_id = member "multiRegionId" json |> to_option to_string;
    regions = member "regions" json |> to_option (convert_each to_string);
  }

and yojson_of_google_cloud_run_v2_multi_region_settings (value : google_cloud_run_v2_multi_region_settings) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("multiRegionId", (fun value -> `String value) field)) value.multi_region_id;
         Option.map (fun field -> ("regions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.regions;
       ])

and google_cloud_run_v2_nfs_volume_source_of_yojson json : google_cloud_run_v2_nfs_volume_source =
  let open Yojson.Safe.Util in
  {
    path = member "path" json |> to_option to_string;
    read_only = member "readOnly" json |> to_option to_bool;
    server = member "server" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_nfs_volume_source (value : google_cloud_run_v2_nfs_volume_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("path", (fun value -> `String value) field)) value.path;
         Option.map (fun field -> ("readOnly", (fun value -> `Bool value) field)) value.read_only;
         Option.map (fun field -> ("server", (fun value -> `String value) field)) value.server;
       ])

and google_cloud_run_v2_network_interface_of_yojson json : google_cloud_run_v2_network_interface =
  let open Yojson.Safe.Util in
  {
    network = member "network" json |> to_option to_string;
    subnetwork = member "subnetwork" json |> to_option to_string;
    tags = member "tags" json |> to_option (convert_each to_string);
  }

and yojson_of_google_cloud_run_v2_network_interface (value : google_cloud_run_v2_network_interface) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("network", (fun value -> `String value) field)) value.network;
         Option.map (fun field -> ("subnetwork", (fun value -> `String value) field)) value.subnetwork;
         Option.map (fun field -> ("tags", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.tags;
       ])

and google_cloud_run_v2_node_selector_of_yojson json : google_cloud_run_v2_node_selector =
  let open Yojson.Safe.Util in
  {
    accelerator = member "accelerator" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_node_selector (value : google_cloud_run_v2_node_selector) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("accelerator", (fun value -> `String value) field)) value.accelerator;
       ])

and google_cloud_run_v2_overrides_of_yojson json : google_cloud_run_v2_overrides =
  let open Yojson.Safe.Util in
  {
    container_overrides = member "containerOverrides" json |> to_option (convert_each google_cloud_run_v2_container_override_of_yojson);
    delay_execution = member "delayExecution" json |> to_option to_bool;
    task_count = member "taskCount" json |> to_option to_int;
    timeout = member "timeout" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_overrides (value : google_cloud_run_v2_overrides) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("containerOverrides", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_container_override items)) field)) value.container_overrides;
         Option.map (fun field -> ("delayExecution", (fun value -> `Bool value) field)) value.delay_execution;
         Option.map (fun field -> ("taskCount", (fun value -> `Int value) field)) value.task_count;
         Option.map (fun field -> ("timeout", (fun value -> `String value) field)) value.timeout;
       ])

and google_cloud_run_v2_probe_of_yojson json : google_cloud_run_v2_probe =
  let open Yojson.Safe.Util in
  {
    failure_threshold = member "failureThreshold" json |> to_option to_int;
    grpc = member "grpc" json |> to_option google_cloud_run_v2_grpc_action_of_yojson;
    http_get = member "httpGet" json |> to_option google_cloud_run_v2_http_get_action_of_yojson;
    initial_delay_seconds = member "initialDelaySeconds" json |> to_option to_int;
    period_seconds = member "periodSeconds" json |> to_option to_int;
    tcp_socket = member "tcpSocket" json |> to_option google_cloud_run_v2_tcp_socket_action_of_yojson;
    timeout_seconds = member "timeoutSeconds" json |> to_option to_int;
  }

and yojson_of_google_cloud_run_v2_probe (value : google_cloud_run_v2_probe) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("failureThreshold", (fun value -> `Int value) field)) value.failure_threshold;
         Option.map (fun field -> ("grpc", yojson_of_google_cloud_run_v2_grpc_action field)) value.grpc;
         Option.map (fun field -> ("httpGet", yojson_of_google_cloud_run_v2_http_get_action field)) value.http_get;
         Option.map (fun field -> ("initialDelaySeconds", (fun value -> `Int value) field)) value.initial_delay_seconds;
         Option.map (fun field -> ("periodSeconds", (fun value -> `Int value) field)) value.period_seconds;
         Option.map (fun field -> ("tcpSocket", yojson_of_google_cloud_run_v2_tcp_socket_action field)) value.tcp_socket;
         Option.map (fun field -> ("timeoutSeconds", (fun value -> `Int value) field)) value.timeout_seconds;
       ])

and google_cloud_run_v2_resource_requirements_of_yojson json : google_cloud_run_v2_resource_requirements =
  let open Yojson.Safe.Util in
  {
    cpu_idle = member "cpuIdle" json |> to_option to_bool;
    limits = member "limits" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    startup_cpu_boost = member "startupCpuBoost" json |> to_option to_bool;
  }

and yojson_of_google_cloud_run_v2_resource_requirements (value : google_cloud_run_v2_resource_requirements) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cpuIdle", (fun value -> `Bool value) field)) value.cpu_idle;
         Option.map (fun field -> ("limits", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.limits;
         Option.map (fun field -> ("startupCpuBoost", (fun value -> `Bool value) field)) value.startup_cpu_boost;
       ])

and google_cloud_run_v2_revision_of_yojson json : google_cloud_run_v2_revision =
  let open Yojson.Safe.Util in
  {
    ambient_networking = member "ambientNetworking" json |> to_option google_cloud_run_v2_ambient_networking_of_yojson;
    annotations = member "annotations" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    client = member "client" json |> to_option to_string;
    client_version = member "clientVersion" json |> to_option to_string;
    conditions = member "conditions" json |> to_option (convert_each google_cloud_run_v2_condition_of_yojson);
    containers = member "containers" json |> to_option (convert_each google_cloud_run_v2_container_of_yojson);
    create_time = member "createTime" json |> to_option to_string;
    creator = member "creator" json |> to_option to_string;
    delete_time = member "deleteTime" json |> to_option to_string;
    encryption_key = member "encryptionKey" json |> to_option to_string;
    encryption_key_revocation_action = member "encryptionKeyRevocationAction" json |> to_option (fun json -> match to_string json with "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED" -> `Encryption_key_revocation_action_unspecified | "PREVENT_NEW" -> `Prevent_new | "SHUTDOWN" -> `Shutdown | value -> `Unrecognized value);
    encryption_key_shutdown_duration = member "encryptionKeyShutdownDuration" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    execution_environment = member "executionEnvironment" json |> to_option (fun json -> match to_string json with "EXECUTION_ENVIRONMENT_UNSPECIFIED" -> `Execution_environment_unspecified | "EXECUTION_ENVIRONMENT_GEN1" -> `Execution_environment_gen1 | "EXECUTION_ENVIRONMENT_GEN2" -> `Execution_environment_gen2 | value -> `Unrecognized value);
    expire_time = member "expireTime" json |> to_option to_string;
    generation = member "generation" json |> to_option to_string;
    gpu_zonal_redundancy_disabled = member "gpuZonalRedundancyDisabled" json |> to_option to_bool;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    launch_stage = member "launchStage" json |> to_option (fun json -> match to_string json with "LAUNCH_STAGE_UNSPECIFIED" -> `Launch_stage_unspecified | "UNIMPLEMENTED" -> `Unimplemented | "PRELAUNCH" -> `Prelaunch | "EARLY_ACCESS" -> `Early_access | "ALPHA" -> `Alpha | "BETA" -> `Beta | "GA" -> `Ga | "DEPRECATED" -> `Deprecated | value -> `Unrecognized value);
    log_uri = member "logUri" json |> to_option to_string;
    max_instance_request_concurrency = member "maxInstanceRequestConcurrency" json |> to_option to_int;
    name = member "name" json |> to_option to_string;
    node_selector = member "nodeSelector" json |> to_option google_cloud_run_v2_node_selector_of_yojson;
    observed_generation = member "observedGeneration" json |> to_option to_string;
    reconciling = member "reconciling" json |> to_option to_bool;
    satisfies_pzs = member "satisfiesPzs" json |> to_option to_bool;
    scaling = member "scaling" json |> to_option google_cloud_run_v2_revision_scaling_of_yojson;
    scaling_status = member "scalingStatus" json |> to_option google_cloud_run_v2_revision_scaling_status_of_yojson;
    service = member "service" json |> to_option to_string;
    service_account = member "serviceAccount" json |> to_option to_string;
    service_mesh = member "serviceMesh" json |> to_option google_cloud_run_v2_service_mesh_of_yojson;
    session_affinity = member "sessionAffinity" json |> to_option to_bool;
    timeout = member "timeout" json |> to_option to_string;
    uid = member "uid" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
    volumes = member "volumes" json |> to_option (convert_each google_cloud_run_v2_volume_of_yojson);
    vpc_access = member "vpcAccess" json |> to_option google_cloud_run_v2_vpc_access_of_yojson;
    workload_identity_config = member "workloadIdentityConfig" json |> to_option google_cloud_run_v2_workload_identity_config_of_yojson;
  }

and yojson_of_google_cloud_run_v2_revision (value : google_cloud_run_v2_revision) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ambientNetworking", yojson_of_google_cloud_run_v2_ambient_networking field)) value.ambient_networking;
         Option.map (fun field -> ("annotations", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.annotations;
         Option.map (fun field -> ("client", (fun value -> `String value) field)) value.client;
         Option.map (fun field -> ("clientVersion", (fun value -> `String value) field)) value.client_version;
         Option.map (fun field -> ("conditions", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_condition items)) field)) value.conditions;
         Option.map (fun field -> ("containers", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_container items)) field)) value.containers;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("creator", (fun value -> `String value) field)) value.creator;
         Option.map (fun field -> ("deleteTime", (fun value -> `String value) field)) value.delete_time;
         Option.map (fun field -> ("encryptionKey", (fun value -> `String value) field)) value.encryption_key;
         Option.map (fun field -> ("encryptionKeyRevocationAction", (fun value -> `String ((function `Encryption_key_revocation_action_unspecified -> "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED" | `Prevent_new -> "PREVENT_NEW" | `Shutdown -> "SHUTDOWN" | `Unrecognized value -> value) value)) field)) value.encryption_key_revocation_action;
         Option.map (fun field -> ("encryptionKeyShutdownDuration", (fun value -> `String value) field)) value.encryption_key_shutdown_duration;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("executionEnvironment", (fun value -> `String ((function `Execution_environment_unspecified -> "EXECUTION_ENVIRONMENT_UNSPECIFIED" | `Execution_environment_gen1 -> "EXECUTION_ENVIRONMENT_GEN1" | `Execution_environment_gen2 -> "EXECUTION_ENVIRONMENT_GEN2" | `Unrecognized value -> value) value)) field)) value.execution_environment;
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("gpuZonalRedundancyDisabled", (fun value -> `Bool value) field)) value.gpu_zonal_redundancy_disabled;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("launchStage", (fun value -> `String ((function `Launch_stage_unspecified -> "LAUNCH_STAGE_UNSPECIFIED" | `Unimplemented -> "UNIMPLEMENTED" | `Prelaunch -> "PRELAUNCH" | `Early_access -> "EARLY_ACCESS" | `Alpha -> "ALPHA" | `Beta -> "BETA" | `Ga -> "GA" | `Deprecated -> "DEPRECATED" | `Unrecognized value -> value) value)) field)) value.launch_stage;
         Option.map (fun field -> ("logUri", (fun value -> `String value) field)) value.log_uri;
         Option.map (fun field -> ("maxInstanceRequestConcurrency", (fun value -> `Int value) field)) value.max_instance_request_concurrency;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("nodeSelector", yojson_of_google_cloud_run_v2_node_selector field)) value.node_selector;
         Option.map (fun field -> ("observedGeneration", (fun value -> `String value) field)) value.observed_generation;
         Option.map (fun field -> ("reconciling", (fun value -> `Bool value) field)) value.reconciling;
         Option.map (fun field -> ("satisfiesPzs", (fun value -> `Bool value) field)) value.satisfies_pzs;
         Option.map (fun field -> ("scaling", yojson_of_google_cloud_run_v2_revision_scaling field)) value.scaling;
         Option.map (fun field -> ("scalingStatus", yojson_of_google_cloud_run_v2_revision_scaling_status field)) value.scaling_status;
         Option.map (fun field -> ("service", (fun value -> `String value) field)) value.service;
         Option.map (fun field -> ("serviceAccount", (fun value -> `String value) field)) value.service_account;
         Option.map (fun field -> ("serviceMesh", yojson_of_google_cloud_run_v2_service_mesh field)) value.service_mesh;
         Option.map (fun field -> ("sessionAffinity", (fun value -> `Bool value) field)) value.session_affinity;
         Option.map (fun field -> ("timeout", (fun value -> `String value) field)) value.timeout;
         Option.map (fun field -> ("uid", (fun value -> `String value) field)) value.uid;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
         Option.map (fun field -> ("volumes", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_volume items)) field)) value.volumes;
         Option.map (fun field -> ("vpcAccess", yojson_of_google_cloud_run_v2_vpc_access field)) value.vpc_access;
         Option.map (fun field -> ("workloadIdentityConfig", yojson_of_google_cloud_run_v2_workload_identity_config field)) value.workload_identity_config;
       ])

and google_cloud_run_v2_revision_scaling_of_yojson json : google_cloud_run_v2_revision_scaling =
  let open Yojson.Safe.Util in
  {
    concurrency_utilization = member "concurrencyUtilization" json |> to_option to_number;
    cpu_utilization = member "cpuUtilization" json |> to_option to_number;
    max_instance_count = member "maxInstanceCount" json |> to_option to_int;
    min_instance_count = member "minInstanceCount" json |> to_option to_int;
  }

and yojson_of_google_cloud_run_v2_revision_scaling (value : google_cloud_run_v2_revision_scaling) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("concurrencyUtilization", (fun value -> `Float value) field)) value.concurrency_utilization;
         Option.map (fun field -> ("cpuUtilization", (fun value -> `Float value) field)) value.cpu_utilization;
         Option.map (fun field -> ("maxInstanceCount", (fun value -> `Int value) field)) value.max_instance_count;
         Option.map (fun field -> ("minInstanceCount", (fun value -> `Int value) field)) value.min_instance_count;
       ])

and google_cloud_run_v2_revision_scaling_status_of_yojson json : google_cloud_run_v2_revision_scaling_status =
  let open Yojson.Safe.Util in
  {
    desired_min_instance_count = member "desiredMinInstanceCount" json |> to_option to_int;
  }

and yojson_of_google_cloud_run_v2_revision_scaling_status (value : google_cloud_run_v2_revision_scaling_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("desiredMinInstanceCount", (fun value -> `Int value) field)) value.desired_min_instance_count;
       ])

and google_cloud_run_v2_revision_template_of_yojson json : google_cloud_run_v2_revision_template =
  let open Yojson.Safe.Util in
  {
    ambient_networking = member "ambientNetworking" json |> to_option google_cloud_run_v2_ambient_networking_of_yojson;
    annotations = member "annotations" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    client = member "client" json |> to_option to_string;
    client_version = member "clientVersion" json |> to_option to_string;
    containers = member "containers" json |> to_option (convert_each google_cloud_run_v2_container_of_yojson);
    encryption_key = member "encryptionKey" json |> to_option to_string;
    encryption_key_revocation_action = member "encryptionKeyRevocationAction" json |> to_option (fun json -> match to_string json with "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED" -> `Encryption_key_revocation_action_unspecified | "PREVENT_NEW" -> `Prevent_new | "SHUTDOWN" -> `Shutdown | value -> `Unrecognized value);
    encryption_key_shutdown_duration = member "encryptionKeyShutdownDuration" json |> to_option to_string;
    execution_environment = member "executionEnvironment" json |> to_option (fun json -> match to_string json with "EXECUTION_ENVIRONMENT_UNSPECIFIED" -> `Execution_environment_unspecified | "EXECUTION_ENVIRONMENT_GEN1" -> `Execution_environment_gen1 | "EXECUTION_ENVIRONMENT_GEN2" -> `Execution_environment_gen2 | value -> `Unrecognized value);
    gpu_zonal_redundancy_disabled = member "gpuZonalRedundancyDisabled" json |> to_option to_bool;
    health_check_disabled = member "healthCheckDisabled" json |> to_option to_bool;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    max_instance_request_concurrency = member "maxInstanceRequestConcurrency" json |> to_option to_int;
    node_selector = member "nodeSelector" json |> to_option google_cloud_run_v2_node_selector_of_yojson;
    revision = member "revision" json |> to_option to_string;
    scaling = member "scaling" json |> to_option google_cloud_run_v2_revision_scaling_of_yojson;
    service_account = member "serviceAccount" json |> to_option to_string;
    service_mesh = member "serviceMesh" json |> to_option google_cloud_run_v2_service_mesh_of_yojson;
    session_affinity = member "sessionAffinity" json |> to_option to_bool;
    timeout = member "timeout" json |> to_option to_string;
    volumes = member "volumes" json |> to_option (convert_each google_cloud_run_v2_volume_of_yojson);
    vpc_access = member "vpcAccess" json |> to_option google_cloud_run_v2_vpc_access_of_yojson;
    workload_identity_config = member "workloadIdentityConfig" json |> to_option google_cloud_run_v2_workload_identity_config_of_yojson;
  }

and yojson_of_google_cloud_run_v2_revision_template (value : google_cloud_run_v2_revision_template) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ambientNetworking", yojson_of_google_cloud_run_v2_ambient_networking field)) value.ambient_networking;
         Option.map (fun field -> ("annotations", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.annotations;
         Option.map (fun field -> ("client", (fun value -> `String value) field)) value.client;
         Option.map (fun field -> ("clientVersion", (fun value -> `String value) field)) value.client_version;
         Option.map (fun field -> ("containers", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_container items)) field)) value.containers;
         Option.map (fun field -> ("encryptionKey", (fun value -> `String value) field)) value.encryption_key;
         Option.map (fun field -> ("encryptionKeyRevocationAction", (fun value -> `String ((function `Encryption_key_revocation_action_unspecified -> "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED" | `Prevent_new -> "PREVENT_NEW" | `Shutdown -> "SHUTDOWN" | `Unrecognized value -> value) value)) field)) value.encryption_key_revocation_action;
         Option.map (fun field -> ("encryptionKeyShutdownDuration", (fun value -> `String value) field)) value.encryption_key_shutdown_duration;
         Option.map (fun field -> ("executionEnvironment", (fun value -> `String ((function `Execution_environment_unspecified -> "EXECUTION_ENVIRONMENT_UNSPECIFIED" | `Execution_environment_gen1 -> "EXECUTION_ENVIRONMENT_GEN1" | `Execution_environment_gen2 -> "EXECUTION_ENVIRONMENT_GEN2" | `Unrecognized value -> value) value)) field)) value.execution_environment;
         Option.map (fun field -> ("gpuZonalRedundancyDisabled", (fun value -> `Bool value) field)) value.gpu_zonal_redundancy_disabled;
         Option.map (fun field -> ("healthCheckDisabled", (fun value -> `Bool value) field)) value.health_check_disabled;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("maxInstanceRequestConcurrency", (fun value -> `Int value) field)) value.max_instance_request_concurrency;
         Option.map (fun field -> ("nodeSelector", yojson_of_google_cloud_run_v2_node_selector field)) value.node_selector;
         Option.map (fun field -> ("revision", (fun value -> `String value) field)) value.revision;
         Option.map (fun field -> ("scaling", yojson_of_google_cloud_run_v2_revision_scaling field)) value.scaling;
         Option.map (fun field -> ("serviceAccount", (fun value -> `String value) field)) value.service_account;
         Option.map (fun field -> ("serviceMesh", yojson_of_google_cloud_run_v2_service_mesh field)) value.service_mesh;
         Option.map (fun field -> ("sessionAffinity", (fun value -> `Bool value) field)) value.session_affinity;
         Option.map (fun field -> ("timeout", (fun value -> `String value) field)) value.timeout;
         Option.map (fun field -> ("volumes", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_volume items)) field)) value.volumes;
         Option.map (fun field -> ("vpcAccess", yojson_of_google_cloud_run_v2_vpc_access field)) value.vpc_access;
         Option.map (fun field -> ("workloadIdentityConfig", yojson_of_google_cloud_run_v2_workload_identity_config field)) value.workload_identity_config;
       ])

and google_cloud_run_v2_run_job_request_of_yojson json : google_cloud_run_v2_run_job_request =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    overrides = member "overrides" json |> to_option google_cloud_run_v2_overrides_of_yojson;
    validate_only = member "validateOnly" json |> to_option to_bool;
  }

and yojson_of_google_cloud_run_v2_run_job_request (value : google_cloud_run_v2_run_job_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("overrides", yojson_of_google_cloud_run_v2_overrides field)) value.overrides;
         Option.map (fun field -> ("validateOnly", (fun value -> `Bool value) field)) value.validate_only;
       ])

and google_cloud_run_v2_secret_key_selector_of_yojson json : google_cloud_run_v2_secret_key_selector =
  let open Yojson.Safe.Util in
  {
    secret = member "secret" json |> to_option to_string;
    version = member "version" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_secret_key_selector (value : google_cloud_run_v2_secret_key_selector) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("secret", (fun value -> `String value) field)) value.secret;
         Option.map (fun field -> ("version", (fun value -> `String value) field)) value.version;
       ])

and google_cloud_run_v2_secret_volume_source_of_yojson json : google_cloud_run_v2_secret_volume_source =
  let open Yojson.Safe.Util in
  {
    default_mode = member "defaultMode" json |> to_option to_int;
    items = member "items" json |> to_option (convert_each google_cloud_run_v2_version_to_path_of_yojson);
    secret = member "secret" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_secret_volume_source (value : google_cloud_run_v2_secret_volume_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("defaultMode", (fun value -> `Int value) field)) value.default_mode;
         Option.map (fun field -> ("items", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_version_to_path items)) field)) value.items;
         Option.map (fun field -> ("secret", (fun value -> `String value) field)) value.secret;
       ])

and google_cloud_run_v2_service_of_yojson json : google_cloud_run_v2_service =
  let open Yojson.Safe.Util in
  {
    annotations = member "annotations" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    binary_authorization = member "binaryAuthorization" json |> to_option google_cloud_run_v2_binary_authorization_of_yojson;
    build_config = member "buildConfig" json |> to_option google_cloud_run_v2_build_config_of_yojson;
    client = member "client" json |> to_option to_string;
    client_version = member "clientVersion" json |> to_option to_string;
    conditions = member "conditions" json |> to_option (convert_each google_cloud_run_v2_condition_of_yojson);
    create_time = member "createTime" json |> to_option to_string;
    creator = member "creator" json |> to_option to_string;
    custom_audiences = member "customAudiences" json |> to_option (convert_each to_string);
    default_uri_disabled = member "defaultUriDisabled" json |> to_option to_bool;
    delete_time = member "deleteTime" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    expire_time = member "expireTime" json |> to_option to_string;
    functional_type = member "functionalType" json |> to_option (fun json -> match to_string json with "FUNCTIONAL_TYPE_UNSPECIFIED" -> `Functional_type_unspecified | "FUNCTIONAL_TYPE_AGENT" -> `Functional_type_agent | "FUNCTIONAL_TYPE_MCP_SERVER" -> `Functional_type_mcp_server | value -> `Unrecognized value);
    generation = member "generation" json |> to_option to_string;
    iap_enabled = member "iapEnabled" json |> to_option to_bool;
    ingress = member "ingress" json |> to_option (fun json -> match to_string json with "INGRESS_TRAFFIC_UNSPECIFIED" -> `Ingress_traffic_unspecified | "INGRESS_TRAFFIC_ALL" -> `Ingress_traffic_all | "INGRESS_TRAFFIC_INTERNAL_ONLY" -> `Ingress_traffic_internal_only | "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER" -> `Ingress_traffic_internal_load_balancer | "INGRESS_TRAFFIC_NONE" -> `Ingress_traffic_none | value -> `Unrecognized value);
    invoker_iam_disabled = member "invokerIamDisabled" json |> to_option to_bool;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    last_modifier = member "lastModifier" json |> to_option to_string;
    latest_created_revision = member "latestCreatedRevision" json |> to_option to_string;
    latest_ready_revision = member "latestReadyRevision" json |> to_option to_string;
    launch_stage = member "launchStage" json |> to_option (fun json -> match to_string json with "LAUNCH_STAGE_UNSPECIFIED" -> `Launch_stage_unspecified | "UNIMPLEMENTED" -> `Unimplemented | "PRELAUNCH" -> `Prelaunch | "EARLY_ACCESS" -> `Early_access | "ALPHA" -> `Alpha | "BETA" -> `Beta | "GA" -> `Ga | "DEPRECATED" -> `Deprecated | value -> `Unrecognized value);
    multi_region_settings = member "multiRegionSettings" json |> to_option google_cloud_run_v2_multi_region_settings_of_yojson;
    name = member "name" json |> to_option to_string;
    observed_generation = member "observedGeneration" json |> to_option to_string;
    reconciling = member "reconciling" json |> to_option to_bool;
    satisfies_pzs = member "satisfiesPzs" json |> to_option to_bool;
    scaling = member "scaling" json |> to_option google_cloud_run_v2_service_scaling_of_yojson;
    ssh_enabled = member "sshEnabled" json |> to_option to_bool;
    template = member "template" json |> to_option google_cloud_run_v2_revision_template_of_yojson;
    terminal_condition = member "terminalCondition" json |> to_option google_cloud_run_v2_condition_of_yojson;
    threat_detection_enabled = member "threatDetectionEnabled" json |> to_option to_bool;
    traffic = member "traffic" json |> to_option (convert_each google_cloud_run_v2_traffic_target_of_yojson);
    traffic_statuses = member "trafficStatuses" json |> to_option (convert_each google_cloud_run_v2_traffic_target_status_of_yojson);
    uid = member "uid" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
    uri = member "uri" json |> to_option to_string;
    urls = member "urls" json |> to_option (convert_each to_string);
  }

and yojson_of_google_cloud_run_v2_service (value : google_cloud_run_v2_service) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("annotations", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.annotations;
         Option.map (fun field -> ("binaryAuthorization", yojson_of_google_cloud_run_v2_binary_authorization field)) value.binary_authorization;
         Option.map (fun field -> ("buildConfig", yojson_of_google_cloud_run_v2_build_config field)) value.build_config;
         Option.map (fun field -> ("client", (fun value -> `String value) field)) value.client;
         Option.map (fun field -> ("clientVersion", (fun value -> `String value) field)) value.client_version;
         Option.map (fun field -> ("conditions", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_condition items)) field)) value.conditions;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("creator", (fun value -> `String value) field)) value.creator;
         Option.map (fun field -> ("customAudiences", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.custom_audiences;
         Option.map (fun field -> ("defaultUriDisabled", (fun value -> `Bool value) field)) value.default_uri_disabled;
         Option.map (fun field -> ("deleteTime", (fun value -> `String value) field)) value.delete_time;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
         Option.map (fun field -> ("functionalType", (fun value -> `String ((function `Functional_type_unspecified -> "FUNCTIONAL_TYPE_UNSPECIFIED" | `Functional_type_agent -> "FUNCTIONAL_TYPE_AGENT" | `Functional_type_mcp_server -> "FUNCTIONAL_TYPE_MCP_SERVER" | `Unrecognized value -> value) value)) field)) value.functional_type;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("iapEnabled", (fun value -> `Bool value) field)) value.iap_enabled;
         Option.map (fun field -> ("ingress", (fun value -> `String ((function `Ingress_traffic_unspecified -> "INGRESS_TRAFFIC_UNSPECIFIED" | `Ingress_traffic_all -> "INGRESS_TRAFFIC_ALL" | `Ingress_traffic_internal_only -> "INGRESS_TRAFFIC_INTERNAL_ONLY" | `Ingress_traffic_internal_load_balancer -> "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER" | `Ingress_traffic_none -> "INGRESS_TRAFFIC_NONE" | `Unrecognized value -> value) value)) field)) value.ingress;
         Option.map (fun field -> ("invokerIamDisabled", (fun value -> `Bool value) field)) value.invoker_iam_disabled;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("lastModifier", (fun value -> `String value) field)) value.last_modifier;
         Option.map (fun field -> ("latestCreatedRevision", (fun value -> `String value) field)) value.latest_created_revision;
         Option.map (fun field -> ("latestReadyRevision", (fun value -> `String value) field)) value.latest_ready_revision;
         Option.map (fun field -> ("launchStage", (fun value -> `String ((function `Launch_stage_unspecified -> "LAUNCH_STAGE_UNSPECIFIED" | `Unimplemented -> "UNIMPLEMENTED" | `Prelaunch -> "PRELAUNCH" | `Early_access -> "EARLY_ACCESS" | `Alpha -> "ALPHA" | `Beta -> "BETA" | `Ga -> "GA" | `Deprecated -> "DEPRECATED" | `Unrecognized value -> value) value)) field)) value.launch_stage;
         Option.map (fun field -> ("multiRegionSettings", yojson_of_google_cloud_run_v2_multi_region_settings field)) value.multi_region_settings;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("observedGeneration", (fun value -> `String value) field)) value.observed_generation;
         Option.map (fun field -> ("reconciling", (fun value -> `Bool value) field)) value.reconciling;
         Option.map (fun field -> ("satisfiesPzs", (fun value -> `Bool value) field)) value.satisfies_pzs;
         Option.map (fun field -> ("scaling", yojson_of_google_cloud_run_v2_service_scaling field)) value.scaling;
         Option.map (fun field -> ("sshEnabled", (fun value -> `Bool value) field)) value.ssh_enabled;
         Option.map (fun field -> ("template", yojson_of_google_cloud_run_v2_revision_template field)) value.template;
         Option.map (fun field -> ("terminalCondition", yojson_of_google_cloud_run_v2_condition field)) value.terminal_condition;
         Option.map (fun field -> ("threatDetectionEnabled", (fun value -> `Bool value) field)) value.threat_detection_enabled;
         Option.map (fun field -> ("traffic", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_traffic_target items)) field)) value.traffic;
         Option.map (fun field -> ("trafficStatuses", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_traffic_target_status items)) field)) value.traffic_statuses;
         Option.map (fun field -> ("uid", (fun value -> `String value) field)) value.uid;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
         Option.map (fun field -> ("uri", (fun value -> `String value) field)) value.uri;
         Option.map (fun field -> ("urls", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.urls;
       ])

and google_cloud_run_v2_service_mesh_of_yojson json : google_cloud_run_v2_service_mesh =
  let open Yojson.Safe.Util in
  {
    mesh = member "mesh" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_service_mesh (value : google_cloud_run_v2_service_mesh) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("mesh", (fun value -> `String value) field)) value.mesh;
       ])

and google_cloud_run_v2_service_scaling_of_yojson json : google_cloud_run_v2_service_scaling =
  let open Yojson.Safe.Util in
  {
    manual_instance_count = member "manualInstanceCount" json |> to_option to_int;
    max_instance_count = member "maxInstanceCount" json |> to_option to_int;
    min_instance_count = member "minInstanceCount" json |> to_option to_int;
    scaling_mode = member "scalingMode" json |> to_option (fun json -> match to_string json with "SCALING_MODE_UNSPECIFIED" -> `Scaling_mode_unspecified | "AUTOMATIC" -> `Automatic | "MANUAL" -> `Manual | value -> `Unrecognized value);
  }

and yojson_of_google_cloud_run_v2_service_scaling (value : google_cloud_run_v2_service_scaling) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("manualInstanceCount", (fun value -> `Int value) field)) value.manual_instance_count;
         Option.map (fun field -> ("maxInstanceCount", (fun value -> `Int value) field)) value.max_instance_count;
         Option.map (fun field -> ("minInstanceCount", (fun value -> `Int value) field)) value.min_instance_count;
         Option.map (fun field -> ("scalingMode", (fun value -> `String ((function `Scaling_mode_unspecified -> "SCALING_MODE_UNSPECIFIED" | `Automatic -> "AUTOMATIC" | `Manual -> "MANUAL" | `Unrecognized value -> value) value)) field)) value.scaling_mode;
       ])

and google_cloud_run_v2_source_code_of_yojson json : google_cloud_run_v2_source_code =
  let open Yojson.Safe.Util in
  {
    cloud_storage_source = member "cloudStorageSource" json |> to_option google_cloud_run_v2_cloud_storage_source_of_yojson;
    inlined_source = member "inlinedSource" json |> to_option google_cloud_run_v2_inlined_source_of_yojson;
  }

and yojson_of_google_cloud_run_v2_source_code (value : google_cloud_run_v2_source_code) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cloudStorageSource", yojson_of_google_cloud_run_v2_cloud_storage_source field)) value.cloud_storage_source;
         Option.map (fun field -> ("inlinedSource", yojson_of_google_cloud_run_v2_inlined_source field)) value.inlined_source;
       ])

and google_cloud_run_v2_source_file_of_yojson json : google_cloud_run_v2_source_file =
  let open Yojson.Safe.Util in
  {
    content = member "content" json |> to_option to_string;
    filename = member "filename" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_source_file (value : google_cloud_run_v2_source_file) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("content", (fun value -> `String value) field)) value.content;
         Option.map (fun field -> ("filename", (fun value -> `String value) field)) value.filename;
       ])

and google_cloud_run_v2_start_instance_request_of_yojson json : google_cloud_run_v2_start_instance_request =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    validate_only = member "validateOnly" json |> to_option to_bool;
  }

and yojson_of_google_cloud_run_v2_start_instance_request (value : google_cloud_run_v2_start_instance_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("validateOnly", (fun value -> `Bool value) field)) value.validate_only;
       ])

and google_cloud_run_v2_stop_instance_request_of_yojson json : google_cloud_run_v2_stop_instance_request =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    validate_only = member "validateOnly" json |> to_option to_bool;
  }

and yojson_of_google_cloud_run_v2_stop_instance_request (value : google_cloud_run_v2_stop_instance_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("validateOnly", (fun value -> `Bool value) field)) value.validate_only;
       ])

and google_cloud_run_v2_storage_source_of_yojson json : google_cloud_run_v2_storage_source =
  let open Yojson.Safe.Util in
  {
    bucket = member "bucket" json |> to_option to_string;
    generation = member "generation" json |> to_option to_string;
    object_ = member "object" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_storage_source (value : google_cloud_run_v2_storage_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("object", (fun value -> `String value) field)) value.object_;
       ])

and google_cloud_run_v2_submit_build_request_of_yojson json : google_cloud_run_v2_submit_build_request =
  let open Yojson.Safe.Util in
  {
    buildpack_build = member "buildpackBuild" json |> to_option google_cloud_run_v2_buildpacks_build_of_yojson;
    client = member "client" json |> to_option to_string;
    docker_build = member "dockerBuild" json |> to_option google_cloud_run_v2_docker_build_of_yojson;
    image_uri = member "imageUri" json |> to_option to_string;
    machine_type = member "machineType" json |> to_option to_string;
    release_track = member "releaseTrack" json |> to_option (fun json -> match to_string json with "LAUNCH_STAGE_UNSPECIFIED" -> `Launch_stage_unspecified | "UNIMPLEMENTED" -> `Unimplemented | "PRELAUNCH" -> `Prelaunch | "EARLY_ACCESS" -> `Early_access | "ALPHA" -> `Alpha | "BETA" -> `Beta | "GA" -> `Ga | "DEPRECATED" -> `Deprecated | value -> `Unrecognized value);
    service_account = member "serviceAccount" json |> to_option to_string;
    storage_source = member "storageSource" json |> to_option google_cloud_run_v2_storage_source_of_yojson;
    tags = member "tags" json |> to_option (convert_each to_string);
    worker_pool = member "workerPool" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_submit_build_request (value : google_cloud_run_v2_submit_build_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("buildpackBuild", yojson_of_google_cloud_run_v2_buildpacks_build field)) value.buildpack_build;
         Option.map (fun field -> ("client", (fun value -> `String value) field)) value.client;
         Option.map (fun field -> ("dockerBuild", yojson_of_google_cloud_run_v2_docker_build field)) value.docker_build;
         Option.map (fun field -> ("imageUri", (fun value -> `String value) field)) value.image_uri;
         Option.map (fun field -> ("machineType", (fun value -> `String value) field)) value.machine_type;
         Option.map (fun field -> ("releaseTrack", (fun value -> `String ((function `Launch_stage_unspecified -> "LAUNCH_STAGE_UNSPECIFIED" | `Unimplemented -> "UNIMPLEMENTED" | `Prelaunch -> "PRELAUNCH" | `Early_access -> "EARLY_ACCESS" | `Alpha -> "ALPHA" | `Beta -> "BETA" | `Ga -> "GA" | `Deprecated -> "DEPRECATED" | `Unrecognized value -> value) value)) field)) value.release_track;
         Option.map (fun field -> ("serviceAccount", (fun value -> `String value) field)) value.service_account;
         Option.map (fun field -> ("storageSource", yojson_of_google_cloud_run_v2_storage_source field)) value.storage_source;
         Option.map (fun field -> ("tags", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.tags;
         Option.map (fun field -> ("workerPool", (fun value -> `String value) field)) value.worker_pool;
       ])

and google_cloud_run_v2_submit_build_response_of_yojson json : google_cloud_run_v2_submit_build_response =
  let open Yojson.Safe.Util in
  {
    base_image_uri = member "baseImageUri" json |> to_option to_string;
    base_image_warning = member "baseImageWarning" json |> to_option to_string;
    build_operation = member "buildOperation" json |> to_option google_longrunning_operation_of_yojson;
  }

and yojson_of_google_cloud_run_v2_submit_build_response (value : google_cloud_run_v2_submit_build_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("baseImageUri", (fun value -> `String value) field)) value.base_image_uri;
         Option.map (fun field -> ("baseImageWarning", (fun value -> `String value) field)) value.base_image_warning;
         Option.map (fun field -> ("buildOperation", yojson_of_google_longrunning_operation field)) value.build_operation;
       ])

and google_cloud_run_v2_tcp_socket_action_of_yojson json : google_cloud_run_v2_tcp_socket_action =
  let open Yojson.Safe.Util in
  {
    port = member "port" json |> to_option to_int;
  }

and yojson_of_google_cloud_run_v2_tcp_socket_action (value : google_cloud_run_v2_tcp_socket_action) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("port", (fun value -> `Int value) field)) value.port;
       ])

and google_cloud_run_v2_task_of_yojson json : google_cloud_run_v2_task =
  let open Yojson.Safe.Util in
  {
    annotations = member "annotations" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    completion_time = member "completionTime" json |> to_option to_string;
    conditions = member "conditions" json |> to_option (convert_each google_cloud_run_v2_condition_of_yojson);
    containers = member "containers" json |> to_option (convert_each google_cloud_run_v2_container_of_yojson);
    create_time = member "createTime" json |> to_option to_string;
    delete_time = member "deleteTime" json |> to_option to_string;
    encryption_key = member "encryptionKey" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    execution = member "execution" json |> to_option to_string;
    execution_environment = member "executionEnvironment" json |> to_option (fun json -> match to_string json with "EXECUTION_ENVIRONMENT_UNSPECIFIED" -> `Execution_environment_unspecified | "EXECUTION_ENVIRONMENT_GEN1" -> `Execution_environment_gen1 | "EXECUTION_ENVIRONMENT_GEN2" -> `Execution_environment_gen2 | value -> `Unrecognized value);
    expire_time = member "expireTime" json |> to_option to_string;
    generation = member "generation" json |> to_option to_string;
    gpu_zonal_redundancy_disabled = member "gpuZonalRedundancyDisabled" json |> to_option to_bool;
    index = member "index" json |> to_option to_int;
    job = member "job" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    last_attempt_result = member "lastAttemptResult" json |> to_option google_cloud_run_v2_task_attempt_result_of_yojson;
    log_uri = member "logUri" json |> to_option to_string;
    max_retries = member "maxRetries" json |> to_option to_int;
    name = member "name" json |> to_option to_string;
    node_selector = member "nodeSelector" json |> to_option google_cloud_run_v2_node_selector_of_yojson;
    observed_generation = member "observedGeneration" json |> to_option to_string;
    reconciling = member "reconciling" json |> to_option to_bool;
    retried = member "retried" json |> to_option to_int;
    satisfies_pzs = member "satisfiesPzs" json |> to_option to_bool;
    scheduled_time = member "scheduledTime" json |> to_option to_string;
    service_account = member "serviceAccount" json |> to_option to_string;
    start_time = member "startTime" json |> to_option to_string;
    timeout = member "timeout" json |> to_option to_string;
    uid = member "uid" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
    volumes = member "volumes" json |> to_option (convert_each google_cloud_run_v2_volume_of_yojson);
    vpc_access = member "vpcAccess" json |> to_option google_cloud_run_v2_vpc_access_of_yojson;
    workload_identity_config = member "workloadIdentityConfig" json |> to_option google_cloud_run_v2_workload_identity_config_of_yojson;
  }

and yojson_of_google_cloud_run_v2_task (value : google_cloud_run_v2_task) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("annotations", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.annotations;
         Option.map (fun field -> ("completionTime", (fun value -> `String value) field)) value.completion_time;
         Option.map (fun field -> ("conditions", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_condition items)) field)) value.conditions;
         Option.map (fun field -> ("containers", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_container items)) field)) value.containers;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("deleteTime", (fun value -> `String value) field)) value.delete_time;
         Option.map (fun field -> ("encryptionKey", (fun value -> `String value) field)) value.encryption_key;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("execution", (fun value -> `String value) field)) value.execution;
         Option.map (fun field -> ("executionEnvironment", (fun value -> `String ((function `Execution_environment_unspecified -> "EXECUTION_ENVIRONMENT_UNSPECIFIED" | `Execution_environment_gen1 -> "EXECUTION_ENVIRONMENT_GEN1" | `Execution_environment_gen2 -> "EXECUTION_ENVIRONMENT_GEN2" | `Unrecognized value -> value) value)) field)) value.execution_environment;
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("gpuZonalRedundancyDisabled", (fun value -> `Bool value) field)) value.gpu_zonal_redundancy_disabled;
         Option.map (fun field -> ("index", (fun value -> `Int value) field)) value.index;
         Option.map (fun field -> ("job", (fun value -> `String value) field)) value.job;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("lastAttemptResult", yojson_of_google_cloud_run_v2_task_attempt_result field)) value.last_attempt_result;
         Option.map (fun field -> ("logUri", (fun value -> `String value) field)) value.log_uri;
         Option.map (fun field -> ("maxRetries", (fun value -> `Int value) field)) value.max_retries;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("nodeSelector", yojson_of_google_cloud_run_v2_node_selector field)) value.node_selector;
         Option.map (fun field -> ("observedGeneration", (fun value -> `String value) field)) value.observed_generation;
         Option.map (fun field -> ("reconciling", (fun value -> `Bool value) field)) value.reconciling;
         Option.map (fun field -> ("retried", (fun value -> `Int value) field)) value.retried;
         Option.map (fun field -> ("satisfiesPzs", (fun value -> `Bool value) field)) value.satisfies_pzs;
         Option.map (fun field -> ("scheduledTime", (fun value -> `String value) field)) value.scheduled_time;
         Option.map (fun field -> ("serviceAccount", (fun value -> `String value) field)) value.service_account;
         Option.map (fun field -> ("startTime", (fun value -> `String value) field)) value.start_time;
         Option.map (fun field -> ("timeout", (fun value -> `String value) field)) value.timeout;
         Option.map (fun field -> ("uid", (fun value -> `String value) field)) value.uid;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
         Option.map (fun field -> ("volumes", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_volume items)) field)) value.volumes;
         Option.map (fun field -> ("vpcAccess", yojson_of_google_cloud_run_v2_vpc_access field)) value.vpc_access;
         Option.map (fun field -> ("workloadIdentityConfig", yojson_of_google_cloud_run_v2_workload_identity_config field)) value.workload_identity_config;
       ])

and google_cloud_run_v2_task_attempt_result_of_yojson json : google_cloud_run_v2_task_attempt_result =
  let open Yojson.Safe.Util in
  {
    exit_code = member "exitCode" json |> to_option to_int;
    status = member "status" json |> to_option google_rpc_status_of_yojson;
    term_signal = member "termSignal" json |> to_option to_int;
  }

and yojson_of_google_cloud_run_v2_task_attempt_result (value : google_cloud_run_v2_task_attempt_result) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("exitCode", (fun value -> `Int value) field)) value.exit_code;
         Option.map (fun field -> ("status", yojson_of_google_rpc_status field)) value.status;
         Option.map (fun field -> ("termSignal", (fun value -> `Int value) field)) value.term_signal;
       ])

and google_cloud_run_v2_task_template_of_yojson json : google_cloud_run_v2_task_template =
  let open Yojson.Safe.Util in
  {
    containers = member "containers" json |> to_option (convert_each google_cloud_run_v2_container_of_yojson);
    encryption_key = member "encryptionKey" json |> to_option to_string;
    execution_environment = member "executionEnvironment" json |> to_option (fun json -> match to_string json with "EXECUTION_ENVIRONMENT_UNSPECIFIED" -> `Execution_environment_unspecified | "EXECUTION_ENVIRONMENT_GEN1" -> `Execution_environment_gen1 | "EXECUTION_ENVIRONMENT_GEN2" -> `Execution_environment_gen2 | value -> `Unrecognized value);
    gpu_zonal_redundancy_disabled = member "gpuZonalRedundancyDisabled" json |> to_option to_bool;
    max_retries = member "maxRetries" json |> to_option to_int;
    node_selector = member "nodeSelector" json |> to_option google_cloud_run_v2_node_selector_of_yojson;
    service_account = member "serviceAccount" json |> to_option to_string;
    timeout = member "timeout" json |> to_option to_string;
    volumes = member "volumes" json |> to_option (convert_each google_cloud_run_v2_volume_of_yojson);
    vpc_access = member "vpcAccess" json |> to_option google_cloud_run_v2_vpc_access_of_yojson;
    workload_identity_config = member "workloadIdentityConfig" json |> to_option google_cloud_run_v2_workload_identity_config_of_yojson;
  }

and yojson_of_google_cloud_run_v2_task_template (value : google_cloud_run_v2_task_template) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("containers", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_container items)) field)) value.containers;
         Option.map (fun field -> ("encryptionKey", (fun value -> `String value) field)) value.encryption_key;
         Option.map (fun field -> ("executionEnvironment", (fun value -> `String ((function `Execution_environment_unspecified -> "EXECUTION_ENVIRONMENT_UNSPECIFIED" | `Execution_environment_gen1 -> "EXECUTION_ENVIRONMENT_GEN1" | `Execution_environment_gen2 -> "EXECUTION_ENVIRONMENT_GEN2" | `Unrecognized value -> value) value)) field)) value.execution_environment;
         Option.map (fun field -> ("gpuZonalRedundancyDisabled", (fun value -> `Bool value) field)) value.gpu_zonal_redundancy_disabled;
         Option.map (fun field -> ("maxRetries", (fun value -> `Int value) field)) value.max_retries;
         Option.map (fun field -> ("nodeSelector", yojson_of_google_cloud_run_v2_node_selector field)) value.node_selector;
         Option.map (fun field -> ("serviceAccount", (fun value -> `String value) field)) value.service_account;
         Option.map (fun field -> ("timeout", (fun value -> `String value) field)) value.timeout;
         Option.map (fun field -> ("volumes", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_volume items)) field)) value.volumes;
         Option.map (fun field -> ("vpcAccess", yojson_of_google_cloud_run_v2_vpc_access field)) value.vpc_access;
         Option.map (fun field -> ("workloadIdentityConfig", yojson_of_google_cloud_run_v2_workload_identity_config field)) value.workload_identity_config;
       ])

and google_cloud_run_v2_traffic_target_of_yojson json : google_cloud_run_v2_traffic_target =
  let open Yojson.Safe.Util in
  {
    percent = member "percent" json |> to_option to_int;
    revision = member "revision" json |> to_option to_string;
    tag = member "tag" json |> to_option to_string;
    type_ = member "type" json |> to_option (fun json -> match to_string json with "TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED" -> `Traffic_target_allocation_type_unspecified | "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST" -> `Traffic_target_allocation_type_latest | "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION" -> `Traffic_target_allocation_type_revision | value -> `Unrecognized value);
  }

and yojson_of_google_cloud_run_v2_traffic_target (value : google_cloud_run_v2_traffic_target) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("percent", (fun value -> `Int value) field)) value.percent;
         Option.map (fun field -> ("revision", (fun value -> `String value) field)) value.revision;
         Option.map (fun field -> ("tag", (fun value -> `String value) field)) value.tag;
         Option.map (fun field -> ("type", (fun value -> `String ((function `Traffic_target_allocation_type_unspecified -> "TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED" | `Traffic_target_allocation_type_latest -> "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST" | `Traffic_target_allocation_type_revision -> "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION" | `Unrecognized value -> value) value)) field)) value.type_;
       ])

and google_cloud_run_v2_traffic_target_status_of_yojson json : google_cloud_run_v2_traffic_target_status =
  let open Yojson.Safe.Util in
  {
    percent = member "percent" json |> to_option to_int;
    revision = member "revision" json |> to_option to_string;
    tag = member "tag" json |> to_option to_string;
    type_ = member "type" json |> to_option (fun json -> match to_string json with "TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED" -> `Traffic_target_allocation_type_unspecified | "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST" -> `Traffic_target_allocation_type_latest | "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION" -> `Traffic_target_allocation_type_revision | value -> `Unrecognized value);
    uri = member "uri" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_traffic_target_status (value : google_cloud_run_v2_traffic_target_status) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("percent", (fun value -> `Int value) field)) value.percent;
         Option.map (fun field -> ("revision", (fun value -> `String value) field)) value.revision;
         Option.map (fun field -> ("tag", (fun value -> `String value) field)) value.tag;
         Option.map (fun field -> ("type", (fun value -> `String ((function `Traffic_target_allocation_type_unspecified -> "TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED" | `Traffic_target_allocation_type_latest -> "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST" | `Traffic_target_allocation_type_revision -> "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION" | `Unrecognized value -> value) value)) field)) value.type_;
         Option.map (fun field -> ("uri", (fun value -> `String value) field)) value.uri;
       ])

and google_cloud_run_v2_upload_source_request_of_yojson json : google_cloud_run_v2_upload_source_request =
  let open Yojson.Safe.Util in
  {
    service = member "service" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_upload_source_request (value : google_cloud_run_v2_upload_source_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("service", (fun value -> `String value) field)) value.service;
       ])

and google_cloud_run_v2_upload_source_response_of_yojson json : google_cloud_run_v2_upload_source_response =
  let open Yojson.Safe.Util in
  {
    cloud_storage_source = member "cloudStorageSource" json |> to_option google_cloud_run_v2_cloud_storage_source_of_yojson;
  }

and yojson_of_google_cloud_run_v2_upload_source_response (value : google_cloud_run_v2_upload_source_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cloudStorageSource", yojson_of_google_cloud_run_v2_cloud_storage_source field)) value.cloud_storage_source;
       ])

and google_cloud_run_v2_version_to_path_of_yojson json : google_cloud_run_v2_version_to_path =
  let open Yojson.Safe.Util in
  {
    mode = member "mode" json |> to_option to_int;
    path = member "path" json |> to_option to_string;
    version = member "version" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_version_to_path (value : google_cloud_run_v2_version_to_path) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("mode", (fun value -> `Int value) field)) value.mode;
         Option.map (fun field -> ("path", (fun value -> `String value) field)) value.path;
         Option.map (fun field -> ("version", (fun value -> `String value) field)) value.version;
       ])

and google_cloud_run_v2_volume_of_yojson json : google_cloud_run_v2_volume =
  let open Yojson.Safe.Util in
  {
    cloud_sql_instance = member "cloudSqlInstance" json |> to_option google_cloud_run_v2_cloud_sql_instance_of_yojson;
    empty_dir = member "emptyDir" json |> to_option google_cloud_run_v2_empty_dir_volume_source_of_yojson;
    gcs = member "gcs" json |> to_option google_cloud_run_v2_gcs_volume_source_of_yojson;
    name = member "name" json |> to_option to_string;
    nfs = member "nfs" json |> to_option google_cloud_run_v2_nfs_volume_source_of_yojson;
    secret = member "secret" json |> to_option google_cloud_run_v2_secret_volume_source_of_yojson;
  }

and yojson_of_google_cloud_run_v2_volume (value : google_cloud_run_v2_volume) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cloudSqlInstance", yojson_of_google_cloud_run_v2_cloud_sql_instance field)) value.cloud_sql_instance;
         Option.map (fun field -> ("emptyDir", yojson_of_google_cloud_run_v2_empty_dir_volume_source field)) value.empty_dir;
         Option.map (fun field -> ("gcs", yojson_of_google_cloud_run_v2_gcs_volume_source field)) value.gcs;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("nfs", yojson_of_google_cloud_run_v2_nfs_volume_source field)) value.nfs;
         Option.map (fun field -> ("secret", yojson_of_google_cloud_run_v2_secret_volume_source field)) value.secret;
       ])

and google_cloud_run_v2_volume_mount_of_yojson json : google_cloud_run_v2_volume_mount =
  let open Yojson.Safe.Util in
  {
    mount_path = member "mountPath" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    sub_path = member "subPath" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_volume_mount (value : google_cloud_run_v2_volume_mount) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("mountPath", (fun value -> `String value) field)) value.mount_path;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("subPath", (fun value -> `String value) field)) value.sub_path;
       ])

and google_cloud_run_v2_vpc_access_of_yojson json : google_cloud_run_v2_vpc_access =
  let open Yojson.Safe.Util in
  {
    connector = member "connector" json |> to_option to_string;
    egress = member "egress" json |> to_option (fun json -> match to_string json with "VPC_EGRESS_UNSPECIFIED" -> `Vpc_egress_unspecified | "ALL_TRAFFIC" -> `All_traffic | "PRIVATE_RANGES_ONLY" -> `Private_ranges_only | value -> `Unrecognized value);
    network_interfaces = member "networkInterfaces" json |> to_option (convert_each google_cloud_run_v2_network_interface_of_yojson);
  }

and yojson_of_google_cloud_run_v2_vpc_access (value : google_cloud_run_v2_vpc_access) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("connector", (fun value -> `String value) field)) value.connector;
         Option.map (fun field -> ("egress", (fun value -> `String ((function `Vpc_egress_unspecified -> "VPC_EGRESS_UNSPECIFIED" | `All_traffic -> "ALL_TRAFFIC" | `Private_ranges_only -> "PRIVATE_RANGES_ONLY" | `Unrecognized value -> value) value)) field)) value.egress;
         Option.map (fun field -> ("networkInterfaces", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_network_interface items)) field)) value.network_interfaces;
       ])

and google_cloud_run_v2_worker_pool_of_yojson json : google_cloud_run_v2_worker_pool =
  let open Yojson.Safe.Util in
  {
    annotations = member "annotations" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    binary_authorization = member "binaryAuthorization" json |> to_option google_cloud_run_v2_binary_authorization_of_yojson;
    client = member "client" json |> to_option to_string;
    client_version = member "clientVersion" json |> to_option to_string;
    conditions = member "conditions" json |> to_option (convert_each google_cloud_run_v2_condition_of_yojson);
    create_time = member "createTime" json |> to_option to_string;
    creator = member "creator" json |> to_option to_string;
    custom_audiences = member "customAudiences" json |> to_option (convert_each to_string);
    delete_time = member "deleteTime" json |> to_option to_string;
    description = member "description" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    expire_time = member "expireTime" json |> to_option to_string;
    generation = member "generation" json |> to_option to_string;
    instance_split_statuses = member "instanceSplitStatuses" json |> to_option (convert_each google_cloud_run_v2_instance_split_status_of_yojson);
    instance_splits = member "instanceSplits" json |> to_option (convert_each google_cloud_run_v2_instance_split_of_yojson);
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    last_modifier = member "lastModifier" json |> to_option to_string;
    latest_created_revision = member "latestCreatedRevision" json |> to_option to_string;
    latest_ready_revision = member "latestReadyRevision" json |> to_option to_string;
    launch_stage = member "launchStage" json |> to_option (fun json -> match to_string json with "LAUNCH_STAGE_UNSPECIFIED" -> `Launch_stage_unspecified | "UNIMPLEMENTED" -> `Unimplemented | "PRELAUNCH" -> `Prelaunch | "EARLY_ACCESS" -> `Early_access | "ALPHA" -> `Alpha | "BETA" -> `Beta | "GA" -> `Ga | "DEPRECATED" -> `Deprecated | value -> `Unrecognized value);
    name = member "name" json |> to_option to_string;
    observed_generation = member "observedGeneration" json |> to_option to_string;
    reconciling = member "reconciling" json |> to_option to_bool;
    satisfies_pzs = member "satisfiesPzs" json |> to_option to_bool;
    scaling = member "scaling" json |> to_option google_cloud_run_v2_worker_pool_scaling_of_yojson;
    template = member "template" json |> to_option google_cloud_run_v2_worker_pool_revision_template_of_yojson;
    terminal_condition = member "terminalCondition" json |> to_option google_cloud_run_v2_condition_of_yojson;
    threat_detection_enabled = member "threatDetectionEnabled" json |> to_option to_bool;
    uid = member "uid" json |> to_option to_string;
    update_time = member "updateTime" json |> to_option to_string;
  }

and yojson_of_google_cloud_run_v2_worker_pool (value : google_cloud_run_v2_worker_pool) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("annotations", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.annotations;
         Option.map (fun field -> ("binaryAuthorization", yojson_of_google_cloud_run_v2_binary_authorization field)) value.binary_authorization;
         Option.map (fun field -> ("client", (fun value -> `String value) field)) value.client;
         Option.map (fun field -> ("clientVersion", (fun value -> `String value) field)) value.client_version;
         Option.map (fun field -> ("conditions", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_condition items)) field)) value.conditions;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("creator", (fun value -> `String value) field)) value.creator;
         Option.map (fun field -> ("customAudiences", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.custom_audiences;
         Option.map (fun field -> ("deleteTime", (fun value -> `String value) field)) value.delete_time;
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("instanceSplitStatuses", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_instance_split_status items)) field)) value.instance_split_statuses;
         Option.map (fun field -> ("instanceSplits", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_instance_split items)) field)) value.instance_splits;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("lastModifier", (fun value -> `String value) field)) value.last_modifier;
         Option.map (fun field -> ("latestCreatedRevision", (fun value -> `String value) field)) value.latest_created_revision;
         Option.map (fun field -> ("latestReadyRevision", (fun value -> `String value) field)) value.latest_ready_revision;
         Option.map (fun field -> ("launchStage", (fun value -> `String ((function `Launch_stage_unspecified -> "LAUNCH_STAGE_UNSPECIFIED" | `Unimplemented -> "UNIMPLEMENTED" | `Prelaunch -> "PRELAUNCH" | `Early_access -> "EARLY_ACCESS" | `Alpha -> "ALPHA" | `Beta -> "BETA" | `Ga -> "GA" | `Deprecated -> "DEPRECATED" | `Unrecognized value -> value) value)) field)) value.launch_stage;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("observedGeneration", (fun value -> `String value) field)) value.observed_generation;
         Option.map (fun field -> ("reconciling", (fun value -> `Bool value) field)) value.reconciling;
         Option.map (fun field -> ("satisfiesPzs", (fun value -> `Bool value) field)) value.satisfies_pzs;
         Option.map (fun field -> ("scaling", yojson_of_google_cloud_run_v2_worker_pool_scaling field)) value.scaling;
         Option.map (fun field -> ("template", yojson_of_google_cloud_run_v2_worker_pool_revision_template field)) value.template;
         Option.map (fun field -> ("terminalCondition", yojson_of_google_cloud_run_v2_condition field)) value.terminal_condition;
         Option.map (fun field -> ("threatDetectionEnabled", (fun value -> `Bool value) field)) value.threat_detection_enabled;
         Option.map (fun field -> ("uid", (fun value -> `String value) field)) value.uid;
         Option.map (fun field -> ("updateTime", (fun value -> `String value) field)) value.update_time;
       ])

and google_cloud_run_v2_worker_pool_revision_template_of_yojson json : google_cloud_run_v2_worker_pool_revision_template =
  let open Yojson.Safe.Util in
  {
    annotations = member "annotations" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    client = member "client" json |> to_option to_string;
    client_version = member "clientVersion" json |> to_option to_string;
    containers = member "containers" json |> to_option (convert_each google_cloud_run_v2_container_of_yojson);
    encryption_key = member "encryptionKey" json |> to_option to_string;
    encryption_key_revocation_action = member "encryptionKeyRevocationAction" json |> to_option (fun json -> match to_string json with "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED" -> `Encryption_key_revocation_action_unspecified | "PREVENT_NEW" -> `Prevent_new | "SHUTDOWN" -> `Shutdown | value -> `Unrecognized value);
    encryption_key_shutdown_duration = member "encryptionKeyShutdownDuration" json |> to_option to_string;
    gpu_zonal_redundancy_disabled = member "gpuZonalRedundancyDisabled" json |> to_option to_bool;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    node_selector = member "nodeSelector" json |> to_option google_cloud_run_v2_node_selector_of_yojson;
    revision = member "revision" json |> to_option to_string;
    service_account = member "serviceAccount" json |> to_option to_string;
    service_mesh = member "serviceMesh" json |> to_option google_cloud_run_v2_service_mesh_of_yojson;
    volumes = member "volumes" json |> to_option (convert_each google_cloud_run_v2_volume_of_yojson);
    vpc_access = member "vpcAccess" json |> to_option google_cloud_run_v2_vpc_access_of_yojson;
  }

and yojson_of_google_cloud_run_v2_worker_pool_revision_template (value : google_cloud_run_v2_worker_pool_revision_template) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("annotations", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.annotations;
         Option.map (fun field -> ("client", (fun value -> `String value) field)) value.client;
         Option.map (fun field -> ("clientVersion", (fun value -> `String value) field)) value.client_version;
         Option.map (fun field -> ("containers", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_container items)) field)) value.containers;
         Option.map (fun field -> ("encryptionKey", (fun value -> `String value) field)) value.encryption_key;
         Option.map (fun field -> ("encryptionKeyRevocationAction", (fun value -> `String ((function `Encryption_key_revocation_action_unspecified -> "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED" | `Prevent_new -> "PREVENT_NEW" | `Shutdown -> "SHUTDOWN" | `Unrecognized value -> value) value)) field)) value.encryption_key_revocation_action;
         Option.map (fun field -> ("encryptionKeyShutdownDuration", (fun value -> `String value) field)) value.encryption_key_shutdown_duration;
         Option.map (fun field -> ("gpuZonalRedundancyDisabled", (fun value -> `Bool value) field)) value.gpu_zonal_redundancy_disabled;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("nodeSelector", yojson_of_google_cloud_run_v2_node_selector field)) value.node_selector;
         Option.map (fun field -> ("revision", (fun value -> `String value) field)) value.revision;
         Option.map (fun field -> ("serviceAccount", (fun value -> `String value) field)) value.service_account;
         Option.map (fun field -> ("serviceMesh", yojson_of_google_cloud_run_v2_service_mesh field)) value.service_mesh;
         Option.map (fun field -> ("volumes", (fun items -> `List (List.map yojson_of_google_cloud_run_v2_volume items)) field)) value.volumes;
         Option.map (fun field -> ("vpcAccess", yojson_of_google_cloud_run_v2_vpc_access field)) value.vpc_access;
       ])

and google_cloud_run_v2_worker_pool_scaling_of_yojson json : google_cloud_run_v2_worker_pool_scaling =
  let open Yojson.Safe.Util in
  {
    manual_instance_count = member "manualInstanceCount" json |> to_option to_int;
  }

and yojson_of_google_cloud_run_v2_worker_pool_scaling (value : google_cloud_run_v2_worker_pool_scaling) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("manualInstanceCount", (fun value -> `Int value) field)) value.manual_instance_count;
       ])

and google_cloud_run_v2_workload_identity_config_of_yojson json : google_cloud_run_v2_workload_identity_config =
  let open Yojson.Safe.Util in
  {
    identity = member "identity" json |> to_option to_string;
    identity_certificate_enabled = member "identityCertificateEnabled" json |> to_option to_bool;
    identity_type = member "identityType" json |> to_option (fun json -> match to_string json with "IDENTITY_TYPE_UNSPECIFIED" -> `Identity_type_unspecified | "IDENTITY_TYPE_SERVICE_ACCOUNT" -> `Identity_type_service_account | "IDENTITY_TYPE_AGENT_IDENTITY" -> `Identity_type_agent_identity | value -> `Unrecognized value);
  }

and yojson_of_google_cloud_run_v2_workload_identity_config (value : google_cloud_run_v2_workload_identity_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("identity", (fun value -> `String value) field)) value.identity;
         Option.map (fun field -> ("identityCertificateEnabled", (fun value -> `Bool value) field)) value.identity_certificate_enabled;
         Option.map (fun field -> ("identityType", (fun value -> `String ((function `Identity_type_unspecified -> "IDENTITY_TYPE_UNSPECIFIED" | `Identity_type_service_account -> "IDENTITY_TYPE_SERVICE_ACCOUNT" | `Identity_type_agent_identity -> "IDENTITY_TYPE_AGENT_IDENTITY" | `Unrecognized value -> value) value)) field)) value.identity_type;
       ])

and google_devtools_cloudbuild_v1_approval_config_of_yojson json : google_devtools_cloudbuild_v1_approval_config =
  let open Yojson.Safe.Util in
  {
    approval_required = member "approvalRequired" json |> to_option to_bool;
  }

and yojson_of_google_devtools_cloudbuild_v1_approval_config (value : google_devtools_cloudbuild_v1_approval_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("approvalRequired", (fun value -> `Bool value) field)) value.approval_required;
       ])

and google_devtools_cloudbuild_v1_approval_result_of_yojson json : google_devtools_cloudbuild_v1_approval_result =
  let open Yojson.Safe.Util in
  {
    approval_time = member "approvalTime" json |> to_option to_string;
    approver_account = member "approverAccount" json |> to_option to_string;
    comment = member "comment" json |> to_option to_string;
    decision = member "decision" json |> to_option (fun json -> match to_string json with "DECISION_UNSPECIFIED" -> `Decision_unspecified | "APPROVED" -> `Approved | "REJECTED" -> `Rejected | value -> `Unrecognized value);
    url = member "url" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_approval_result (value : google_devtools_cloudbuild_v1_approval_result) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("approvalTime", (fun value -> `String value) field)) value.approval_time;
         Option.map (fun field -> ("approverAccount", (fun value -> `String value) field)) value.approver_account;
         Option.map (fun field -> ("comment", (fun value -> `String value) field)) value.comment;
         Option.map (fun field -> ("decision", (fun value -> `String ((function `Decision_unspecified -> "DECISION_UNSPECIFIED" | `Approved -> "APPROVED" | `Rejected -> "REJECTED" | `Unrecognized value -> value) value)) field)) value.decision;
         Option.map (fun field -> ("url", (fun value -> `String value) field)) value.url;
       ])

and google_devtools_cloudbuild_v1_artifact_objects_of_yojson json : google_devtools_cloudbuild_v1_artifact_objects =
  let open Yojson.Safe.Util in
  {
    location = member "location" json |> to_option to_string;
    paths = member "paths" json |> to_option (convert_each to_string);
    timing = member "timing" json |> to_option google_devtools_cloudbuild_v1_time_span_of_yojson;
  }

and yojson_of_google_devtools_cloudbuild_v1_artifact_objects (value : google_devtools_cloudbuild_v1_artifact_objects) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("paths", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.paths;
         Option.map (fun field -> ("timing", yojson_of_google_devtools_cloudbuild_v1_time_span field)) value.timing;
       ])

and google_devtools_cloudbuild_v1_artifacts_of_yojson json : google_devtools_cloudbuild_v1_artifacts =
  let open Yojson.Safe.Util in
  {
    generic_artifacts = member "genericArtifacts" json |> to_option (convert_each google_devtools_cloudbuild_v1_generic_artifact_of_yojson);
    go_modules = member "goModules" json |> to_option (convert_each google_devtools_cloudbuild_v1_go_module_of_yojson);
    images = member "images" json |> to_option (convert_each to_string);
    maven_artifacts = member "mavenArtifacts" json |> to_option (convert_each google_devtools_cloudbuild_v1_maven_artifact_of_yojson);
    npm_packages = member "npmPackages" json |> to_option (convert_each google_devtools_cloudbuild_v1_npm_package_of_yojson);
    objects = member "objects" json |> to_option google_devtools_cloudbuild_v1_artifact_objects_of_yojson;
    oci = member "oci" json |> to_option (convert_each google_devtools_cloudbuild_v1_oci_of_yojson);
    python_packages = member "pythonPackages" json |> to_option (convert_each google_devtools_cloudbuild_v1_python_package_of_yojson);
  }

and yojson_of_google_devtools_cloudbuild_v1_artifacts (value : google_devtools_cloudbuild_v1_artifacts) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("genericArtifacts", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_generic_artifact items)) field)) value.generic_artifacts;
         Option.map (fun field -> ("goModules", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_go_module items)) field)) value.go_modules;
         Option.map (fun field -> ("images", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.images;
         Option.map (fun field -> ("mavenArtifacts", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_maven_artifact items)) field)) value.maven_artifacts;
         Option.map (fun field -> ("npmPackages", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_npm_package items)) field)) value.npm_packages;
         Option.map (fun field -> ("objects", yojson_of_google_devtools_cloudbuild_v1_artifact_objects field)) value.objects;
         Option.map (fun field -> ("oci", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_oci items)) field)) value.oci;
         Option.map (fun field -> ("pythonPackages", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_python_package items)) field)) value.python_packages;
       ])

and google_devtools_cloudbuild_v1_build_of_yojson json : google_devtools_cloudbuild_v1_build =
  let open Yojson.Safe.Util in
  {
    approval = member "approval" json |> to_option google_devtools_cloudbuild_v1_build_approval_of_yojson;
    artifacts = member "artifacts" json |> to_option google_devtools_cloudbuild_v1_artifacts_of_yojson;
    available_secrets = member "availableSecrets" json |> to_option google_devtools_cloudbuild_v1_secrets_of_yojson;
    build_trigger_id = member "buildTriggerId" json |> to_option to_string;
    create_time = member "createTime" json |> to_option to_string;
    dependencies = member "dependencies" json |> to_option (convert_each google_devtools_cloudbuild_v1_dependency_of_yojson);
    failure_info = member "failureInfo" json |> to_option google_devtools_cloudbuild_v1_failure_info_of_yojson;
    finish_time = member "finishTime" json |> to_option to_string;
    git_config = member "gitConfig" json |> to_option google_devtools_cloudbuild_v1_git_config_of_yojson;
    id = member "id" json |> to_option to_string;
    images = member "images" json |> to_option (convert_each to_string);
    log_url = member "logUrl" json |> to_option to_string;
    logs_bucket = member "logsBucket" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    options = member "options" json |> to_option google_devtools_cloudbuild_v1_build_options_of_yojson;
    project_id = member "projectId" json |> to_option to_string;
    queue_ttl = member "queueTtl" json |> to_option to_string;
    results = member "results" json |> to_option google_devtools_cloudbuild_v1_results_of_yojson;
    secrets = member "secrets" json |> to_option (convert_each google_devtools_cloudbuild_v1_secret_of_yojson);
    service_account = member "serviceAccount" json |> to_option to_string;
    source = member "source" json |> to_option google_devtools_cloudbuild_v1_source_of_yojson;
    source_provenance = member "sourceProvenance" json |> to_option google_devtools_cloudbuild_v1_source_provenance_of_yojson;
    start_time = member "startTime" json |> to_option to_string;
    status = member "status" json |> to_option (fun json -> match to_string json with "STATUS_UNKNOWN" -> `Status_unknown | "PENDING" -> `Pending | "QUEUED" -> `Queued | "WORKING" -> `Working | "SUCCESS" -> `Success | "FAILURE" -> `Failure | "INTERNAL_ERROR" -> `Internal_error | "TIMEOUT" -> `Timeout | "CANCELLED" -> `Cancelled | "EXPIRED" -> `Expired | value -> `Unrecognized value);
    status_detail = member "statusDetail" json |> to_option to_string;
    steps = member "steps" json |> to_option (convert_each google_devtools_cloudbuild_v1_build_step_of_yojson);
    substitutions = member "substitutions" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    tags = member "tags" json |> to_option (convert_each to_string);
    timeout = member "timeout" json |> to_option to_string;
    timing = member "timing" json |> to_option (fun json -> List.map (fun (key, value) -> (key, google_devtools_cloudbuild_v1_time_span_of_yojson value)) (to_assoc json));
    warnings = member "warnings" json |> to_option (convert_each google_devtools_cloudbuild_v1_warning_of_yojson);
  }

and yojson_of_google_devtools_cloudbuild_v1_build (value : google_devtools_cloudbuild_v1_build) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("approval", yojson_of_google_devtools_cloudbuild_v1_build_approval field)) value.approval;
         Option.map (fun field -> ("artifacts", yojson_of_google_devtools_cloudbuild_v1_artifacts field)) value.artifacts;
         Option.map (fun field -> ("availableSecrets", yojson_of_google_devtools_cloudbuild_v1_secrets field)) value.available_secrets;
         Option.map (fun field -> ("buildTriggerId", (fun value -> `String value) field)) value.build_trigger_id;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("dependencies", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_dependency items)) field)) value.dependencies;
         Option.map (fun field -> ("failureInfo", yojson_of_google_devtools_cloudbuild_v1_failure_info field)) value.failure_info;
         Option.map (fun field -> ("finishTime", (fun value -> `String value) field)) value.finish_time;
         Option.map (fun field -> ("gitConfig", yojson_of_google_devtools_cloudbuild_v1_git_config field)) value.git_config;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("images", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.images;
         Option.map (fun field -> ("logUrl", (fun value -> `String value) field)) value.log_url;
         Option.map (fun field -> ("logsBucket", (fun value -> `String value) field)) value.logs_bucket;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("options", yojson_of_google_devtools_cloudbuild_v1_build_options field)) value.options;
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
         Option.map (fun field -> ("queueTtl", (fun value -> `String value) field)) value.queue_ttl;
         Option.map (fun field -> ("results", yojson_of_google_devtools_cloudbuild_v1_results field)) value.results;
         Option.map (fun field -> ("secrets", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_secret items)) field)) value.secrets;
         Option.map (fun field -> ("serviceAccount", (fun value -> `String value) field)) value.service_account;
         Option.map (fun field -> ("source", yojson_of_google_devtools_cloudbuild_v1_source field)) value.source;
         Option.map (fun field -> ("sourceProvenance", yojson_of_google_devtools_cloudbuild_v1_source_provenance field)) value.source_provenance;
         Option.map (fun field -> ("startTime", (fun value -> `String value) field)) value.start_time;
         Option.map (fun field -> ("status", (fun value -> `String ((function `Status_unknown -> "STATUS_UNKNOWN" | `Pending -> "PENDING" | `Queued -> "QUEUED" | `Working -> "WORKING" | `Success -> "SUCCESS" | `Failure -> "FAILURE" | `Internal_error -> "INTERNAL_ERROR" | `Timeout -> "TIMEOUT" | `Cancelled -> "CANCELLED" | `Expired -> "EXPIRED" | `Unrecognized value -> value) value)) field)) value.status;
         Option.map (fun field -> ("statusDetail", (fun value -> `String value) field)) value.status_detail;
         Option.map (fun field -> ("steps", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_build_step items)) field)) value.steps;
         Option.map (fun field -> ("substitutions", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.substitutions;
         Option.map (fun field -> ("tags", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.tags;
         Option.map (fun field -> ("timeout", (fun value -> `String value) field)) value.timeout;
         Option.map (fun field -> ("timing", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_google_devtools_cloudbuild_v1_time_span value)) members)) field)) value.timing;
         Option.map (fun field -> ("warnings", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_warning items)) field)) value.warnings;
       ])

and google_devtools_cloudbuild_v1_build_approval_of_yojson json : google_devtools_cloudbuild_v1_build_approval =
  let open Yojson.Safe.Util in
  {
    config = member "config" json |> to_option google_devtools_cloudbuild_v1_approval_config_of_yojson;
    result = member "result" json |> to_option google_devtools_cloudbuild_v1_approval_result_of_yojson;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "PENDING" -> `Pending | "APPROVED" -> `Approved | "REJECTED" -> `Rejected | "CANCELLED" -> `Cancelled | value -> `Unrecognized value);
  }

and yojson_of_google_devtools_cloudbuild_v1_build_approval (value : google_devtools_cloudbuild_v1_build_approval) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("config", yojson_of_google_devtools_cloudbuild_v1_approval_config field)) value.config;
         Option.map (fun field -> ("result", yojson_of_google_devtools_cloudbuild_v1_approval_result field)) value.result;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Pending -> "PENDING" | `Approved -> "APPROVED" | `Rejected -> "REJECTED" | `Cancelled -> "CANCELLED" | `Unrecognized value -> value) value)) field)) value.state;
       ])

and google_devtools_cloudbuild_v1_build_operation_metadata_of_yojson json : google_devtools_cloudbuild_v1_build_operation_metadata =
  let open Yojson.Safe.Util in
  {
    build = member "build" json |> to_option google_devtools_cloudbuild_v1_build_of_yojson;
  }

and yojson_of_google_devtools_cloudbuild_v1_build_operation_metadata (value : google_devtools_cloudbuild_v1_build_operation_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("build", yojson_of_google_devtools_cloudbuild_v1_build field)) value.build;
       ])

and google_devtools_cloudbuild_v1_build_options_of_yojson json : google_devtools_cloudbuild_v1_build_options =
  let open Yojson.Safe.Util in
  {
    automap_substitutions = member "automapSubstitutions" json |> to_option to_bool;
    default_logs_bucket_behavior = member "defaultLogsBucketBehavior" json |> to_option (fun json -> match to_string json with "DEFAULT_LOGS_BUCKET_BEHAVIOR_UNSPECIFIED" -> `Default_logs_bucket_behavior_unspecified | "REGIONAL_USER_OWNED_BUCKET" -> `Regional_user_owned_bucket | "LEGACY_BUCKET" -> `Legacy_bucket | value -> `Unrecognized value);
    disk_size_gb = member "diskSizeGb" json |> to_option to_string;
    dynamic_substitutions = member "dynamicSubstitutions" json |> to_option to_bool;
    enable_structured_logging = member "enableStructuredLogging" json |> to_option to_bool;
    env = member "env" json |> to_option (convert_each to_string);
    log_streaming_option = member "logStreamingOption" json |> to_option (fun json -> match to_string json with "STREAM_DEFAULT" -> `Stream_default | "STREAM_ON" -> `Stream_on | "STREAM_OFF" -> `Stream_off | value -> `Unrecognized value);
    logging = member "logging" json |> to_option (fun json -> match to_string json with "LOGGING_UNSPECIFIED" -> `Logging_unspecified | "LEGACY" -> `Legacy | "GCS_ONLY" -> `Gcs_only | "STACKDRIVER_ONLY" -> `Stackdriver_only | "CLOUD_LOGGING_ONLY" -> `Cloud_logging_only | "NONE" -> `None | value -> `Unrecognized value);
    machine_type = member "machineType" json |> to_option (fun json -> match to_string json with "UNSPECIFIED" -> `Unspecified | "N1_HIGHCPU_8" -> `N1_highcpu_8 | "N1_HIGHCPU_32" -> `N1_highcpu_32 | "E2_HIGHCPU_8" -> `E2_highcpu_8 | "E2_HIGHCPU_32" -> `E2_highcpu_32 | "E2_MEDIUM" -> `E2_medium | "E2_STANDARD_2" -> `E2_standard_2 | value -> `Unrecognized value);
    pool = member "pool" json |> to_option google_devtools_cloudbuild_v1_pool_option_of_yojson;
    pubsub_topic = member "pubsubTopic" json |> to_option to_string;
    ranked_machine_series = member "rankedMachineSeries" json |> to_option (convert_each (fun json -> match to_string json with "MACHINE_SERIES_UNSPECIFIED" -> `Machine_series_unspecified | "MACHINE_SERIES_E" -> `Machine_series_e | "MACHINE_SERIES_N" -> `Machine_series_n | "MACHINE_SERIES_C" -> `Machine_series_c | value -> `Unrecognized value));
    requested_verify_option = member "requestedVerifyOption" json |> to_option (fun json -> match to_string json with "NOT_VERIFIED" -> `Not_verified | "VERIFIED" -> `Verified | "BEST_EFFORT" -> `Best_effort | value -> `Unrecognized value);
    resolved_worker_release = member "resolvedWorkerRelease" json |> to_option to_string;
    secret_env = member "secretEnv" json |> to_option (convert_each to_string);
    source_provenance_hash = member "sourceProvenanceHash" json |> to_option (convert_each (fun json -> match to_string json with "NONE" -> `None | "SHA256" -> `Sha256 | "MD5" -> `Md5 | "GO_MODULE_H1" -> `Go_module_h1 | "SHA512" -> `Sha512 | "DIRSUM_SHA256" -> `Dirsum_sha256 | value -> `Unrecognized value));
    substitution_option = member "substitutionOption" json |> to_option (fun json -> match to_string json with "MUST_MATCH" -> `Must_match | "ALLOW_LOOSE" -> `Allow_loose | value -> `Unrecognized value);
    volumes = member "volumes" json |> to_option (convert_each google_devtools_cloudbuild_v1_volume_of_yojson);
    worker_pool = member "workerPool" json |> to_option to_string;
    worker_release = member "workerRelease" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_build_options (value : google_devtools_cloudbuild_v1_build_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("automapSubstitutions", (fun value -> `Bool value) field)) value.automap_substitutions;
         Option.map (fun field -> ("defaultLogsBucketBehavior", (fun value -> `String ((function `Default_logs_bucket_behavior_unspecified -> "DEFAULT_LOGS_BUCKET_BEHAVIOR_UNSPECIFIED" | `Regional_user_owned_bucket -> "REGIONAL_USER_OWNED_BUCKET" | `Legacy_bucket -> "LEGACY_BUCKET" | `Unrecognized value -> value) value)) field)) value.default_logs_bucket_behavior;
         Option.map (fun field -> ("diskSizeGb", (fun value -> `String value) field)) value.disk_size_gb;
         Option.map (fun field -> ("dynamicSubstitutions", (fun value -> `Bool value) field)) value.dynamic_substitutions;
         Option.map (fun field -> ("enableStructuredLogging", (fun value -> `Bool value) field)) value.enable_structured_logging;
         Option.map (fun field -> ("env", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.env;
         Option.map (fun field -> ("logStreamingOption", (fun value -> `String ((function `Stream_default -> "STREAM_DEFAULT" | `Stream_on -> "STREAM_ON" | `Stream_off -> "STREAM_OFF" | `Unrecognized value -> value) value)) field)) value.log_streaming_option;
         Option.map (fun field -> ("logging", (fun value -> `String ((function `Logging_unspecified -> "LOGGING_UNSPECIFIED" | `Legacy -> "LEGACY" | `Gcs_only -> "GCS_ONLY" | `Stackdriver_only -> "STACKDRIVER_ONLY" | `Cloud_logging_only -> "CLOUD_LOGGING_ONLY" | `None -> "NONE" | `Unrecognized value -> value) value)) field)) value.logging;
         Option.map (fun field -> ("machineType", (fun value -> `String ((function `Unspecified -> "UNSPECIFIED" | `N1_highcpu_8 -> "N1_HIGHCPU_8" | `N1_highcpu_32 -> "N1_HIGHCPU_32" | `E2_highcpu_8 -> "E2_HIGHCPU_8" | `E2_highcpu_32 -> "E2_HIGHCPU_32" | `E2_medium -> "E2_MEDIUM" | `E2_standard_2 -> "E2_STANDARD_2" | `Unrecognized value -> value) value)) field)) value.machine_type;
         Option.map (fun field -> ("pool", yojson_of_google_devtools_cloudbuild_v1_pool_option field)) value.pool;
         Option.map (fun field -> ("pubsubTopic", (fun value -> `String value) field)) value.pubsub_topic;
         Option.map (fun field -> ("rankedMachineSeries", (fun items -> `List (List.map (fun value -> `String ((function `Machine_series_unspecified -> "MACHINE_SERIES_UNSPECIFIED" | `Machine_series_e -> "MACHINE_SERIES_E" | `Machine_series_n -> "MACHINE_SERIES_N" | `Machine_series_c -> "MACHINE_SERIES_C" | `Unrecognized value -> value) value)) items)) field)) value.ranked_machine_series;
         Option.map (fun field -> ("requestedVerifyOption", (fun value -> `String ((function `Not_verified -> "NOT_VERIFIED" | `Verified -> "VERIFIED" | `Best_effort -> "BEST_EFFORT" | `Unrecognized value -> value) value)) field)) value.requested_verify_option;
         Option.map (fun field -> ("resolvedWorkerRelease", (fun value -> `String value) field)) value.resolved_worker_release;
         Option.map (fun field -> ("secretEnv", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.secret_env;
         Option.map (fun field -> ("sourceProvenanceHash", (fun items -> `List (List.map (fun value -> `String ((function `None -> "NONE" | `Sha256 -> "SHA256" | `Md5 -> "MD5" | `Go_module_h1 -> "GO_MODULE_H1" | `Sha512 -> "SHA512" | `Dirsum_sha256 -> "DIRSUM_SHA256" | `Unrecognized value -> value) value)) items)) field)) value.source_provenance_hash;
         Option.map (fun field -> ("substitutionOption", (fun value -> `String ((function `Must_match -> "MUST_MATCH" | `Allow_loose -> "ALLOW_LOOSE" | `Unrecognized value -> value) value)) field)) value.substitution_option;
         Option.map (fun field -> ("volumes", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_volume items)) field)) value.volumes;
         Option.map (fun field -> ("workerPool", (fun value -> `String value) field)) value.worker_pool;
         Option.map (fun field -> ("workerRelease", (fun value -> `String value) field)) value.worker_release;
       ])

and google_devtools_cloudbuild_v1_build_resource_usage_of_yojson json : google_devtools_cloudbuild_v1_build_resource_usage =
  let open Yojson.Safe.Util in
  {
    average_cpu_utilization = member "averageCpuUtilization" json |> to_option to_number;
    average_memory_utilization = member "averageMemoryUtilization" json |> to_option to_number;
    peak_cpu_utilization = member "peakCpuUtilization" json |> to_option to_number;
    peak_memory_utilization = member "peakMemoryUtilization" json |> to_option to_number;
    total_cpu_duration = member "totalCpuDuration" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_build_resource_usage (value : google_devtools_cloudbuild_v1_build_resource_usage) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("averageCpuUtilization", (fun value -> `Float value) field)) value.average_cpu_utilization;
         Option.map (fun field -> ("averageMemoryUtilization", (fun value -> `Float value) field)) value.average_memory_utilization;
         Option.map (fun field -> ("peakCpuUtilization", (fun value -> `Float value) field)) value.peak_cpu_utilization;
         Option.map (fun field -> ("peakMemoryUtilization", (fun value -> `Float value) field)) value.peak_memory_utilization;
         Option.map (fun field -> ("totalCpuDuration", (fun value -> `String value) field)) value.total_cpu_duration;
       ])

and google_devtools_cloudbuild_v1_build_step_of_yojson json : google_devtools_cloudbuild_v1_build_step =
  let open Yojson.Safe.Util in
  {
    allow_exit_codes = member "allowExitCodes" json |> to_option (convert_each to_int);
    allow_failure = member "allowFailure" json |> to_option to_bool;
    args = member "args" json |> to_option (convert_each to_string);
    automap_substitutions = member "automapSubstitutions" json |> to_option to_bool;
    dir = member "dir" json |> to_option to_string;
    entrypoint = member "entrypoint" json |> to_option to_string;
    env = member "env" json |> to_option (convert_each to_string);
    exit_code = member "exitCode" json |> to_option to_int;
    id = member "id" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    pull_timing = member "pullTiming" json |> to_option google_devtools_cloudbuild_v1_time_span_of_yojson;
    results = member "results" json |> to_option (convert_each google_devtools_cloudbuild_v1_step_result_of_yojson);
    script = member "script" json |> to_option to_string;
    secret_env = member "secretEnv" json |> to_option (convert_each to_string);
    status = member "status" json |> to_option (fun json -> match to_string json with "STATUS_UNKNOWN" -> `Status_unknown | "PENDING" -> `Pending | "QUEUED" -> `Queued | "WORKING" -> `Working | "SUCCESS" -> `Success | "FAILURE" -> `Failure | "INTERNAL_ERROR" -> `Internal_error | "TIMEOUT" -> `Timeout | "CANCELLED" -> `Cancelled | "EXPIRED" -> `Expired | value -> `Unrecognized value);
    timeout = member "timeout" json |> to_option to_string;
    timing = member "timing" json |> to_option google_devtools_cloudbuild_v1_time_span_of_yojson;
    volumes = member "volumes" json |> to_option (convert_each google_devtools_cloudbuild_v1_volume_of_yojson);
    wait_for = member "waitFor" json |> to_option (convert_each to_string);
  }

and yojson_of_google_devtools_cloudbuild_v1_build_step (value : google_devtools_cloudbuild_v1_build_step) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowExitCodes", (fun items -> `List (List.map (fun value -> `Int value) items)) field)) value.allow_exit_codes;
         Option.map (fun field -> ("allowFailure", (fun value -> `Bool value) field)) value.allow_failure;
         Option.map (fun field -> ("args", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.args;
         Option.map (fun field -> ("automapSubstitutions", (fun value -> `Bool value) field)) value.automap_substitutions;
         Option.map (fun field -> ("dir", (fun value -> `String value) field)) value.dir;
         Option.map (fun field -> ("entrypoint", (fun value -> `String value) field)) value.entrypoint;
         Option.map (fun field -> ("env", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.env;
         Option.map (fun field -> ("exitCode", (fun value -> `Int value) field)) value.exit_code;
         Option.map (fun field -> ("id", (fun value -> `String value) field)) value.id;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("pullTiming", yojson_of_google_devtools_cloudbuild_v1_time_span field)) value.pull_timing;
         Option.map (fun field -> ("results", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_step_result items)) field)) value.results;
         Option.map (fun field -> ("script", (fun value -> `String value) field)) value.script;
         Option.map (fun field -> ("secretEnv", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.secret_env;
         Option.map (fun field -> ("status", (fun value -> `String ((function `Status_unknown -> "STATUS_UNKNOWN" | `Pending -> "PENDING" | `Queued -> "QUEUED" | `Working -> "WORKING" | `Success -> "SUCCESS" | `Failure -> "FAILURE" | `Internal_error -> "INTERNAL_ERROR" | `Timeout -> "TIMEOUT" | `Cancelled -> "CANCELLED" | `Expired -> "EXPIRED" | `Unrecognized value -> value) value)) field)) value.status;
         Option.map (fun field -> ("timeout", (fun value -> `String value) field)) value.timeout;
         Option.map (fun field -> ("timing", yojson_of_google_devtools_cloudbuild_v1_time_span field)) value.timing;
         Option.map (fun field -> ("volumes", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_volume items)) field)) value.volumes;
         Option.map (fun field -> ("waitFor", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.wait_for;
       ])

and google_devtools_cloudbuild_v1_build_step_results_of_yojson json : google_devtools_cloudbuild_v1_build_step_results =
  let open Yojson.Safe.Util in
  {
    results = member "results" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
  }

and yojson_of_google_devtools_cloudbuild_v1_build_step_results (value : google_devtools_cloudbuild_v1_build_step_results) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("results", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.results;
       ])

and google_devtools_cloudbuild_v1_built_image_of_yojson json : google_devtools_cloudbuild_v1_built_image =
  let open Yojson.Safe.Util in
  {
    artifact_registry_package = member "artifactRegistryPackage" json |> to_option to_string;
    digest = member "digest" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    oci_media_type = member "ociMediaType" json |> to_option (fun json -> match to_string json with "OCI_MEDIA_TYPE_UNSPECIFIED" -> `Oci_media_type_unspecified | "IMAGE_MANIFEST" -> `Image_manifest | "IMAGE_INDEX" -> `Image_index | value -> `Unrecognized value);
    push_timing = member "pushTiming" json |> to_option google_devtools_cloudbuild_v1_time_span_of_yojson;
  }

and yojson_of_google_devtools_cloudbuild_v1_built_image (value : google_devtools_cloudbuild_v1_built_image) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("artifactRegistryPackage", (fun value -> `String value) field)) value.artifact_registry_package;
         Option.map (fun field -> ("digest", (fun value -> `String value) field)) value.digest;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("ociMediaType", (fun value -> `String ((function `Oci_media_type_unspecified -> "OCI_MEDIA_TYPE_UNSPECIFIED" | `Image_manifest -> "IMAGE_MANIFEST" | `Image_index -> "IMAGE_INDEX" | `Unrecognized value -> value) value)) field)) value.oci_media_type;
         Option.map (fun field -> ("pushTiming", yojson_of_google_devtools_cloudbuild_v1_time_span field)) value.push_timing;
       ])

and google_devtools_cloudbuild_v1_connected_repository_of_yojson json : google_devtools_cloudbuild_v1_connected_repository =
  let open Yojson.Safe.Util in
  {
    dir = member "dir" json |> to_option to_string;
    repository = member "repository" json |> to_option to_string;
    revision = member "revision" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_connected_repository (value : google_devtools_cloudbuild_v1_connected_repository) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dir", (fun value -> `String value) field)) value.dir;
         Option.map (fun field -> ("repository", (fun value -> `String value) field)) value.repository;
         Option.map (fun field -> ("revision", (fun value -> `String value) field)) value.revision;
       ])

and google_devtools_cloudbuild_v1_dependency_of_yojson json : google_devtools_cloudbuild_v1_dependency =
  let open Yojson.Safe.Util in
  {
    empty = member "empty" json |> to_option to_bool;
    generic_artifact = member "genericArtifact" json |> to_option google_devtools_cloudbuild_v1_generic_artifact_dependency_of_yojson;
    git_source = member "gitSource" json |> to_option google_devtools_cloudbuild_v1_git_source_dependency_of_yojson;
  }

and yojson_of_google_devtools_cloudbuild_v1_dependency (value : google_devtools_cloudbuild_v1_dependency) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("empty", (fun value -> `Bool value) field)) value.empty;
         Option.map (fun field -> ("genericArtifact", yojson_of_google_devtools_cloudbuild_v1_generic_artifact_dependency field)) value.generic_artifact;
         Option.map (fun field -> ("gitSource", yojson_of_google_devtools_cloudbuild_v1_git_source_dependency field)) value.git_source;
       ])

and google_devtools_cloudbuild_v1_developer_connect_config_of_yojson json : google_devtools_cloudbuild_v1_developer_connect_config =
  let open Yojson.Safe.Util in
  {
    dir = member "dir" json |> to_option to_string;
    git_repository_link = member "gitRepositoryLink" json |> to_option to_string;
    revision = member "revision" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_developer_connect_config (value : google_devtools_cloudbuild_v1_developer_connect_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dir", (fun value -> `String value) field)) value.dir;
         Option.map (fun field -> ("gitRepositoryLink", (fun value -> `String value) field)) value.git_repository_link;
         Option.map (fun field -> ("revision", (fun value -> `String value) field)) value.revision;
       ])

and google_devtools_cloudbuild_v1_failure_info_of_yojson json : google_devtools_cloudbuild_v1_failure_info =
  let open Yojson.Safe.Util in
  {
    detail = member "detail" json |> to_option to_string;
    type_ = member "type" json |> to_option (fun json -> match to_string json with "FAILURE_TYPE_UNSPECIFIED" -> `Failure_type_unspecified | "PUSH_FAILED" -> `Push_failed | "PUSH_IMAGE_NOT_FOUND" -> `Push_image_not_found | "PUSH_NOT_AUTHORIZED" -> `Push_not_authorized | "LOGGING_FAILURE" -> `Logging_failure | "USER_BUILD_STEP" -> `User_build_step | "FETCH_SOURCE_FAILED" -> `Fetch_source_failed | value -> `Unrecognized value);
  }

and yojson_of_google_devtools_cloudbuild_v1_failure_info (value : google_devtools_cloudbuild_v1_failure_info) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("detail", (fun value -> `String value) field)) value.detail;
         Option.map (fun field -> ("type", (fun value -> `String ((function `Failure_type_unspecified -> "FAILURE_TYPE_UNSPECIFIED" | `Push_failed -> "PUSH_FAILED" | `Push_image_not_found -> "PUSH_IMAGE_NOT_FOUND" | `Push_not_authorized -> "PUSH_NOT_AUTHORIZED" | `Logging_failure -> "LOGGING_FAILURE" | `User_build_step -> "USER_BUILD_STEP" | `Fetch_source_failed -> "FETCH_SOURCE_FAILED" | `Unrecognized value -> value) value)) field)) value.type_;
       ])

and google_devtools_cloudbuild_v1_file_hashes_of_yojson json : google_devtools_cloudbuild_v1_file_hashes =
  let open Yojson.Safe.Util in
  {
    file_hash = member "fileHash" json |> to_option (convert_each google_devtools_cloudbuild_v1_hash_of_yojson);
  }

and yojson_of_google_devtools_cloudbuild_v1_file_hashes (value : google_devtools_cloudbuild_v1_file_hashes) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("fileHash", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_hash items)) field)) value.file_hash;
       ])

and google_devtools_cloudbuild_v1_generic_artifact_of_yojson json : google_devtools_cloudbuild_v1_generic_artifact =
  let open Yojson.Safe.Util in
  {
    folder = member "folder" json |> to_option to_string;
    registry_path = member "registryPath" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_generic_artifact (value : google_devtools_cloudbuild_v1_generic_artifact) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("folder", (fun value -> `String value) field)) value.folder;
         Option.map (fun field -> ("registryPath", (fun value -> `String value) field)) value.registry_path;
       ])

and google_devtools_cloudbuild_v1_generic_artifact_dependency_of_yojson json : google_devtools_cloudbuild_v1_generic_artifact_dependency =
  let open Yojson.Safe.Util in
  {
    dest_path = member "destPath" json |> to_option to_string;
    resource = member "resource" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_generic_artifact_dependency (value : google_devtools_cloudbuild_v1_generic_artifact_dependency) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("destPath", (fun value -> `String value) field)) value.dest_path;
         Option.map (fun field -> ("resource", (fun value -> `String value) field)) value.resource;
       ])

and google_devtools_cloudbuild_v1_git_config_of_yojson json : google_devtools_cloudbuild_v1_git_config =
  let open Yojson.Safe.Util in
  {
    http = member "http" json |> to_option google_devtools_cloudbuild_v1_http_config_of_yojson;
  }

and yojson_of_google_devtools_cloudbuild_v1_git_config (value : google_devtools_cloudbuild_v1_git_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("http", yojson_of_google_devtools_cloudbuild_v1_http_config field)) value.http;
       ])

and google_devtools_cloudbuild_v1_git_source_of_yojson json : google_devtools_cloudbuild_v1_git_source =
  let open Yojson.Safe.Util in
  {
    dir = member "dir" json |> to_option to_string;
    revision = member "revision" json |> to_option to_string;
    url = member "url" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_git_source (value : google_devtools_cloudbuild_v1_git_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("dir", (fun value -> `String value) field)) value.dir;
         Option.map (fun field -> ("revision", (fun value -> `String value) field)) value.revision;
         Option.map (fun field -> ("url", (fun value -> `String value) field)) value.url;
       ])

and google_devtools_cloudbuild_v1_git_source_dependency_of_yojson json : google_devtools_cloudbuild_v1_git_source_dependency =
  let open Yojson.Safe.Util in
  {
    depth = member "depth" json |> to_option to_string;
    dest_path = member "destPath" json |> to_option to_string;
    fetch_tags = member "fetchTags" json |> to_option to_bool;
    recurse_submodules = member "recurseSubmodules" json |> to_option to_bool;
    repository = member "repository" json |> to_option google_devtools_cloudbuild_v1_git_source_repository_of_yojson;
    revision = member "revision" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_git_source_dependency (value : google_devtools_cloudbuild_v1_git_source_dependency) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("depth", (fun value -> `String value) field)) value.depth;
         Option.map (fun field -> ("destPath", (fun value -> `String value) field)) value.dest_path;
         Option.map (fun field -> ("fetchTags", (fun value -> `Bool value) field)) value.fetch_tags;
         Option.map (fun field -> ("recurseSubmodules", (fun value -> `Bool value) field)) value.recurse_submodules;
         Option.map (fun field -> ("repository", yojson_of_google_devtools_cloudbuild_v1_git_source_repository field)) value.repository;
         Option.map (fun field -> ("revision", (fun value -> `String value) field)) value.revision;
       ])

and google_devtools_cloudbuild_v1_git_source_repository_of_yojson json : google_devtools_cloudbuild_v1_git_source_repository =
  let open Yojson.Safe.Util in
  {
    developer_connect = member "developerConnect" json |> to_option to_string;
    url = member "url" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_git_source_repository (value : google_devtools_cloudbuild_v1_git_source_repository) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("developerConnect", (fun value -> `String value) field)) value.developer_connect;
         Option.map (fun field -> ("url", (fun value -> `String value) field)) value.url;
       ])

and google_devtools_cloudbuild_v1_go_module_of_yojson json : google_devtools_cloudbuild_v1_go_module =
  let open Yojson.Safe.Util in
  {
    module_path = member "modulePath" json |> to_option to_string;
    module_version = member "moduleVersion" json |> to_option to_string;
    repository_location = member "repositoryLocation" json |> to_option to_string;
    repository_name = member "repositoryName" json |> to_option to_string;
    repository_project_id = member "repositoryProjectId" json |> to_option to_string;
    source_path = member "sourcePath" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_go_module (value : google_devtools_cloudbuild_v1_go_module) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("modulePath", (fun value -> `String value) field)) value.module_path;
         Option.map (fun field -> ("moduleVersion", (fun value -> `String value) field)) value.module_version;
         Option.map (fun field -> ("repositoryLocation", (fun value -> `String value) field)) value.repository_location;
         Option.map (fun field -> ("repositoryName", (fun value -> `String value) field)) value.repository_name;
         Option.map (fun field -> ("repositoryProjectId", (fun value -> `String value) field)) value.repository_project_id;
         Option.map (fun field -> ("sourcePath", (fun value -> `String value) field)) value.source_path;
       ])

and google_devtools_cloudbuild_v1_hash_of_yojson json : google_devtools_cloudbuild_v1_hash =
  let open Yojson.Safe.Util in
  {
    type_ = member "type" json |> to_option (fun json -> match to_string json with "NONE" -> `None | "SHA256" -> `Sha256 | "MD5" -> `Md5 | "GO_MODULE_H1" -> `Go_module_h1 | "SHA512" -> `Sha512 | "DIRSUM_SHA256" -> `Dirsum_sha256 | value -> `Unrecognized value);
    value = member "value" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_hash (value : google_devtools_cloudbuild_v1_hash) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("type", (fun value -> `String ((function `None -> "NONE" | `Sha256 -> "SHA256" | `Md5 -> "MD5" | `Go_module_h1 -> "GO_MODULE_H1" | `Sha512 -> "SHA512" | `Dirsum_sha256 -> "DIRSUM_SHA256" | `Unrecognized value -> value) value)) field)) value.type_;
         Option.map (fun field -> ("value", (fun value -> `String value) field)) value.value;
       ])

and google_devtools_cloudbuild_v1_http_config_of_yojson json : google_devtools_cloudbuild_v1_http_config =
  let open Yojson.Safe.Util in
  {
    proxy_secret_version_name = member "proxySecretVersionName" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_http_config (value : google_devtools_cloudbuild_v1_http_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("proxySecretVersionName", (fun value -> `String value) field)) value.proxy_secret_version_name;
       ])

and google_devtools_cloudbuild_v1_inline_secret_of_yojson json : google_devtools_cloudbuild_v1_inline_secret =
  let open Yojson.Safe.Util in
  {
    env_map = member "envMap" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    kms_key_name = member "kmsKeyName" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_inline_secret (value : google_devtools_cloudbuild_v1_inline_secret) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("envMap", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.env_map;
         Option.map (fun field -> ("kmsKeyName", (fun value -> `String value) field)) value.kms_key_name;
       ])

and google_devtools_cloudbuild_v1_maven_artifact_of_yojson json : google_devtools_cloudbuild_v1_maven_artifact =
  let open Yojson.Safe.Util in
  {
    artifact_id = member "artifactId" json |> to_option to_string;
    deploy_folder = member "deployFolder" json |> to_option to_string;
    group_id = member "groupId" json |> to_option to_string;
    path = member "path" json |> to_option to_string;
    repository = member "repository" json |> to_option to_string;
    version = member "version" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_maven_artifact (value : google_devtools_cloudbuild_v1_maven_artifact) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("artifactId", (fun value -> `String value) field)) value.artifact_id;
         Option.map (fun field -> ("deployFolder", (fun value -> `String value) field)) value.deploy_folder;
         Option.map (fun field -> ("groupId", (fun value -> `String value) field)) value.group_id;
         Option.map (fun field -> ("path", (fun value -> `String value) field)) value.path;
         Option.map (fun field -> ("repository", (fun value -> `String value) field)) value.repository;
         Option.map (fun field -> ("version", (fun value -> `String value) field)) value.version;
       ])

and google_devtools_cloudbuild_v1_npm_package_of_yojson json : google_devtools_cloudbuild_v1_npm_package =
  let open Yojson.Safe.Util in
  {
    package_path = member "packagePath" json |> to_option to_string;
    repository = member "repository" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_npm_package (value : google_devtools_cloudbuild_v1_npm_package) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("packagePath", (fun value -> `String value) field)) value.package_path;
         Option.map (fun field -> ("repository", (fun value -> `String value) field)) value.repository;
       ])

and google_devtools_cloudbuild_v1_oci_of_yojson json : google_devtools_cloudbuild_v1_oci =
  let open Yojson.Safe.Util in
  {
    file = member "file" json |> to_option to_string;
    registry_path = member "registryPath" json |> to_option to_string;
    tags = member "tags" json |> to_option (convert_each to_string);
  }

and yojson_of_google_devtools_cloudbuild_v1_oci (value : google_devtools_cloudbuild_v1_oci) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("file", (fun value -> `String value) field)) value.file;
         Option.map (fun field -> ("registryPath", (fun value -> `String value) field)) value.registry_path;
         Option.map (fun field -> ("tags", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.tags;
       ])

and google_devtools_cloudbuild_v1_pool_option_of_yojson json : google_devtools_cloudbuild_v1_pool_option =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    resolved_worker_release = member "resolvedWorkerRelease" json |> to_option to_string;
    worker_release = member "workerRelease" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_pool_option (value : google_devtools_cloudbuild_v1_pool_option) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("resolvedWorkerRelease", (fun value -> `String value) field)) value.resolved_worker_release;
         Option.map (fun field -> ("workerRelease", (fun value -> `String value) field)) value.worker_release;
       ])

and google_devtools_cloudbuild_v1_python_package_of_yojson json : google_devtools_cloudbuild_v1_python_package =
  let open Yojson.Safe.Util in
  {
    paths = member "paths" json |> to_option (convert_each to_string);
    repository = member "repository" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_python_package (value : google_devtools_cloudbuild_v1_python_package) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("paths", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.paths;
         Option.map (fun field -> ("repository", (fun value -> `String value) field)) value.repository;
       ])

and google_devtools_cloudbuild_v1_repo_source_of_yojson json : google_devtools_cloudbuild_v1_repo_source =
  let open Yojson.Safe.Util in
  {
    branch_name = member "branchName" json |> to_option to_string;
    commit_sha = member "commitSha" json |> to_option to_string;
    dir = member "dir" json |> to_option to_string;
    invert_regex = member "invertRegex" json |> to_option to_bool;
    project_id = member "projectId" json |> to_option to_string;
    repo_name = member "repoName" json |> to_option to_string;
    substitutions = member "substitutions" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    tag_name = member "tagName" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_repo_source (value : google_devtools_cloudbuild_v1_repo_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("branchName", (fun value -> `String value) field)) value.branch_name;
         Option.map (fun field -> ("commitSha", (fun value -> `String value) field)) value.commit_sha;
         Option.map (fun field -> ("dir", (fun value -> `String value) field)) value.dir;
         Option.map (fun field -> ("invertRegex", (fun value -> `Bool value) field)) value.invert_regex;
         Option.map (fun field -> ("projectId", (fun value -> `String value) field)) value.project_id;
         Option.map (fun field -> ("repoName", (fun value -> `String value) field)) value.repo_name;
         Option.map (fun field -> ("substitutions", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.substitutions;
         Option.map (fun field -> ("tagName", (fun value -> `String value) field)) value.tag_name;
       ])

and google_devtools_cloudbuild_v1_results_of_yojson json : google_devtools_cloudbuild_v1_results =
  let open Yojson.Safe.Util in
  {
    artifact_manifest = member "artifactManifest" json |> to_option to_string;
    artifact_timing = member "artifactTiming" json |> to_option google_devtools_cloudbuild_v1_time_span_of_yojson;
    build_step_images = member "buildStepImages" json |> to_option (convert_each to_string);
    build_step_outputs = member "buildStepOutputs" json |> to_option (convert_each to_string);
    build_step_results = member "buildStepResults" json |> to_option (fun json -> List.map (fun (key, value) -> (key, google_devtools_cloudbuild_v1_build_step_results_of_yojson value)) (to_assoc json));
    generic_artifacts = member "genericArtifacts" json |> to_option (convert_each google_devtools_cloudbuild_v1_uploaded_generic_artifact_of_yojson);
    go_modules = member "goModules" json |> to_option (convert_each google_devtools_cloudbuild_v1_uploaded_go_module_of_yojson);
    images = member "images" json |> to_option (convert_each google_devtools_cloudbuild_v1_built_image_of_yojson);
    maven_artifacts = member "mavenArtifacts" json |> to_option (convert_each google_devtools_cloudbuild_v1_uploaded_maven_artifact_of_yojson);
    npm_packages = member "npmPackages" json |> to_option (convert_each google_devtools_cloudbuild_v1_uploaded_npm_package_of_yojson);
    num_artifacts = member "numArtifacts" json |> to_option to_string;
    python_packages = member "pythonPackages" json |> to_option (convert_each google_devtools_cloudbuild_v1_uploaded_python_package_of_yojson);
    resource_usage = member "resourceUsage" json |> to_option google_devtools_cloudbuild_v1_build_resource_usage_of_yojson;
  }

and yojson_of_google_devtools_cloudbuild_v1_results (value : google_devtools_cloudbuild_v1_results) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("artifactManifest", (fun value -> `String value) field)) value.artifact_manifest;
         Option.map (fun field -> ("artifactTiming", yojson_of_google_devtools_cloudbuild_v1_time_span field)) value.artifact_timing;
         Option.map (fun field -> ("buildStepImages", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.build_step_images;
         Option.map (fun field -> ("buildStepOutputs", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.build_step_outputs;
         Option.map (fun field -> ("buildStepResults", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_google_devtools_cloudbuild_v1_build_step_results value)) members)) field)) value.build_step_results;
         Option.map (fun field -> ("genericArtifacts", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_uploaded_generic_artifact items)) field)) value.generic_artifacts;
         Option.map (fun field -> ("goModules", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_uploaded_go_module items)) field)) value.go_modules;
         Option.map (fun field -> ("images", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_built_image items)) field)) value.images;
         Option.map (fun field -> ("mavenArtifacts", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_uploaded_maven_artifact items)) field)) value.maven_artifacts;
         Option.map (fun field -> ("npmPackages", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_uploaded_npm_package items)) field)) value.npm_packages;
         Option.map (fun field -> ("numArtifacts", (fun value -> `String value) field)) value.num_artifacts;
         Option.map (fun field -> ("pythonPackages", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_uploaded_python_package items)) field)) value.python_packages;
         Option.map (fun field -> ("resourceUsage", yojson_of_google_devtools_cloudbuild_v1_build_resource_usage field)) value.resource_usage;
       ])

and google_devtools_cloudbuild_v1_secret_of_yojson json : google_devtools_cloudbuild_v1_secret =
  let open Yojson.Safe.Util in
  {
    kms_key_name = member "kmsKeyName" json |> to_option to_string;
    secret_env = member "secretEnv" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
  }

and yojson_of_google_devtools_cloudbuild_v1_secret (value : google_devtools_cloudbuild_v1_secret) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("kmsKeyName", (fun value -> `String value) field)) value.kms_key_name;
         Option.map (fun field -> ("secretEnv", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.secret_env;
       ])

and google_devtools_cloudbuild_v1_secret_manager_secret_of_yojson json : google_devtools_cloudbuild_v1_secret_manager_secret =
  let open Yojson.Safe.Util in
  {
    env = member "env" json |> to_option to_string;
    version_name = member "versionName" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_secret_manager_secret (value : google_devtools_cloudbuild_v1_secret_manager_secret) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("env", (fun value -> `String value) field)) value.env;
         Option.map (fun field -> ("versionName", (fun value -> `String value) field)) value.version_name;
       ])

and google_devtools_cloudbuild_v1_secrets_of_yojson json : google_devtools_cloudbuild_v1_secrets =
  let open Yojson.Safe.Util in
  {
    inline = member "inline" json |> to_option (convert_each google_devtools_cloudbuild_v1_inline_secret_of_yojson);
    secret_manager = member "secretManager" json |> to_option (convert_each google_devtools_cloudbuild_v1_secret_manager_secret_of_yojson);
  }

and yojson_of_google_devtools_cloudbuild_v1_secrets (value : google_devtools_cloudbuild_v1_secrets) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("inline", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_inline_secret items)) field)) value.inline;
         Option.map (fun field -> ("secretManager", (fun items -> `List (List.map yojson_of_google_devtools_cloudbuild_v1_secret_manager_secret items)) field)) value.secret_manager;
       ])

and google_devtools_cloudbuild_v1_source_of_yojson json : google_devtools_cloudbuild_v1_source =
  let open Yojson.Safe.Util in
  {
    connected_repository = member "connectedRepository" json |> to_option google_devtools_cloudbuild_v1_connected_repository_of_yojson;
    developer_connect_config = member "developerConnectConfig" json |> to_option google_devtools_cloudbuild_v1_developer_connect_config_of_yojson;
    git_source = member "gitSource" json |> to_option google_devtools_cloudbuild_v1_git_source_of_yojson;
    repo_source = member "repoSource" json |> to_option google_devtools_cloudbuild_v1_repo_source_of_yojson;
    storage_source = member "storageSource" json |> to_option google_devtools_cloudbuild_v1_storage_source_of_yojson;
    storage_source_manifest = member "storageSourceManifest" json |> to_option google_devtools_cloudbuild_v1_storage_source_manifest_of_yojson;
  }

and yojson_of_google_devtools_cloudbuild_v1_source (value : google_devtools_cloudbuild_v1_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("connectedRepository", yojson_of_google_devtools_cloudbuild_v1_connected_repository field)) value.connected_repository;
         Option.map (fun field -> ("developerConnectConfig", yojson_of_google_devtools_cloudbuild_v1_developer_connect_config field)) value.developer_connect_config;
         Option.map (fun field -> ("gitSource", yojson_of_google_devtools_cloudbuild_v1_git_source field)) value.git_source;
         Option.map (fun field -> ("repoSource", yojson_of_google_devtools_cloudbuild_v1_repo_source field)) value.repo_source;
         Option.map (fun field -> ("storageSource", yojson_of_google_devtools_cloudbuild_v1_storage_source field)) value.storage_source;
         Option.map (fun field -> ("storageSourceManifest", yojson_of_google_devtools_cloudbuild_v1_storage_source_manifest field)) value.storage_source_manifest;
       ])

and google_devtools_cloudbuild_v1_source_provenance_of_yojson json : google_devtools_cloudbuild_v1_source_provenance =
  let open Yojson.Safe.Util in
  {
    file_hashes = member "fileHashes" json |> to_option (fun json -> List.map (fun (key, value) -> (key, google_devtools_cloudbuild_v1_file_hashes_of_yojson value)) (to_assoc json));
    resolved_connected_repository = member "resolvedConnectedRepository" json |> to_option google_devtools_cloudbuild_v1_connected_repository_of_yojson;
    resolved_git_source = member "resolvedGitSource" json |> to_option google_devtools_cloudbuild_v1_git_source_of_yojson;
    resolved_repo_source = member "resolvedRepoSource" json |> to_option google_devtools_cloudbuild_v1_repo_source_of_yojson;
    resolved_storage_source = member "resolvedStorageSource" json |> to_option google_devtools_cloudbuild_v1_storage_source_of_yojson;
    resolved_storage_source_manifest = member "resolvedStorageSourceManifest" json |> to_option google_devtools_cloudbuild_v1_storage_source_manifest_of_yojson;
  }

and yojson_of_google_devtools_cloudbuild_v1_source_provenance (value : google_devtools_cloudbuild_v1_source_provenance) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("fileHashes", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_google_devtools_cloudbuild_v1_file_hashes value)) members)) field)) value.file_hashes;
         Option.map (fun field -> ("resolvedConnectedRepository", yojson_of_google_devtools_cloudbuild_v1_connected_repository field)) value.resolved_connected_repository;
         Option.map (fun field -> ("resolvedGitSource", yojson_of_google_devtools_cloudbuild_v1_git_source field)) value.resolved_git_source;
         Option.map (fun field -> ("resolvedRepoSource", yojson_of_google_devtools_cloudbuild_v1_repo_source field)) value.resolved_repo_source;
         Option.map (fun field -> ("resolvedStorageSource", yojson_of_google_devtools_cloudbuild_v1_storage_source field)) value.resolved_storage_source;
         Option.map (fun field -> ("resolvedStorageSourceManifest", yojson_of_google_devtools_cloudbuild_v1_storage_source_manifest field)) value.resolved_storage_source_manifest;
       ])

and google_devtools_cloudbuild_v1_step_result_of_yojson json : google_devtools_cloudbuild_v1_step_result =
  let open Yojson.Safe.Util in
  {
    attestation_content = member "attestationContent" json |> to_option to_string;
    attestation_type = member "attestationType" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_step_result (value : google_devtools_cloudbuild_v1_step_result) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("attestationContent", (fun value -> `String value) field)) value.attestation_content;
         Option.map (fun field -> ("attestationType", (fun value -> `String value) field)) value.attestation_type;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and google_devtools_cloudbuild_v1_storage_source_of_yojson json : google_devtools_cloudbuild_v1_storage_source =
  let open Yojson.Safe.Util in
  {
    bucket = member "bucket" json |> to_option to_string;
    generation = member "generation" json |> to_option to_string;
    object_ = member "object" json |> to_option to_string;
    source_fetcher = member "sourceFetcher" json |> to_option (fun json -> match to_string json with "SOURCE_FETCHER_UNSPECIFIED" -> `Source_fetcher_unspecified | "GSUTIL" -> `Gsutil | "GCS_FETCHER" -> `Gcs_fetcher | value -> `Unrecognized value);
  }

and yojson_of_google_devtools_cloudbuild_v1_storage_source (value : google_devtools_cloudbuild_v1_storage_source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("object", (fun value -> `String value) field)) value.object_;
         Option.map (fun field -> ("sourceFetcher", (fun value -> `String ((function `Source_fetcher_unspecified -> "SOURCE_FETCHER_UNSPECIFIED" | `Gsutil -> "GSUTIL" | `Gcs_fetcher -> "GCS_FETCHER" | `Unrecognized value -> value) value)) field)) value.source_fetcher;
       ])

and google_devtools_cloudbuild_v1_storage_source_manifest_of_yojson json : google_devtools_cloudbuild_v1_storage_source_manifest =
  let open Yojson.Safe.Util in
  {
    bucket = member "bucket" json |> to_option to_string;
    generation = member "generation" json |> to_option to_string;
    object_ = member "object" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_storage_source_manifest (value : google_devtools_cloudbuild_v1_storage_source_manifest) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("bucket", (fun value -> `String value) field)) value.bucket;
         Option.map (fun field -> ("generation", (fun value -> `String value) field)) value.generation;
         Option.map (fun field -> ("object", (fun value -> `String value) field)) value.object_;
       ])

and google_devtools_cloudbuild_v1_time_span_of_yojson json : google_devtools_cloudbuild_v1_time_span =
  let open Yojson.Safe.Util in
  {
    end_time = member "endTime" json |> to_option to_string;
    start_time = member "startTime" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_time_span (value : google_devtools_cloudbuild_v1_time_span) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("endTime", (fun value -> `String value) field)) value.end_time;
         Option.map (fun field -> ("startTime", (fun value -> `String value) field)) value.start_time;
       ])

and google_devtools_cloudbuild_v1_uploaded_generic_artifact_of_yojson json : google_devtools_cloudbuild_v1_uploaded_generic_artifact =
  let open Yojson.Safe.Util in
  {
    artifact_fingerprint = member "artifactFingerprint" json |> to_option google_devtools_cloudbuild_v1_file_hashes_of_yojson;
    artifact_registry_package = member "artifactRegistryPackage" json |> to_option to_string;
    file_hashes = member "fileHashes" json |> to_option (fun json -> List.map (fun (key, value) -> (key, google_devtools_cloudbuild_v1_file_hashes_of_yojson value)) (to_assoc json));
    push_timing = member "pushTiming" json |> to_option google_devtools_cloudbuild_v1_time_span_of_yojson;
    uri = member "uri" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_uploaded_generic_artifact (value : google_devtools_cloudbuild_v1_uploaded_generic_artifact) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("artifactFingerprint", yojson_of_google_devtools_cloudbuild_v1_file_hashes field)) value.artifact_fingerprint;
         Option.map (fun field -> ("artifactRegistryPackage", (fun value -> `String value) field)) value.artifact_registry_package;
         Option.map (fun field -> ("fileHashes", (fun members -> `Assoc (List.map (fun (key, value) -> (key, yojson_of_google_devtools_cloudbuild_v1_file_hashes value)) members)) field)) value.file_hashes;
         Option.map (fun field -> ("pushTiming", yojson_of_google_devtools_cloudbuild_v1_time_span field)) value.push_timing;
         Option.map (fun field -> ("uri", (fun value -> `String value) field)) value.uri;
       ])

and google_devtools_cloudbuild_v1_uploaded_go_module_of_yojson json : google_devtools_cloudbuild_v1_uploaded_go_module =
  let open Yojson.Safe.Util in
  {
    artifact_registry_package = member "artifactRegistryPackage" json |> to_option to_string;
    file_hashes = member "fileHashes" json |> to_option google_devtools_cloudbuild_v1_file_hashes_of_yojson;
    push_timing = member "pushTiming" json |> to_option google_devtools_cloudbuild_v1_time_span_of_yojson;
    uri = member "uri" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_uploaded_go_module (value : google_devtools_cloudbuild_v1_uploaded_go_module) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("artifactRegistryPackage", (fun value -> `String value) field)) value.artifact_registry_package;
         Option.map (fun field -> ("fileHashes", yojson_of_google_devtools_cloudbuild_v1_file_hashes field)) value.file_hashes;
         Option.map (fun field -> ("pushTiming", yojson_of_google_devtools_cloudbuild_v1_time_span field)) value.push_timing;
         Option.map (fun field -> ("uri", (fun value -> `String value) field)) value.uri;
       ])

and google_devtools_cloudbuild_v1_uploaded_maven_artifact_of_yojson json : google_devtools_cloudbuild_v1_uploaded_maven_artifact =
  let open Yojson.Safe.Util in
  {
    artifact_registry_package = member "artifactRegistryPackage" json |> to_option to_string;
    file_hashes = member "fileHashes" json |> to_option google_devtools_cloudbuild_v1_file_hashes_of_yojson;
    push_timing = member "pushTiming" json |> to_option google_devtools_cloudbuild_v1_time_span_of_yojson;
    uri = member "uri" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_uploaded_maven_artifact (value : google_devtools_cloudbuild_v1_uploaded_maven_artifact) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("artifactRegistryPackage", (fun value -> `String value) field)) value.artifact_registry_package;
         Option.map (fun field -> ("fileHashes", yojson_of_google_devtools_cloudbuild_v1_file_hashes field)) value.file_hashes;
         Option.map (fun field -> ("pushTiming", yojson_of_google_devtools_cloudbuild_v1_time_span field)) value.push_timing;
         Option.map (fun field -> ("uri", (fun value -> `String value) field)) value.uri;
       ])

and google_devtools_cloudbuild_v1_uploaded_npm_package_of_yojson json : google_devtools_cloudbuild_v1_uploaded_npm_package =
  let open Yojson.Safe.Util in
  {
    artifact_registry_package = member "artifactRegistryPackage" json |> to_option to_string;
    file_hashes = member "fileHashes" json |> to_option google_devtools_cloudbuild_v1_file_hashes_of_yojson;
    push_timing = member "pushTiming" json |> to_option google_devtools_cloudbuild_v1_time_span_of_yojson;
    uri = member "uri" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_uploaded_npm_package (value : google_devtools_cloudbuild_v1_uploaded_npm_package) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("artifactRegistryPackage", (fun value -> `String value) field)) value.artifact_registry_package;
         Option.map (fun field -> ("fileHashes", yojson_of_google_devtools_cloudbuild_v1_file_hashes field)) value.file_hashes;
         Option.map (fun field -> ("pushTiming", yojson_of_google_devtools_cloudbuild_v1_time_span field)) value.push_timing;
         Option.map (fun field -> ("uri", (fun value -> `String value) field)) value.uri;
       ])

and google_devtools_cloudbuild_v1_uploaded_python_package_of_yojson json : google_devtools_cloudbuild_v1_uploaded_python_package =
  let open Yojson.Safe.Util in
  {
    artifact_registry_package = member "artifactRegistryPackage" json |> to_option to_string;
    file_hashes = member "fileHashes" json |> to_option google_devtools_cloudbuild_v1_file_hashes_of_yojson;
    push_timing = member "pushTiming" json |> to_option google_devtools_cloudbuild_v1_time_span_of_yojson;
    uri = member "uri" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_uploaded_python_package (value : google_devtools_cloudbuild_v1_uploaded_python_package) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("artifactRegistryPackage", (fun value -> `String value) field)) value.artifact_registry_package;
         Option.map (fun field -> ("fileHashes", yojson_of_google_devtools_cloudbuild_v1_file_hashes field)) value.file_hashes;
         Option.map (fun field -> ("pushTiming", yojson_of_google_devtools_cloudbuild_v1_time_span field)) value.push_timing;
         Option.map (fun field -> ("uri", (fun value -> `String value) field)) value.uri;
       ])

and google_devtools_cloudbuild_v1_volume_of_yojson json : google_devtools_cloudbuild_v1_volume =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    path = member "path" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_volume (value : google_devtools_cloudbuild_v1_volume) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("path", (fun value -> `String value) field)) value.path;
       ])

and google_devtools_cloudbuild_v1_warning_of_yojson json : google_devtools_cloudbuild_v1_warning =
  let open Yojson.Safe.Util in
  {
    priority = member "priority" json |> to_option (fun json -> match to_string json with "PRIORITY_UNSPECIFIED" -> `Priority_unspecified | "INFO" -> `Info | "WARNING" -> `Warning | "ALERT" -> `Alert | value -> `Unrecognized value);
    text = member "text" json |> to_option to_string;
  }

and yojson_of_google_devtools_cloudbuild_v1_warning (value : google_devtools_cloudbuild_v1_warning) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("priority", (fun value -> `String ((function `Priority_unspecified -> "PRIORITY_UNSPECIFIED" | `Info -> "INFO" | `Warning -> "WARNING" | `Alert -> "ALERT" | `Unrecognized value -> value) value)) field)) value.priority;
         Option.map (fun field -> ("text", (fun value -> `String value) field)) value.text;
       ])

and google_iam_v1_audit_config_of_yojson json : google_iam_v1_audit_config =
  let open Yojson.Safe.Util in
  {
    audit_log_configs = member "auditLogConfigs" json |> to_option (convert_each google_iam_v1_audit_log_config_of_yojson);
    service = member "service" json |> to_option to_string;
  }

and yojson_of_google_iam_v1_audit_config (value : google_iam_v1_audit_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("auditLogConfigs", (fun items -> `List (List.map yojson_of_google_iam_v1_audit_log_config items)) field)) value.audit_log_configs;
         Option.map (fun field -> ("service", (fun value -> `String value) field)) value.service;
       ])

and google_iam_v1_audit_log_config_of_yojson json : google_iam_v1_audit_log_config =
  let open Yojson.Safe.Util in
  {
    exempted_members = member "exemptedMembers" json |> to_option (convert_each to_string);
    log_type = member "logType" json |> to_option (fun json -> match to_string json with "LOG_TYPE_UNSPECIFIED" -> `Log_type_unspecified | "ADMIN_READ" -> `Admin_read | "DATA_WRITE" -> `Data_write | "DATA_READ" -> `Data_read | value -> `Unrecognized value);
  }

and yojson_of_google_iam_v1_audit_log_config (value : google_iam_v1_audit_log_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("exemptedMembers", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.exempted_members;
         Option.map (fun field -> ("logType", (fun value -> `String ((function `Log_type_unspecified -> "LOG_TYPE_UNSPECIFIED" | `Admin_read -> "ADMIN_READ" | `Data_write -> "DATA_WRITE" | `Data_read -> "DATA_READ" | `Unrecognized value -> value) value)) field)) value.log_type;
       ])

and google_iam_v1_binding_of_yojson json : google_iam_v1_binding =
  let open Yojson.Safe.Util in
  {
    condition = member "condition" json |> to_option google_type_expr_of_yojson;
    members = member "members" json |> to_option (convert_each to_string);
    role = member "role" json |> to_option to_string;
  }

and yojson_of_google_iam_v1_binding (value : google_iam_v1_binding) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("condition", yojson_of_google_type_expr field)) value.condition;
         Option.map (fun field -> ("members", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.members;
         Option.map (fun field -> ("role", (fun value -> `String value) field)) value.role;
       ])

and google_iam_v1_policy_of_yojson json : google_iam_v1_policy =
  let open Yojson.Safe.Util in
  {
    audit_configs = member "auditConfigs" json |> to_option (convert_each google_iam_v1_audit_config_of_yojson);
    bindings = member "bindings" json |> to_option (convert_each google_iam_v1_binding_of_yojson);
    etag = member "etag" json |> to_option to_string;
    version = member "version" json |> to_option to_int;
  }

and yojson_of_google_iam_v1_policy (value : google_iam_v1_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("auditConfigs", (fun items -> `List (List.map yojson_of_google_iam_v1_audit_config items)) field)) value.audit_configs;
         Option.map (fun field -> ("bindings", (fun items -> `List (List.map yojson_of_google_iam_v1_binding items)) field)) value.bindings;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("version", (fun value -> `Int value) field)) value.version;
       ])

and google_iam_v1_set_iam_policy_request_of_yojson json : google_iam_v1_set_iam_policy_request =
  let open Yojson.Safe.Util in
  {
    policy = member "policy" json |> to_option google_iam_v1_policy_of_yojson;
    update_mask = member "updateMask" json |> to_option to_string;
  }

and yojson_of_google_iam_v1_set_iam_policy_request (value : google_iam_v1_set_iam_policy_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("policy", yojson_of_google_iam_v1_policy field)) value.policy;
         Option.map (fun field -> ("updateMask", (fun value -> `String value) field)) value.update_mask;
       ])

and google_iam_v1_test_iam_permissions_request_of_yojson json : google_iam_v1_test_iam_permissions_request =
  let open Yojson.Safe.Util in
  {
    permissions = member "permissions" json |> to_option (convert_each to_string);
  }

and yojson_of_google_iam_v1_test_iam_permissions_request (value : google_iam_v1_test_iam_permissions_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("permissions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.permissions;
       ])

and google_iam_v1_test_iam_permissions_response_of_yojson json : google_iam_v1_test_iam_permissions_response =
  let open Yojson.Safe.Util in
  {
    permissions = member "permissions" json |> to_option (convert_each to_string);
  }

and yojson_of_google_iam_v1_test_iam_permissions_response (value : google_iam_v1_test_iam_permissions_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("permissions", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.permissions;
       ])

and google_longrunning_list_operations_response_of_yojson json : google_longrunning_list_operations_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    operations = member "operations" json |> to_option (convert_each google_longrunning_operation_of_yojson);
    unreachable = member "unreachable" json |> to_option (convert_each to_string);
  }

and yojson_of_google_longrunning_list_operations_response (value : google_longrunning_list_operations_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("operations", (fun items -> `List (List.map yojson_of_google_longrunning_operation items)) field)) value.operations;
         Option.map (fun field -> ("unreachable", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.unreachable;
       ])

and google_longrunning_operation_of_yojson json : google_longrunning_operation =
  let open Yojson.Safe.Util in
  {
    done_ = member "done" json |> to_option to_bool;
    error = member "error" json |> to_option google_rpc_status_of_yojson;
    metadata = member "metadata" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
    name = member "name" json |> to_option to_string;
    response = member "response" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
  }

and yojson_of_google_longrunning_operation (value : google_longrunning_operation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("done", (fun value -> `Bool value) field)) value.done_;
         Option.map (fun field -> ("error", yojson_of_google_rpc_status field)) value.error;
         Option.map (fun field -> ("metadata", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.metadata;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("response", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.response;
       ])

and google_longrunning_wait_operation_request_of_yojson json : google_longrunning_wait_operation_request =
  let open Yojson.Safe.Util in
  {
    timeout = member "timeout" json |> to_option to_string;
  }

and yojson_of_google_longrunning_wait_operation_request (value : google_longrunning_wait_operation_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("timeout", (fun value -> `String value) field)) value.timeout;
       ])

and google_protobuf_empty_of_yojson json : google_protobuf_empty =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_google_protobuf_empty (value : google_protobuf_empty) : Yojson.Safe.t = Fun.id value

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

and google_type_expr_of_yojson json : google_type_expr =
  let open Yojson.Safe.Util in
  {
    description = member "description" json |> to_option to_string;
    expression = member "expression" json |> to_option to_string;
    location = member "location" json |> to_option to_string;
    title = member "title" json |> to_option to_string;
  }

and yojson_of_google_type_expr (value : google_type_expr) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("description", (fun value -> `String value) field)) value.description;
         Option.map (fun field -> ("expression", (fun value -> `String value) field)) value.expression;
         Option.map (fun field -> ("location", (fun value -> `String value) field)) value.location;
         Option.map (fun field -> ("title", (fun value -> `String value) field)) value.title;
       ])

and proto2_bridge_message_set_of_yojson json : proto2_bridge_message_set =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_proto2_bridge_message_set (value : proto2_bridge_message_set) : Yojson.Safe.t = Fun.id value

and util_status_proto_of_yojson json : util_status_proto =
  let open Yojson.Safe.Util in
  {
    canonical_code = member "canonicalCode" json |> to_option to_int;
    code = member "code" json |> to_option to_int;
    message = member "message" json |> to_option to_string;
    message_set = member "messageSet" json |> to_option proto2_bridge_message_set_of_yojson;
    space = member "space" json |> to_option to_string;
  }

and yojson_of_util_status_proto (value : util_status_proto) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("canonicalCode", (fun value -> `Int value) field)) value.canonical_code;
         Option.map (fun field -> ("code", (fun value -> `Int value) field)) value.code;
         Option.map (fun field -> ("message", (fun value -> `String value) field)) value.message;
         Option.map (fun field -> ("messageSet", yojson_of_proto2_bridge_message_set field)) value.message_set;
         Option.map (fun field -> ("space", (fun value -> `String value) field)) value.space;
       ])

let make_google_cloud_run_v2_ambient_networking ?ambient_scope ?enabled () : google_cloud_run_v2_ambient_networking = { ambient_scope; enabled }

let make_google_cloud_run_v2_binary_authorization ?breakglass_justification ?policy ?use_default () : google_cloud_run_v2_binary_authorization = { breakglass_justification; policy; use_default }

let make_google_cloud_run_v2_build_config ?base_image ?enable_automatic_updates ?environment_variables ?function_target ?image_uri ?name ?service_account ?source_location ?worker_pool () : google_cloud_run_v2_build_config = { base_image; enable_automatic_updates; environment_variables; function_target; image_uri; name; service_account; source_location; worker_pool }

let make_google_cloud_run_v2_build_info ?function_target ?source_location () : google_cloud_run_v2_build_info = { function_target; source_location }

let make_google_cloud_run_v2_buildpacks_build ?base_image ?cache_image_uri ?enable_automatic_updates ?environment_variables ?function_target ?project_descriptor ?runtime () : google_cloud_run_v2_buildpacks_build = { base_image; cache_image_uri; enable_automatic_updates; environment_variables; function_target; project_descriptor; runtime }

let make_google_cloud_run_v2_cancel_execution_request ?etag ?validate_only () : google_cloud_run_v2_cancel_execution_request = { etag; validate_only }

let make_google_cloud_run_v2_cloud_sql_instance ?instances () : google_cloud_run_v2_cloud_sql_instance = { instances }

let make_google_cloud_run_v2_cloud_storage_source ?bucket ?generation ?object_ () : google_cloud_run_v2_cloud_storage_source = { bucket; generation; object_ }

let make_google_cloud_run_v2_condition ?execution_reason ?instance_reason ?last_transition_time ?message ?reason ?revision_reason ?severity ?state ?type_ () : google_cloud_run_v2_condition = { execution_reason; instance_reason; last_transition_time; message; reason; revision_reason; severity; state; type_ }

let make_google_cloud_run_v2_container ?args ?base_image_uri ?build_info ?command ?depends_on ?env ?image ?liveness_probe ?name ?ports ?readiness_probe ?resources ?sandbox_launcher ?source_code ?startup_probe ?volume_mounts ?working_dir () : google_cloud_run_v2_container = { args; base_image_uri; build_info; command; depends_on; env; image; liveness_probe; name; ports; readiness_probe; resources; sandbox_launcher; source_code; startup_probe; volume_mounts; working_dir }

let make_google_cloud_run_v2_container_override ?args ?clear_args ?env ?name () : google_cloud_run_v2_container_override = { args; clear_args; env; name }

let make_google_cloud_run_v2_container_port ?container_port ?name () : google_cloud_run_v2_container_port = { container_port; name }

let make_google_cloud_run_v2_container_status ?image_digest ?name () : google_cloud_run_v2_container_status = { image_digest; name }

let make_google_cloud_run_v2_empty_dir_volume_source ?medium ?size_limit () : google_cloud_run_v2_empty_dir_volume_source = { medium; size_limit }

let make_google_cloud_run_v2_env_var ?name ?value ?value_source () : google_cloud_run_v2_env_var = { name; value; value_source }

let make_google_cloud_run_v2_env_var_source ?secret_key_ref () : google_cloud_run_v2_env_var_source = { secret_key_ref }

let make_google_cloud_run_v2_execution ?annotations ?cancelled_count ?client ?client_version ?completion_time ?conditions ?create_time ?creator ?delete_time ?etag ?expire_time ?failed_count ?generation ?job ?labels ?launch_stage ?log_uri ?name ?observed_generation ?parallelism ?reconciling ?retried_count ?running_count ?satisfies_pzs ?start_time ?succeeded_count ?task_count ?template ?uid ?update_time () : google_cloud_run_v2_execution = { annotations; cancelled_count; client; client_version; completion_time; conditions; create_time; creator; delete_time; etag; expire_time; failed_count; generation; job; labels; launch_stage; log_uri; name; observed_generation; parallelism; reconciling; retried_count; running_count; satisfies_pzs; start_time; succeeded_count; task_count; template; uid; update_time }

let make_google_cloud_run_v2_execution_reference ?completion_status ?completion_time ?create_time ?delete_time ?name () : google_cloud_run_v2_execution_reference = { completion_status; completion_time; create_time; delete_time; name }

let make_google_cloud_run_v2_execution_template ?annotations ?client ?client_version ?delay_execution ?labels ?parallelism ?task_count ?template () : google_cloud_run_v2_execution_template = { annotations; client; client_version; delay_execution; labels; parallelism; task_count; template }

let make_google_cloud_run_v2_export_image_request ?destination_repo () : google_cloud_run_v2_export_image_request = { destination_repo }

let make_google_cloud_run_v2_export_image_response ?operation_id () : google_cloud_run_v2_export_image_response = { operation_id }

let make_google_cloud_run_v2_export_status_response ?image_export_statuses ?operation_id ?operation_state () : google_cloud_run_v2_export_status_response = { image_export_statuses; operation_id; operation_state }

let make_google_cloud_run_v2_gcs_volume_source ?bucket ?mount_options ?read_only () : google_cloud_run_v2_gcs_volume_source = { bucket; mount_options; read_only }

let make_google_cloud_run_v2_grpc_action ?port ?service () : google_cloud_run_v2_grpc_action = { port; service }

let make_google_cloud_run_v2_http_get_action ?http_headers ?path ?port () : google_cloud_run_v2_http_get_action = { http_headers; path; port }

let make_google_cloud_run_v2_http_header ?name ?value () : google_cloud_run_v2_http_header = { name; value }

let make_google_cloud_run_v2_image_export_status ?export_job_state ?exported_image_digest ?status ?tag () : google_cloud_run_v2_image_export_status = { export_job_state; exported_image_digest; status; tag }

let make_google_cloud_run_v2_inlined_source ?sources () : google_cloud_run_v2_inlined_source = { sources }

let make_google_cloud_run_v2_instance ?annotations ?binary_authorization ?client ?client_version ?conditions ?container_statuses ?containers ?create_time ?creator ?default_uri_disabled ?delete_time ?description ?encryption_key ?encryption_key_revocation_action ?encryption_key_shutdown_duration ?etag ?expire_time ?generation ?gpu_zonal_redundancy_disabled ?iap_enabled ?ingress ?invoker_iam_disabled ?labels ?last_modifier ?launch_stage ?log_uri ?name ?node_selector ?observed_generation ?reconciling ?restart_policy ?satisfies_pzs ?service_account ?ssh_enabled ?terminal_condition ?uid ?update_time ?urls ?volumes ?vpc_access () : google_cloud_run_v2_instance = { annotations; binary_authorization; client; client_version; conditions; container_statuses; containers; create_time; creator; default_uri_disabled; delete_time; description; encryption_key; encryption_key_revocation_action; encryption_key_shutdown_duration; etag; expire_time; generation; gpu_zonal_redundancy_disabled; iap_enabled; ingress; invoker_iam_disabled; labels; last_modifier; launch_stage; log_uri; name; node_selector; observed_generation; reconciling; restart_policy; satisfies_pzs; service_account; ssh_enabled; terminal_condition; uid; update_time; urls; volumes; vpc_access }

let make_google_cloud_run_v2_instance_split ?percent ?revision ?type_ () : google_cloud_run_v2_instance_split = { percent; revision; type_ }

let make_google_cloud_run_v2_instance_split_status ?percent ?revision ?type_ () : google_cloud_run_v2_instance_split_status = { percent; revision; type_ }

let make_google_cloud_run_v2_job ?annotations ?binary_authorization ?client ?client_version ?conditions ?create_time ?creator ?delete_time ?etag ?execution_count ?expire_time ?functional_type ?generation ?labels ?last_modifier ?latest_created_execution ?launch_stage ?name ?observed_generation ?reconciling ?run_execution_token ?satisfies_pzs ?start_execution_token ?template ?terminal_condition ?uid ?update_time () : google_cloud_run_v2_job = { annotations; binary_authorization; client; client_version; conditions; create_time; creator; delete_time; etag; execution_count; expire_time; functional_type; generation; labels; last_modifier; latest_created_execution; launch_stage; name; observed_generation; reconciling; run_execution_token; satisfies_pzs; start_execution_token; template; terminal_condition; uid; update_time }

let make_google_cloud_run_v2_list_executions_response ?executions ?next_page_token () : google_cloud_run_v2_list_executions_response = { executions; next_page_token }

let make_google_cloud_run_v2_list_instances_response ?instances ?next_page_token () : google_cloud_run_v2_list_instances_response = { instances; next_page_token }

let make_google_cloud_run_v2_list_jobs_response ?jobs ?next_page_token () : google_cloud_run_v2_list_jobs_response = { jobs; next_page_token }

let make_google_cloud_run_v2_list_revisions_response ?next_page_token ?revisions () : google_cloud_run_v2_list_revisions_response = { next_page_token; revisions }

let make_google_cloud_run_v2_list_services_response ?next_page_token ?services ?unreachable () : google_cloud_run_v2_list_services_response = { next_page_token; services; unreachable }

let make_google_cloud_run_v2_list_tasks_response ?next_page_token ?tasks () : google_cloud_run_v2_list_tasks_response = { next_page_token; tasks }

let make_google_cloud_run_v2_list_worker_pools_response ?next_page_token ?worker_pools () : google_cloud_run_v2_list_worker_pools_response = { next_page_token; worker_pools }

let make_google_cloud_run_v2_metadata ?metadata () : google_cloud_run_v2_metadata = { metadata }

let make_google_cloud_run_v2_multi_region_settings ?multi_region_id ?regions () : google_cloud_run_v2_multi_region_settings = { multi_region_id; regions }

let make_google_cloud_run_v2_nfs_volume_source ?path ?read_only ?server () : google_cloud_run_v2_nfs_volume_source = { path; read_only; server }

let make_google_cloud_run_v2_network_interface ?network ?subnetwork ?tags () : google_cloud_run_v2_network_interface = { network; subnetwork; tags }

let make_google_cloud_run_v2_node_selector ?accelerator () : google_cloud_run_v2_node_selector = { accelerator }

let make_google_cloud_run_v2_overrides ?container_overrides ?delay_execution ?task_count ?timeout () : google_cloud_run_v2_overrides = { container_overrides; delay_execution; task_count; timeout }

let make_google_cloud_run_v2_probe ?failure_threshold ?grpc ?http_get ?initial_delay_seconds ?period_seconds ?tcp_socket ?timeout_seconds () : google_cloud_run_v2_probe = { failure_threshold; grpc; http_get; initial_delay_seconds; period_seconds; tcp_socket; timeout_seconds }

let make_google_cloud_run_v2_resource_requirements ?cpu_idle ?limits ?startup_cpu_boost () : google_cloud_run_v2_resource_requirements = { cpu_idle; limits; startup_cpu_boost }

let make_google_cloud_run_v2_revision ?ambient_networking ?annotations ?client ?client_version ?conditions ?containers ?create_time ?creator ?delete_time ?encryption_key ?encryption_key_revocation_action ?encryption_key_shutdown_duration ?etag ?execution_environment ?expire_time ?generation ?gpu_zonal_redundancy_disabled ?labels ?launch_stage ?log_uri ?max_instance_request_concurrency ?name ?node_selector ?observed_generation ?reconciling ?satisfies_pzs ?scaling ?scaling_status ?service ?service_account ?service_mesh ?session_affinity ?timeout ?uid ?update_time ?volumes ?vpc_access ?workload_identity_config () : google_cloud_run_v2_revision = { ambient_networking; annotations; client; client_version; conditions; containers; create_time; creator; delete_time; encryption_key; encryption_key_revocation_action; encryption_key_shutdown_duration; etag; execution_environment; expire_time; generation; gpu_zonal_redundancy_disabled; labels; launch_stage; log_uri; max_instance_request_concurrency; name; node_selector; observed_generation; reconciling; satisfies_pzs; scaling; scaling_status; service; service_account; service_mesh; session_affinity; timeout; uid; update_time; volumes; vpc_access; workload_identity_config }

let make_google_cloud_run_v2_revision_scaling ?concurrency_utilization ?cpu_utilization ?max_instance_count ?min_instance_count () : google_cloud_run_v2_revision_scaling = { concurrency_utilization; cpu_utilization; max_instance_count; min_instance_count }

let make_google_cloud_run_v2_revision_scaling_status ?desired_min_instance_count () : google_cloud_run_v2_revision_scaling_status = { desired_min_instance_count }

let make_google_cloud_run_v2_revision_template ?ambient_networking ?annotations ?client ?client_version ?containers ?encryption_key ?encryption_key_revocation_action ?encryption_key_shutdown_duration ?execution_environment ?gpu_zonal_redundancy_disabled ?health_check_disabled ?labels ?max_instance_request_concurrency ?node_selector ?revision ?scaling ?service_account ?service_mesh ?session_affinity ?timeout ?volumes ?vpc_access ?workload_identity_config () : google_cloud_run_v2_revision_template = { ambient_networking; annotations; client; client_version; containers; encryption_key; encryption_key_revocation_action; encryption_key_shutdown_duration; execution_environment; gpu_zonal_redundancy_disabled; health_check_disabled; labels; max_instance_request_concurrency; node_selector; revision; scaling; service_account; service_mesh; session_affinity; timeout; volumes; vpc_access; workload_identity_config }

let make_google_cloud_run_v2_run_job_request ?etag ?overrides ?validate_only () : google_cloud_run_v2_run_job_request = { etag; overrides; validate_only }

let make_google_cloud_run_v2_secret_key_selector ?secret ?version () : google_cloud_run_v2_secret_key_selector = { secret; version }

let make_google_cloud_run_v2_secret_volume_source ?default_mode ?items ?secret () : google_cloud_run_v2_secret_volume_source = { default_mode; items; secret }

let make_google_cloud_run_v2_service ?annotations ?binary_authorization ?build_config ?client ?client_version ?conditions ?create_time ?creator ?custom_audiences ?default_uri_disabled ?delete_time ?description ?etag ?expire_time ?functional_type ?generation ?iap_enabled ?ingress ?invoker_iam_disabled ?labels ?last_modifier ?latest_created_revision ?latest_ready_revision ?launch_stage ?multi_region_settings ?name ?observed_generation ?reconciling ?satisfies_pzs ?scaling ?ssh_enabled ?template ?terminal_condition ?threat_detection_enabled ?traffic ?traffic_statuses ?uid ?update_time ?uri ?urls () : google_cloud_run_v2_service = { annotations; binary_authorization; build_config; client; client_version; conditions; create_time; creator; custom_audiences; default_uri_disabled; delete_time; description; etag; expire_time; functional_type; generation; iap_enabled; ingress; invoker_iam_disabled; labels; last_modifier; latest_created_revision; latest_ready_revision; launch_stage; multi_region_settings; name; observed_generation; reconciling; satisfies_pzs; scaling; ssh_enabled; template; terminal_condition; threat_detection_enabled; traffic; traffic_statuses; uid; update_time; uri; urls }

let make_google_cloud_run_v2_service_mesh ?mesh () : google_cloud_run_v2_service_mesh = { mesh }

let make_google_cloud_run_v2_service_scaling ?manual_instance_count ?max_instance_count ?min_instance_count ?scaling_mode () : google_cloud_run_v2_service_scaling = { manual_instance_count; max_instance_count; min_instance_count; scaling_mode }

let make_google_cloud_run_v2_source_code ?cloud_storage_source ?inlined_source () : google_cloud_run_v2_source_code = { cloud_storage_source; inlined_source }

let make_google_cloud_run_v2_source_file ?content ?filename () : google_cloud_run_v2_source_file = { content; filename }

let make_google_cloud_run_v2_start_instance_request ?etag ?validate_only () : google_cloud_run_v2_start_instance_request = { etag; validate_only }

let make_google_cloud_run_v2_stop_instance_request ?etag ?validate_only () : google_cloud_run_v2_stop_instance_request = { etag; validate_only }

let make_google_cloud_run_v2_storage_source ?bucket ?generation ?object_ () : google_cloud_run_v2_storage_source = { bucket; generation; object_ }

let make_google_cloud_run_v2_submit_build_request ?buildpack_build ?client ?docker_build ?image_uri ?machine_type ?release_track ?service_account ?storage_source ?tags ?worker_pool () : google_cloud_run_v2_submit_build_request = { buildpack_build; client; docker_build; image_uri; machine_type; release_track; service_account; storage_source; tags; worker_pool }

let make_google_cloud_run_v2_submit_build_response ?base_image_uri ?base_image_warning ?build_operation () : google_cloud_run_v2_submit_build_response = { base_image_uri; base_image_warning; build_operation }

let make_google_cloud_run_v2_tcp_socket_action ?port () : google_cloud_run_v2_tcp_socket_action = { port }

let make_google_cloud_run_v2_task ?annotations ?completion_time ?conditions ?containers ?create_time ?delete_time ?encryption_key ?etag ?execution ?execution_environment ?expire_time ?generation ?gpu_zonal_redundancy_disabled ?index ?job ?labels ?last_attempt_result ?log_uri ?max_retries ?name ?node_selector ?observed_generation ?reconciling ?retried ?satisfies_pzs ?scheduled_time ?service_account ?start_time ?timeout ?uid ?update_time ?volumes ?vpc_access ?workload_identity_config () : google_cloud_run_v2_task = { annotations; completion_time; conditions; containers; create_time; delete_time; encryption_key; etag; execution; execution_environment; expire_time; generation; gpu_zonal_redundancy_disabled; index; job; labels; last_attempt_result; log_uri; max_retries; name; node_selector; observed_generation; reconciling; retried; satisfies_pzs; scheduled_time; service_account; start_time; timeout; uid; update_time; volumes; vpc_access; workload_identity_config }

let make_google_cloud_run_v2_task_attempt_result ?exit_code ?status ?term_signal () : google_cloud_run_v2_task_attempt_result = { exit_code; status; term_signal }

let make_google_cloud_run_v2_task_template ?containers ?encryption_key ?execution_environment ?gpu_zonal_redundancy_disabled ?max_retries ?node_selector ?service_account ?timeout ?volumes ?vpc_access ?workload_identity_config () : google_cloud_run_v2_task_template = { containers; encryption_key; execution_environment; gpu_zonal_redundancy_disabled; max_retries; node_selector; service_account; timeout; volumes; vpc_access; workload_identity_config }

let make_google_cloud_run_v2_traffic_target ?percent ?revision ?tag ?type_ () : google_cloud_run_v2_traffic_target = { percent; revision; tag; type_ }

let make_google_cloud_run_v2_traffic_target_status ?percent ?revision ?tag ?type_ ?uri () : google_cloud_run_v2_traffic_target_status = { percent; revision; tag; type_; uri }

let make_google_cloud_run_v2_upload_source_request ?service () : google_cloud_run_v2_upload_source_request = { service }

let make_google_cloud_run_v2_upload_source_response ?cloud_storage_source () : google_cloud_run_v2_upload_source_response = { cloud_storage_source }

let make_google_cloud_run_v2_version_to_path ?mode ?path ?version () : google_cloud_run_v2_version_to_path = { mode; path; version }

let make_google_cloud_run_v2_volume ?cloud_sql_instance ?empty_dir ?gcs ?name ?nfs ?secret () : google_cloud_run_v2_volume = { cloud_sql_instance; empty_dir; gcs; name; nfs; secret }

let make_google_cloud_run_v2_volume_mount ?mount_path ?name ?sub_path () : google_cloud_run_v2_volume_mount = { mount_path; name; sub_path }

let make_google_cloud_run_v2_vpc_access ?connector ?egress ?network_interfaces () : google_cloud_run_v2_vpc_access = { connector; egress; network_interfaces }

let make_google_cloud_run_v2_worker_pool ?annotations ?binary_authorization ?client ?client_version ?conditions ?create_time ?creator ?custom_audiences ?delete_time ?description ?etag ?expire_time ?generation ?instance_split_statuses ?instance_splits ?labels ?last_modifier ?latest_created_revision ?latest_ready_revision ?launch_stage ?name ?observed_generation ?reconciling ?satisfies_pzs ?scaling ?template ?terminal_condition ?threat_detection_enabled ?uid ?update_time () : google_cloud_run_v2_worker_pool = { annotations; binary_authorization; client; client_version; conditions; create_time; creator; custom_audiences; delete_time; description; etag; expire_time; generation; instance_split_statuses; instance_splits; labels; last_modifier; latest_created_revision; latest_ready_revision; launch_stage; name; observed_generation; reconciling; satisfies_pzs; scaling; template; terminal_condition; threat_detection_enabled; uid; update_time }

let make_google_cloud_run_v2_worker_pool_revision_template ?annotations ?client ?client_version ?containers ?encryption_key ?encryption_key_revocation_action ?encryption_key_shutdown_duration ?gpu_zonal_redundancy_disabled ?labels ?node_selector ?revision ?service_account ?service_mesh ?volumes ?vpc_access () : google_cloud_run_v2_worker_pool_revision_template = { annotations; client; client_version; containers; encryption_key; encryption_key_revocation_action; encryption_key_shutdown_duration; gpu_zonal_redundancy_disabled; labels; node_selector; revision; service_account; service_mesh; volumes; vpc_access }

let make_google_cloud_run_v2_worker_pool_scaling ?manual_instance_count () : google_cloud_run_v2_worker_pool_scaling = { manual_instance_count }

let make_google_cloud_run_v2_workload_identity_config ?identity ?identity_certificate_enabled ?identity_type () : google_cloud_run_v2_workload_identity_config = { identity; identity_certificate_enabled; identity_type }

let make_google_devtools_cloudbuild_v1_approval_config ?approval_required () : google_devtools_cloudbuild_v1_approval_config = { approval_required }

let make_google_devtools_cloudbuild_v1_approval_result ?approval_time ?approver_account ?comment ?decision ?url () : google_devtools_cloudbuild_v1_approval_result = { approval_time; approver_account; comment; decision; url }

let make_google_devtools_cloudbuild_v1_artifact_objects ?location ?paths ?timing () : google_devtools_cloudbuild_v1_artifact_objects = { location; paths; timing }

let make_google_devtools_cloudbuild_v1_artifacts ?generic_artifacts ?go_modules ?images ?maven_artifacts ?npm_packages ?objects ?oci ?python_packages () : google_devtools_cloudbuild_v1_artifacts = { generic_artifacts; go_modules; images; maven_artifacts; npm_packages; objects; oci; python_packages }

let make_google_devtools_cloudbuild_v1_build ?approval ?artifacts ?available_secrets ?build_trigger_id ?create_time ?dependencies ?failure_info ?finish_time ?git_config ?id ?images ?log_url ?logs_bucket ?name ?options ?project_id ?queue_ttl ?results ?secrets ?service_account ?source ?source_provenance ?start_time ?status ?status_detail ?steps ?substitutions ?tags ?timeout ?timing ?warnings () : google_devtools_cloudbuild_v1_build = { approval; artifacts; available_secrets; build_trigger_id; create_time; dependencies; failure_info; finish_time; git_config; id; images; log_url; logs_bucket; name; options; project_id; queue_ttl; results; secrets; service_account; source; source_provenance; start_time; status; status_detail; steps; substitutions; tags; timeout; timing; warnings }

let make_google_devtools_cloudbuild_v1_build_approval ?config ?result ?state () : google_devtools_cloudbuild_v1_build_approval = { config; result; state }

let make_google_devtools_cloudbuild_v1_build_operation_metadata ?build () : google_devtools_cloudbuild_v1_build_operation_metadata = { build }

let make_google_devtools_cloudbuild_v1_build_options ?automap_substitutions ?default_logs_bucket_behavior ?disk_size_gb ?dynamic_substitutions ?enable_structured_logging ?env ?log_streaming_option ?logging ?machine_type ?pool ?pubsub_topic ?ranked_machine_series ?requested_verify_option ?resolved_worker_release ?secret_env ?source_provenance_hash ?substitution_option ?volumes ?worker_pool ?worker_release () : google_devtools_cloudbuild_v1_build_options = { automap_substitutions; default_logs_bucket_behavior; disk_size_gb; dynamic_substitutions; enable_structured_logging; env; log_streaming_option; logging; machine_type; pool; pubsub_topic; ranked_machine_series; requested_verify_option; resolved_worker_release; secret_env; source_provenance_hash; substitution_option; volumes; worker_pool; worker_release }

let make_google_devtools_cloudbuild_v1_build_resource_usage ?average_cpu_utilization ?average_memory_utilization ?peak_cpu_utilization ?peak_memory_utilization ?total_cpu_duration () : google_devtools_cloudbuild_v1_build_resource_usage = { average_cpu_utilization; average_memory_utilization; peak_cpu_utilization; peak_memory_utilization; total_cpu_duration }

let make_google_devtools_cloudbuild_v1_build_step ?allow_exit_codes ?allow_failure ?args ?automap_substitutions ?dir ?entrypoint ?env ?exit_code ?id ?name ?pull_timing ?results ?script ?secret_env ?status ?timeout ?timing ?volumes ?wait_for () : google_devtools_cloudbuild_v1_build_step = { allow_exit_codes; allow_failure; args; automap_substitutions; dir; entrypoint; env; exit_code; id; name; pull_timing; results; script; secret_env; status; timeout; timing; volumes; wait_for }

let make_google_devtools_cloudbuild_v1_build_step_results ?results () : google_devtools_cloudbuild_v1_build_step_results = { results }

let make_google_devtools_cloudbuild_v1_built_image ?artifact_registry_package ?digest ?name ?oci_media_type ?push_timing () : google_devtools_cloudbuild_v1_built_image = { artifact_registry_package; digest; name; oci_media_type; push_timing }

let make_google_devtools_cloudbuild_v1_connected_repository ?dir ?repository ?revision () : google_devtools_cloudbuild_v1_connected_repository = { dir; repository; revision }

let make_google_devtools_cloudbuild_v1_dependency ?empty ?generic_artifact ?git_source () : google_devtools_cloudbuild_v1_dependency = { empty; generic_artifact; git_source }

let make_google_devtools_cloudbuild_v1_developer_connect_config ?dir ?git_repository_link ?revision () : google_devtools_cloudbuild_v1_developer_connect_config = { dir; git_repository_link; revision }

let make_google_devtools_cloudbuild_v1_failure_info ?detail ?type_ () : google_devtools_cloudbuild_v1_failure_info = { detail; type_ }

let make_google_devtools_cloudbuild_v1_file_hashes ?file_hash () : google_devtools_cloudbuild_v1_file_hashes = { file_hash }

let make_google_devtools_cloudbuild_v1_generic_artifact ?folder ?registry_path () : google_devtools_cloudbuild_v1_generic_artifact = { folder; registry_path }

let make_google_devtools_cloudbuild_v1_generic_artifact_dependency ?dest_path ?resource () : google_devtools_cloudbuild_v1_generic_artifact_dependency = { dest_path; resource }

let make_google_devtools_cloudbuild_v1_git_config ?http () : google_devtools_cloudbuild_v1_git_config = { http }

let make_google_devtools_cloudbuild_v1_git_source ?dir ?revision ?url () : google_devtools_cloudbuild_v1_git_source = { dir; revision; url }

let make_google_devtools_cloudbuild_v1_git_source_dependency ?depth ?dest_path ?fetch_tags ?recurse_submodules ?repository ?revision () : google_devtools_cloudbuild_v1_git_source_dependency = { depth; dest_path; fetch_tags; recurse_submodules; repository; revision }

let make_google_devtools_cloudbuild_v1_git_source_repository ?developer_connect ?url () : google_devtools_cloudbuild_v1_git_source_repository = { developer_connect; url }

let make_google_devtools_cloudbuild_v1_go_module ?module_path ?module_version ?repository_location ?repository_name ?repository_project_id ?source_path () : google_devtools_cloudbuild_v1_go_module = { module_path; module_version; repository_location; repository_name; repository_project_id; source_path }

let make_google_devtools_cloudbuild_v1_hash ?type_ ?value () : google_devtools_cloudbuild_v1_hash = { type_; value }

let make_google_devtools_cloudbuild_v1_http_config ?proxy_secret_version_name () : google_devtools_cloudbuild_v1_http_config = { proxy_secret_version_name }

let make_google_devtools_cloudbuild_v1_inline_secret ?env_map ?kms_key_name () : google_devtools_cloudbuild_v1_inline_secret = { env_map; kms_key_name }

let make_google_devtools_cloudbuild_v1_maven_artifact ?artifact_id ?deploy_folder ?group_id ?path ?repository ?version () : google_devtools_cloudbuild_v1_maven_artifact = { artifact_id; deploy_folder; group_id; path; repository; version }

let make_google_devtools_cloudbuild_v1_npm_package ?package_path ?repository () : google_devtools_cloudbuild_v1_npm_package = { package_path; repository }

let make_google_devtools_cloudbuild_v1_oci ?file ?registry_path ?tags () : google_devtools_cloudbuild_v1_oci = { file; registry_path; tags }

let make_google_devtools_cloudbuild_v1_pool_option ?name ?resolved_worker_release ?worker_release () : google_devtools_cloudbuild_v1_pool_option = { name; resolved_worker_release; worker_release }

let make_google_devtools_cloudbuild_v1_python_package ?paths ?repository () : google_devtools_cloudbuild_v1_python_package = { paths; repository }

let make_google_devtools_cloudbuild_v1_repo_source ?branch_name ?commit_sha ?dir ?invert_regex ?project_id ?repo_name ?substitutions ?tag_name () : google_devtools_cloudbuild_v1_repo_source = { branch_name; commit_sha; dir; invert_regex; project_id; repo_name; substitutions; tag_name }

let make_google_devtools_cloudbuild_v1_results ?artifact_manifest ?artifact_timing ?build_step_images ?build_step_outputs ?build_step_results ?generic_artifacts ?go_modules ?images ?maven_artifacts ?npm_packages ?num_artifacts ?python_packages ?resource_usage () : google_devtools_cloudbuild_v1_results = { artifact_manifest; artifact_timing; build_step_images; build_step_outputs; build_step_results; generic_artifacts; go_modules; images; maven_artifacts; npm_packages; num_artifacts; python_packages; resource_usage }

let make_google_devtools_cloudbuild_v1_secret ?kms_key_name ?secret_env () : google_devtools_cloudbuild_v1_secret = { kms_key_name; secret_env }

let make_google_devtools_cloudbuild_v1_secret_manager_secret ?env ?version_name () : google_devtools_cloudbuild_v1_secret_manager_secret = { env; version_name }

let make_google_devtools_cloudbuild_v1_secrets ?inline ?secret_manager () : google_devtools_cloudbuild_v1_secrets = { inline; secret_manager }

let make_google_devtools_cloudbuild_v1_source ?connected_repository ?developer_connect_config ?git_source ?repo_source ?storage_source ?storage_source_manifest () : google_devtools_cloudbuild_v1_source = { connected_repository; developer_connect_config; git_source; repo_source; storage_source; storage_source_manifest }

let make_google_devtools_cloudbuild_v1_source_provenance ?file_hashes ?resolved_connected_repository ?resolved_git_source ?resolved_repo_source ?resolved_storage_source ?resolved_storage_source_manifest () : google_devtools_cloudbuild_v1_source_provenance = { file_hashes; resolved_connected_repository; resolved_git_source; resolved_repo_source; resolved_storage_source; resolved_storage_source_manifest }

let make_google_devtools_cloudbuild_v1_step_result ?attestation_content ?attestation_type ?name () : google_devtools_cloudbuild_v1_step_result = { attestation_content; attestation_type; name }

let make_google_devtools_cloudbuild_v1_storage_source ?bucket ?generation ?object_ ?source_fetcher () : google_devtools_cloudbuild_v1_storage_source = { bucket; generation; object_; source_fetcher }

let make_google_devtools_cloudbuild_v1_storage_source_manifest ?bucket ?generation ?object_ () : google_devtools_cloudbuild_v1_storage_source_manifest = { bucket; generation; object_ }

let make_google_devtools_cloudbuild_v1_time_span ?end_time ?start_time () : google_devtools_cloudbuild_v1_time_span = { end_time; start_time }

let make_google_devtools_cloudbuild_v1_uploaded_generic_artifact ?artifact_fingerprint ?artifact_registry_package ?file_hashes ?push_timing ?uri () : google_devtools_cloudbuild_v1_uploaded_generic_artifact = { artifact_fingerprint; artifact_registry_package; file_hashes; push_timing; uri }

let make_google_devtools_cloudbuild_v1_uploaded_go_module ?artifact_registry_package ?file_hashes ?push_timing ?uri () : google_devtools_cloudbuild_v1_uploaded_go_module = { artifact_registry_package; file_hashes; push_timing; uri }

let make_google_devtools_cloudbuild_v1_uploaded_maven_artifact ?artifact_registry_package ?file_hashes ?push_timing ?uri () : google_devtools_cloudbuild_v1_uploaded_maven_artifact = { artifact_registry_package; file_hashes; push_timing; uri }

let make_google_devtools_cloudbuild_v1_uploaded_npm_package ?artifact_registry_package ?file_hashes ?push_timing ?uri () : google_devtools_cloudbuild_v1_uploaded_npm_package = { artifact_registry_package; file_hashes; push_timing; uri }

let make_google_devtools_cloudbuild_v1_uploaded_python_package ?artifact_registry_package ?file_hashes ?push_timing ?uri () : google_devtools_cloudbuild_v1_uploaded_python_package = { artifact_registry_package; file_hashes; push_timing; uri }

let make_google_devtools_cloudbuild_v1_volume ?name ?path () : google_devtools_cloudbuild_v1_volume = { name; path }

let make_google_devtools_cloudbuild_v1_warning ?priority ?text () : google_devtools_cloudbuild_v1_warning = { priority; text }

let make_google_iam_v1_audit_config ?audit_log_configs ?service () : google_iam_v1_audit_config = { audit_log_configs; service }

let make_google_iam_v1_audit_log_config ?exempted_members ?log_type () : google_iam_v1_audit_log_config = { exempted_members; log_type }

let make_google_iam_v1_binding ?condition ?members ?role () : google_iam_v1_binding = { condition; members; role }

let make_google_iam_v1_policy ?audit_configs ?bindings ?etag ?version () : google_iam_v1_policy = { audit_configs; bindings; etag; version }

let make_google_iam_v1_set_iam_policy_request ?policy ?update_mask () : google_iam_v1_set_iam_policy_request = { policy; update_mask }

let make_google_iam_v1_test_iam_permissions_request ?permissions () : google_iam_v1_test_iam_permissions_request = { permissions }

let make_google_iam_v1_test_iam_permissions_response ?permissions () : google_iam_v1_test_iam_permissions_response = { permissions }

let make_google_longrunning_list_operations_response ?next_page_token ?operations ?unreachable () : google_longrunning_list_operations_response = { next_page_token; operations; unreachable }

let make_google_longrunning_operation ?done_ ?error ?metadata ?name ?response () : google_longrunning_operation = { done_; error; metadata; name; response }

let make_google_longrunning_wait_operation_request ?timeout () : google_longrunning_wait_operation_request = { timeout }

let make_google_rpc_status ?code ?details ?message () : google_rpc_status = { code; details; message }

let make_google_type_expr ?description ?expression ?location ?title () : google_type_expr = { description; expression; location; title }

let make_util_status_proto ?canonical_code ?code ?message ?message_set ?space () : util_status_proto = { canonical_code; code; message; message_set; space }

let base_url = "https://run.googleapis.com/"
let batch_endpoint = Uri.of_string "https://run.googleapis.com/batch"
let batch ~access_token calls = Google_api.Batch.execute ~access_token ~endpoint:batch_endpoint calls

module Projects = struct
  module Locations = struct
    let export_image ~name ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":exportImage"))
        ~body:(yojson_of_google_cloud_run_v2_export_image_request body)
        (Google_api_runtime.Call.json google_cloud_run_v2_export_image_response_of_yojson)

    let export_image_metadata ~name () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":exportImageMetadata"))
        (Google_api_runtime.Call.json google_cloud_run_v2_metadata_of_yojson)

    let export_metadata ~name () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":exportMetadata"))
        (Google_api_runtime.Call.json google_cloud_run_v2_metadata_of_yojson)

    let export_project_metadata ~name () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":exportProjectMetadata"))
        (Google_api_runtime.Call.json google_cloud_run_v2_metadata_of_yojson)

    module Builds = struct
      let submit ~parent ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/builds:submit"))
          ~body:(yojson_of_google_cloud_run_v2_submit_build_request body)
          (Google_api_runtime.Call.json google_cloud_run_v2_submit_build_response_of_yojson)
    end

    module Instances = struct
      let create ~parent ~body ?instance_id ?validate_only () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/instances"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "instanceId" Fun.id instance_id;
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                  ]))
          ~body:(yojson_of_google_cloud_run_v2_instance body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let delete ~name ?etag ?validate_only () =
        Google_api_runtime.Call.make ~meth:`DELETE
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "etag" Fun.id etag;
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                  ]))
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json google_cloud_run_v2_instance_of_yojson)

      let get_iam_policy ~resource ?options_requested_policy_version () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":getIamPolicy"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "options.requestedPolicyVersion" string_of_int options_requested_policy_version;
                  ]))
          (Google_api_runtime.Call.json google_iam_v1_policy_of_yojson)

      let list ~parent ?page_size ?page_token ?show_deleted () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/instances"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                    Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                  ]))
          (Google_api_runtime.Call.json google_cloud_run_v2_list_instances_response_of_yojson)

      let patch ~name ~body ?allow_missing ?update_mask ?validate_only () =
        Google_api_runtime.Call.make ~meth:`PATCH
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "allowMissing" string_of_bool allow_missing;
                    Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                  ]))
          ~body:(yojson_of_google_cloud_run_v2_instance body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let set_iam_policy ~resource ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":setIamPolicy"))
          ~body:(yojson_of_google_iam_v1_set_iam_policy_request body)
          (Google_api_runtime.Call.json google_iam_v1_policy_of_yojson)

      let start ~name ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":start"))
          ~body:(yojson_of_google_cloud_run_v2_start_instance_request body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let stop ~name ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":stop"))
          ~body:(yojson_of_google_cloud_run_v2_stop_instance_request body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let test_iam_permissions ~resource ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":testIamPermissions"))
          ~body:(yojson_of_google_iam_v1_test_iam_permissions_request body)
          (Google_api_runtime.Call.json google_iam_v1_test_iam_permissions_response_of_yojson)
    end

    module Jobs = struct
      let create ~parent ~body ?job_id ?validate_only () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/jobs"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "jobId" Fun.id job_id;
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                  ]))
          ~body:(yojson_of_google_cloud_run_v2_job body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let delete ~name ?etag ?validate_only () =
        Google_api_runtime.Call.make ~meth:`DELETE
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "etag" Fun.id etag;
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                  ]))
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json google_cloud_run_v2_job_of_yojson)

      let get_iam_policy ~resource ?options_requested_policy_version () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":getIamPolicy"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "options.requestedPolicyVersion" string_of_int options_requested_policy_version;
                  ]))
          (Google_api_runtime.Call.json google_iam_v1_policy_of_yojson)

      let list ~parent ?page_size ?page_token ?show_deleted () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/jobs"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                    Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                  ]))
          (Google_api_runtime.Call.json google_cloud_run_v2_list_jobs_response_of_yojson)

      let patch ~name ~body ?allow_missing ?validate_only () =
        Google_api_runtime.Call.make ~meth:`PATCH
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "allowMissing" string_of_bool allow_missing;
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                  ]))
          ~body:(yojson_of_google_cloud_run_v2_job body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let run ~name ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":run"))
          ~body:(yojson_of_google_cloud_run_v2_run_job_request body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let set_iam_policy ~resource ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":setIamPolicy"))
          ~body:(yojson_of_google_iam_v1_set_iam_policy_request body)
          (Google_api_runtime.Call.json google_iam_v1_policy_of_yojson)

      let test_iam_permissions ~resource ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":testIamPermissions"))
          ~body:(yojson_of_google_iam_v1_test_iam_permissions_request body)
          (Google_api_runtime.Call.json google_iam_v1_test_iam_permissions_response_of_yojson)

      module Executions = struct
        let cancel ~name ~body () =
          Google_api_runtime.Call.make ~meth:`POST
            ~uri:
              (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":cancel"))
            ~body:(yojson_of_google_cloud_run_v2_cancel_execution_request body)
            (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

        let delete ~name ?etag ?validate_only () =
          Google_api_runtime.Call.make ~meth:`DELETE
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "etag" Fun.id etag;
                      Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                    ]))
            (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

        let export_status ~name ~operation_id () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ "/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) operation_id ^ ":exportStatus"))
            (Google_api_runtime.Call.json google_cloud_run_v2_export_status_response_of_yojson)

        let get ~name () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
            (Google_api_runtime.Call.json google_cloud_run_v2_execution_of_yojson)

        let list ~parent ?page_size ?page_token ?show_deleted () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/executions"))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                      Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                      Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                    ]))
            (Google_api_runtime.Call.json google_cloud_run_v2_list_executions_response_of_yojson)

        module Tasks = struct
          let get ~name () =
            Google_api_runtime.Call.make ~meth:`GET
              ~uri:
                (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
              (Google_api_runtime.Call.json google_cloud_run_v2_task_of_yojson)

          let list ~parent ?page_size ?page_token ?show_deleted () =
            Google_api_runtime.Call.make ~meth:`GET
              ~uri:
                (Uri.add_query_params
                   (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/tasks"))
                   (List.concat
                      [
                        Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                        Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                        Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                      ]))
              (Google_api_runtime.Call.json google_cloud_run_v2_list_tasks_response_of_yojson)
        end
      end
    end

    module Operations = struct
      let delete ~name () =
        Google_api_runtime.Call.make ~meth:`DELETE
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json google_protobuf_empty_of_yojson)

      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let list ~name ?filter ?page_size ?page_token ?return_partial_success () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ "/operations"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "filter" Fun.id filter;
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                    Google_api_runtime.Query.optional "returnPartialSuccess" string_of_bool return_partial_success;
                  ]))
          (Google_api_runtime.Call.json google_longrunning_list_operations_response_of_yojson)

      let wait ~name ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":wait"))
          ~body:(yojson_of_google_longrunning_wait_operation_request body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)
    end

    module Services = struct
      let create ~parent ~body ?service_id ?validate_only () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/services"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "serviceId" Fun.id service_id;
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                  ]))
          ~body:(yojson_of_google_cloud_run_v2_service body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let delete ~name ?etag ?validate_only () =
        Google_api_runtime.Call.make ~meth:`DELETE
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "etag" Fun.id etag;
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                  ]))
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json google_cloud_run_v2_service_of_yojson)

      let get_iam_policy ~resource ?options_requested_policy_version () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":getIamPolicy"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "options.requestedPolicyVersion" string_of_int options_requested_policy_version;
                  ]))
          (Google_api_runtime.Call.json google_iam_v1_policy_of_yojson)

      let list ~parent ?page_size ?page_token ?show_deleted () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/services"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                    Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                  ]))
          (Google_api_runtime.Call.json google_cloud_run_v2_list_services_response_of_yojson)

      let patch ~name ~body ?allow_missing ?force_new_revision ?update_mask ?validate_only () =
        Google_api_runtime.Call.make ~meth:`PATCH
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "allowMissing" string_of_bool allow_missing;
                    Google_api_runtime.Query.optional "forceNewRevision" string_of_bool force_new_revision;
                    Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                  ]))
          ~body:(yojson_of_google_cloud_run_v2_service body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let set_iam_policy ~resource ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":setIamPolicy"))
          ~body:(yojson_of_google_iam_v1_set_iam_policy_request body)
          (Google_api_runtime.Call.json google_iam_v1_policy_of_yojson)

      let test_iam_permissions ~resource ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":testIamPermissions"))
          ~body:(yojson_of_google_iam_v1_test_iam_permissions_request body)
          (Google_api_runtime.Call.json google_iam_v1_test_iam_permissions_response_of_yojson)

      module Revisions = struct
        let delete ~name ?etag ?validate_only () =
          Google_api_runtime.Call.make ~meth:`DELETE
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "etag" Fun.id etag;
                      Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                    ]))
            (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

        let export_status ~name ~operation_id () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ "/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) operation_id ^ ":exportStatus"))
            (Google_api_runtime.Call.json google_cloud_run_v2_export_status_response_of_yojson)

        let get ~name () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
            (Google_api_runtime.Call.json google_cloud_run_v2_revision_of_yojson)

        let list ~parent ?page_size ?page_token ?show_deleted () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/revisions"))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                      Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                      Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                    ]))
            (Google_api_runtime.Call.json google_cloud_run_v2_list_revisions_response_of_yojson)
      end
    end

    module Source_uploads = struct
      let upload ~parent ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ ":uploadSource"))
          ~body:(yojson_of_google_cloud_run_v2_upload_source_request body)
          (Google_api_runtime.Call.json google_cloud_run_v2_upload_source_response_of_yojson)
    end

    module Worker_pools = struct
      let create ~parent ~body ?validate_only ?worker_pool_id () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/workerPools"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                    Google_api_runtime.Query.optional "workerPoolId" Fun.id worker_pool_id;
                  ]))
          ~body:(yojson_of_google_cloud_run_v2_worker_pool body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let delete ~name ?etag ?validate_only () =
        Google_api_runtime.Call.make ~meth:`DELETE
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "etag" Fun.id etag;
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                  ]))
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json google_cloud_run_v2_worker_pool_of_yojson)

      let get_iam_policy ~resource ?options_requested_policy_version () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":getIamPolicy"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "options.requestedPolicyVersion" string_of_int options_requested_policy_version;
                  ]))
          (Google_api_runtime.Call.json google_iam_v1_policy_of_yojson)

      let list ~parent ?page_size ?page_token ?show_deleted () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/workerPools"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                    Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                  ]))
          (Google_api_runtime.Call.json google_cloud_run_v2_list_worker_pools_response_of_yojson)

      let patch ~name ~body ?allow_missing ?force_new_revision ?update_mask ?validate_only () =
        Google_api_runtime.Call.make ~meth:`PATCH
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "allowMissing" string_of_bool allow_missing;
                    Google_api_runtime.Query.optional "forceNewRevision" string_of_bool force_new_revision;
                    Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
                    Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                  ]))
          ~body:(yojson_of_google_cloud_run_v2_worker_pool body)
          (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

      let set_iam_policy ~resource ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":setIamPolicy"))
          ~body:(yojson_of_google_iam_v1_set_iam_policy_request body)
          (Google_api_runtime.Call.json google_iam_v1_policy_of_yojson)

      let test_iam_permissions ~resource ~body () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) resource ^ ":testIamPermissions"))
          ~body:(yojson_of_google_iam_v1_test_iam_permissions_request body)
          (Google_api_runtime.Call.json google_iam_v1_test_iam_permissions_response_of_yojson)

      module Revisions = struct
        let delete ~name ?etag ?validate_only () =
          Google_api_runtime.Call.make ~meth:`DELETE
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "etag" Fun.id etag;
                      Google_api_runtime.Query.optional "validateOnly" string_of_bool validate_only;
                    ]))
            (Google_api_runtime.Call.json google_longrunning_operation_of_yojson)

        let get ~name () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
            (Google_api_runtime.Call.json google_cloud_run_v2_revision_of_yojson)

        let list ~parent ?page_size ?page_token ?show_deleted () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v2/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/revisions"))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                      Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                      Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                    ]))
            (Google_api_runtime.Call.json google_cloud_run_v2_list_revisions_response_of_yojson)
      end
    end
  end
end
