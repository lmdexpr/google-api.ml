(* Generated from the Discovery document of run v2 (revision 20261016). Do not edit. *)

(** Cloud Run Admin API (run v2, revision 20261016).

    Deploy and manage user provided container images that scale automatically based on incoming requests. The Cloud Run Admin API v1 follows the Knative Serving API specification, while v2 is aligned with Google Cloud AIP-based API standards, as described in https://google.aip.dev/.

    {{:https://cloud.google.com/run/}Documentation} *)

(** Configuration for Ambient Networking. *)
type google_cloud_run_v2_ambient_networking = {
  ambient_scope : [ `Ambient_scope_unspecified | `Ambient_scope_regional | `Ambient_scope_global | `Unrecognized of string ] option;  (** The ambient networking scope of the instance. *)
  enabled : bool option;  (** Optional. Whether ambient networking is enabled. *)
}

(** Settings for Binary Authorization feature. *)
and google_cloud_run_v2_binary_authorization = {
  breakglass_justification : string option;  (** Optional. If present, indicates to use Breakglass using this justification. If use_default is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass *)
  policy : string option;  (** Optional. The path to a binary authorization policy. Format: `projects/\{project\}/platforms/cloudRun/\{policy-name\}` *)
  use_default : bool option;  (** Optional. If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled. *)
}

(** Describes the Build step of the function that builds a container from the given source. *)
and google_cloud_run_v2_build_config = {
  base_image : string option;  (** Optional. The base image used to build the function. *)
  enable_automatic_updates : bool option;  (** Optional. Sets whether the function will receive automatic base image updates. *)
  environment_variables : (string * string) list option;  (** Optional. User-provided build-time environment variables for the function *)
  function_target : string option;  (** Optional. The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named 'function'. *)
  image_uri : string option;  (** Optional. Artifact Registry URI to store the built image. *)
  name : string option;  (** Output only. The Cloud Build name of the latest successful deployment of the function. *)
  service_account : string option;  (** Optional. Service account to be used for building the container. The format of this field is `projects/\{projectId\}/serviceAccounts/\{serviceAccountEmail\}`. *)
  source_location : string option;  (** The Cloud Storage bucket URI where the function source code is located. *)
  worker_pool : string option;  (** Optional. Name of the Cloud Build Custom Worker Pool that should be used to build the Cloud Run function. The format of this field is `projects/\{project\}/locations/\{region\}/workerPools/\{workerPool\}` where `\{project\}` and `\{region\}` are the project id and region respectively where the worker pool is defined and `\{workerPool\}` is the short name of the worker pool. *)
}

(** Build information of the image. *)
and google_cloud_run_v2_build_info = {
  function_target : string option;  (** Output only. Entry point of the function when the image is a Cloud Run function. *)
  source_location : string option;  (** Output only. Source code location of the image. *)
}

(** Build the source using Buildpacks. *)
and google_cloud_run_v2_buildpacks_build = {
  base_image : string option;  (** Optional. The base image to use for the build. *)
  cache_image_uri : string option;  (** Optional. cache_image_uri is the GCR/AR URL where the cache image will be stored. cache_image_uri is optional and omitting it will disable caching. This URL must be stable across builds. It is used to derive a build-specific temporary URL by substituting the tag with the build ID. The build will clean up the temporary image on a best-effort basis. *)
  enable_automatic_updates : bool option;  (** Optional. Whether or not the application container will be enrolled in automatic base image updates. When true, the application will be built on a scratch base image, so the base layers can be appended at run time. *)
  environment_variables : (string * string) list option;  (** Optional. User-provided build-time environment variables. *)
  function_target : string option;  (** Optional. Name of the function target if the source is a function source. Required for function builds. *)
  project_descriptor : string option;  (** Optional. project_descriptor stores the path to the project descriptor file. When empty, it means that there is no project descriptor file in the source. *)
  runtime : string option;  (** The runtime name, e.g. 'go113'. Leave blank for generic builds. *)
}

(** Request message for deleting an Execution. *)
and google_cloud_run_v2_cancel_execution_request = {
  etag : string option;  (** A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict during updates. *)
  validate_only : bool option;  (** Indicates that the request should be validated without actually cancelling any resources. *)
}

(** Represents a set of Cloud SQL instances. Each one will be available under /cloudsql/\[instance\]. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. *)
and google_cloud_run_v2_cloud_sql_instance = {
  instances : string list option;  (** A list of Cloud SQL instance connection names. Cloud Run uses these to establish connections to the specified Cloud SQL instances. While the SQL instance name itself is unique within a project, the full connection name requires the location for proper routing. Format: `\{project\}:\{location\}:\{instance\}` Example: `my-project:us-central1:my-instance` You can find this value on the instance's **Overview** page in the Google Cloud console or by using the following `gcloud` command: ```sh gcloud sql instances describe INSTANCE_NAME \\ --format='value(connectionName)' ``` Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. *)
}

(** Cloud Storage source. *)
and google_cloud_run_v2_cloud_storage_source = {
  bucket : string option;  (** Required. The Cloud Storage bucket name. *)
  generation : string option;  (** Optional. The Cloud Storage object generation. *)
  object_ : string option;  (** Required. The Cloud Storage object name. *)
}

(** Defines a status condition for a resource. *)
and google_cloud_run_v2_condition = {
  execution_reason : [ `Execution_reason_undefined | `Job_status_service_polling_error | `Non_zero_exit_code | `Cancelled | `Cancelling | `Deleted | `Delayed_start_pending | `Delayed_execution_exceeding_duration_limit | `Unrecognized of string ] option;  (** Output only. A reason for the execution condition. *)
  instance_reason : [ `Instance_reason_unspecified | `Instance_deleted | `Instance_stopped | `Instance_stopping | `Instance_non_zero_exit_code | `Unrecognized of string ] option;  (** Output only. A reason for the instance condition. *)
  last_transition_time : string option;  (** Last time the condition transitioned from one status to another. *)
  message : string option;  (** Human readable message indicating details about the current status. *)
  reason : [ `Common_reason_undefined | `Unknown | `Revision_failed | `Progress_deadline_exceeded | `Container_missing | `Container_permission_denied | `Container_image_unauthorized | `Container_image_authorization_check_failed | `Encryption_key_permission_denied | `Encryption_key_check_failed | `Secrets_access_check_failed | `Waiting_for_operation | `Immediate_retry | `Postponed_retry | `Internal | `Vpc_network_not_found | `Unrecognized of string ] option;  (** Output only. A common (service-level) reason for this condition. *)
  revision_reason : [ `Revision_reason_undefined | `Pending | `Reserve | `Retired | `Retiring | `Recreating | `Health_check_container_error | `Customized_path_response_pending | `Min_instances_not_provisioned | `Active_revision_limit_reached | `No_deployment | `Health_check_skipped | `Min_instances_warming | `Unrecognized of string ] option;  (** Output only. A reason for the revision condition. *)
  severity : [ `Severity_unspecified | `Error | `Warning | `Info | `Unrecognized of string ] option;  (** How to interpret failures of this condition, one of Error, Warning, Info *)
  state : [ `State_unspecified | `Condition_pending | `Condition_reconciling | `Condition_failed | `Condition_succeeded | `Unrecognized of string ] option;  (** State of the condition. *)
  type_ : string option;  (** type is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting Types common to all resources include: * 'Ready': True when the Resource is ready. *)
}

(** A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments can be supplied by the system to the container at runtime. *)
and google_cloud_run_v2_container = {
  args : string list option;  (** Arguments to the entrypoint. The docker image's CMD is used if this is not provided. *)
  base_image_uri : string option;  (** Base image for this container. Only supported for services. If set, it indicates that the service is enrolled into automatic base image update. *)
  build_info : google_cloud_run_v2_build_info option;  (** Output only. The build info of the container image. *)
  command : string list option;  (** Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. *)
  depends_on : string list option;  (** Names of the containers that must start before this container. *)
  env : google_cloud_run_v2_env_var list option;  (** List of environment variables to set in the container. *)
  image : string option;  (** Required. Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed. *)
  liveness_probe : google_cloud_run_v2_probe option;  (** Periodic probe of container liveness. Container will be restarted if the probe fails. *)
  name : string option;  (** Name of the container specified as a DNS_LABEL (RFC 1123). *)
  ports : google_cloud_run_v2_container_port list option;  (** List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on. *)
  readiness_probe : google_cloud_run_v2_probe option;  (** Readiness probe to be used for health checks. *)
  resources : google_cloud_run_v2_resource_requirements option;  (** Compute Resource requirements by this container. *)
  sandbox_launcher : bool option;  (** Optional. Indicates that this container can act as a sandbox supervisor and launch sandboxes. *)
  source_code : google_cloud_run_v2_source_code option;  (** Optional. Location of the source. This field is only supported in Cloud Run Service. *)
  startup_probe : google_cloud_run_v2_probe option;  (** Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails. *)
  volume_mounts : google_cloud_run_v2_volume_mount list option;  (** Volume to mount into the container's filesystem. *)
  working_dir : string option;  (** Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. *)
}

(** Per-container override specification. *)
and google_cloud_run_v2_container_override = {
  args : string list option;  (** Optional. Arguments to the entrypoint. Will replace existing args for override. *)
  clear_args : bool option;  (** Optional. True if the intention is to clear out existing args list. *)
  env : google_cloud_run_v2_env_var list option;  (** List of environment variables to set in the container. Will be merged with existing env for override. *)
  name : string option;  (** The name of the container specified as a DNS_LABEL. *)
}

(** ContainerPort represents a network port in a single container. *)
and google_cloud_run_v2_container_port = {
  container_port : int option;  (** Port number the container listens on. This must be a valid TCP port number, 0 < container_port < 65536. *)
  name : string option;  (** If specified, used to specify which protocol to use. Allowed values are 'http1' and 'h2c'. *)
}

(** ContainerStatus holds the information of container name and image digest value. *)
and google_cloud_run_v2_container_status = {
  image_digest : string option;  (** ImageDigest holds the resolved digest for the image specified and resolved during the creation of Revision. This field holds the digest value regardless of whether a tag or digest was originally specified in the Container object. *)
  name : string option;  (** The name of the container, if specified. *)
}

(** Build the source using Docker. This means the source has a Dockerfile. *)
and google_cloud_run_v2_docker_build = Yojson.Safe.t

(** In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs). *)
and google_cloud_run_v2_empty_dir_volume_source = {
  medium : [ `Medium_unspecified | `Memory | `Disk | `Unrecognized of string ] option;  (** The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none, the default will currently be backed by memory but could change over time. +optional *)
  size_limit : string option;  (** Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir *)
}

(** EnvVar represents an environment variable present in a Container. *)
and google_cloud_run_v2_env_var = {
  name : string option;  (** Required. Name of the environment variable. Must not exceed 32768 characters. *)
  value : string option;  (** Literal value of the environment variable. Defaults to '', and the maximum length is 32768 bytes. Variable references are not supported in Cloud Run. *)
  value_source : google_cloud_run_v2_env_var_source option;  (** Source for the environment variable's value. *)
}

(** EnvVarSource represents a source for the value of an EnvVar. *)
and google_cloud_run_v2_env_var_source = {
  secret_key_ref : google_cloud_run_v2_secret_key_selector option;  (** Selects a secret and a specific version from Cloud Secret Manager. *)
}

(** Execution represents the configuration of a single execution. A execution an immutable resource that references a container image which is run to completion. *)
and google_cloud_run_v2_execution = {
  annotations : (string * string) list option;  (** Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. *)
  cancelled_count : int option;  (** Output only. The number of tasks which reached phase Cancelled. *)
  client : string option;  (** Output only. Arbitrary identifier for the API client. *)
  client_version : string option;  (** Output only. Arbitrary version identifier for the API client. *)
  completion_time : string option;  (** Output only. Represents time when the execution was completed. It is not guaranteed to be set in happens-before order across separate operations. *)
  conditions : google_cloud_run_v2_condition list option;  (** Output only. The Condition of this Execution, containing its readiness status, and detailed error information in case it did not reach the desired state. *)
  create_time : string option;  (** Output only. Represents time when the execution was acknowledged by the execution controller. It is not guaranteed to be set in happens-before order across separate operations. *)
  creator : string option;  (** Output only. Email address of the authenticated creator. *)
  delete_time : string option;  (** Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request. *)
  etag : string option;  (** Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates. *)
  expire_time : string option;  (** Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request. *)
  failed_count : int option;  (** Output only. The number of tasks which reached phase Failed. *)
  generation : string option;  (** Output only. A number that monotonically increases every time the user modifies the desired state. *)
  job : string option;  (** Output only. The name of the parent Job. *)
  labels : (string * string) list option;  (** Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels *)
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;  (** The least stable launch stage needed to create this resource, as defined by \[Google Cloud Platform Launch Stages\](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. Note that this value might not be what was used as input. For example, if ALPHA was provided as input in the parent resource, but only BETA and GA-level features are used, this field will be BETA. *)
  log_uri : string option;  (** Output only. URI where logs for this execution can be found in Cloud Console. *)
  name : string option;  (** Output only. The unique name of this Execution. *)
  observed_generation : string option;  (** Output only. The generation of this Execution. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  parallelism : int option;  (** Output only. Specifies the maximum desired number of tasks the execution should run at any given time. Must be <= task_count. The actual number of tasks running in steady state will be less than this number when ((.spec.task_count - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. *)
  reconciling : bool option;  (** Output only. Indicates whether the resource's reconciliation is still in progress. See comments in `Job.reconciling` for additional information on reconciliation process in Cloud Run. *)
  retried_count : int option;  (** Output only. The number of tasks which have retried at least once. *)
  running_count : int option;  (** Output only. The number of actively running tasks. *)
  satisfies_pzs : bool option;  (** Output only. Reserved for future use. *)
  start_time : string option;  (** Output only. Represents time when the execution started to run. It is not guaranteed to be set in happens-before order across separate operations. *)
  succeeded_count : int option;  (** Output only. The number of tasks which reached phase Succeeded. *)
  task_count : int option;  (** Output only. Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. *)
  template : google_cloud_run_v2_task_template option;  (** Output only. The template used to create tasks for this execution. *)
  uid : string option;  (** Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted. *)
  update_time : string option;  (** Output only. The last-modified time. *)
}

(** Reference to an Execution. Use /Executions.GetExecution with the given name to get full execution including the latest status. *)
and google_cloud_run_v2_execution_reference = {
  completion_status : [ `Completion_status_unspecified | `Execution_succeeded | `Execution_failed | `Execution_running | `Execution_pending | `Execution_cancelled | `Unrecognized of string ] option;  (** Status for the execution completion. *)
  completion_time : string option;  (** Creation timestamp of the execution. *)
  create_time : string option;  (** Creation timestamp of the execution. *)
  delete_time : string option;  (** The deletion time of the execution. It is only populated as a response to a Delete request. *)
  name : string option;  (** Name of the execution. *)
}

(** ExecutionTemplate describes the data an execution should have when created from a template. *)
and google_cloud_run_v2_execution_template = {
  annotations : (string * string) list option;  (** Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules. *)
  client : string option;  (** Optional. Arbitrary identifier for the API client. *)
  client_version : string option;  (** Optional. Arbitrary version identifier for the API client. *)
  delay_execution : bool option;  (** Optional. If true, the system will start the execution within the next 12 hours depending on available capacity. *)
  labels : (string * string) list option;  (** Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 ExecutionTemplate. *)
  parallelism : int option;  (** Optional. Specifies the maximum desired number of tasks the execution should run at given time. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism. *)
  task_count : int option;  (** Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1. *)
  template : google_cloud_run_v2_task_template option;  (** Required. Describes the task(s) that will be created when executing an execution. *)
}

(** Request message for exporting Cloud Run image. *)
and google_cloud_run_v2_export_image_request = {
  destination_repo : string option;  (** Required. The export destination url (the Artifact Registry repo). *)
}

(** ExportImageResponse contains an operation Id to track the image export operation. *)
and google_cloud_run_v2_export_image_response = {
  operation_id : string option;  (** An operation ID used to track the status of image exports tied to the original pod ID in the request. *)
}

(** ExportStatusResponse contains the status of image export operation, with the status of each image export job. *)
and google_cloud_run_v2_export_status_response = {
  image_export_statuses : google_cloud_run_v2_image_export_status list option;  (** The status of each image export job. *)
  operation_id : string option;  (** The operation id. *)
  operation_state : [ `Operation_state_unspecified | `In_progress | `Finished | `Unrecognized of string ] option;  (** Output only. The state of the overall export operation. *)
}

(** Represents a volume backed by a Cloud Storage bucket using Cloud Storage FUSE. *)
and google_cloud_run_v2_gcs_volume_source = {
  bucket : string option;  (** Cloud Storage Bucket name. *)
  mount_options : string list option;  (** A list of additional flags to pass to the gcsfuse CLI. Options should be specified without the leading '--'. *)
  read_only : bool option;  (** If true, the volume will be mounted as read only for all mounts. *)
}

(** GRPCAction describes an action involving a GRPC port. *)
and google_cloud_run_v2_grpc_action = {
  port : int option;  (** Optional. Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports\[0\].containerPort. *)
  service : string option;  (** Optional. Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this is not specified, the default behavior is defined by gRPC. *)
}

(** HTTPGetAction describes an action based on HTTP Get requests. *)
and google_cloud_run_v2_http_get_action = {
  http_headers : google_cloud_run_v2_http_header list option;  (** Optional. Custom headers to set in the request. HTTP allows repeated headers. *)
  path : string option;  (** Optional. Path to access on the HTTP server. Defaults to '/'. *)
  port : int option;  (** Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports\[0\].containerPort. *)
}

(** HTTPHeader describes a custom header to be used in HTTP probes *)
and google_cloud_run_v2_http_header = {
  name : string option;  (** Required. The header field name *)
  value : string option;  (** Optional. The header field value *)
}

(** The status of an image export job. *)
and google_cloud_run_v2_image_export_status = {
  export_job_state : [ `Export_job_state_unspecified | `In_progress | `Finished | `Unrecognized of string ] option;  (** Output only. Has the image export job finished (regardless of successful or failure). *)
  exported_image_digest : string option;  (** The exported image ID as it will appear in Artifact Registry. *)
  status : util_status_proto option;  (** The status of the export task if done. *)
  tag : string option;  (** The image tag as it will appear in Artifact Registry. *)
}

(** Inlined source. *)
and google_cloud_run_v2_inlined_source = {
  sources : google_cloud_run_v2_source_file list option;  (** Required. Input only. The source code. *)
}

(** A Cloud Run Instance represents a single group of containers running in a region. *)
and google_cloud_run_v2_instance = {
  annotations : (string * string) list option;
  binary_authorization : google_cloud_run_v2_binary_authorization option;  (** Settings for the Binary Authorization feature. *)
  client : string option;  (** Arbitrary identifier for the API client. *)
  client_version : string option;  (** Arbitrary version identifier for the API client. *)
  conditions : google_cloud_run_v2_condition list option;  (** Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Instance does not reach its Serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  container_statuses : google_cloud_run_v2_container_status list option;  (** Output only. Status information for each of the specified containers. The status includes the resolved digest for specified images. *)
  containers : google_cloud_run_v2_container list option;  (** Required. Holds the single container that defines the unit of execution for this Instance. *)
  create_time : string option;  (** Output only. The creation time. *)
  creator : string option;  (** Output only. Email address of the authenticated creator. *)
  default_uri_disabled : bool option;  (** Optional. Disables public resolution of the default URI of this Instance. *)
  delete_time : string option;  (** Output only. The deletion time. *)
  description : string option;  (** User-provided description of the Instance. This field currently has a 512-character limit. *)
  encryption_key : string option;  (** A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek *)
  encryption_key_revocation_action : [ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] option;  (** The action to take if the encryption key is revoked. *)
  encryption_key_shutdown_duration : string option;  (** If `encryption_key_revocation_action` is `SHUTDOWN`, the duration before shutting down all instances. The minimum increment is 1 hour. *)
  etag : string option;  (** Optional. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates. *)
  expire_time : string option;  (** Output only. For a deleted resource, the time after which it will be permamently deleted. *)
  generation : string option;  (** Output only. A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an `int64` value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`. *)
  gpu_zonal_redundancy_disabled : bool option;  (** Optional. True if GPU zonal redundancy is disabled on this instance. *)
  iap_enabled : bool option;  (** Optional. IAP settings on the Instance. *)
  ingress : [ `Ingress_traffic_unspecified | `Ingress_traffic_all | `Ingress_traffic_internal_only | `Ingress_traffic_internal_load_balancer | `Ingress_traffic_none | `Unrecognized of string ] option;  (** Optional. Provides the ingress settings for this Instance. On output, returns the currently observed ingress settings, or `INGRESS_TRAFFIC_UNSPECIFIED` if no revision is active. *)
  invoker_iam_disabled : bool option;  (** Optional. Disables IAM permission check for `run.routes.invoke` for callers of this Instance. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check. *)
  labels : (string * string) list option;
  last_modifier : string option;  (** Output only. Email address of the last authenticated modifier. *)
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;  (** The launch stage as defined by \[Google Cloud Platform Launch Stages\](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, `GA` is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if `ALPHA` is provided as input, but only `BETA` and `GA`-level features are used, this field will be `BETA` on output. *)
  log_uri : string option;  (** Output only. The Google Console URI to obtain logs for the Instance. *)
  name : string option;  (** The fully qualified name of this Instance. In `CreateInstanceRequest`, this field is ignored, and instead composed from `CreateInstanceRequest.parent` and `CreateInstanceRequest.instance_id`. *)
  node_selector : google_cloud_run_v2_node_selector option;  (** Optional. The node selector for the instance. *)
  observed_generation : string option;  (** Output only. The generation of this Instance currently serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an `int64` value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`. *)
  reconciling : bool option;  (** Output only. Returns `true` if the Instance is currently being acted upon by the system to bring it into the desired state. When a new Instance is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Instance to the desired serving state. This process is called reconciliation. While reconciliation is in process, `observed_generation` will have a transient value that might mismatch the intended state. Once reconciliation is over (and this field is `false`), there are two possible outcomes: reconciliation succeeded and the serving state matches the Instance, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. *)
  restart_policy : [ `Restart_policy_unspecified | `Always | `On_failure | `Never | `Unrecognized of string ] option;  (** Optional. Restart policy for the Instance. *)
  satisfies_pzs : bool option;  (** Output only. Reserved for future use. *)
  service_account : string option;
  ssh_enabled : bool option;  (** Optional. Enables SSH access to the Instance. *)
  terminal_condition : google_cloud_run_v2_condition option;  (** Output only. The Condition of this Instance, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  uid : string option;  (** Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted. *)
  update_time : string option;  (** Output only. The last-modified time. *)
  urls : string list option;  (** Output only. All URLs serving traffic for this Instance. *)
  volumes : google_cloud_run_v2_volume list option;  (** A list of Volumes to make available to containers. *)
  vpc_access : google_cloud_run_v2_vpc_access option;  (** Optional. VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. *)
}

(** Holds a single instance split entry for the Worker. Allocations can be done to a specific Revision name, or pointing to the latest Ready Revision. *)
and google_cloud_run_v2_instance_split = {
  percent : int option;  (** Specifies percent of the instance split to this Revision. This defaults to zero if unspecified. *)
  revision : string option;  (** Revision to which to assign this portion of instances, if split allocation is by revision. *)
  type_ : [ `Instance_split_allocation_type_unspecified | `Instance_split_allocation_type_latest | `Instance_split_allocation_type_revision | `Unrecognized of string ] option;  (** The allocation type for this instance split. *)
}

(** Represents the observed state of a single `InstanceSplit` entry. *)
and google_cloud_run_v2_instance_split_status = {
  percent : int option;  (** Specifies percent of the instance split to this Revision. *)
  revision : string option;  (** Revision to which this instance split is assigned. *)
  type_ : [ `Instance_split_allocation_type_unspecified | `Instance_split_allocation_type_latest | `Instance_split_allocation_type_revision | `Unrecognized of string ] option;  (** The allocation type for this instance split. *)
}

(** Job represents the configuration of a single job, which references a container image that is run to completion. *)
and google_cloud_run_v2_job = {
  annotations : (string * string) list option;  (** Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules. *)
  binary_authorization : google_cloud_run_v2_binary_authorization option;  (** Settings for the Binary Authorization feature. *)
  client : string option;  (** Arbitrary identifier for the API client. *)
  client_version : string option;  (** Arbitrary version identifier for the API client. *)
  conditions : google_cloud_run_v2_condition list option;  (** Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  create_time : string option;  (** Output only. The creation time. *)
  creator : string option;  (** Output only. Email address of the authenticated creator. *)
  delete_time : string option;  (** Output only. The deletion time. It is only populated as a response to a Delete request. *)
  etag : string option;  (** Optional. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates. *)
  execution_count : int option;  (** Output only. Number of executions created for this job. *)
  expire_time : string option;  (** Output only. For a deleted resource, the time after which it will be permamently deleted. *)
  functional_type : [ `Functional_type_unspecified | `Functional_type_agent | `Functional_type_mcp_server | `Unrecognized of string ] option;  (** Optional. The functional type of the Job. *)
  generation : string option;  (** Output only. A number that monotonically increases every time the user modifies the desired state. *)
  labels : (string * string) list option;  (** Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job. *)
  last_modifier : string option;  (** Output only. Email address of the last authenticated modifier. *)
  latest_created_execution : google_cloud_run_v2_execution_reference option;  (** Output only. Name of the last created execution. *)
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;  (** The launch stage as defined by \[Google Cloud Platform Launch Stages\](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output. *)
  name : string option;  (** The fully qualified name of this Job. Format: projects/\{project\}/locations/\{location\}/jobs/\{job\} *)
  observed_generation : string option;  (** Output only. The generation of this Job. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  reconciling : bool option;  (** Output only. Returns true if the Job is currently being acted upon by the system to bring it into the desired state. When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, `observed_generation` and `latest_succeeded_execution`, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `observed_generation` and `generation`, `latest_succeeded_execution` and `latest_created_execution`. If reconciliation failed, `observed_generation` and `latest_succeeded_execution` will have the state of the last succeeded execution or empty for newly created Job. Additional information on the failure can be found in `terminal_condition` and `conditions`. *)
  run_execution_token : string option;  (** A unique string used as a suffix for creating a new execution. The Job will become ready when the execution is successfully completed. The sum of job name and token length must be fewer than 63 characters. *)
  satisfies_pzs : bool option;  (** Output only. Reserved for future use. *)
  start_execution_token : string option;  (** A unique string used as a suffix creating a new execution. The Job will become ready when the execution is successfully started. The sum of job name and token length must be fewer than 63 characters. *)
  template : google_cloud_run_v2_execution_template option;  (** Required. The template used to create executions for this Job. *)
  terminal_condition : google_cloud_run_v2_condition option;  (** Output only. The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state. *)
  uid : string option;  (** Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted. *)
  update_time : string option;  (** Output only. The last-modified time. *)
}

(** Response message containing a list of Executions. *)
and google_cloud_run_v2_list_executions_response = {
  executions : google_cloud_run_v2_execution list option;  (** The resulting list of Executions. *)
  next_page_token : string option;  (** A token indicating there are more items than page_size. Use it in the next ListExecutions request to continue. *)
}

(** Response message containing a list of Instances. *)
and google_cloud_run_v2_list_instances_response = {
  instances : google_cloud_run_v2_instance list option;  (** The resulting list of Instances. *)
  next_page_token : string option;  (** A token indicating there are more items than page_size. Use it in the next ListInstances request to continue. *)
}

(** Response message containing a list of Jobs. *)
and google_cloud_run_v2_list_jobs_response = {
  jobs : google_cloud_run_v2_job list option;  (** The resulting list of Jobs. *)
  next_page_token : string option;  (** A token indicating there are more items than page_size. Use it in the next ListJobs request to continue. *)
}

(** Response message containing a list of Revisions. *)
and google_cloud_run_v2_list_revisions_response = {
  next_page_token : string option;  (** A token indicating there are more items than page_size. Use it in the next ListRevisions request to continue. *)
  revisions : google_cloud_run_v2_revision list option;  (** The resulting list of Revisions. *)
}

(** Response message containing a list of Services. *)
and google_cloud_run_v2_list_services_response = {
  next_page_token : string option;  (** A token indicating there are more items than page_size. Use it in the next ListServices request to continue. *)
  services : google_cloud_run_v2_service list option;  (** The resulting list of Services. *)
  unreachable : string list option;  (** Output only. For global requests, returns the list of regions that could not be reached within the deadline. *)
}

(** Response message containing a list of Tasks. *)
and google_cloud_run_v2_list_tasks_response = {
  next_page_token : string option;  (** A token indicating there are more items than page_size. Use it in the next ListTasks request to continue. *)
  tasks : google_cloud_run_v2_task list option;  (** The resulting list of Tasks. *)
}

(** Response message containing a list of WorkerPools. *)
and google_cloud_run_v2_list_worker_pools_response = {
  next_page_token : string option;  (** A token indicating there are more items than page_size. Use it in the next ListWorkerPools request to continue. *)
  worker_pools : google_cloud_run_v2_worker_pool list option;  (** The resulting list of WorkerPools. *)
}

(** Metadata represents the JSON encoded generated customer metadata. *)
and google_cloud_run_v2_metadata = {
  metadata : string option;  (** JSON encoded Google-generated Customer Metadata for a given resource/project. *)
}

(** Settings for multi-region deployment. *)
and google_cloud_run_v2_multi_region_settings = {
  multi_region_id : string option;  (** Optional. System-generated unique id for the multi-region Service. *)
  regions : string list option;  (** Required. List of regions to deploy to, including primary region. *)
}

(** Represents an NFS mount. *)
and google_cloud_run_v2_nfs_volume_source = {
  path : string option;  (** Path that is exported by the NFS server. *)
  read_only : bool option;  (** If true, the volume will be mounted as read only for all mounts. *)
  server : string option;  (** Hostname or IP address of the NFS server *)
}

(** Direct VPC egress settings. *)
and google_cloud_run_v2_network_interface = {
  network : string option;  (** Optional. The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be looked up from the subnetwork. *)
  subnetwork : string option;  (** Optional. The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used. *)
  tags : string list option;  (** Optional. Network tags applied to this Cloud Run resource. *)
}

(** Hardware constraints configuration. *)
and google_cloud_run_v2_node_selector = {
  accelerator : string option;  (** Required. GPU accelerator type to attach to an instance. *)
}

(** RunJob Overrides that contains Execution fields to be overridden. *)
and google_cloud_run_v2_overrides = {
  container_overrides : google_cloud_run_v2_container_override list option;  (** Per container override specification. *)
  delay_execution : bool option;  (** Optional. If true, the system will start the execution within the next 12 hours depending on available capacity. *)
  task_count : int option;  (** Optional. The desired number of tasks the execution should run. Will replace existing task_count value. *)
  timeout : string option;  (** Duration in seconds the task may be active before the system will actively try to mark it failed and kill associated containers. Will replace existing timeout_seconds value. *)
}

(** Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic. *)
and google_cloud_run_v2_probe = {
  failure_threshold : int option;  (** Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. *)
  grpc : google_cloud_run_v2_grpc_action option;  (** Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified. *)
  http_get : google_cloud_run_v2_http_get_action option;  (** Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified. *)
  initial_delay_seconds : int option;  (** Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. *)
  period_seconds : int option;  (** Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds. *)
  tcp_socket : google_cloud_run_v2_tcp_socket_action option;  (** Optional. TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified. *)
  timeout_seconds : int option;  (** Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds. *)
}

(** ResourceRequirements describes the compute resource requirements. *)
and google_cloud_run_v2_resource_requirements = {
  cpu_idle : bool option;  (** Determines whether CPU is only allocated during requests (true by default). However, if ResourceRequirements is set, the caller must explicitly set this field to true to preserve the default behavior. *)
  limits : (string * string) list option;  (** Only `memory`, `cpu` and `nvidia.com/gpu` keys in the map are supported. Notes: * The only supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. For more information, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits * The only supported 'nvidia.com/gpu' value is '1'. *)
  startup_cpu_boost : bool option;  (** Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency. *)
}

(** A Revision is an immutable snapshot of code and configuration. A Revision references a container image. Revisions are only created by updates to its parent Service. *)
and google_cloud_run_v2_revision = {
  ambient_networking : google_cloud_run_v2_ambient_networking option;  (** Output only. The ambient networking configuration for this revision. *)
  annotations : (string * string) list option;  (** Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. *)
  client : string option;  (** Output only. Arbitrary identifier for the API client. *)
  client_version : string option;  (** Output only. Arbitrary version identifier for the API client. *)
  conditions : google_cloud_run_v2_condition list option;  (** Output only. The Condition of this Revision, containing its readiness status, and detailed error information in case it did not reach a serving state. *)
  containers : google_cloud_run_v2_container list option;  (** Holds the list which define the units of execution for this Revision. *)
  create_time : string option;  (** Output only. The creation time. *)
  creator : string option;  (** Output only. Email address of the authenticated creator. *)
  delete_time : string option;  (** Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request. *)
  encryption_key : string option;  (** A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek *)
  encryption_key_revocation_action : [ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] option;  (** The action to take if the encryption key is revoked. *)
  encryption_key_shutdown_duration : string option;  (** If encryption_key_revocation_action is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour. *)
  etag : string option;  (** Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates. *)
  execution_environment : [ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] option;  (** The execution environment being used to host this Revision. *)
  expire_time : string option;  (** Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request. *)
  generation : string option;  (** Output only. A number that monotonically increases every time the user modifies the desired state. *)
  gpu_zonal_redundancy_disabled : bool option;  (** Optional. Output only. True if GPU zonal redundancy is disabled on this revision. *)
  labels : (string * string) list option;  (** Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. *)
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;  (** The least stable launch stage needed to create this resource, as defined by \[Google Cloud Platform Launch Stages\](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. Note that this value might not be what was used as input. For example, if ALPHA was provided as input in the parent resource, but only BETA and GA-level features are used, this field will be BETA. *)
  log_uri : string option;  (** Output only. The Google Console URI to obtain logs for the Revision. *)
  max_instance_request_concurrency : int option;  (** Sets the maximum number of requests that each serving instance can receive. *)
  name : string option;  (** Output only. The unique name of this Revision. *)
  node_selector : google_cloud_run_v2_node_selector option;  (** The node selector for the revision. *)
  observed_generation : string option;  (** Output only. The generation of this Revision currently serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  reconciling : bool option;  (** Output only. Indicates whether the resource's reconciliation is still in progress. See comments in `Service.reconciling` for additional information on reconciliation process in Cloud Run. *)
  satisfies_pzs : bool option;  (** Output only. Reserved for future use. *)
  scaling : google_cloud_run_v2_revision_scaling option;  (** Scaling settings for this revision. *)
  scaling_status : google_cloud_run_v2_revision_scaling_status option;  (** Output only. The current effective scaling settings for the revision. *)
  service : string option;  (** Output only. The name of the parent service. *)
  service_account : string option;  (** Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. *)
  service_mesh : google_cloud_run_v2_service_mesh option;  (** Enables service mesh connectivity. *)
  session_affinity : bool option;  (** Enable session affinity. *)
  timeout : string option;  (** Max allowed time for an instance to respond to a request. *)
  uid : string option;  (** Output only. Server assigned unique identifier for the Revision. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted. *)
  update_time : string option;  (** Output only. The last-modified time. *)
  volumes : google_cloud_run_v2_volume list option;  (** A list of Volumes to make available to containers. *)
  vpc_access : google_cloud_run_v2_vpc_access option;  (** VPC Access configuration for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. *)
  workload_identity_config : google_cloud_run_v2_workload_identity_config option;  (** Optional. The Revision's workload identity settings. *)
}

(** Settings for revision-level scaling settings. *)
and google_cloud_run_v2_revision_scaling = {
  concurrency_utilization : float option;  (** Optional. Determines a threshold for concurrency utilization before scaling begins. Accepted values are between `0.1` and `0.95` (inclusive) or `0.0` to disable concurrency utilization as threshold for scaling. CPU and concurrency scaling cannot both be disabled. *)
  cpu_utilization : float option;  (** Optional. Determines a threshold for CPU utilization before scaling begins. Accepted values are between `0.1` and `0.90` (inclusive) or `0.0` to disable CPU utilization as threshold for scaling. CPU and concurrency scaling cannot both be disabled. *)
  max_instance_count : int option;  (** Optional. Maximum number of serving instances that this resource should have. When unspecified, the field is set to the server default value of 100. For more information see https://cloud.google.com/run/docs/configuring/max-instances *)
  min_instance_count : int option;  (** Optional. Minimum number of serving instances that this resource should have. *)
}

(** Effective settings for the current revision *)
and google_cloud_run_v2_revision_scaling_status = {
  desired_min_instance_count : int option;  (** The current number of min instances provisioned for this revision. *)
}

(** RevisionTemplate describes the data a revision should have when created from a template. *)
and google_cloud_run_v2_revision_template = {
  ambient_networking : google_cloud_run_v2_ambient_networking option;  (** Optional. The ambient networking configuration for this revision. *)
  annotations : (string * string) list option;  (** Optional. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules. *)
  client : string option;  (** Optional. Arbitrary identifier for the API client. *)
  client_version : string option;  (** Optional. Arbitrary version identifier for the API client. *)
  containers : google_cloud_run_v2_container list option;  (** Holds the list which define the units of execution for this Revision. *)
  encryption_key : string option;  (** A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek *)
  encryption_key_revocation_action : [ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] option;  (** Optional. The action to take if the encryption key is revoked. *)
  encryption_key_shutdown_duration : string option;  (** Optional. If encryption_key_revocation_action is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour. *)
  execution_environment : [ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] option;  (** Optional. The sandbox environment to host this Revision. *)
  gpu_zonal_redundancy_disabled : bool option;  (** Optional. True if GPU zonal redundancy is disabled on this revision. *)
  health_check_disabled : bool option;  (** Optional. Disables health checking containers during deployment. *)
  labels : (string * string) list option;  (** Optional. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate. *)
  max_instance_request_concurrency : int option;  (** Optional. Sets the maximum number of requests that each serving instance can receive. If not specified or 0, concurrency defaults to 80 when requested `CPU >= 1` and defaults to 1 when requested `CPU < 1`. *)
  node_selector : google_cloud_run_v2_node_selector option;  (** Optional. The node selector for the revision template. *)
  revision : string option;  (** Optional. The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name. *)
  scaling : google_cloud_run_v2_revision_scaling option;  (** Optional. Scaling settings for this Revision. *)
  service_account : string option;  (** Optional. Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account. *)
  service_mesh : google_cloud_run_v2_service_mesh option;  (** Optional. Enables service mesh connectivity. *)
  session_affinity : bool option;  (** Optional. Enable session affinity. *)
  timeout : string option;  (** Optional. Max allowed time for an instance to respond to a request. *)
  volumes : google_cloud_run_v2_volume list option;  (** Optional. A list of Volumes to make available to containers. *)
  vpc_access : google_cloud_run_v2_vpc_access option;  (** Optional. VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. *)
  workload_identity_config : google_cloud_run_v2_workload_identity_config option;  (** Optional. The Revision's workload identity settings. *)
}

(** Request message to create a new Execution of a Job. *)
and google_cloud_run_v2_run_job_request = {
  etag : string option;  (** A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates. *)
  overrides : google_cloud_run_v2_overrides option;  (** Overrides specification for a given execution of a job. If provided, overrides will be applied to update the execution or task spec. *)
  validate_only : bool option;  (** Indicates that the request should be validated without actually deleting any resources. *)
}

(** SecretEnvVarSource represents a source for the value of an EnvVar. *)
and google_cloud_run_v2_secret_key_selector = {
  secret : string option;  (** Required. The name of the secret in Cloud Secret Manager. Format: \{secret_name\} if the secret is in the same project. projects/\{project\}/secrets/\{secret_name\} if the secret is in a different project. *)
  version : string option;  (** The Cloud Secret Manager secret version. Can be 'latest' for the latest version, an integer for a specific version, or a version alias. *)
}

(** The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secret. *)
and google_cloud_run_v2_secret_volume_source = {
  default_mode : int option;  (** Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. This might be in conflict with other options that affect the file mode, like fsGroup, and as a result, other mode bits could be set. *)
  items : google_cloud_run_v2_version_to_path list option;  (** If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path + VolumeMount.sub_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version. *)
  secret : string option;  (** Required. The name of the secret in Cloud Secret Manager. Format: \{secret\} if the secret is in the same project. projects/\{project\}/secrets/\{secret\} if the secret is in a different project. *)
}

(** Service acts as a top-level container that manages a set of configurations and revision templates which implement a network service. Service exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership. *)
and google_cloud_run_v2_service = {
  annotations : (string * string) list option;  (** Optional. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations' namespacing, limits, and rules. *)
  binary_authorization : google_cloud_run_v2_binary_authorization option;  (** Optional. Settings for the Binary Authorization feature. *)
  build_config : google_cloud_run_v2_build_config option;  (** Optional. Configuration for building a Cloud Run function. *)
  client : string option;  (** Arbitrary identifier for the API client. *)
  client_version : string option;  (** Arbitrary version identifier for the API client. *)
  conditions : google_cloud_run_v2_condition list option;  (** Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  create_time : string option;  (** Output only. The creation time. *)
  creator : string option;  (** Output only. Email address of the authenticated creator. *)
  custom_audiences : string list option;  (** One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests. For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences. *)
  default_uri_disabled : bool option;  (** Optional. Disables public resolution of the default URI of this service. *)
  delete_time : string option;  (** Output only. The deletion time. It is only populated as a response to a Delete request. *)
  description : string option;  (** User-provided description of the Service. This field currently has a 512-character limit. *)
  etag : string option;  (** Optional. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates. *)
  expire_time : string option;  (** Output only. For a deleted resource, the time after which it will be permanently deleted. *)
  functional_type : [ `Functional_type_unspecified | `Functional_type_agent | `Functional_type_mcp_server | `Unrecognized of string ] option;  (** Optional. The functional type of the Service. *)
  generation : string option;  (** Output only. A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`. *)
  iap_enabled : bool option;  (** Optional. IAP settings on the Service. *)
  ingress : [ `Ingress_traffic_unspecified | `Ingress_traffic_all | `Ingress_traffic_internal_only | `Ingress_traffic_internal_load_balancer | `Ingress_traffic_none | `Unrecognized of string ] option;  (** Optional. Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active. *)
  invoker_iam_disabled : bool option;  (** Optional. Disables IAM permission check for run.routes.invoke for callers of this service. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check. *)
  labels : (string * string) list option;  (** Optional. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service. *)
  last_modifier : string option;  (** Output only. Email address of the last authenticated modifier. *)
  latest_created_revision : string option;  (** Output only. Name of the last created revision. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  latest_ready_revision : string option;  (** Output only. Name of the latest revision that is serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;  (** Optional. The launch stage as defined by \[Google Cloud Platform Launch Stages\](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output. *)
  multi_region_settings : google_cloud_run_v2_multi_region_settings option;  (** Optional. Settings for multi-region deployment. *)
  name : string option;  (** Identifier. The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/\{project\}/locations/\{location\}/services/\{service_id\} *)
  observed_generation : string option;  (** Output only. The generation of this Service currently serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`. *)
  reconciling : bool option;  (** Output only. Returns true if the Service is currently being acted upon by the system to bring it into the desired state. When a new Service is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Service to the desired serving state. This process is called reconciliation. While reconciliation is in process, `observed_generation`, `latest_ready_revision`, `traffic_statuses`, and `uri` will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Service, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `traffic` and `traffic_statuses`, `observed_generation` and `generation`, `latest_ready_revision` and `latest_created_revision`. If reconciliation failed, `traffic_statuses`, `observed_generation`, and `latest_ready_revision` will have the state of the last serving revision, or empty for newly created Services. Additional information on the failure can be found in `terminal_condition` and `conditions`. *)
  satisfies_pzs : bool option;  (** Output only. Reserved for future use. *)
  scaling : google_cloud_run_v2_service_scaling option;  (** Optional. Specifies service-level scaling settings *)
  ssh_enabled : bool option;  (** Optional. Enables SSH access to the Service. *)
  template : google_cloud_run_v2_revision_template option;  (** Required. The template used to create revisions for this Service. *)
  terminal_condition : google_cloud_run_v2_condition option;  (** Output only. The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  threat_detection_enabled : bool option;  (** Output only. True if Cloud Run Threat Detection monitoring is enabled for the parent project of this Service. *)
  traffic : google_cloud_run_v2_traffic_target list option;  (** Optional. Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest `Ready` Revision. *)
  traffic_statuses : google_cloud_run_v2_traffic_target_status list option;  (** Output only. Detailed status information for corresponding traffic targets. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  uid : string option;  (** Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted. *)
  update_time : string option;  (** Output only. The last-modified time. *)
  uri : string option;  (** Output only. The main URI in which this Service is serving traffic. *)
  urls : string list option;  (** Output only. All URLs serving traffic for this Service. *)
}

(** Settings for Cloud Service Mesh. For more information see https://cloud.google.com/service-mesh/docs/overview. *)
and google_cloud_run_v2_service_mesh = {
  mesh : string option;  (** The Mesh resource name. Format: `projects/\{project\}/locations/global/meshes/\{mesh\}`, where `\{project\}` can be project id or number. *)
}

(** Scaling settings applied at the service level rather than at the revision level. *)
and google_cloud_run_v2_service_scaling = {
  manual_instance_count : int option;  (** Optional. total instance count for the service in manual scaling mode. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving. *)
  max_instance_count : int option;  (** Optional. total max instances for the service. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving. *)
  min_instance_count : int option;  (** Optional. total min instances for the service. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving. *)
  scaling_mode : [ `Scaling_mode_unspecified | `Automatic | `Manual | `Unrecognized of string ] option;  (** Optional. The scaling mode for the service. *)
}

(** Source type for the container. *)
and google_cloud_run_v2_source_code = {
  cloud_storage_source : google_cloud_run_v2_cloud_storage_source option;  (** The source is a Cloud Storage bucket. *)
  inlined_source : google_cloud_run_v2_inlined_source option;  (** Optional. Input only. Source code inlined in the request. Cloud Run will store the inlined_source to Cloud Storage and replace the field with cloud_storage_source. This field is only supported in Cloud Run Service. *)
}

(** Source file. *)
and google_cloud_run_v2_source_file = {
  content : string option;  (** Required. Input only. Represents the exact, literal, and complete source code of the file. Placeholders like `...` or comments such as `# \[rest of code\]` should NEVER be used as omission. Every character in this field will be built into the final container. Any omission will result in a broken application. *)
  filename : string option;  (** Required. Input only. The file name for the source code. e.g., `'index.js'` or `'node_modules/dependency.js'`. The filename must be less than 255 characters and cannot contain `..`, `./`, `//`, or end with a `/`. Cloud Run will place the files in the container subdirectories, please use relative path to access the file. *)
}

(** Request message for starting an Instance. *)
and google_cloud_run_v2_start_instance_request = {
  etag : string option;  (** Optional. A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict during updates. *)
  validate_only : bool option;  (** Optional. Indicates that the request should be validated without actually stopping any resources. *)
}

(** Request message for deleting an Instance. *)
and google_cloud_run_v2_stop_instance_request = {
  etag : string option;  (** Optional. A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict during updates. *)
  validate_only : bool option;  (** Optional. Indicates that the request should be validated without actually stopping any resources. *)
}

(** Location of the source in an archive file in Google Cloud Storage. *)
and google_cloud_run_v2_storage_source = {
  bucket : string option;  (** Required. Google Cloud Storage bucket containing the source (see \[Bucket Name Requirements\](https://cloud.google.com/storage/docs/bucket-naming#requirements)). *)
  generation : string option;  (** Optional. Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used. *)
  object_ : string option;  (** Required. Google Cloud Storage object containing the source. This object must be a gzipped archive file (`.tar.gz`) containing source to build. *)
}

(** Request message for submitting a Build. *)
and google_cloud_run_v2_submit_build_request = {
  buildpack_build : google_cloud_run_v2_buildpacks_build option;  (** Build the source using Buildpacks. *)
  client : string option;  (** Optional. The client that initiated the build request. *)
  docker_build : google_cloud_run_v2_docker_build option;  (** Build the source using Docker. This means the source has a Dockerfile. *)
  image_uri : string option;  (** Required. Artifact Registry URI to store the built image. *)
  machine_type : string option;  (** Optional. The machine type from default pool to use for the build. If left blank, cloudbuild will use a sensible default. Currently only E2_HIGHCPU_8 is supported. If worker_pool is set, this field will be ignored. *)
  release_track : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;  (** Optional. The release track of the client that initiated the build request. *)
  service_account : string option;  (** Optional. The service account to use for the build. If not set, the default Cloud Build service account for the project will be used. *)
  storage_source : google_cloud_run_v2_storage_source option;  (** Required. Source for the build. *)
  tags : string list option;  (** Optional. Additional tags to annotate the build. *)
  worker_pool : string option;  (** Optional. Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/\{project\}/locations/\{region\}/workerPools/\{workerPool\}` where `\{project\}` and `\{region\}` are the project id and region respectively where the worker pool is defined and `\{workerPool\}` is the short name of the worker pool. *)
}

(** Response message for submitting a Build. *)
and google_cloud_run_v2_submit_build_response = {
  base_image_uri : string option;  (** URI of the base builder image in Artifact Registry being used in the build. Used to opt into automatic base image updates. *)
  base_image_warning : string option;  (** Warning message for the base image. *)
  build_operation : google_longrunning_operation option;  (** Cloud Build operation to be polled via CloudBuild API. *)
}

(** TCPSocketAction describes an action based on opening a socket *)
and google_cloud_run_v2_tcp_socket_action = {
  port : int option;  (** Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports\[0\].containerPort. *)
}

(** Task represents a single run of a container to completion. *)
and google_cloud_run_v2_task = {
  annotations : (string * string) list option;  (** Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. *)
  completion_time : string option;  (** Output only. Represents time when the Task was completed. It is not guaranteed to be set in happens-before order across separate operations. *)
  conditions : google_cloud_run_v2_condition list option;  (** Output only. The Condition of this Task, containing its readiness status, and detailed error information in case it did not reach the desired state. *)
  containers : google_cloud_run_v2_container list option;  (** Holds the single container that defines the unit of execution for this task. *)
  create_time : string option;  (** Output only. Represents time when the task was created by the system. It is not guaranteed to be set in happens-before order across separate operations. *)
  delete_time : string option;  (** Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request. *)
  encryption_key : string option;  (** Output only. A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek *)
  etag : string option;  (** Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates. *)
  execution : string option;  (** Output only. The name of the parent Execution. *)
  execution_environment : [ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] option;  (** The execution environment being used to host this Task. *)
  expire_time : string option;  (** Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request. *)
  generation : string option;  (** Output only. A number that monotonically increases every time the user modifies the desired state. *)
  gpu_zonal_redundancy_disabled : bool option;  (** Optional. Output only. True if GPU zonal redundancy is disabled on this task. *)
  index : int option;  (** Output only. Index of the Task, unique per execution, and beginning at 0. *)
  job : string option;  (** Output only. The name of the parent Job. *)
  labels : (string * string) list option;  (** Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels *)
  last_attempt_result : google_cloud_run_v2_task_attempt_result option;  (** Output only. Result of the last attempt of this Task. *)
  log_uri : string option;  (** Output only. URI where logs for this execution can be found in Cloud Console. *)
  max_retries : int option;  (** Number of retries allowed per Task, before marking this Task failed. *)
  name : string option;  (** Output only. The unique name of this Task. *)
  node_selector : google_cloud_run_v2_node_selector option;  (** Output only. The node selector for the task. *)
  observed_generation : string option;  (** Output only. The generation of this Task. See comments in `Job.reconciling` for additional information on reconciliation process in Cloud Run. *)
  reconciling : bool option;  (** Output only. Indicates whether the resource's reconciliation is still in progress. See comments in `Job.reconciling` for additional information on reconciliation process in Cloud Run. *)
  retried : int option;  (** Output only. The number of times this Task was retried. Tasks are retried when they fail up to the maxRetries limit. *)
  satisfies_pzs : bool option;  (** Output only. Reserved for future use. *)
  scheduled_time : string option;  (** Output only. Represents time when the task was scheduled to run by the system. It is not guaranteed to be set in happens-before order across separate operations. *)
  service_account : string option;  (** Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account. *)
  start_time : string option;  (** Output only. Represents time when the task started to run. It is not guaranteed to be set in happens-before order across separate operations. *)
  timeout : string option;  (** Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. *)
  uid : string option;  (** Output only. Server assigned unique identifier for the Task. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted. *)
  update_time : string option;  (** Output only. The last-modified time. *)
  volumes : google_cloud_run_v2_volume list option;  (** A list of Volumes to make available to containers. *)
  vpc_access : google_cloud_run_v2_vpc_access option;  (** Output only. VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. *)
  workload_identity_config : google_cloud_run_v2_workload_identity_config option;  (** Optional. The Task's workload identity settings. *)
}

(** Result of a task attempt. *)
and google_cloud_run_v2_task_attempt_result = {
  exit_code : int option;  (** Output only. The exit code of this attempt. This may be unset if the container was unable to exit cleanly with a code due to some other failure. See status field for possible failure details. At most one of exit_code or term_signal will be set. *)
  status : google_rpc_status option;  (** Output only. The status of this attempt. If the status code is OK, then the attempt succeeded. *)
  term_signal : int option;  (** Output only. Termination signal of the container. This is set to non-zero if the container is terminated by the system. At most one of exit_code or term_signal will be set. *)
}

(** TaskTemplate describes the data a task should have when created from a template. *)
and google_cloud_run_v2_task_template = {
  containers : google_cloud_run_v2_container list option;  (** Holds the single container that defines the unit of execution for this task. *)
  encryption_key : string option;  (** A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek *)
  execution_environment : [ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] option;  (** Optional. The execution environment being used to host this Task. *)
  gpu_zonal_redundancy_disabled : bool option;  (** Optional. True if GPU zonal redundancy is disabled on this task template. *)
  max_retries : int option;  (** Number of retries allowed per Task, before marking this Task failed. Defaults to 3. *)
  node_selector : google_cloud_run_v2_node_selector option;  (** Optional. The node selector for the task template. *)
  service_account : string option;  (** Optional. Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account. *)
  timeout : string option;  (** Optional. Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds. *)
  volumes : google_cloud_run_v2_volume list option;  (** Optional. A list of Volumes to make available to containers. *)
  vpc_access : google_cloud_run_v2_vpc_access option;  (** Optional. VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. *)
  workload_identity_config : google_cloud_run_v2_workload_identity_config option;  (** Optional. The Task's workload identity settings. *)
}

(** Holds a single traffic routing entry for the Service. Allocations can be done to a specific Revision name, or pointing to the latest Ready Revision. *)
and google_cloud_run_v2_traffic_target = {
  percent : int option;  (** Specifies percent of the traffic to this Revision. This defaults to zero if unspecified. *)
  revision : string option;  (** Revision to which to send this portion of traffic, if traffic allocation is by revision. *)
  tag : string option;  (** Indicates a string to be part of the URI to exclusively reference this target. *)
  type_ : [ `Traffic_target_allocation_type_unspecified | `Traffic_target_allocation_type_latest | `Traffic_target_allocation_type_revision | `Unrecognized of string ] option;  (** The allocation type for this traffic target. *)
}

(** Represents the observed state of a single `TrafficTarget` entry. *)
and google_cloud_run_v2_traffic_target_status = {
  percent : int option;  (** Specifies percent of the traffic to this Revision. *)
  revision : string option;  (** Revision to which this traffic is sent. *)
  tag : string option;  (** Indicates the string used in the URI to exclusively reference this target. *)
  type_ : [ `Traffic_target_allocation_type_unspecified | `Traffic_target_allocation_type_latest | `Traffic_target_allocation_type_revision | `Unrecognized of string ] option;  (** The allocation type for this traffic target. *)
  uri : string option;  (** Displays the target URI. *)
}

(** The request message for the UploadSource method. *)
and google_cloud_run_v2_upload_source_request = {
  service : string option;  (** The name of Cloud Run Service upload source archive will be used for. *)
}

(** The response message for the UploadSource method. *)
and google_cloud_run_v2_upload_source_response = {
  cloud_storage_source : google_cloud_run_v2_cloud_storage_source option;  (** The Cloud Storage object path the source archive is uploaded to. *)
}

(** VersionToPath maps a specific version of a secret to a relative file to mount to, relative to VolumeMount's mount_path. *)
and google_cloud_run_v2_version_to_path = {
  mode : int option;  (** Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. *)
  path : string option;  (** Required. The relative path of the secret in the container. *)
  version : string option;  (** The Cloud Secret Manager secret version. Can be 'latest' for the latest value, or an integer or a secret alias for a specific version. *)
}

(** Volume represents a named volume in a container. *)
and google_cloud_run_v2_volume = {
  cloud_sql_instance : google_cloud_run_v2_cloud_sql_instance option;  (** For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. *)
  empty_dir : google_cloud_run_v2_empty_dir_volume_source option;  (** Ephemeral storage used as a shared volume. *)
  gcs : google_cloud_run_v2_gcs_volume_source option;  (** Persistent storage backed by a Google Cloud Storage bucket. *)
  name : string option;  (** Required. Volume's name. *)
  nfs : google_cloud_run_v2_nfs_volume_source option;  (** For NFS Voumes, contains the path to the nfs Volume *)
  secret : google_cloud_run_v2_secret_volume_source option;  (** Secret represents a secret that should populate this volume. *)
}

(** VolumeMount describes a mounting of a Volume within a container. *)
and google_cloud_run_v2_volume_mount = {
  mount_path : string option;  (** Required. Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be `/cloudsql`. All instances defined in the Volume will be available as `/cloudsql/\[instance\]`. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run *)
  name : string option;  (** Required. This must match the Name of a Volume. *)
  sub_path : string option;  (** Optional. Path within the volume from which the container's volume should be mounted. Defaults to '' (volume's root). This field is currently rejected in Secret volume mounts. *)
}

(** VPC Access settings. For more information on sending traffic to a VPC network, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. *)
and google_cloud_run_v2_vpc_access = {
  connector : string option;  (** VPC Access connector name. Format: `projects/\{project\}/locations/\{location\}/connectors/\{connector\}`, where `\{project\}` can be project id or number. For more information on sending traffic to a VPC network via a connector, visit https://cloud.google.com/run/docs/configuring/vpc-connectors. *)
  egress : [ `Vpc_egress_unspecified | `All_traffic | `Private_ranges_only | `Unrecognized of string ] option;  (** Optional. Traffic VPC egress settings. If not provided, it defaults to PRIVATE_RANGES_ONLY. *)
  network_interfaces : google_cloud_run_v2_network_interface list option;  (** Optional. Direct VPC egress settings. Currently only single network interface is supported. *)
}

(** WorkerPool acts as a top-level container that manages a set of configurations and revision templates which implement a pull-based workload. WorkerPool exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership. *)
and google_cloud_run_v2_worker_pool = {
  annotations : (string * string) list option;  (** Optional. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 WorkerPool. This field follows Kubernetes annotations' namespacing, limits, and rules. *)
  binary_authorization : google_cloud_run_v2_binary_authorization option;  (** Optional. Settings for the Binary Authorization feature. *)
  client : string option;  (** Arbitrary identifier for the API client. *)
  client_version : string option;  (** Arbitrary version identifier for the API client. *)
  conditions : google_cloud_run_v2_condition list option;  (** Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the WorkerPool does not reach its Serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  create_time : string option;  (** Output only. The creation time. *)
  creator : string option;  (** Output only. Email address of the authenticated creator. *)
  custom_audiences : string list option;  (** Deprecated: Not supported, and ignored by Cloud Run. *)
  delete_time : string option;  (** Output only. The deletion time. It is only populated as a response to a Delete request. *)
  description : string option;  (** User-provided description of the WorkerPool. This field currently has a 512-character limit. *)
  etag : string option;  (** Optional. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates. *)
  expire_time : string option;  (** Output only. For a deleted resource, the time after which it will be permamently deleted. *)
  generation : string option;  (** Output only. A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`. *)
  instance_split_statuses : google_cloud_run_v2_instance_split_status list option;  (** Output only. Detailed status information for corresponding instance splits. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  instance_splits : google_cloud_run_v2_instance_split list option;  (** Optional. Specifies how to distribute instances over a collection of Revisions belonging to the WorkerPool. If instance split is empty or not provided, defaults to 100% instances assigned to the latest `Ready` Revision. *)
  labels : (string * string) list option;  (** Optional. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 WorkerPool. *)
  last_modifier : string option;  (** Output only. Email address of the last authenticated modifier. *)
  latest_created_revision : string option;  (** Output only. Name of the last created revision. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  latest_ready_revision : string option;  (** Output only. Name of the latest revision that is serving workloads. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  launch_stage : [ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] option;  (** Optional. The launch stage as defined by \[Google Cloud Platform Launch Stages\](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output. *)
  name : string option;  (** The fully qualified name of this WorkerPool. In CreateWorkerPoolRequest, this field is ignored, and instead composed from CreateWorkerPoolRequest.parent and CreateWorkerPoolRequest.worker_id. Format: `projects/\{project\}/locations/\{location\}/workerPools/\{worker_id\}` *)
  observed_generation : string option;  (** Output only. The generation of this WorkerPool currently serving workloads. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`. *)
  reconciling : bool option;  (** Output only. Returns true if the WorkerPool is currently being acted upon by the system to bring it into the desired state. When a new WorkerPool is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the WorkerPool to the desired serving state. This process is called reconciliation. While reconciliation is in process, `observed_generation`, `latest_ready_revison`, `instance_split_statuses`, and `uri` will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the WorkerPool, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `instance_splits` and `instance_split_statuses`, `observed_generation` and `generation`, `latest_ready_revision` and `latest_created_revision`. If reconciliation failed, `instance_split_statuses`, `observed_generation`, and `latest_ready_revision` will have the state of the last serving revision, or empty for newly created WorkerPools. Additional information on the failure can be found in `terminal_condition` and `conditions`. *)
  satisfies_pzs : bool option;  (** Output only. Reserved for future use. *)
  scaling : google_cloud_run_v2_worker_pool_scaling option;  (** Optional. Specifies worker-pool-level scaling settings *)
  template : google_cloud_run_v2_worker_pool_revision_template option;  (** Required. The template used to create revisions for this WorkerPool. *)
  terminal_condition : google_cloud_run_v2_condition option;  (** Output only. The Condition of this WorkerPool, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. *)
  threat_detection_enabled : bool option;  (** Output only. Indicates whether Cloud Run Threat Detection monitoring is enabled for the parent project of this worker pool. *)
  uid : string option;  (** Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted. *)
  update_time : string option;  (** Output only. The last-modified time. *)
}

(** WorkerPoolRevisionTemplate describes the data a worker pool revision should have when created from a template. *)
and google_cloud_run_v2_worker_pool_revision_template = {
  annotations : (string * string) list option;  (** Optional. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 WorkerPoolRevisionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules. *)
  client : string option;  (** Optional. Arbitrary identifier for the API client. *)
  client_version : string option;  (** Optional. Arbitrary version identifier for the API client. *)
  containers : google_cloud_run_v2_container list option;  (** Holds list of the containers that defines the unit of execution for this Revision. *)
  encryption_key : string option;  (** A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek *)
  encryption_key_revocation_action : [ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] option;  (** Optional. The action to take if the encryption key is revoked. *)
  encryption_key_shutdown_duration : string option;  (** Optional. If encryption_key_revocation_action is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour. *)
  gpu_zonal_redundancy_disabled : bool option;  (** Optional. True if GPU zonal redundancy is disabled on this worker pool. *)
  labels : (string * string) list option;  (** Optional. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 WorkerPoolRevisionTemplate. *)
  node_selector : google_cloud_run_v2_node_selector option;  (** Optional. The node selector for the revision template. *)
  revision : string option;  (** Optional. The unique name for the revision. If this field is omitted, it will be automatically generated based on the WorkerPool name. *)
  service_account : string option;  (** Optional. Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account. *)
  service_mesh : google_cloud_run_v2_service_mesh option;  (** Optional. Enables service mesh connectivity. *)
  volumes : google_cloud_run_v2_volume list option;  (** Optional. A list of Volumes to make available to containers. *)
  vpc_access : google_cloud_run_v2_vpc_access option;  (** Optional. VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. *)
}

(** Worker pool scaling settings. *)
and google_cloud_run_v2_worker_pool_scaling = {
  manual_instance_count : int option;  (** Optional. The total number of instances in manual scaling mode. *)
}

(** Workload identity settings. *)
and google_cloud_run_v2_workload_identity_config = {
  identity : string option;  (** Optional. The Revision's SPIFFE workload identity. Enables provisioning of SPIFFE workload certificates. *)
  identity_certificate_enabled : bool option;  (** Optional. Controls whether an instance receives a MWLID certificate. Corresponds to the intention of the original --\[no-\]identity-certificate flag. *)
  identity_type : [ `Identity_type_unspecified | `Identity_type_service_account | `Identity_type_agent_identity | `Unrecognized of string ] option;  (** Optional. The type of identity to use. *)
}

(** ApprovalConfig describes configuration for manual approval of a build. *)
and google_devtools_cloudbuild_v1_approval_config = {
  approval_required : bool option;  (** Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start. *)
}

(** ApprovalResult describes the decision and associated metadata of a manual approval of a build. *)
and google_devtools_cloudbuild_v1_approval_result = {
  approval_time : string option;  (** Output only. The time when the approval decision was made. *)
  approver_account : string option;  (** Output only. Email of the user that called the ApproveBuild API to approve or reject a build at the time that the API was called. *)
  comment : string option;  (** Optional. An optional comment for this manual approval result. *)
  decision : [ `Decision_unspecified | `Approved | `Rejected | `Unrecognized of string ] option;  (** Required. The decision of this manual approval. *)
  url : string option;  (** Optional. An optional URL tied to this manual approval result. This field is essentially the same as comment, except that it will be rendered by the UI differently. An example use case is a link to an external job that approved this Build. *)
}

(** Files in the workspace to upload to Cloud Storage upon successful completion of all build steps. *)
and google_devtools_cloudbuild_v1_artifact_objects = {
  location : string option;  (** Cloud Storage bucket and optional object path, in the form 'gs://bucket/path/to/somewhere/'. (see \[Bucket Name Requirements\](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Files in the workspace matching any path pattern will be uploaded to Cloud Storage with this location as a prefix. *)
  paths : string list option;  (** Path globs used to match files in the build's workspace. *)
  timing : google_devtools_cloudbuild_v1_time_span option;  (** Output only. Stores timing information for pushing all artifact objects. *)
}

(** Artifacts produced by a build that should be uploaded upon successful completion of all build steps. *)
and google_devtools_cloudbuild_v1_artifacts = {
  generic_artifacts : google_devtools_cloudbuild_v1_generic_artifact list option;  (** Optional. A list of generic artifacts to be uploaded to Artifact Registry upon successful completion of all build steps. If any artifacts fail to be pushed, the build is marked FAILURE. *)
  go_modules : google_devtools_cloudbuild_v1_go_module list option;  (** Optional. A list of Go modules to be uploaded to Artifact Registry upon successful completion of all build steps. If any objects fail to be pushed, the build is marked FAILURE. *)
  images : string list option;  (** A list of images to be pushed upon the successful completion of all build steps. The images will be pushed using the builder service account's credentials. The digests of the pushed images will be stored in the Build resource's results field. If any of the images fail to be pushed, the build is marked FAILURE. *)
  maven_artifacts : google_devtools_cloudbuild_v1_maven_artifact list option;  (** A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all build steps. Artifacts in the workspace matching specified paths globs will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any artifacts fail to be pushed, the build is marked FAILURE. *)
  npm_packages : google_devtools_cloudbuild_v1_npm_package list option;  (** A list of npm packages to be uploaded to Artifact Registry upon successful completion of all build steps. Npm packages in the specified paths will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any packages fail to be pushed, the build is marked FAILURE. *)
  objects : google_devtools_cloudbuild_v1_artifact_objects option;  (** A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account's credentials. The location and generation of the uploaded objects will be stored in the Build resource's results field. If any objects fail to be pushed, the build is marked FAILURE. *)
  oci : google_devtools_cloudbuild_v1_oci list option;  (** Optional. A list of OCI images to be uploaded to Artifact Registry upon successful completion of all build steps. OCI images in the specified paths will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any images fail to be pushed, the build is marked FAILURE. *)
  python_packages : google_devtools_cloudbuild_v1_python_package list option;  (** A list of Python packages to be uploaded to Artifact Registry upon successful completion of all build steps. The build service account credentials will be used to perform the upload. If any objects fail to be pushed, the build is marked FAILURE. *)
}

(** A build resource in the Cloud Build API. At a high level, a `Build` describes where to find source code, how to build it (for example, the builder image to run on the source), and where to store the built artifacts. Fields can include the following variables, which will be expanded when the build is created: - $PROJECT_ID: the project ID of the build. - $PROJECT_NUMBER: the project number of the build. - $LOCATION: the location/region of the build. - $BUILD_ID: the autogenerated ID of the build. - $REPO_NAME: the source repository name specified by RepoSource. - $BRANCH_NAME: the branch name specified by RepoSource. - $TAG_NAME: the tag name specified by RepoSource. - $REVISION_ID or $COMMIT_SHA: the commit SHA specified by RepoSource or resolved from the specified branch or tag. - $SHORT_SHA: first 7 characters of $REVISION_ID or $COMMIT_SHA. *)
and google_devtools_cloudbuild_v1_build = {
  approval : google_devtools_cloudbuild_v1_build_approval option;  (** Output only. Describes this build's approval configuration, status, and result. *)
  artifacts : google_devtools_cloudbuild_v1_artifacts option;  (** Artifacts produced by the build that should be uploaded upon successful completion of all build steps. *)
  available_secrets : google_devtools_cloudbuild_v1_secrets option;  (** Secrets and secret environment variables. *)
  build_trigger_id : string option;  (** Output only. The ID of the `BuildTrigger` that triggered this build, if it was triggered automatically. *)
  create_time : string option;  (** Output only. Time at which the request to create the build was received. *)
  dependencies : google_devtools_cloudbuild_v1_dependency list option;  (** Optional. Dependencies that the Cloud Build worker will fetch before executing user steps. *)
  failure_info : google_devtools_cloudbuild_v1_failure_info option;  (** Output only. Contains information about the build when status=FAILURE. *)
  finish_time : string option;  (** Output only. Time at which execution of the build was finished. The difference between finish_time and start_time is the duration of the build's execution. *)
  git_config : google_devtools_cloudbuild_v1_git_config option;  (** Optional. Configuration for git operations. *)
  id : string option;  (** Output only. Unique identifier of the build. *)
  images : string list option;  (** A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account's credentials. The digests of the pushed images will be stored in the `Build` resource's results field. If any of the images fail to be pushed, the build status is marked `FAILURE`. *)
  log_url : string option;  (** Output only. URL to logs for this build in Google Cloud Console. *)
  logs_bucket : string option;  (** Cloud Storage bucket where logs should be written (see \[Bucket Name Requirements\](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Logs file names will be of the format `$\{logs_bucket\}/log-$\{build_id\}.txt`. *)
  name : string option;  (** Output only. The 'Build' name with format: `projects/\{project\}/locations/\{location\}/builds/\{build\}`, where \{build\} is a unique identifier generated by the service. *)
  options : google_devtools_cloudbuild_v1_build_options option;  (** Special options for this build. *)
  project_id : string option;  (** Output only. ID of the project. *)
  queue_ttl : string option;  (** TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be `EXPIRED`. The TTL starts ticking from create_time. *)
  results : google_devtools_cloudbuild_v1_results option;  (** Output only. Results of the build. *)
  secrets : google_devtools_cloudbuild_v1_secret list option;  (** Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use `available_secrets` to configure builds to access secrets from Secret Manager. For instructions, see: https://cloud.google.com/cloud-build/docs/securing-builds/use-secrets *)
  service_account : string option;  (** IAM service account whose credentials will be used at build runtime. Must be of the format `projects/\{PROJECT_ID\}/serviceAccounts/\{ACCOUNT\}`. ACCOUNT can be email address or uniqueId of the service account. *)
  source : google_devtools_cloudbuild_v1_source option;  (** Optional. The location of the source files to build. *)
  source_provenance : google_devtools_cloudbuild_v1_source_provenance option;  (** Output only. A permanent fixed identifier for source. *)
  start_time : string option;  (** Output only. Time at which execution of the build was started. *)
  status : [ `Status_unknown | `Pending | `Queued | `Working | `Success | `Failure | `Internal_error | `Timeout | `Cancelled | `Expired | `Unrecognized of string ] option;  (** Output only. Status of the build. *)
  status_detail : string option;  (** Output only. Customer-readable message about the current status. *)
  steps : google_devtools_cloudbuild_v1_build_step list option;  (** Required. The operations to be performed on the workspace. *)
  substitutions : (string * string) list option;  (** Substitutions data for `Build` resource. *)
  tags : string list option;  (** Tags for annotation of a `Build`. These are not docker tags. *)
  timeout : string option;  (** Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be `TIMEOUT`. `timeout` starts ticking from `startTime`. Default time is 60 minutes. *)
  timing : (string * google_devtools_cloudbuild_v1_time_span) list option;  (** Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to execute all build steps. * PUSH: time to push all artifacts including docker images and non docker artifacts. * FETCHSOURCE: time to fetch source. * SETUPBUILD: time to set up build. If the build does not specify source or images, these keys will not be included. *)
  warnings : google_devtools_cloudbuild_v1_warning list option;  (** Output only. Non-fatal problems encountered during the execution of the build. *)
}

(** BuildApproval describes a build's approval configuration, state, and result. *)
and google_devtools_cloudbuild_v1_build_approval = {
  config : google_devtools_cloudbuild_v1_approval_config option;  (** Output only. Configuration for manual approval of this build. *)
  result : google_devtools_cloudbuild_v1_approval_result option;  (** Output only. Result of manual approval for this Build. *)
  state : [ `State_unspecified | `Pending | `Approved | `Rejected | `Cancelled | `Unrecognized of string ] option;  (** Output only. The state of this build's approval. *)
}

(** Metadata for build operations. *)
and google_devtools_cloudbuild_v1_build_operation_metadata = {
  build : google_devtools_cloudbuild_v1_build option;  (** The build that the operation is tracking. *)
}

(** Optional arguments to enable specific features of builds. *)
and google_devtools_cloudbuild_v1_build_options = {
  automap_substitutions : bool option;  (** Option to include built-in and custom substitutions as env variables for all build steps. *)
  default_logs_bucket_behavior : [ `Default_logs_bucket_behavior_unspecified | `Regional_user_owned_bucket | `Legacy_bucket | `Unrecognized of string ] option;  (** Optional. Option to specify how default logs buckets are setup. *)
  disk_size_gb : string option;  (** Requested disk size for the VM that runs the build. Note that this is *NOT* 'disk free'; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 4000GB; builds that request more than the maximum are rejected with an error. *)
  dynamic_substitutions : bool option;  (** Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file. *)
  enable_structured_logging : bool option;  (** Optional. Option to specify whether structured logging is enabled. If true, JSON-formatted logs are parsed as structured logs. *)
  env : string list option;  (** A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form 'KEY=VALUE' for the environment variable 'KEY' being given the value 'VALUE'. *)
  log_streaming_option : [ `Stream_default | `Stream_on | `Stream_off | `Unrecognized of string ] option;  (** Option to define build log streaming behavior to Cloud Storage. *)
  logging : [ `Logging_unspecified | `Legacy | `Gcs_only | `Stackdriver_only | `Cloud_logging_only | `None | `Unrecognized of string ] option;  (** Option to specify the logging mode, which determines if and where build logs are stored. *)
  machine_type : [ `Unspecified | `N1_highcpu_8 | `N1_highcpu_32 | `E2_highcpu_8 | `E2_highcpu_32 | `E2_medium | `E2_standard_2 | `Unrecognized of string ] option;  (** Compute Engine machine type on which to run the build. *)
  pool : google_devtools_cloudbuild_v1_pool_option option;  (** Optional. Specification for execution on a `WorkerPool`. See \[running builds in a private pool\](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information. *)
  pubsub_topic : string option;  (** Optional. Option to specify the Pub/Sub topic to receive build status updates. *)
  ranked_machine_series : [ `Machine_series_unspecified | `Machine_series_e | `Machine_series_n | `Machine_series_c | `Unrecognized of string ] list option;  (** Optional. Ranked list (earlier items have higher priority) of Machine Series to consider when provisioning Worker VMs. A concrete machine type will be selected based on machine availability in the given region. This field must be empty for the Build to be eligible to be paired with a pre-provisioned worker VM. *)
  requested_verify_option : [ `Not_verified | `Verified | `Best_effort | `Unrecognized of string ] option;  (** Requested verifiability options. *)
  resolved_worker_release : string option;  (** Output only. Worker release resolved from the release channel. *)
  secret_env : string list option;  (** A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`. These variables will be available to all build steps in this build. *)
  source_provenance_hash : [ `None | `Sha256 | `Md5 | `Go_module_h1 | `Sha512 | `Dirsum_sha256 | `Unrecognized of string ] list option;  (** Requested hash for SourceProvenance. *)
  substitution_option : [ `Must_match | `Allow_loose | `Unrecognized of string ] option;  (** Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file. *)
  volumes : google_devtools_cloudbuild_v1_volume list option;  (** Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration. *)
  worker_pool : string option;  (** This field deprecated; please use `pool.name` instead. *)
  worker_release : string option;  (** Optional. Option to specify which release or release channel (rapid|regular|stable) to use to run this build. *)
}

(** Aggregated/summary metrics over the entire build lifecycle. *)
and google_devtools_cloudbuild_v1_build_resource_usage = {
  average_cpu_utilization : float option;  (** Output only. The average CPU utilization ratio across all vCPUs over the duration of the build, expressed as a fraction in the range \[0.0, 1.0\]. *)
  average_memory_utilization : float option;  (** Output only. The average memory utilization ratio over the duration of the build, expressed as a fraction in the range \[0.0, 1.0\]. *)
  peak_cpu_utilization : float option;  (** Output only. The highest CPU utilization ratio across all vCPUs observed over the duration of the build, expressed as a fraction in the range \[0.0, 1.0\]. *)
  peak_memory_utilization : float option;  (** Output only. The highest memory utilization ratio observed over the duration of the build, expressed as a fraction in the range \[0.0, 1.0\]. *)
  total_cpu_duration : string option;  (** Output only. Total CPU execution time consumed across all cores during build execution. *)
}

(** A step in the build pipeline. *)
and google_devtools_cloudbuild_v1_build_step = {
  allow_exit_codes : int list option;  (** Allow this build step to fail without failing the entire build if and only if the exit code is one of the specified codes. If allow_failure is also specified, this field will take precedence. *)
  allow_failure : bool option;  (** Allow this build step to fail without failing the entire build. If false, the entire build will fail if this step fails. Otherwise, the build will succeed, but this step will still have a failure status. Error information will be reported in the failure_detail field. *)
  args : string list option;  (** A list of arguments that will be presented to the step when it is started. If the image used to run the step's container has an entrypoint, the `args` are used as arguments to that entrypoint. If the image does not define an entrypoint, the first element in args is used as the entrypoint, and the remainder will be used as arguments. *)
  automap_substitutions : bool option;  (** Option to include built-in and custom substitutions as env variables for this build step. This option will override the global option in BuildOption. *)
  dir : string option;  (** Working directory to use when running this step's container. If this value is a relative path, it is relative to the build's working directory. If this value is absolute, it may be outside the build's working directory, in which case the contents of the path may not be persisted across build step executions, unless a `volume` for that path is specified. If the build specifies a `RepoSource` with `dir` and a step with a `dir`, which specifies an absolute path, the `RepoSource` `dir` is ignored for the step's execution. *)
  entrypoint : string option;  (** Entrypoint to be used instead of the build step image's default entrypoint. If unset, the image's default entrypoint is used. *)
  env : string list option;  (** A list of environment variable definitions to be used when running a step. The elements are of the form 'KEY=VALUE' for the environment variable 'KEY' being given the value 'VALUE'. *)
  exit_code : int option;  (** Output only. Return code from running the step. *)
  id : string option;  (** Unique identifier for this build step, used in `wait_for` to reference this build step as a dependency. *)
  name : string option;  (** Required. The name of the container image that will run this particular build step. If the image is available in the host's Docker daemon's cache, it will be run directly. If not, the host will attempt to pull the image first, using the builder service account's credentials if necessary. The Docker daemon's cache will already have the latest versions of all of the officially supported build steps (\[https://github.com/GoogleCloudPlatform/cloud-builders\](https://github.com/GoogleCloudPlatform/cloud-builders)). The Docker daemon will also have cached many of the layers for some popular images, like 'ubuntu', 'debian', but they will be refreshed at the time you attempt to use them. If you built an image in a previous build step, it will be stored in the host's Docker daemon's cache and is available to use as the name for a later build step. *)
  pull_timing : google_devtools_cloudbuild_v1_time_span option;  (** Output only. Stores timing information for pulling this build step's builder image only. *)
  results : google_devtools_cloudbuild_v1_step_result list option;  (** Declaration of results for this build step. *)
  script : string option;  (** A shell script to be executed in the step. When script is provided, the user cannot specify the entrypoint or args. *)
  secret_env : string list option;  (** A list of environment variables which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`. *)
  status : [ `Status_unknown | `Pending | `Queued | `Working | `Success | `Failure | `Internal_error | `Timeout | `Cancelled | `Expired | `Unrecognized of string ] option;  (** Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses. *)
  timeout : string option;  (** Time limit for executing this build step. If not defined, the step has no time limit and will be allowed to continue to run until either it completes or the build itself times out. *)
  timing : google_devtools_cloudbuild_v1_time_span option;  (** Output only. Stores timing information for executing this build step. *)
  volumes : google_devtools_cloudbuild_v1_volume list option;  (** List of volumes to mount into the build step. Each volume is created as an empty volume prior to execution of the build step. Upon completion of the build, volumes and their contents are discarded. Using a named volume in only one step is not valid as it is indicative of a build request with an incorrect configuration. *)
  wait_for : string list option;  (** The ID(s) of the step(s) that this build step depends on. This build step will not start until all the build steps in `wait_for` have completed successfully. If `wait_for` is empty, this build step will start when all previous build steps in the `Build.Steps` list have completed successfully. *)
}

(** Results for a build step. *)
and google_devtools_cloudbuild_v1_build_step_results = {
  results : (string * string) list option;  (** Results for a build step. *)
}

(** An image built by the pipeline. *)
and google_devtools_cloudbuild_v1_built_image = {
  artifact_registry_package : string option;  (** Output only. Path to the artifact in Artifact Registry. *)
  digest : string option;  (** Docker Registry 2.0 digest. *)
  name : string option;  (** Name used to push the container image to Google Container Registry, as presented to `docker push`. *)
  oci_media_type : [ `Oci_media_type_unspecified | `Image_manifest | `Image_index | `Unrecognized of string ] option;  (** Output only. The OCI media type of the artifact. Non-OCI images, such as Docker images, will have an unspecified value. *)
  push_timing : google_devtools_cloudbuild_v1_time_span option;  (** Output only. Stores timing information for pushing the specified image. *)
}

(** Location of the source in a 2nd-gen Google Cloud Build repository resource. *)
and google_devtools_cloudbuild_v1_connected_repository = {
  dir : string option;  (** Optional. Directory, relative to the source root, in which to run the build. *)
  repository : string option;  (** Required. Name of the Google Cloud Build repository, formatted as `projects/*/locations/*/connections/*/repositories/*`. *)
  revision : string option;  (** Required. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref. *)
}

(** A dependency that the Cloud Build worker will fetch before executing user steps. *)
and google_devtools_cloudbuild_v1_dependency = {
  empty : bool option;  (** If set to true disable all dependency fetching (ignoring the default source as well). *)
  generic_artifact : google_devtools_cloudbuild_v1_generic_artifact_dependency option;  (** Represents a generic artifact as a build dependency. *)
  git_source : google_devtools_cloudbuild_v1_git_source_dependency option;  (** Represents a git repository as a build dependency. *)
}

(** This config defines the location of a source through Developer Connect. *)
and google_devtools_cloudbuild_v1_developer_connect_config = {
  dir : string option;  (** Required. Directory, relative to the source root, in which to run the build. *)
  git_repository_link : string option;  (** Required. The Developer Connect Git repository link, formatted as `projects/*/locations/*/connections/*/gitRepositoryLink/*`. *)
  revision : string option;  (** Required. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref. *)
}

(** A fatal problem encountered during the execution of the build. *)
and google_devtools_cloudbuild_v1_failure_info = {
  detail : string option;  (** Explains the failure issue in more detail using hard-coded text. *)
  type_ : [ `Failure_type_unspecified | `Push_failed | `Push_image_not_found | `Push_not_authorized | `Logging_failure | `User_build_step | `Fetch_source_failed | `Unrecognized of string ] option;  (** The name of the failure. *)
}

(** Container message for hashes of byte content of files, used in SourceProvenance messages to verify integrity of source input to the build. *)
and google_devtools_cloudbuild_v1_file_hashes = {
  file_hash : google_devtools_cloudbuild_v1_hash list option;  (** Collection of file hashes. *)
}

(** Generic artifact to upload to Artifact Registry upon successful completion of all build steps. *)
and google_devtools_cloudbuild_v1_generic_artifact = {
  folder : string option;  (** Required. Path to the generic artifact in the build's workspace to be uploaded to Artifact Registry. *)
  registry_path : string option;  (** Required. Registry path to upload the generic artifact to, in the form projects/$PROJECT/locations/$LOCATION/repositories/$REPO/packages/$PACKAGE/versions/$VERSION *)
}

(** Represents a generic artifact as a build dependency. *)
and google_devtools_cloudbuild_v1_generic_artifact_dependency = {
  dest_path : string option;  (** Optional. Where the artifact files should be placed on the worker. Required when specified in `Build.dependencies`. *)
  resource : string option;  (** Required. The location to download the artifact files from. Ex: projects/p1/locations/us/repositories/r1/packages/p1/versions/v1 *)
}

(** GitConfig is a configuration for git operations. *)
and google_devtools_cloudbuild_v1_git_config = {
  http : google_devtools_cloudbuild_v1_http_config option;  (** Configuration for HTTP related git operations. *)
}

(** Location of the source in any accessible Git repository. *)
and google_devtools_cloudbuild_v1_git_source = {
  dir : string option;  (** Optional. Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution. *)
  revision : string option;  (** Optional. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref. Cloud Build uses `git fetch` to fetch the revision from the Git repository; therefore make sure that the string you provide for `revision` is parsable by the command. For information on string values accepted by `git fetch`, see https://git-scm.com/docs/gitrevisions#_specifying_revisions. For information on `git fetch`, see https://git-scm.com/docs/git-fetch. *)
  url : string option;  (** Required. Location of the Git repo to build. This will be used as a `git remote`, see https://git-scm.com/docs/git-remote. *)
}

(** Represents a git repository as a build dependency. *)
and google_devtools_cloudbuild_v1_git_source_dependency = {
  depth : string option;  (** Optional. How much history should be fetched for the build (default 1, -1 for all history). *)
  dest_path : string option;  (** Required. Where should the files be placed on the worker. *)
  fetch_tags : bool option;  (** Optional. True if remote tags should be fetched too (default false). Note: when depth is 1 (default), git fetch only retrieves tags pointing to commits within the shallow boundary. Set depth to -1 to fetch all historical tags. *)
  recurse_submodules : bool option;  (** Optional. True if submodules should be fetched too (default false). *)
  repository : google_devtools_cloudbuild_v1_git_source_repository option;  (** Required. The kind of repo (url or dev connect). *)
  revision : string option;  (** Required. The revision that we will fetch the repo at. *)
}

(** A repository for a git source. *)
and google_devtools_cloudbuild_v1_git_source_repository = {
  developer_connect : string option;  (** The Developer Connect Git repository link formatted as `projects/*/locations/*/connections/*/gitRepositoryLink/*` *)
  url : string option;  (** Location of the Git repository. *)
}

(** Go module to upload to Artifact Registry upon successful completion of all build steps. A module refers to all dependencies in a go.mod file. *)
and google_devtools_cloudbuild_v1_go_module = {
  module_path : string option;  (** Optional. The Go module's 'module path'. e.g. example.com/foo/v2 *)
  module_version : string option;  (** Optional. The Go module's semantic version in the form vX.Y.Z. e.g. v0.1.1 Pre-release identifiers can also be added by appending a dash and dot separated ASCII alphanumeric characters and hyphens. e.g. v0.2.3-alpha.x.12m.5 *)
  repository_location : string option;  (** Optional. Location of the Artifact Registry repository. i.e. us-east1 Defaults to the build’s location. *)
  repository_name : string option;  (** Optional. Artifact Registry repository name. Specified Go modules will be zipped and uploaded to Artifact Registry with this location as a prefix. e.g. my-go-repo *)
  repository_project_id : string option;  (** Optional. Project ID of the Artifact Registry repository. Defaults to the build project. *)
  source_path : string option;  (** Optional. Source path of the go.mod file in the build's workspace. If not specified, this will default to the current directory. e.g. ~/code/go/mypackage *)
}

(** Container message for hash values. *)
and google_devtools_cloudbuild_v1_hash = {
  type_ : [ `None | `Sha256 | `Md5 | `Go_module_h1 | `Sha512 | `Dirsum_sha256 | `Unrecognized of string ] option;  (** The type of hash that was performed. *)
  value : string option;  (** The hash value. *)
}

(** HttpConfig is a configuration for HTTP related git operations. *)
and google_devtools_cloudbuild_v1_http_config = {
  proxy_secret_version_name : string option;  (** SecretVersion resource of the HTTP proxy URL. The Service Account used in the build (either the default Service Account or user-specified Service Account) should have `secretmanager.versions.access` permissions on this secret. The proxy URL should be in format `protocol://\@\]proxyhost\[:port\]`. *)
}

(** Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value. *)
and google_devtools_cloudbuild_v1_inline_secret = {
  env_map : (string * string) list option;  (** Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets. *)
  kms_key_name : string option;  (** Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/* *)
}

(** A Maven artifact to upload to Artifact Registry upon successful completion of all build steps. *)
and google_devtools_cloudbuild_v1_maven_artifact = {
  artifact_id : string option;  (** Maven `artifactId` value used when uploading the artifact to Artifact Registry. *)
  deploy_folder : string option;  (** Optional. Path to a folder containing the files to upload to Artifact Registry. This can be either an absolute path, e.g. `/workspace/my-app/target/`, or a relative path from /workspace, e.g. `my-app/target/`. This field is mutually exclusive with the `path` field. *)
  group_id : string option;  (** Maven `groupId` value used when uploading the artifact to Artifact Registry. *)
  path : string option;  (** Optional. Path to an artifact in the build's workspace to be uploaded to Artifact Registry. This can be either an absolute path, e.g. /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar or a relative path from /workspace, e.g. my-app/target/my-app-1.0.SNAPSHOT.jar. *)
  repository : string option;  (** Artifact Registry repository, in the form 'https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY' Artifact in the workspace specified by path will be uploaded to Artifact Registry with this location as a prefix. *)
  version : string option;  (** Maven `version` value used when uploading the artifact to Artifact Registry. *)
}

(** Npm package to upload to Artifact Registry upon successful completion of all build steps. *)
and google_devtools_cloudbuild_v1_npm_package = {
  package_path : string option;  (** Optional. Path to the package.json. e.g. workspace/path/to/package Only one of `archive` or `package_path` can be specified. *)
  repository : string option;  (** Artifact Registry repository, in the form 'https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY' Npm package in the workspace specified by path will be zipped and uploaded to Artifact Registry with this location as a prefix. *)
}

(** OCI image to upload to Artifact Registry upon successful completion of all build steps. *)
and google_devtools_cloudbuild_v1_oci = {
  file : string option;  (** Required. Path on the local file system where to find the container to upload. e.g. /workspace/my-image.tar *)
  registry_path : string option;  (** Required. Registry path to upload the container to. e.g. us-east1-docker.pkg.dev/my-project/my-repo/my-image *)
  tags : string list option;  (** Optional. Tags to apply to the uploaded image. e.g. latest, 1.0.0 *)
}

(** Details about how a build should be executed on a `WorkerPool`. See \[running builds in a private pool\](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information. *)
and google_devtools_cloudbuild_v1_pool_option = {
  name : string option;  (** The `WorkerPool` resource to execute the build on. You must have `cloudbuild.workerpools.use` on the project hosting the WorkerPool. Format projects/\{project\}/locations/\{location\}/workerPools/\{workerPoolId\} *)
  resolved_worker_release : string option;  (** Output only. OUTPUT_ONLY. Worker release resolved from the release channel. *)
  worker_release : string option;  (** Output only. OUTPUT_ONLY. The release or release channel used to run the Build. This is set to the same value as `PrivatePoolV1Config.WorkerConfig.worker_release` for the UI to easily access. *)
}

(** Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository. *)
and google_devtools_cloudbuild_v1_python_package = {
  paths : string list option;  (** Path globs used to match files in the build's workspace. For Python/ Twine, this is usually `dist/*`, and sometimes additionally an `.asc` file. *)
  repository : string option;  (** Artifact Registry repository, in the form 'https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY' Files in the workspace matching any path pattern will be uploaded to Artifact Registry with this location as a prefix. *)
}

(** Location of the source in a Google Cloud Source Repository. *)
and google_devtools_cloudbuild_v1_repo_source = {
  branch_name : string option;  (** Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax *)
  commit_sha : string option;  (** Explicit commit SHA to build. *)
  dir : string option;  (** Optional. Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution. *)
  invert_regex : bool option;  (** Optional. Only trigger a build if the revision regex does NOT match the revision regex. *)
  project_id : string option;  (** Optional. ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed. *)
  repo_name : string option;  (** Required. Name of the Cloud Source Repository. *)
  substitutions : (string * string) list option;  (** Optional. Substitutions to use in a triggered build. Should only be used with RunBuildTrigger *)
  tag_name : string option;  (** Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax *)
}

(** Artifacts created by the build pipeline. *)
and google_devtools_cloudbuild_v1_results = {
  artifact_manifest : string option;  (** Path to the artifact manifest for non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage. *)
  artifact_timing : google_devtools_cloudbuild_v1_time_span option;  (** Time to push all non-container artifacts to Cloud Storage. *)
  build_step_images : string list option;  (** List of build step digests, in the order corresponding to build step indices. *)
  build_step_outputs : string list option;  (** List of build step outputs, produced by builder images, in the order corresponding to build step indices. \[Cloud Builders\](https://cloud.google.com/cloud-build/docs/cloud-builders) can produce this output by writing to `$BUILDER_OUTPUT/output`. Only the first 50KB of data is stored. Note that the `$BUILDER_OUTPUT` variable is read-only and can't be substituted. *)
  build_step_results : (string * google_devtools_cloudbuild_v1_build_step_results) list option;  (** Results for build steps. step_id -> *)
  generic_artifacts : google_devtools_cloudbuild_v1_uploaded_generic_artifact list option;  (** Output only. Generic artifacts uploaded to Artifact Registry at the end of the build. *)
  go_modules : google_devtools_cloudbuild_v1_uploaded_go_module list option;  (** Optional. Go module artifacts uploaded to Artifact Registry at the end of the build. *)
  images : google_devtools_cloudbuild_v1_built_image list option;  (** Container images that were built as a part of the build. *)
  maven_artifacts : google_devtools_cloudbuild_v1_uploaded_maven_artifact list option;  (** Maven artifacts uploaded to Artifact Registry at the end of the build. *)
  npm_packages : google_devtools_cloudbuild_v1_uploaded_npm_package list option;  (** Npm packages uploaded to Artifact Registry at the end of the build. *)
  num_artifacts : string option;  (** Number of non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage. *)
  python_packages : google_devtools_cloudbuild_v1_uploaded_python_package list option;  (** Python artifacts uploaded to Artifact Registry at the end of the build. *)
  resource_usage : google_devtools_cloudbuild_v1_build_resource_usage option;  (** Output only. Aggregated metrics for the build. *)
}

(** Pairs a set of secret environment variables containing encrypted values with the Cloud KMS key to use to decrypt the value. Note: Use `kmsKeyName` with `available_secrets` instead of using `kmsKeyName` with `secret`. For instructions see: https://cloud.google.com/cloud-build/docs/securing-builds/use-encrypted-credentials. *)
and google_devtools_cloudbuild_v1_secret = {
  kms_key_name : string option;  (** Cloud KMS key name to use to decrypt these envs. *)
  secret_env : (string * string) list option;  (** Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets. *)
}

(** Pairs a secret environment variable with a SecretVersion in Secret Manager. *)
and google_devtools_cloudbuild_v1_secret_manager_secret = {
  env : string option;  (** Environment variable name to associate with the secret. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. *)
  version_name : string option;  (** Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/* *)
}

(** Secrets and secret environment variables. *)
and google_devtools_cloudbuild_v1_secrets = {
  inline : google_devtools_cloudbuild_v1_inline_secret list option;  (** Secrets encrypted with KMS key and the associated secret environment variable. *)
  secret_manager : google_devtools_cloudbuild_v1_secret_manager_secret list option;  (** Secrets in Secret Manager and associated secret environment variable. *)
}

(** Location of the source in a supported storage service. *)
and google_devtools_cloudbuild_v1_source = {
  connected_repository : google_devtools_cloudbuild_v1_connected_repository option;  (** Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource. *)
  developer_connect_config : google_devtools_cloudbuild_v1_developer_connect_config option;  (** If provided, get the source from this Developer Connect config. *)
  git_source : google_devtools_cloudbuild_v1_git_source option;  (** If provided, get the source from this Git repository. *)
  repo_source : google_devtools_cloudbuild_v1_repo_source option;  (** If provided, get the source from this location in a Cloud Source Repository. *)
  storage_source : google_devtools_cloudbuild_v1_storage_source option;  (** If provided, get the source from this location in Cloud Storage. *)
  storage_source_manifest : google_devtools_cloudbuild_v1_storage_source_manifest option;  (** If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description \[here\](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher). *)
}

(** Provenance of the source. Ways to find the original source, or verify that some source was used for this build. *)
and google_devtools_cloudbuild_v1_source_provenance = {
  file_hashes : (string * google_devtools_cloudbuild_v1_file_hashes) list option;  (** Output only. Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that `FileHashes` will only be populated if `BuildOptions` has requested a `SourceProvenanceHash`. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (`.tar.gz`), the `FileHash` will be for the single path to that file. *)
  resolved_connected_repository : google_devtools_cloudbuild_v1_connected_repository option;  (** Output only. A copy of the build's `source.connected_repository`, if exists, with any revisions resolved. *)
  resolved_git_source : google_devtools_cloudbuild_v1_git_source option;  (** Output only. A copy of the build's `source.git_source`, if exists, with any revisions resolved. *)
  resolved_repo_source : google_devtools_cloudbuild_v1_repo_source option;  (** A copy of the build's `source.repo_source`, if exists, with any revisions resolved. *)
  resolved_storage_source : google_devtools_cloudbuild_v1_storage_source option;  (** A copy of the build's `source.storage_source`, if exists, with any generations resolved. *)
  resolved_storage_source_manifest : google_devtools_cloudbuild_v1_storage_source_manifest option;  (** A copy of the build's `source.storage_source_manifest`, if exists, with any revisions resolved. This feature is in Preview. *)
}

(** StepResult is the declaration of a result for a build step. *)
and google_devtools_cloudbuild_v1_step_result = {
  attestation_content : string option;  (** Optional. The content of the attestation to be generated. *)
  attestation_type : string option;  (** Optional. The type of attestation to be generated. *)
  name : string option;  (** Required. The name of the result. *)
}

(** Location of the source in an archive file in Cloud Storage. *)
and google_devtools_cloudbuild_v1_storage_source = {
  bucket : string option;  (** Cloud Storage bucket containing the source (see \[Bucket Name Requirements\](https://cloud.google.com/storage/docs/bucket-naming#requirements)). *)
  generation : string option;  (** Optional. Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used. *)
  object_ : string option;  (** Required. Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build. *)
  source_fetcher : [ `Source_fetcher_unspecified | `Gsutil | `Gcs_fetcher | `Unrecognized of string ] option;  (** Optional. Option to specify the tool to fetch the source file for the build. *)
}

(** Location of the source manifest in Cloud Storage. This feature is in Preview; see description \[here\](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher). *)
and google_devtools_cloudbuild_v1_storage_source_manifest = {
  bucket : string option;  (** Required. Cloud Storage bucket containing the source manifest (see \[Bucket Name Requirements\](https://cloud.google.com/storage/docs/bucket-naming#requirements)). *)
  generation : string option;  (** Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used. *)
  object_ : string option;  (** Required. Cloud Storage object containing the source manifest. This object must be a JSON file. *)
}

(** Start and end times for a build execution phase. *)
and google_devtools_cloudbuild_v1_time_span = {
  end_time : string option;  (** End of time span. *)
  start_time : string option;  (** Start of time span. *)
}

(** A generic artifact uploaded to Artifact Registry using the GenericArtifact directive. *)
and google_devtools_cloudbuild_v1_uploaded_generic_artifact = {
  artifact_fingerprint : google_devtools_cloudbuild_v1_file_hashes option;  (** Output only. The hash of the whole artifact. *)
  artifact_registry_package : string option;  (** Output only. Path to the artifact in Artifact Registry. *)
  file_hashes : (string * google_devtools_cloudbuild_v1_file_hashes) list option;  (** Output only. The file hashes that make up the generic artifact. *)
  push_timing : google_devtools_cloudbuild_v1_time_span option;  (** Output only. Stores timing information for pushing the specified artifact. *)
  uri : string option;  (** Output only. URI of the uploaded artifact. Ex: projects/p1/locations/us/repositories/r1/packages/p1/versions/v1 *)
}

(** A Go module artifact uploaded to Artifact Registry using the GoModule directive. *)
and google_devtools_cloudbuild_v1_uploaded_go_module = {
  artifact_registry_package : string option;  (** Output only. Path to the artifact in Artifact Registry. *)
  file_hashes : google_devtools_cloudbuild_v1_file_hashes option;  (** Hash types and values of the Go Module Artifact. *)
  push_timing : google_devtools_cloudbuild_v1_time_span option;  (** Output only. Stores timing information for pushing the specified artifact. *)
  uri : string option;  (** URI of the uploaded artifact. *)
}

(** A Maven artifact uploaded using the MavenArtifact directive. *)
and google_devtools_cloudbuild_v1_uploaded_maven_artifact = {
  artifact_registry_package : string option;  (** Output only. Path to the artifact in Artifact Registry. *)
  file_hashes : google_devtools_cloudbuild_v1_file_hashes option;  (** Hash types and values of the Maven Artifact. *)
  push_timing : google_devtools_cloudbuild_v1_time_span option;  (** Output only. Stores timing information for pushing the specified artifact. *)
  uri : string option;  (** URI of the uploaded artifact. *)
}

(** An npm package uploaded to Artifact Registry using the NpmPackage directive. *)
and google_devtools_cloudbuild_v1_uploaded_npm_package = {
  artifact_registry_package : string option;  (** Output only. Path to the artifact in Artifact Registry. *)
  file_hashes : google_devtools_cloudbuild_v1_file_hashes option;  (** Hash types and values of the npm package. *)
  push_timing : google_devtools_cloudbuild_v1_time_span option;  (** Output only. Stores timing information for pushing the specified artifact. *)
  uri : string option;  (** URI of the uploaded npm package. *)
}

(** Artifact uploaded using the PythonPackage directive. *)
and google_devtools_cloudbuild_v1_uploaded_python_package = {
  artifact_registry_package : string option;  (** Output only. Path to the artifact in Artifact Registry. *)
  file_hashes : google_devtools_cloudbuild_v1_file_hashes option;  (** Hash types and values of the Python Artifact. *)
  push_timing : google_devtools_cloudbuild_v1_time_span option;  (** Output only. Stores timing information for pushing the specified artifact. *)
  uri : string option;  (** URI of the uploaded artifact. *)
}

(** Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution. *)
and google_devtools_cloudbuild_v1_volume = {
  name : string option;  (** Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps. *)
  path : string option;  (** Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths. *)
}

(** A non-fatal problem encountered during the execution of the build. *)
and google_devtools_cloudbuild_v1_warning = {
  priority : [ `Priority_unspecified | `Info | `Warning | `Alert | `Unrecognized of string ] option;  (** The priority for this warning. *)
  text : string option;  (** Explanation of the warning generated. *)
}

(** Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: \{ 'audit_configs': \[ \{ 'service': 'allServices', 'audit_log_configs': \[ \{ 'log_type': 'DATA_READ', 'exempted_members': \[ 'user:jose\@example.com' \] \}, \{ 'log_type': 'DATA_WRITE' \}, \{ 'log_type': 'ADMIN_READ' \} \] \}, \{ 'service': 'sampleservice.googleapis.com', 'audit_log_configs': \[ \{ 'log_type': 'DATA_READ' \}, \{ 'log_type': 'DATA_WRITE', 'exempted_members': \[ 'user:aliya\@example.com' \] \} \] \} \] \} For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose\@example.com` from DATA_READ logging, and `aliya\@example.com` from DATA_WRITE logging. *)
and google_iam_v1_audit_config = {
  audit_log_configs : google_iam_v1_audit_log_config list option;  (** The configuration for logging of each type of permission. *)
  service : string option;  (** Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services. *)
}

(** Provides the configuration for logging a type of permissions. Example: \{ 'audit_log_configs': \[ \{ 'log_type': 'DATA_READ', 'exempted_members': \[ 'user:jose\@example.com' \] \}, \{ 'log_type': 'DATA_WRITE' \} \] \} This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose\@example.com from DATA_READ logging. *)
and google_iam_v1_audit_log_config = {
  exempted_members : string list option;  (** Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members. *)
  log_type : [ `Log_type_unspecified | `Admin_read | `Data_write | `Data_read | `Unrecognized of string ] option;  (** The log type that this config enables. *)
}

(** Associates `members`, or principals, with a `role`. *)
and google_iam_v1_binding = {
  condition : google_type_expr option;  (** The condition that is associated with this binding. If the condition evaluates to `true`, then this binding applies to the current request. If the condition evaluates to `false`, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)
  members : string list option;  (** Specifies the principals requesting access for a Google Cloud resource. `members` can have the following values: * `allUsers`: A special identifier that represents anyone who is on the internet; with or without a Google account. * `allAuthenticatedUsers`: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * `user:\{emailid\}`: An email address that represents a specific Google account. For example, `alice\@example.com` . * `serviceAccount:\{emailid\}`: An email address that represents a Google service account. For example, `my-other-app\@appspot.gserviceaccount.com`. * `serviceAccount:\{projectid\}.svc.id.goog\[\{namespace\}/\{kubernetes-sa\}\]`: An identifier for a \[Kubernetes service account\](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-project.svc.id.goog\[my-namespace/my-kubernetes-sa\]`. * `group:\{emailid\}`: An email address that represents a Google group. For example, `admins\@example.com`. * `domain:\{domain\}`: The G Suite domain (primary) that represents all the users of that domain. For example, `google.com` or `example.com`. * `principal://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/subject/\{subject_attribute_value\}`: A single identity in a workforce identity pool. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/group/\{group_id\}`: All workforce identities in a group. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/attribute.\{attribute_name\}/\{attribute_value\}`: All workforce identities with a specific attribute value. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/*`: All identities in a workforce identity pool. * `principal://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/subject/\{subject_attribute_value\}`: A single identity in a workload identity pool. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/group/\{group_id\}`: A workload identity pool group. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/attribute.\{attribute_name\}/\{attribute_value\}`: All identities in a workload identity pool with a certain attribute. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/*`: All identities in a workload identity pool. * `deleted:user:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a user that has been recently deleted. For example, `alice\@example.com?uid=123456789012345678901`. If the user is recovered, this value reverts to `user:\{emailid\}` and the recovered user retains the role in the binding. * `deleted:serviceAccount:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, `my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901`. If the service account is undeleted, this value reverts to `serviceAccount:\{emailid\}` and the undeleted service account retains the role in the binding. * `deleted:group:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, `admins\@example.com?uid=123456789012345678901`. If the group is recovered, this value reverts to `group:\{emailid\}` and the recovered group retains the role in the binding. * `deleted:principal://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/subject/\{subject_attribute_value\}`: Deleted single identity in a workforce identity pool. For example, `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`. *)
  role : string option;  (** Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM roles and permissions, see the \[IAM documentation\](https://cloud.google.com/iam/docs/roles-overview). For a list of the available pre-defined roles, see \[here\](https://cloud.google.com/iam/docs/understanding-roles). *)
}

(** An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` \{ 'bindings': \[ \{ 'role': 'roles/resourcemanager.organizationAdmin', 'members': \[ 'user:mike\@example.com', 'group:admins\@example.com', 'domain:google.com', 'serviceAccount:my-project-id\@appspot.gserviceaccount.com' \] \}, \{ 'role': 'roles/resourcemanager.organizationViewer', 'members': \[ 'user:eve\@example.com' \], 'condition': \{ 'title': 'expirable access', 'description': 'Does not grant access after Sep 2020', 'expression': 'request.time < timestamp('2020-10-01T00:00:00.000Z')', \} \} \], 'etag': 'BwWWja0YfJA=', 'version': 3 \} ``` **YAML example:** ``` bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the \[IAM documentation\](https://cloud.google.com/iam/docs/). *)
and google_iam_v1_policy = {
  audit_configs : google_iam_v1_audit_config list option;  (** Specifies cloud audit logging configuration for this policy. *)
  bindings : google_iam_v1_binding list option;  (** Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice\@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`. *)
  etag : string option;  (** `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. *)
  version : int option;  (** Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)
}

(** Request message for `SetIamPolicy` method. *)
and google_iam_v1_set_iam_policy_request = {
  policy : google_iam_v1_policy option;  (** REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them. *)
  update_mask : string option;  (** OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: 'bindings, etag'` *)
}

(** Request message for `TestIamPermissions` method. *)
and google_iam_v1_test_iam_permissions_request = {
  permissions : string list option;  (** The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `storage.*`) are not allowed. For more information see \[IAM Overview\](https://cloud.google.com/iam/docs/overview#permissions). *)
}

(** Response message for `TestIamPermissions` method. *)
and google_iam_v1_test_iam_permissions_response = {
  permissions : string list option;  (** A subset of `TestPermissionsRequest.permissions` that the caller is allowed. *)
}

(** The response message for Operations.ListOperations. *)
and google_longrunning_list_operations_response = {
  next_page_token : string option;  (** The standard List next-page token. *)
  operations : google_longrunning_operation list option;  (** A list of operations that matches the specified filter in the request. *)
  unreachable : string list option;  (** Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.return_partial_success` and reads across collections. For example, when attempting to list all resources across all supported locations. *)
}

(** This resource represents a long-running operation that is the result of a network API call. *)
and google_longrunning_operation = {
  done_ : bool option;  (** If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available. *)
  error : google_rpc_status option;  (** The error result of the operation in case of failure or cancellation. *)
  metadata : (string * Yojson.Safe.t) list option;  (** Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any. *)
  name : string option;  (** The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/\{unique_id\}`. *)
  response : (string * Yojson.Safe.t) list option;  (** The normal, successful response of the operation. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`. *)
}

(** The request message for Operations.WaitOperation. *)
and google_longrunning_wait_operation_request = {
  timeout : string option;  (** The maximum duration to wait before timing out. If left blank, the wait will be at most the time permitted by the underlying HTTP/RPC protocol. If RPC context deadline is also specified, the shorter one will be used. *)
}

(** A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo \{ rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); \} *)
and google_protobuf_empty = Yojson.Safe.t

(** The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by \[gRPC\](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the \[API Design Guide\](https://cloud.google.com/apis/design/errors). *)
and google_rpc_status = {
  code : int option;  (** The status code, which should be an enum value of google.rpc.Code. *)
  details : (string * Yojson.Safe.t) list list option;  (** A list of messages that carry the error details. There is a common set of message types for APIs to use. *)
  message : string option;  (** A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client. *)
}

(** Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: 'Summary size limit' description: 'Determines if a summary is less than 100 chars' expression: 'document.summary.size() < 100' Example (Equality): title: 'Requestor is owner' description: 'Determines if requestor is the document owner' expression: 'document.owner == request.auth.claims.email' Example (Logic): title: 'Public documents' description: 'Determine whether the document should be publicly visible' expression: 'document.type != 'private' && document.type != 'internal'' Example (Data Manipulation): title: 'Notification string' description: 'Create a notification string with a timestamp.' expression: ''New message received at ' + string(document.create_time)' The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information. *)
and google_type_expr = {
  description : string option;  (** Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. *)
  expression : string option;  (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string option;  (** Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. *)
  title : string option;  (** Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. *)
}

(** This is proto2's version of MessageSet. DEPRECATED: DO NOT USE FOR NEW FIELDS. If you are using editions or proto2, please make your own extendable messages for your use case. If you are using proto3, please use `Any` instead. MessageSet was the implementation of extensions for proto1. When proto2 was introduced, extensions were implemented as a first-class feature. This schema for MessageSet was meant to be a 'bridge' solution to migrate MessageSet-bearing messages from proto1 to proto2. This schema has been open-sourced only to facilitate the migration of Google products with MessageSet-bearing messages to open-source environments. *)
and proto2_bridge_message_set = Yojson.Safe.t

(** Wire-format for a Status object *)
and util_status_proto = {
  canonical_code : int option;  (** copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional int32 canonical_code = 6; *)
  code : int option;  (** Numeric code drawn from the space specified below. Often, this is the canonical error space, and code is drawn from google3/util/task/codes.proto copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional int32 code = 1; *)
  message : string option;  (** Detail message copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional string message = 3; *)
  message_set : proto2_bridge_message_set option;  (** message_set associates an arbitrary proto message with the status. copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional proto2.bridge.MessageSet message_set = 5; *)
  space : string option;  (** copybara:strip_begin(b/383363683) Space to which this status belongs copybara:strip_end_and_replace optional string space = 2; // Space to which this status belongs *)
}

val google_cloud_run_v2_ambient_networking_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_ambient_networking
val yojson_of_google_cloud_run_v2_ambient_networking : google_cloud_run_v2_ambient_networking -> Yojson.Safe.t

val make_google_cloud_run_v2_ambient_networking :
  ?ambient_scope:[ `Ambient_scope_unspecified | `Ambient_scope_regional | `Ambient_scope_global | `Unrecognized of string ] ->
  ?enabled:bool ->
  unit ->
  google_cloud_run_v2_ambient_networking

val google_cloud_run_v2_binary_authorization_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_binary_authorization
val yojson_of_google_cloud_run_v2_binary_authorization : google_cloud_run_v2_binary_authorization -> Yojson.Safe.t

val make_google_cloud_run_v2_binary_authorization :
  ?breakglass_justification:string ->
  ?policy:string ->
  ?use_default:bool ->
  unit ->
  google_cloud_run_v2_binary_authorization

val google_cloud_run_v2_build_config_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_build_config
val yojson_of_google_cloud_run_v2_build_config : google_cloud_run_v2_build_config -> Yojson.Safe.t

val make_google_cloud_run_v2_build_config :
  ?base_image:string ->
  ?enable_automatic_updates:bool ->
  ?environment_variables:(string * string) list ->
  ?function_target:string ->
  ?image_uri:string ->
  ?name:string ->
  ?service_account:string ->
  ?source_location:string ->
  ?worker_pool:string ->
  unit ->
  google_cloud_run_v2_build_config

val google_cloud_run_v2_build_info_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_build_info
val yojson_of_google_cloud_run_v2_build_info : google_cloud_run_v2_build_info -> Yojson.Safe.t

val make_google_cloud_run_v2_build_info :
  ?function_target:string ->
  ?source_location:string ->
  unit ->
  google_cloud_run_v2_build_info

val google_cloud_run_v2_buildpacks_build_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_buildpacks_build
val yojson_of_google_cloud_run_v2_buildpacks_build : google_cloud_run_v2_buildpacks_build -> Yojson.Safe.t

val make_google_cloud_run_v2_buildpacks_build :
  ?base_image:string ->
  ?cache_image_uri:string ->
  ?enable_automatic_updates:bool ->
  ?environment_variables:(string * string) list ->
  ?function_target:string ->
  ?project_descriptor:string ->
  ?runtime:string ->
  unit ->
  google_cloud_run_v2_buildpacks_build

val google_cloud_run_v2_cancel_execution_request_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_cancel_execution_request
val yojson_of_google_cloud_run_v2_cancel_execution_request : google_cloud_run_v2_cancel_execution_request -> Yojson.Safe.t

val make_google_cloud_run_v2_cancel_execution_request :
  ?etag:string ->
  ?validate_only:bool ->
  unit ->
  google_cloud_run_v2_cancel_execution_request

val google_cloud_run_v2_cloud_sql_instance_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_cloud_sql_instance
val yojson_of_google_cloud_run_v2_cloud_sql_instance : google_cloud_run_v2_cloud_sql_instance -> Yojson.Safe.t

val make_google_cloud_run_v2_cloud_sql_instance :
  ?instances:string list ->
  unit ->
  google_cloud_run_v2_cloud_sql_instance

val google_cloud_run_v2_cloud_storage_source_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_cloud_storage_source
val yojson_of_google_cloud_run_v2_cloud_storage_source : google_cloud_run_v2_cloud_storage_source -> Yojson.Safe.t

val make_google_cloud_run_v2_cloud_storage_source :
  ?bucket:string ->
  ?generation:string ->
  ?object_:string ->
  unit ->
  google_cloud_run_v2_cloud_storage_source

val google_cloud_run_v2_condition_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_condition
val yojson_of_google_cloud_run_v2_condition : google_cloud_run_v2_condition -> Yojson.Safe.t

val make_google_cloud_run_v2_condition :
  ?execution_reason:[ `Execution_reason_undefined | `Job_status_service_polling_error | `Non_zero_exit_code | `Cancelled | `Cancelling | `Deleted | `Delayed_start_pending | `Delayed_execution_exceeding_duration_limit | `Unrecognized of string ] ->
  ?instance_reason:[ `Instance_reason_unspecified | `Instance_deleted | `Instance_stopped | `Instance_stopping | `Instance_non_zero_exit_code | `Unrecognized of string ] ->
  ?last_transition_time:string ->
  ?message:string ->
  ?reason:[ `Common_reason_undefined | `Unknown | `Revision_failed | `Progress_deadline_exceeded | `Container_missing | `Container_permission_denied | `Container_image_unauthorized | `Container_image_authorization_check_failed | `Encryption_key_permission_denied | `Encryption_key_check_failed | `Secrets_access_check_failed | `Waiting_for_operation | `Immediate_retry | `Postponed_retry | `Internal | `Vpc_network_not_found | `Unrecognized of string ] ->
  ?revision_reason:[ `Revision_reason_undefined | `Pending | `Reserve | `Retired | `Retiring | `Recreating | `Health_check_container_error | `Customized_path_response_pending | `Min_instances_not_provisioned | `Active_revision_limit_reached | `No_deployment | `Health_check_skipped | `Min_instances_warming | `Unrecognized of string ] ->
  ?severity:[ `Severity_unspecified | `Error | `Warning | `Info | `Unrecognized of string ] ->
  ?state:[ `State_unspecified | `Condition_pending | `Condition_reconciling | `Condition_failed | `Condition_succeeded | `Unrecognized of string ] ->
  ?type_:string ->
  unit ->
  google_cloud_run_v2_condition

val google_cloud_run_v2_container_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_container
val yojson_of_google_cloud_run_v2_container : google_cloud_run_v2_container -> Yojson.Safe.t

val make_google_cloud_run_v2_container :
  ?args:string list ->
  ?base_image_uri:string ->
  ?build_info:google_cloud_run_v2_build_info ->
  ?command:string list ->
  ?depends_on:string list ->
  ?env:google_cloud_run_v2_env_var list ->
  ?image:string ->
  ?liveness_probe:google_cloud_run_v2_probe ->
  ?name:string ->
  ?ports:google_cloud_run_v2_container_port list ->
  ?readiness_probe:google_cloud_run_v2_probe ->
  ?resources:google_cloud_run_v2_resource_requirements ->
  ?sandbox_launcher:bool ->
  ?source_code:google_cloud_run_v2_source_code ->
  ?startup_probe:google_cloud_run_v2_probe ->
  ?volume_mounts:google_cloud_run_v2_volume_mount list ->
  ?working_dir:string ->
  unit ->
  google_cloud_run_v2_container

val google_cloud_run_v2_container_override_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_container_override
val yojson_of_google_cloud_run_v2_container_override : google_cloud_run_v2_container_override -> Yojson.Safe.t

val make_google_cloud_run_v2_container_override :
  ?args:string list ->
  ?clear_args:bool ->
  ?env:google_cloud_run_v2_env_var list ->
  ?name:string ->
  unit ->
  google_cloud_run_v2_container_override

val google_cloud_run_v2_container_port_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_container_port
val yojson_of_google_cloud_run_v2_container_port : google_cloud_run_v2_container_port -> Yojson.Safe.t

val make_google_cloud_run_v2_container_port :
  ?container_port:int ->
  ?name:string ->
  unit ->
  google_cloud_run_v2_container_port

val google_cloud_run_v2_container_status_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_container_status
val yojson_of_google_cloud_run_v2_container_status : google_cloud_run_v2_container_status -> Yojson.Safe.t

val make_google_cloud_run_v2_container_status :
  ?image_digest:string ->
  ?name:string ->
  unit ->
  google_cloud_run_v2_container_status

val google_cloud_run_v2_docker_build_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_docker_build
val yojson_of_google_cloud_run_v2_docker_build : google_cloud_run_v2_docker_build -> Yojson.Safe.t

val google_cloud_run_v2_empty_dir_volume_source_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_empty_dir_volume_source
val yojson_of_google_cloud_run_v2_empty_dir_volume_source : google_cloud_run_v2_empty_dir_volume_source -> Yojson.Safe.t

val make_google_cloud_run_v2_empty_dir_volume_source :
  ?medium:[ `Medium_unspecified | `Memory | `Disk | `Unrecognized of string ] ->
  ?size_limit:string ->
  unit ->
  google_cloud_run_v2_empty_dir_volume_source

val google_cloud_run_v2_env_var_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_env_var
val yojson_of_google_cloud_run_v2_env_var : google_cloud_run_v2_env_var -> Yojson.Safe.t

val make_google_cloud_run_v2_env_var :
  ?name:string ->
  ?value:string ->
  ?value_source:google_cloud_run_v2_env_var_source ->
  unit ->
  google_cloud_run_v2_env_var

val google_cloud_run_v2_env_var_source_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_env_var_source
val yojson_of_google_cloud_run_v2_env_var_source : google_cloud_run_v2_env_var_source -> Yojson.Safe.t

val make_google_cloud_run_v2_env_var_source :
  ?secret_key_ref:google_cloud_run_v2_secret_key_selector ->
  unit ->
  google_cloud_run_v2_env_var_source

val google_cloud_run_v2_execution_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_execution
val yojson_of_google_cloud_run_v2_execution : google_cloud_run_v2_execution -> Yojson.Safe.t

val make_google_cloud_run_v2_execution :
  ?annotations:(string * string) list ->
  ?cancelled_count:int ->
  ?client:string ->
  ?client_version:string ->
  ?completion_time:string ->
  ?conditions:google_cloud_run_v2_condition list ->
  ?create_time:string ->
  ?creator:string ->
  ?delete_time:string ->
  ?etag:string ->
  ?expire_time:string ->
  ?failed_count:int ->
  ?generation:string ->
  ?job:string ->
  ?labels:(string * string) list ->
  ?launch_stage:[ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] ->
  ?log_uri:string ->
  ?name:string ->
  ?observed_generation:string ->
  ?parallelism:int ->
  ?reconciling:bool ->
  ?retried_count:int ->
  ?running_count:int ->
  ?satisfies_pzs:bool ->
  ?start_time:string ->
  ?succeeded_count:int ->
  ?task_count:int ->
  ?template:google_cloud_run_v2_task_template ->
  ?uid:string ->
  ?update_time:string ->
  unit ->
  google_cloud_run_v2_execution

val google_cloud_run_v2_execution_reference_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_execution_reference
val yojson_of_google_cloud_run_v2_execution_reference : google_cloud_run_v2_execution_reference -> Yojson.Safe.t

val make_google_cloud_run_v2_execution_reference :
  ?completion_status:[ `Completion_status_unspecified | `Execution_succeeded | `Execution_failed | `Execution_running | `Execution_pending | `Execution_cancelled | `Unrecognized of string ] ->
  ?completion_time:string ->
  ?create_time:string ->
  ?delete_time:string ->
  ?name:string ->
  unit ->
  google_cloud_run_v2_execution_reference

val google_cloud_run_v2_execution_template_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_execution_template
val yojson_of_google_cloud_run_v2_execution_template : google_cloud_run_v2_execution_template -> Yojson.Safe.t

val make_google_cloud_run_v2_execution_template :
  ?annotations:(string * string) list ->
  ?client:string ->
  ?client_version:string ->
  ?delay_execution:bool ->
  ?labels:(string * string) list ->
  ?parallelism:int ->
  ?task_count:int ->
  ?template:google_cloud_run_v2_task_template ->
  unit ->
  google_cloud_run_v2_execution_template

val google_cloud_run_v2_export_image_request_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_export_image_request
val yojson_of_google_cloud_run_v2_export_image_request : google_cloud_run_v2_export_image_request -> Yojson.Safe.t

val make_google_cloud_run_v2_export_image_request :
  ?destination_repo:string ->
  unit ->
  google_cloud_run_v2_export_image_request

val google_cloud_run_v2_export_image_response_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_export_image_response
val yojson_of_google_cloud_run_v2_export_image_response : google_cloud_run_v2_export_image_response -> Yojson.Safe.t

val make_google_cloud_run_v2_export_image_response :
  ?operation_id:string ->
  unit ->
  google_cloud_run_v2_export_image_response

val google_cloud_run_v2_export_status_response_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_export_status_response
val yojson_of_google_cloud_run_v2_export_status_response : google_cloud_run_v2_export_status_response -> Yojson.Safe.t

val make_google_cloud_run_v2_export_status_response :
  ?image_export_statuses:google_cloud_run_v2_image_export_status list ->
  ?operation_id:string ->
  ?operation_state:[ `Operation_state_unspecified | `In_progress | `Finished | `Unrecognized of string ] ->
  unit ->
  google_cloud_run_v2_export_status_response

val google_cloud_run_v2_gcs_volume_source_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_gcs_volume_source
val yojson_of_google_cloud_run_v2_gcs_volume_source : google_cloud_run_v2_gcs_volume_source -> Yojson.Safe.t

val make_google_cloud_run_v2_gcs_volume_source :
  ?bucket:string ->
  ?mount_options:string list ->
  ?read_only:bool ->
  unit ->
  google_cloud_run_v2_gcs_volume_source

val google_cloud_run_v2_grpc_action_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_grpc_action
val yojson_of_google_cloud_run_v2_grpc_action : google_cloud_run_v2_grpc_action -> Yojson.Safe.t

val make_google_cloud_run_v2_grpc_action :
  ?port:int ->
  ?service:string ->
  unit ->
  google_cloud_run_v2_grpc_action

val google_cloud_run_v2_http_get_action_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_http_get_action
val yojson_of_google_cloud_run_v2_http_get_action : google_cloud_run_v2_http_get_action -> Yojson.Safe.t

val make_google_cloud_run_v2_http_get_action :
  ?http_headers:google_cloud_run_v2_http_header list ->
  ?path:string ->
  ?port:int ->
  unit ->
  google_cloud_run_v2_http_get_action

val google_cloud_run_v2_http_header_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_http_header
val yojson_of_google_cloud_run_v2_http_header : google_cloud_run_v2_http_header -> Yojson.Safe.t

val make_google_cloud_run_v2_http_header :
  ?name:string ->
  ?value:string ->
  unit ->
  google_cloud_run_v2_http_header

val google_cloud_run_v2_image_export_status_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_image_export_status
val yojson_of_google_cloud_run_v2_image_export_status : google_cloud_run_v2_image_export_status -> Yojson.Safe.t

val make_google_cloud_run_v2_image_export_status :
  ?export_job_state:[ `Export_job_state_unspecified | `In_progress | `Finished | `Unrecognized of string ] ->
  ?exported_image_digest:string ->
  ?status:util_status_proto ->
  ?tag:string ->
  unit ->
  google_cloud_run_v2_image_export_status

val google_cloud_run_v2_inlined_source_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_inlined_source
val yojson_of_google_cloud_run_v2_inlined_source : google_cloud_run_v2_inlined_source -> Yojson.Safe.t

val make_google_cloud_run_v2_inlined_source :
  ?sources:google_cloud_run_v2_source_file list ->
  unit ->
  google_cloud_run_v2_inlined_source

val google_cloud_run_v2_instance_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_instance
val yojson_of_google_cloud_run_v2_instance : google_cloud_run_v2_instance -> Yojson.Safe.t

val make_google_cloud_run_v2_instance :
  ?annotations:(string * string) list ->
  ?binary_authorization:google_cloud_run_v2_binary_authorization ->
  ?client:string ->
  ?client_version:string ->
  ?conditions:google_cloud_run_v2_condition list ->
  ?container_statuses:google_cloud_run_v2_container_status list ->
  ?containers:google_cloud_run_v2_container list ->
  ?create_time:string ->
  ?creator:string ->
  ?default_uri_disabled:bool ->
  ?delete_time:string ->
  ?description:string ->
  ?encryption_key:string ->
  ?encryption_key_revocation_action:[ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] ->
  ?encryption_key_shutdown_duration:string ->
  ?etag:string ->
  ?expire_time:string ->
  ?generation:string ->
  ?gpu_zonal_redundancy_disabled:bool ->
  ?iap_enabled:bool ->
  ?ingress:[ `Ingress_traffic_unspecified | `Ingress_traffic_all | `Ingress_traffic_internal_only | `Ingress_traffic_internal_load_balancer | `Ingress_traffic_none | `Unrecognized of string ] ->
  ?invoker_iam_disabled:bool ->
  ?labels:(string * string) list ->
  ?last_modifier:string ->
  ?launch_stage:[ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] ->
  ?log_uri:string ->
  ?name:string ->
  ?node_selector:google_cloud_run_v2_node_selector ->
  ?observed_generation:string ->
  ?reconciling:bool ->
  ?restart_policy:[ `Restart_policy_unspecified | `Always | `On_failure | `Never | `Unrecognized of string ] ->
  ?satisfies_pzs:bool ->
  ?service_account:string ->
  ?ssh_enabled:bool ->
  ?terminal_condition:google_cloud_run_v2_condition ->
  ?uid:string ->
  ?update_time:string ->
  ?urls:string list ->
  ?volumes:google_cloud_run_v2_volume list ->
  ?vpc_access:google_cloud_run_v2_vpc_access ->
  unit ->
  google_cloud_run_v2_instance

val google_cloud_run_v2_instance_split_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_instance_split
val yojson_of_google_cloud_run_v2_instance_split : google_cloud_run_v2_instance_split -> Yojson.Safe.t

val make_google_cloud_run_v2_instance_split :
  ?percent:int ->
  ?revision:string ->
  ?type_:[ `Instance_split_allocation_type_unspecified | `Instance_split_allocation_type_latest | `Instance_split_allocation_type_revision | `Unrecognized of string ] ->
  unit ->
  google_cloud_run_v2_instance_split

val google_cloud_run_v2_instance_split_status_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_instance_split_status
val yojson_of_google_cloud_run_v2_instance_split_status : google_cloud_run_v2_instance_split_status -> Yojson.Safe.t

val make_google_cloud_run_v2_instance_split_status :
  ?percent:int ->
  ?revision:string ->
  ?type_:[ `Instance_split_allocation_type_unspecified | `Instance_split_allocation_type_latest | `Instance_split_allocation_type_revision | `Unrecognized of string ] ->
  unit ->
  google_cloud_run_v2_instance_split_status

val google_cloud_run_v2_job_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_job
val yojson_of_google_cloud_run_v2_job : google_cloud_run_v2_job -> Yojson.Safe.t

val make_google_cloud_run_v2_job :
  ?annotations:(string * string) list ->
  ?binary_authorization:google_cloud_run_v2_binary_authorization ->
  ?client:string ->
  ?client_version:string ->
  ?conditions:google_cloud_run_v2_condition list ->
  ?create_time:string ->
  ?creator:string ->
  ?delete_time:string ->
  ?etag:string ->
  ?execution_count:int ->
  ?expire_time:string ->
  ?functional_type:[ `Functional_type_unspecified | `Functional_type_agent | `Functional_type_mcp_server | `Unrecognized of string ] ->
  ?generation:string ->
  ?labels:(string * string) list ->
  ?last_modifier:string ->
  ?latest_created_execution:google_cloud_run_v2_execution_reference ->
  ?launch_stage:[ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] ->
  ?name:string ->
  ?observed_generation:string ->
  ?reconciling:bool ->
  ?run_execution_token:string ->
  ?satisfies_pzs:bool ->
  ?start_execution_token:string ->
  ?template:google_cloud_run_v2_execution_template ->
  ?terminal_condition:google_cloud_run_v2_condition ->
  ?uid:string ->
  ?update_time:string ->
  unit ->
  google_cloud_run_v2_job

val google_cloud_run_v2_list_executions_response_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_list_executions_response
val yojson_of_google_cloud_run_v2_list_executions_response : google_cloud_run_v2_list_executions_response -> Yojson.Safe.t

val make_google_cloud_run_v2_list_executions_response :
  ?executions:google_cloud_run_v2_execution list ->
  ?next_page_token:string ->
  unit ->
  google_cloud_run_v2_list_executions_response

val google_cloud_run_v2_list_instances_response_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_list_instances_response
val yojson_of_google_cloud_run_v2_list_instances_response : google_cloud_run_v2_list_instances_response -> Yojson.Safe.t

val make_google_cloud_run_v2_list_instances_response :
  ?instances:google_cloud_run_v2_instance list ->
  ?next_page_token:string ->
  unit ->
  google_cloud_run_v2_list_instances_response

val google_cloud_run_v2_list_jobs_response_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_list_jobs_response
val yojson_of_google_cloud_run_v2_list_jobs_response : google_cloud_run_v2_list_jobs_response -> Yojson.Safe.t

val make_google_cloud_run_v2_list_jobs_response :
  ?jobs:google_cloud_run_v2_job list ->
  ?next_page_token:string ->
  unit ->
  google_cloud_run_v2_list_jobs_response

val google_cloud_run_v2_list_revisions_response_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_list_revisions_response
val yojson_of_google_cloud_run_v2_list_revisions_response : google_cloud_run_v2_list_revisions_response -> Yojson.Safe.t

val make_google_cloud_run_v2_list_revisions_response :
  ?next_page_token:string ->
  ?revisions:google_cloud_run_v2_revision list ->
  unit ->
  google_cloud_run_v2_list_revisions_response

val google_cloud_run_v2_list_services_response_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_list_services_response
val yojson_of_google_cloud_run_v2_list_services_response : google_cloud_run_v2_list_services_response -> Yojson.Safe.t

val make_google_cloud_run_v2_list_services_response :
  ?next_page_token:string ->
  ?services:google_cloud_run_v2_service list ->
  ?unreachable:string list ->
  unit ->
  google_cloud_run_v2_list_services_response

val google_cloud_run_v2_list_tasks_response_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_list_tasks_response
val yojson_of_google_cloud_run_v2_list_tasks_response : google_cloud_run_v2_list_tasks_response -> Yojson.Safe.t

val make_google_cloud_run_v2_list_tasks_response :
  ?next_page_token:string ->
  ?tasks:google_cloud_run_v2_task list ->
  unit ->
  google_cloud_run_v2_list_tasks_response

val google_cloud_run_v2_list_worker_pools_response_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_list_worker_pools_response
val yojson_of_google_cloud_run_v2_list_worker_pools_response : google_cloud_run_v2_list_worker_pools_response -> Yojson.Safe.t

val make_google_cloud_run_v2_list_worker_pools_response :
  ?next_page_token:string ->
  ?worker_pools:google_cloud_run_v2_worker_pool list ->
  unit ->
  google_cloud_run_v2_list_worker_pools_response

val google_cloud_run_v2_metadata_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_metadata
val yojson_of_google_cloud_run_v2_metadata : google_cloud_run_v2_metadata -> Yojson.Safe.t

val make_google_cloud_run_v2_metadata :
  ?metadata:string ->
  unit ->
  google_cloud_run_v2_metadata

val google_cloud_run_v2_multi_region_settings_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_multi_region_settings
val yojson_of_google_cloud_run_v2_multi_region_settings : google_cloud_run_v2_multi_region_settings -> Yojson.Safe.t

val make_google_cloud_run_v2_multi_region_settings :
  ?multi_region_id:string ->
  ?regions:string list ->
  unit ->
  google_cloud_run_v2_multi_region_settings

val google_cloud_run_v2_nfs_volume_source_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_nfs_volume_source
val yojson_of_google_cloud_run_v2_nfs_volume_source : google_cloud_run_v2_nfs_volume_source -> Yojson.Safe.t

val make_google_cloud_run_v2_nfs_volume_source :
  ?path:string ->
  ?read_only:bool ->
  ?server:string ->
  unit ->
  google_cloud_run_v2_nfs_volume_source

val google_cloud_run_v2_network_interface_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_network_interface
val yojson_of_google_cloud_run_v2_network_interface : google_cloud_run_v2_network_interface -> Yojson.Safe.t

val make_google_cloud_run_v2_network_interface :
  ?network:string ->
  ?subnetwork:string ->
  ?tags:string list ->
  unit ->
  google_cloud_run_v2_network_interface

val google_cloud_run_v2_node_selector_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_node_selector
val yojson_of_google_cloud_run_v2_node_selector : google_cloud_run_v2_node_selector -> Yojson.Safe.t

val make_google_cloud_run_v2_node_selector :
  ?accelerator:string ->
  unit ->
  google_cloud_run_v2_node_selector

val google_cloud_run_v2_overrides_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_overrides
val yojson_of_google_cloud_run_v2_overrides : google_cloud_run_v2_overrides -> Yojson.Safe.t

val make_google_cloud_run_v2_overrides :
  ?container_overrides:google_cloud_run_v2_container_override list ->
  ?delay_execution:bool ->
  ?task_count:int ->
  ?timeout:string ->
  unit ->
  google_cloud_run_v2_overrides

val google_cloud_run_v2_probe_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_probe
val yojson_of_google_cloud_run_v2_probe : google_cloud_run_v2_probe -> Yojson.Safe.t

val make_google_cloud_run_v2_probe :
  ?failure_threshold:int ->
  ?grpc:google_cloud_run_v2_grpc_action ->
  ?http_get:google_cloud_run_v2_http_get_action ->
  ?initial_delay_seconds:int ->
  ?period_seconds:int ->
  ?tcp_socket:google_cloud_run_v2_tcp_socket_action ->
  ?timeout_seconds:int ->
  unit ->
  google_cloud_run_v2_probe

val google_cloud_run_v2_resource_requirements_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_resource_requirements
val yojson_of_google_cloud_run_v2_resource_requirements : google_cloud_run_v2_resource_requirements -> Yojson.Safe.t

val make_google_cloud_run_v2_resource_requirements :
  ?cpu_idle:bool ->
  ?limits:(string * string) list ->
  ?startup_cpu_boost:bool ->
  unit ->
  google_cloud_run_v2_resource_requirements

val google_cloud_run_v2_revision_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_revision
val yojson_of_google_cloud_run_v2_revision : google_cloud_run_v2_revision -> Yojson.Safe.t

val make_google_cloud_run_v2_revision :
  ?ambient_networking:google_cloud_run_v2_ambient_networking ->
  ?annotations:(string * string) list ->
  ?client:string ->
  ?client_version:string ->
  ?conditions:google_cloud_run_v2_condition list ->
  ?containers:google_cloud_run_v2_container list ->
  ?create_time:string ->
  ?creator:string ->
  ?delete_time:string ->
  ?encryption_key:string ->
  ?encryption_key_revocation_action:[ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] ->
  ?encryption_key_shutdown_duration:string ->
  ?etag:string ->
  ?execution_environment:[ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] ->
  ?expire_time:string ->
  ?generation:string ->
  ?gpu_zonal_redundancy_disabled:bool ->
  ?labels:(string * string) list ->
  ?launch_stage:[ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] ->
  ?log_uri:string ->
  ?max_instance_request_concurrency:int ->
  ?name:string ->
  ?node_selector:google_cloud_run_v2_node_selector ->
  ?observed_generation:string ->
  ?reconciling:bool ->
  ?satisfies_pzs:bool ->
  ?scaling:google_cloud_run_v2_revision_scaling ->
  ?scaling_status:google_cloud_run_v2_revision_scaling_status ->
  ?service:string ->
  ?service_account:string ->
  ?service_mesh:google_cloud_run_v2_service_mesh ->
  ?session_affinity:bool ->
  ?timeout:string ->
  ?uid:string ->
  ?update_time:string ->
  ?volumes:google_cloud_run_v2_volume list ->
  ?vpc_access:google_cloud_run_v2_vpc_access ->
  ?workload_identity_config:google_cloud_run_v2_workload_identity_config ->
  unit ->
  google_cloud_run_v2_revision

val google_cloud_run_v2_revision_scaling_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_revision_scaling
val yojson_of_google_cloud_run_v2_revision_scaling : google_cloud_run_v2_revision_scaling -> Yojson.Safe.t

val make_google_cloud_run_v2_revision_scaling :
  ?concurrency_utilization:float ->
  ?cpu_utilization:float ->
  ?max_instance_count:int ->
  ?min_instance_count:int ->
  unit ->
  google_cloud_run_v2_revision_scaling

val google_cloud_run_v2_revision_scaling_status_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_revision_scaling_status
val yojson_of_google_cloud_run_v2_revision_scaling_status : google_cloud_run_v2_revision_scaling_status -> Yojson.Safe.t

val make_google_cloud_run_v2_revision_scaling_status :
  ?desired_min_instance_count:int ->
  unit ->
  google_cloud_run_v2_revision_scaling_status

val google_cloud_run_v2_revision_template_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_revision_template
val yojson_of_google_cloud_run_v2_revision_template : google_cloud_run_v2_revision_template -> Yojson.Safe.t

val make_google_cloud_run_v2_revision_template :
  ?ambient_networking:google_cloud_run_v2_ambient_networking ->
  ?annotations:(string * string) list ->
  ?client:string ->
  ?client_version:string ->
  ?containers:google_cloud_run_v2_container list ->
  ?encryption_key:string ->
  ?encryption_key_revocation_action:[ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] ->
  ?encryption_key_shutdown_duration:string ->
  ?execution_environment:[ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] ->
  ?gpu_zonal_redundancy_disabled:bool ->
  ?health_check_disabled:bool ->
  ?labels:(string * string) list ->
  ?max_instance_request_concurrency:int ->
  ?node_selector:google_cloud_run_v2_node_selector ->
  ?revision:string ->
  ?scaling:google_cloud_run_v2_revision_scaling ->
  ?service_account:string ->
  ?service_mesh:google_cloud_run_v2_service_mesh ->
  ?session_affinity:bool ->
  ?timeout:string ->
  ?volumes:google_cloud_run_v2_volume list ->
  ?vpc_access:google_cloud_run_v2_vpc_access ->
  ?workload_identity_config:google_cloud_run_v2_workload_identity_config ->
  unit ->
  google_cloud_run_v2_revision_template

val google_cloud_run_v2_run_job_request_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_run_job_request
val yojson_of_google_cloud_run_v2_run_job_request : google_cloud_run_v2_run_job_request -> Yojson.Safe.t

val make_google_cloud_run_v2_run_job_request :
  ?etag:string ->
  ?overrides:google_cloud_run_v2_overrides ->
  ?validate_only:bool ->
  unit ->
  google_cloud_run_v2_run_job_request

val google_cloud_run_v2_secret_key_selector_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_secret_key_selector
val yojson_of_google_cloud_run_v2_secret_key_selector : google_cloud_run_v2_secret_key_selector -> Yojson.Safe.t

val make_google_cloud_run_v2_secret_key_selector :
  ?secret:string ->
  ?version:string ->
  unit ->
  google_cloud_run_v2_secret_key_selector

val google_cloud_run_v2_secret_volume_source_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_secret_volume_source
val yojson_of_google_cloud_run_v2_secret_volume_source : google_cloud_run_v2_secret_volume_source -> Yojson.Safe.t

val make_google_cloud_run_v2_secret_volume_source :
  ?default_mode:int ->
  ?items:google_cloud_run_v2_version_to_path list ->
  ?secret:string ->
  unit ->
  google_cloud_run_v2_secret_volume_source

val google_cloud_run_v2_service_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_service
val yojson_of_google_cloud_run_v2_service : google_cloud_run_v2_service -> Yojson.Safe.t

val make_google_cloud_run_v2_service :
  ?annotations:(string * string) list ->
  ?binary_authorization:google_cloud_run_v2_binary_authorization ->
  ?build_config:google_cloud_run_v2_build_config ->
  ?client:string ->
  ?client_version:string ->
  ?conditions:google_cloud_run_v2_condition list ->
  ?create_time:string ->
  ?creator:string ->
  ?custom_audiences:string list ->
  ?default_uri_disabled:bool ->
  ?delete_time:string ->
  ?description:string ->
  ?etag:string ->
  ?expire_time:string ->
  ?functional_type:[ `Functional_type_unspecified | `Functional_type_agent | `Functional_type_mcp_server | `Unrecognized of string ] ->
  ?generation:string ->
  ?iap_enabled:bool ->
  ?ingress:[ `Ingress_traffic_unspecified | `Ingress_traffic_all | `Ingress_traffic_internal_only | `Ingress_traffic_internal_load_balancer | `Ingress_traffic_none | `Unrecognized of string ] ->
  ?invoker_iam_disabled:bool ->
  ?labels:(string * string) list ->
  ?last_modifier:string ->
  ?latest_created_revision:string ->
  ?latest_ready_revision:string ->
  ?launch_stage:[ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] ->
  ?multi_region_settings:google_cloud_run_v2_multi_region_settings ->
  ?name:string ->
  ?observed_generation:string ->
  ?reconciling:bool ->
  ?satisfies_pzs:bool ->
  ?scaling:google_cloud_run_v2_service_scaling ->
  ?ssh_enabled:bool ->
  ?template:google_cloud_run_v2_revision_template ->
  ?terminal_condition:google_cloud_run_v2_condition ->
  ?threat_detection_enabled:bool ->
  ?traffic:google_cloud_run_v2_traffic_target list ->
  ?traffic_statuses:google_cloud_run_v2_traffic_target_status list ->
  ?uid:string ->
  ?update_time:string ->
  ?uri:string ->
  ?urls:string list ->
  unit ->
  google_cloud_run_v2_service

val google_cloud_run_v2_service_mesh_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_service_mesh
val yojson_of_google_cloud_run_v2_service_mesh : google_cloud_run_v2_service_mesh -> Yojson.Safe.t

val make_google_cloud_run_v2_service_mesh :
  ?mesh:string ->
  unit ->
  google_cloud_run_v2_service_mesh

val google_cloud_run_v2_service_scaling_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_service_scaling
val yojson_of_google_cloud_run_v2_service_scaling : google_cloud_run_v2_service_scaling -> Yojson.Safe.t

val make_google_cloud_run_v2_service_scaling :
  ?manual_instance_count:int ->
  ?max_instance_count:int ->
  ?min_instance_count:int ->
  ?scaling_mode:[ `Scaling_mode_unspecified | `Automatic | `Manual | `Unrecognized of string ] ->
  unit ->
  google_cloud_run_v2_service_scaling

val google_cloud_run_v2_source_code_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_source_code
val yojson_of_google_cloud_run_v2_source_code : google_cloud_run_v2_source_code -> Yojson.Safe.t

val make_google_cloud_run_v2_source_code :
  ?cloud_storage_source:google_cloud_run_v2_cloud_storage_source ->
  ?inlined_source:google_cloud_run_v2_inlined_source ->
  unit ->
  google_cloud_run_v2_source_code

val google_cloud_run_v2_source_file_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_source_file
val yojson_of_google_cloud_run_v2_source_file : google_cloud_run_v2_source_file -> Yojson.Safe.t

val make_google_cloud_run_v2_source_file :
  ?content:string ->
  ?filename:string ->
  unit ->
  google_cloud_run_v2_source_file

val google_cloud_run_v2_start_instance_request_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_start_instance_request
val yojson_of_google_cloud_run_v2_start_instance_request : google_cloud_run_v2_start_instance_request -> Yojson.Safe.t

val make_google_cloud_run_v2_start_instance_request :
  ?etag:string ->
  ?validate_only:bool ->
  unit ->
  google_cloud_run_v2_start_instance_request

val google_cloud_run_v2_stop_instance_request_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_stop_instance_request
val yojson_of_google_cloud_run_v2_stop_instance_request : google_cloud_run_v2_stop_instance_request -> Yojson.Safe.t

val make_google_cloud_run_v2_stop_instance_request :
  ?etag:string ->
  ?validate_only:bool ->
  unit ->
  google_cloud_run_v2_stop_instance_request

val google_cloud_run_v2_storage_source_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_storage_source
val yojson_of_google_cloud_run_v2_storage_source : google_cloud_run_v2_storage_source -> Yojson.Safe.t

val make_google_cloud_run_v2_storage_source :
  ?bucket:string ->
  ?generation:string ->
  ?object_:string ->
  unit ->
  google_cloud_run_v2_storage_source

val google_cloud_run_v2_submit_build_request_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_submit_build_request
val yojson_of_google_cloud_run_v2_submit_build_request : google_cloud_run_v2_submit_build_request -> Yojson.Safe.t

val make_google_cloud_run_v2_submit_build_request :
  ?buildpack_build:google_cloud_run_v2_buildpacks_build ->
  ?client:string ->
  ?docker_build:google_cloud_run_v2_docker_build ->
  ?image_uri:string ->
  ?machine_type:string ->
  ?release_track:[ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] ->
  ?service_account:string ->
  ?storage_source:google_cloud_run_v2_storage_source ->
  ?tags:string list ->
  ?worker_pool:string ->
  unit ->
  google_cloud_run_v2_submit_build_request

val google_cloud_run_v2_submit_build_response_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_submit_build_response
val yojson_of_google_cloud_run_v2_submit_build_response : google_cloud_run_v2_submit_build_response -> Yojson.Safe.t

val make_google_cloud_run_v2_submit_build_response :
  ?base_image_uri:string ->
  ?base_image_warning:string ->
  ?build_operation:google_longrunning_operation ->
  unit ->
  google_cloud_run_v2_submit_build_response

val google_cloud_run_v2_tcp_socket_action_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_tcp_socket_action
val yojson_of_google_cloud_run_v2_tcp_socket_action : google_cloud_run_v2_tcp_socket_action -> Yojson.Safe.t

val make_google_cloud_run_v2_tcp_socket_action :
  ?port:int ->
  unit ->
  google_cloud_run_v2_tcp_socket_action

val google_cloud_run_v2_task_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_task
val yojson_of_google_cloud_run_v2_task : google_cloud_run_v2_task -> Yojson.Safe.t

val make_google_cloud_run_v2_task :
  ?annotations:(string * string) list ->
  ?completion_time:string ->
  ?conditions:google_cloud_run_v2_condition list ->
  ?containers:google_cloud_run_v2_container list ->
  ?create_time:string ->
  ?delete_time:string ->
  ?encryption_key:string ->
  ?etag:string ->
  ?execution:string ->
  ?execution_environment:[ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] ->
  ?expire_time:string ->
  ?generation:string ->
  ?gpu_zonal_redundancy_disabled:bool ->
  ?index:int ->
  ?job:string ->
  ?labels:(string * string) list ->
  ?last_attempt_result:google_cloud_run_v2_task_attempt_result ->
  ?log_uri:string ->
  ?max_retries:int ->
  ?name:string ->
  ?node_selector:google_cloud_run_v2_node_selector ->
  ?observed_generation:string ->
  ?reconciling:bool ->
  ?retried:int ->
  ?satisfies_pzs:bool ->
  ?scheduled_time:string ->
  ?service_account:string ->
  ?start_time:string ->
  ?timeout:string ->
  ?uid:string ->
  ?update_time:string ->
  ?volumes:google_cloud_run_v2_volume list ->
  ?vpc_access:google_cloud_run_v2_vpc_access ->
  ?workload_identity_config:google_cloud_run_v2_workload_identity_config ->
  unit ->
  google_cloud_run_v2_task

val google_cloud_run_v2_task_attempt_result_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_task_attempt_result
val yojson_of_google_cloud_run_v2_task_attempt_result : google_cloud_run_v2_task_attempt_result -> Yojson.Safe.t

val make_google_cloud_run_v2_task_attempt_result :
  ?exit_code:int ->
  ?status:google_rpc_status ->
  ?term_signal:int ->
  unit ->
  google_cloud_run_v2_task_attempt_result

val google_cloud_run_v2_task_template_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_task_template
val yojson_of_google_cloud_run_v2_task_template : google_cloud_run_v2_task_template -> Yojson.Safe.t

val make_google_cloud_run_v2_task_template :
  ?containers:google_cloud_run_v2_container list ->
  ?encryption_key:string ->
  ?execution_environment:[ `Execution_environment_unspecified | `Execution_environment_gen1 | `Execution_environment_gen2 | `Unrecognized of string ] ->
  ?gpu_zonal_redundancy_disabled:bool ->
  ?max_retries:int ->
  ?node_selector:google_cloud_run_v2_node_selector ->
  ?service_account:string ->
  ?timeout:string ->
  ?volumes:google_cloud_run_v2_volume list ->
  ?vpc_access:google_cloud_run_v2_vpc_access ->
  ?workload_identity_config:google_cloud_run_v2_workload_identity_config ->
  unit ->
  google_cloud_run_v2_task_template

val google_cloud_run_v2_traffic_target_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_traffic_target
val yojson_of_google_cloud_run_v2_traffic_target : google_cloud_run_v2_traffic_target -> Yojson.Safe.t

val make_google_cloud_run_v2_traffic_target :
  ?percent:int ->
  ?revision:string ->
  ?tag:string ->
  ?type_:[ `Traffic_target_allocation_type_unspecified | `Traffic_target_allocation_type_latest | `Traffic_target_allocation_type_revision | `Unrecognized of string ] ->
  unit ->
  google_cloud_run_v2_traffic_target

val google_cloud_run_v2_traffic_target_status_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_traffic_target_status
val yojson_of_google_cloud_run_v2_traffic_target_status : google_cloud_run_v2_traffic_target_status -> Yojson.Safe.t

val make_google_cloud_run_v2_traffic_target_status :
  ?percent:int ->
  ?revision:string ->
  ?tag:string ->
  ?type_:[ `Traffic_target_allocation_type_unspecified | `Traffic_target_allocation_type_latest | `Traffic_target_allocation_type_revision | `Unrecognized of string ] ->
  ?uri:string ->
  unit ->
  google_cloud_run_v2_traffic_target_status

val google_cloud_run_v2_upload_source_request_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_upload_source_request
val yojson_of_google_cloud_run_v2_upload_source_request : google_cloud_run_v2_upload_source_request -> Yojson.Safe.t

val make_google_cloud_run_v2_upload_source_request :
  ?service:string ->
  unit ->
  google_cloud_run_v2_upload_source_request

val google_cloud_run_v2_upload_source_response_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_upload_source_response
val yojson_of_google_cloud_run_v2_upload_source_response : google_cloud_run_v2_upload_source_response -> Yojson.Safe.t

val make_google_cloud_run_v2_upload_source_response :
  ?cloud_storage_source:google_cloud_run_v2_cloud_storage_source ->
  unit ->
  google_cloud_run_v2_upload_source_response

val google_cloud_run_v2_version_to_path_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_version_to_path
val yojson_of_google_cloud_run_v2_version_to_path : google_cloud_run_v2_version_to_path -> Yojson.Safe.t

val make_google_cloud_run_v2_version_to_path :
  ?mode:int ->
  ?path:string ->
  ?version:string ->
  unit ->
  google_cloud_run_v2_version_to_path

val google_cloud_run_v2_volume_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_volume
val yojson_of_google_cloud_run_v2_volume : google_cloud_run_v2_volume -> Yojson.Safe.t

val make_google_cloud_run_v2_volume :
  ?cloud_sql_instance:google_cloud_run_v2_cloud_sql_instance ->
  ?empty_dir:google_cloud_run_v2_empty_dir_volume_source ->
  ?gcs:google_cloud_run_v2_gcs_volume_source ->
  ?name:string ->
  ?nfs:google_cloud_run_v2_nfs_volume_source ->
  ?secret:google_cloud_run_v2_secret_volume_source ->
  unit ->
  google_cloud_run_v2_volume

val google_cloud_run_v2_volume_mount_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_volume_mount
val yojson_of_google_cloud_run_v2_volume_mount : google_cloud_run_v2_volume_mount -> Yojson.Safe.t

val make_google_cloud_run_v2_volume_mount :
  ?mount_path:string ->
  ?name:string ->
  ?sub_path:string ->
  unit ->
  google_cloud_run_v2_volume_mount

val google_cloud_run_v2_vpc_access_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_vpc_access
val yojson_of_google_cloud_run_v2_vpc_access : google_cloud_run_v2_vpc_access -> Yojson.Safe.t

val make_google_cloud_run_v2_vpc_access :
  ?connector:string ->
  ?egress:[ `Vpc_egress_unspecified | `All_traffic | `Private_ranges_only | `Unrecognized of string ] ->
  ?network_interfaces:google_cloud_run_v2_network_interface list ->
  unit ->
  google_cloud_run_v2_vpc_access

val google_cloud_run_v2_worker_pool_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_worker_pool
val yojson_of_google_cloud_run_v2_worker_pool : google_cloud_run_v2_worker_pool -> Yojson.Safe.t

val make_google_cloud_run_v2_worker_pool :
  ?annotations:(string * string) list ->
  ?binary_authorization:google_cloud_run_v2_binary_authorization ->
  ?client:string ->
  ?client_version:string ->
  ?conditions:google_cloud_run_v2_condition list ->
  ?create_time:string ->
  ?creator:string ->
  ?custom_audiences:string list ->
  ?delete_time:string ->
  ?description:string ->
  ?etag:string ->
  ?expire_time:string ->
  ?generation:string ->
  ?instance_split_statuses:google_cloud_run_v2_instance_split_status list ->
  ?instance_splits:google_cloud_run_v2_instance_split list ->
  ?labels:(string * string) list ->
  ?last_modifier:string ->
  ?latest_created_revision:string ->
  ?latest_ready_revision:string ->
  ?launch_stage:[ `Launch_stage_unspecified | `Unimplemented | `Prelaunch | `Early_access | `Alpha | `Beta | `Ga | `Deprecated | `Unrecognized of string ] ->
  ?name:string ->
  ?observed_generation:string ->
  ?reconciling:bool ->
  ?satisfies_pzs:bool ->
  ?scaling:google_cloud_run_v2_worker_pool_scaling ->
  ?template:google_cloud_run_v2_worker_pool_revision_template ->
  ?terminal_condition:google_cloud_run_v2_condition ->
  ?threat_detection_enabled:bool ->
  ?uid:string ->
  ?update_time:string ->
  unit ->
  google_cloud_run_v2_worker_pool

val google_cloud_run_v2_worker_pool_revision_template_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_worker_pool_revision_template
val yojson_of_google_cloud_run_v2_worker_pool_revision_template : google_cloud_run_v2_worker_pool_revision_template -> Yojson.Safe.t

val make_google_cloud_run_v2_worker_pool_revision_template :
  ?annotations:(string * string) list ->
  ?client:string ->
  ?client_version:string ->
  ?containers:google_cloud_run_v2_container list ->
  ?encryption_key:string ->
  ?encryption_key_revocation_action:[ `Encryption_key_revocation_action_unspecified | `Prevent_new | `Shutdown | `Unrecognized of string ] ->
  ?encryption_key_shutdown_duration:string ->
  ?gpu_zonal_redundancy_disabled:bool ->
  ?labels:(string * string) list ->
  ?node_selector:google_cloud_run_v2_node_selector ->
  ?revision:string ->
  ?service_account:string ->
  ?service_mesh:google_cloud_run_v2_service_mesh ->
  ?volumes:google_cloud_run_v2_volume list ->
  ?vpc_access:google_cloud_run_v2_vpc_access ->
  unit ->
  google_cloud_run_v2_worker_pool_revision_template

val google_cloud_run_v2_worker_pool_scaling_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_worker_pool_scaling
val yojson_of_google_cloud_run_v2_worker_pool_scaling : google_cloud_run_v2_worker_pool_scaling -> Yojson.Safe.t

val make_google_cloud_run_v2_worker_pool_scaling :
  ?manual_instance_count:int ->
  unit ->
  google_cloud_run_v2_worker_pool_scaling

val google_cloud_run_v2_workload_identity_config_of_yojson : Yojson.Safe.t -> google_cloud_run_v2_workload_identity_config
val yojson_of_google_cloud_run_v2_workload_identity_config : google_cloud_run_v2_workload_identity_config -> Yojson.Safe.t

val make_google_cloud_run_v2_workload_identity_config :
  ?identity:string ->
  ?identity_certificate_enabled:bool ->
  ?identity_type:[ `Identity_type_unspecified | `Identity_type_service_account | `Identity_type_agent_identity | `Unrecognized of string ] ->
  unit ->
  google_cloud_run_v2_workload_identity_config

val google_devtools_cloudbuild_v1_approval_config_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_approval_config
val yojson_of_google_devtools_cloudbuild_v1_approval_config : google_devtools_cloudbuild_v1_approval_config -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_approval_config :
  ?approval_required:bool ->
  unit ->
  google_devtools_cloudbuild_v1_approval_config

val google_devtools_cloudbuild_v1_approval_result_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_approval_result
val yojson_of_google_devtools_cloudbuild_v1_approval_result : google_devtools_cloudbuild_v1_approval_result -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_approval_result :
  ?approval_time:string ->
  ?approver_account:string ->
  ?comment:string ->
  ?decision:[ `Decision_unspecified | `Approved | `Rejected | `Unrecognized of string ] ->
  ?url:string ->
  unit ->
  google_devtools_cloudbuild_v1_approval_result

val google_devtools_cloudbuild_v1_artifact_objects_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_artifact_objects
val yojson_of_google_devtools_cloudbuild_v1_artifact_objects : google_devtools_cloudbuild_v1_artifact_objects -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_artifact_objects :
  ?location:string ->
  ?paths:string list ->
  ?timing:google_devtools_cloudbuild_v1_time_span ->
  unit ->
  google_devtools_cloudbuild_v1_artifact_objects

val google_devtools_cloudbuild_v1_artifacts_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_artifacts
val yojson_of_google_devtools_cloudbuild_v1_artifacts : google_devtools_cloudbuild_v1_artifacts -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_artifacts :
  ?generic_artifacts:google_devtools_cloudbuild_v1_generic_artifact list ->
  ?go_modules:google_devtools_cloudbuild_v1_go_module list ->
  ?images:string list ->
  ?maven_artifacts:google_devtools_cloudbuild_v1_maven_artifact list ->
  ?npm_packages:google_devtools_cloudbuild_v1_npm_package list ->
  ?objects:google_devtools_cloudbuild_v1_artifact_objects ->
  ?oci:google_devtools_cloudbuild_v1_oci list ->
  ?python_packages:google_devtools_cloudbuild_v1_python_package list ->
  unit ->
  google_devtools_cloudbuild_v1_artifacts

val google_devtools_cloudbuild_v1_build_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_build
val yojson_of_google_devtools_cloudbuild_v1_build : google_devtools_cloudbuild_v1_build -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_build :
  ?approval:google_devtools_cloudbuild_v1_build_approval ->
  ?artifacts:google_devtools_cloudbuild_v1_artifacts ->
  ?available_secrets:google_devtools_cloudbuild_v1_secrets ->
  ?build_trigger_id:string ->
  ?create_time:string ->
  ?dependencies:google_devtools_cloudbuild_v1_dependency list ->
  ?failure_info:google_devtools_cloudbuild_v1_failure_info ->
  ?finish_time:string ->
  ?git_config:google_devtools_cloudbuild_v1_git_config ->
  ?id:string ->
  ?images:string list ->
  ?log_url:string ->
  ?logs_bucket:string ->
  ?name:string ->
  ?options:google_devtools_cloudbuild_v1_build_options ->
  ?project_id:string ->
  ?queue_ttl:string ->
  ?results:google_devtools_cloudbuild_v1_results ->
  ?secrets:google_devtools_cloudbuild_v1_secret list ->
  ?service_account:string ->
  ?source:google_devtools_cloudbuild_v1_source ->
  ?source_provenance:google_devtools_cloudbuild_v1_source_provenance ->
  ?start_time:string ->
  ?status:[ `Status_unknown | `Pending | `Queued | `Working | `Success | `Failure | `Internal_error | `Timeout | `Cancelled | `Expired | `Unrecognized of string ] ->
  ?status_detail:string ->
  ?steps:google_devtools_cloudbuild_v1_build_step list ->
  ?substitutions:(string * string) list ->
  ?tags:string list ->
  ?timeout:string ->
  ?timing:(string * google_devtools_cloudbuild_v1_time_span) list ->
  ?warnings:google_devtools_cloudbuild_v1_warning list ->
  unit ->
  google_devtools_cloudbuild_v1_build

val google_devtools_cloudbuild_v1_build_approval_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_build_approval
val yojson_of_google_devtools_cloudbuild_v1_build_approval : google_devtools_cloudbuild_v1_build_approval -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_build_approval :
  ?config:google_devtools_cloudbuild_v1_approval_config ->
  ?result:google_devtools_cloudbuild_v1_approval_result ->
  ?state:[ `State_unspecified | `Pending | `Approved | `Rejected | `Cancelled | `Unrecognized of string ] ->
  unit ->
  google_devtools_cloudbuild_v1_build_approval

val google_devtools_cloudbuild_v1_build_operation_metadata_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_build_operation_metadata
val yojson_of_google_devtools_cloudbuild_v1_build_operation_metadata : google_devtools_cloudbuild_v1_build_operation_metadata -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_build_operation_metadata :
  ?build:google_devtools_cloudbuild_v1_build ->
  unit ->
  google_devtools_cloudbuild_v1_build_operation_metadata

val google_devtools_cloudbuild_v1_build_options_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_build_options
val yojson_of_google_devtools_cloudbuild_v1_build_options : google_devtools_cloudbuild_v1_build_options -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_build_options :
  ?automap_substitutions:bool ->
  ?default_logs_bucket_behavior:[ `Default_logs_bucket_behavior_unspecified | `Regional_user_owned_bucket | `Legacy_bucket | `Unrecognized of string ] ->
  ?disk_size_gb:string ->
  ?dynamic_substitutions:bool ->
  ?enable_structured_logging:bool ->
  ?env:string list ->
  ?log_streaming_option:[ `Stream_default | `Stream_on | `Stream_off | `Unrecognized of string ] ->
  ?logging:[ `Logging_unspecified | `Legacy | `Gcs_only | `Stackdriver_only | `Cloud_logging_only | `None | `Unrecognized of string ] ->
  ?machine_type:[ `Unspecified | `N1_highcpu_8 | `N1_highcpu_32 | `E2_highcpu_8 | `E2_highcpu_32 | `E2_medium | `E2_standard_2 | `Unrecognized of string ] ->
  ?pool:google_devtools_cloudbuild_v1_pool_option ->
  ?pubsub_topic:string ->
  ?ranked_machine_series:[ `Machine_series_unspecified | `Machine_series_e | `Machine_series_n | `Machine_series_c | `Unrecognized of string ] list ->
  ?requested_verify_option:[ `Not_verified | `Verified | `Best_effort | `Unrecognized of string ] ->
  ?resolved_worker_release:string ->
  ?secret_env:string list ->
  ?source_provenance_hash:[ `None | `Sha256 | `Md5 | `Go_module_h1 | `Sha512 | `Dirsum_sha256 | `Unrecognized of string ] list ->
  ?substitution_option:[ `Must_match | `Allow_loose | `Unrecognized of string ] ->
  ?volumes:google_devtools_cloudbuild_v1_volume list ->
  ?worker_pool:string ->
  ?worker_release:string ->
  unit ->
  google_devtools_cloudbuild_v1_build_options

val google_devtools_cloudbuild_v1_build_resource_usage_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_build_resource_usage
val yojson_of_google_devtools_cloudbuild_v1_build_resource_usage : google_devtools_cloudbuild_v1_build_resource_usage -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_build_resource_usage :
  ?average_cpu_utilization:float ->
  ?average_memory_utilization:float ->
  ?peak_cpu_utilization:float ->
  ?peak_memory_utilization:float ->
  ?total_cpu_duration:string ->
  unit ->
  google_devtools_cloudbuild_v1_build_resource_usage

val google_devtools_cloudbuild_v1_build_step_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_build_step
val yojson_of_google_devtools_cloudbuild_v1_build_step : google_devtools_cloudbuild_v1_build_step -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_build_step :
  ?allow_exit_codes:int list ->
  ?allow_failure:bool ->
  ?args:string list ->
  ?automap_substitutions:bool ->
  ?dir:string ->
  ?entrypoint:string ->
  ?env:string list ->
  ?exit_code:int ->
  ?id:string ->
  ?name:string ->
  ?pull_timing:google_devtools_cloudbuild_v1_time_span ->
  ?results:google_devtools_cloudbuild_v1_step_result list ->
  ?script:string ->
  ?secret_env:string list ->
  ?status:[ `Status_unknown | `Pending | `Queued | `Working | `Success | `Failure | `Internal_error | `Timeout | `Cancelled | `Expired | `Unrecognized of string ] ->
  ?timeout:string ->
  ?timing:google_devtools_cloudbuild_v1_time_span ->
  ?volumes:google_devtools_cloudbuild_v1_volume list ->
  ?wait_for:string list ->
  unit ->
  google_devtools_cloudbuild_v1_build_step

val google_devtools_cloudbuild_v1_build_step_results_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_build_step_results
val yojson_of_google_devtools_cloudbuild_v1_build_step_results : google_devtools_cloudbuild_v1_build_step_results -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_build_step_results :
  ?results:(string * string) list ->
  unit ->
  google_devtools_cloudbuild_v1_build_step_results

val google_devtools_cloudbuild_v1_built_image_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_built_image
val yojson_of_google_devtools_cloudbuild_v1_built_image : google_devtools_cloudbuild_v1_built_image -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_built_image :
  ?artifact_registry_package:string ->
  ?digest:string ->
  ?name:string ->
  ?oci_media_type:[ `Oci_media_type_unspecified | `Image_manifest | `Image_index | `Unrecognized of string ] ->
  ?push_timing:google_devtools_cloudbuild_v1_time_span ->
  unit ->
  google_devtools_cloudbuild_v1_built_image

val google_devtools_cloudbuild_v1_connected_repository_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_connected_repository
val yojson_of_google_devtools_cloudbuild_v1_connected_repository : google_devtools_cloudbuild_v1_connected_repository -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_connected_repository :
  ?dir:string ->
  ?repository:string ->
  ?revision:string ->
  unit ->
  google_devtools_cloudbuild_v1_connected_repository

val google_devtools_cloudbuild_v1_dependency_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_dependency
val yojson_of_google_devtools_cloudbuild_v1_dependency : google_devtools_cloudbuild_v1_dependency -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_dependency :
  ?empty:bool ->
  ?generic_artifact:google_devtools_cloudbuild_v1_generic_artifact_dependency ->
  ?git_source:google_devtools_cloudbuild_v1_git_source_dependency ->
  unit ->
  google_devtools_cloudbuild_v1_dependency

val google_devtools_cloudbuild_v1_developer_connect_config_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_developer_connect_config
val yojson_of_google_devtools_cloudbuild_v1_developer_connect_config : google_devtools_cloudbuild_v1_developer_connect_config -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_developer_connect_config :
  ?dir:string ->
  ?git_repository_link:string ->
  ?revision:string ->
  unit ->
  google_devtools_cloudbuild_v1_developer_connect_config

val google_devtools_cloudbuild_v1_failure_info_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_failure_info
val yojson_of_google_devtools_cloudbuild_v1_failure_info : google_devtools_cloudbuild_v1_failure_info -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_failure_info :
  ?detail:string ->
  ?type_:[ `Failure_type_unspecified | `Push_failed | `Push_image_not_found | `Push_not_authorized | `Logging_failure | `User_build_step | `Fetch_source_failed | `Unrecognized of string ] ->
  unit ->
  google_devtools_cloudbuild_v1_failure_info

val google_devtools_cloudbuild_v1_file_hashes_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_file_hashes
val yojson_of_google_devtools_cloudbuild_v1_file_hashes : google_devtools_cloudbuild_v1_file_hashes -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_file_hashes :
  ?file_hash:google_devtools_cloudbuild_v1_hash list ->
  unit ->
  google_devtools_cloudbuild_v1_file_hashes

val google_devtools_cloudbuild_v1_generic_artifact_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_generic_artifact
val yojson_of_google_devtools_cloudbuild_v1_generic_artifact : google_devtools_cloudbuild_v1_generic_artifact -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_generic_artifact :
  ?folder:string ->
  ?registry_path:string ->
  unit ->
  google_devtools_cloudbuild_v1_generic_artifact

val google_devtools_cloudbuild_v1_generic_artifact_dependency_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_generic_artifact_dependency
val yojson_of_google_devtools_cloudbuild_v1_generic_artifact_dependency : google_devtools_cloudbuild_v1_generic_artifact_dependency -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_generic_artifact_dependency :
  ?dest_path:string ->
  ?resource:string ->
  unit ->
  google_devtools_cloudbuild_v1_generic_artifact_dependency

val google_devtools_cloudbuild_v1_git_config_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_git_config
val yojson_of_google_devtools_cloudbuild_v1_git_config : google_devtools_cloudbuild_v1_git_config -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_git_config :
  ?http:google_devtools_cloudbuild_v1_http_config ->
  unit ->
  google_devtools_cloudbuild_v1_git_config

val google_devtools_cloudbuild_v1_git_source_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_git_source
val yojson_of_google_devtools_cloudbuild_v1_git_source : google_devtools_cloudbuild_v1_git_source -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_git_source :
  ?dir:string ->
  ?revision:string ->
  ?url:string ->
  unit ->
  google_devtools_cloudbuild_v1_git_source

val google_devtools_cloudbuild_v1_git_source_dependency_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_git_source_dependency
val yojson_of_google_devtools_cloudbuild_v1_git_source_dependency : google_devtools_cloudbuild_v1_git_source_dependency -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_git_source_dependency :
  ?depth:string ->
  ?dest_path:string ->
  ?fetch_tags:bool ->
  ?recurse_submodules:bool ->
  ?repository:google_devtools_cloudbuild_v1_git_source_repository ->
  ?revision:string ->
  unit ->
  google_devtools_cloudbuild_v1_git_source_dependency

val google_devtools_cloudbuild_v1_git_source_repository_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_git_source_repository
val yojson_of_google_devtools_cloudbuild_v1_git_source_repository : google_devtools_cloudbuild_v1_git_source_repository -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_git_source_repository :
  ?developer_connect:string ->
  ?url:string ->
  unit ->
  google_devtools_cloudbuild_v1_git_source_repository

val google_devtools_cloudbuild_v1_go_module_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_go_module
val yojson_of_google_devtools_cloudbuild_v1_go_module : google_devtools_cloudbuild_v1_go_module -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_go_module :
  ?module_path:string ->
  ?module_version:string ->
  ?repository_location:string ->
  ?repository_name:string ->
  ?repository_project_id:string ->
  ?source_path:string ->
  unit ->
  google_devtools_cloudbuild_v1_go_module

val google_devtools_cloudbuild_v1_hash_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_hash
val yojson_of_google_devtools_cloudbuild_v1_hash : google_devtools_cloudbuild_v1_hash -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_hash :
  ?type_:[ `None | `Sha256 | `Md5 | `Go_module_h1 | `Sha512 | `Dirsum_sha256 | `Unrecognized of string ] ->
  ?value:string ->
  unit ->
  google_devtools_cloudbuild_v1_hash

val google_devtools_cloudbuild_v1_http_config_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_http_config
val yojson_of_google_devtools_cloudbuild_v1_http_config : google_devtools_cloudbuild_v1_http_config -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_http_config :
  ?proxy_secret_version_name:string ->
  unit ->
  google_devtools_cloudbuild_v1_http_config

val google_devtools_cloudbuild_v1_inline_secret_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_inline_secret
val yojson_of_google_devtools_cloudbuild_v1_inline_secret : google_devtools_cloudbuild_v1_inline_secret -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_inline_secret :
  ?env_map:(string * string) list ->
  ?kms_key_name:string ->
  unit ->
  google_devtools_cloudbuild_v1_inline_secret

val google_devtools_cloudbuild_v1_maven_artifact_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_maven_artifact
val yojson_of_google_devtools_cloudbuild_v1_maven_artifact : google_devtools_cloudbuild_v1_maven_artifact -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_maven_artifact :
  ?artifact_id:string ->
  ?deploy_folder:string ->
  ?group_id:string ->
  ?path:string ->
  ?repository:string ->
  ?version:string ->
  unit ->
  google_devtools_cloudbuild_v1_maven_artifact

val google_devtools_cloudbuild_v1_npm_package_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_npm_package
val yojson_of_google_devtools_cloudbuild_v1_npm_package : google_devtools_cloudbuild_v1_npm_package -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_npm_package :
  ?package_path:string ->
  ?repository:string ->
  unit ->
  google_devtools_cloudbuild_v1_npm_package

val google_devtools_cloudbuild_v1_oci_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_oci
val yojson_of_google_devtools_cloudbuild_v1_oci : google_devtools_cloudbuild_v1_oci -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_oci :
  ?file:string ->
  ?registry_path:string ->
  ?tags:string list ->
  unit ->
  google_devtools_cloudbuild_v1_oci

val google_devtools_cloudbuild_v1_pool_option_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_pool_option
val yojson_of_google_devtools_cloudbuild_v1_pool_option : google_devtools_cloudbuild_v1_pool_option -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_pool_option :
  ?name:string ->
  ?resolved_worker_release:string ->
  ?worker_release:string ->
  unit ->
  google_devtools_cloudbuild_v1_pool_option

val google_devtools_cloudbuild_v1_python_package_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_python_package
val yojson_of_google_devtools_cloudbuild_v1_python_package : google_devtools_cloudbuild_v1_python_package -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_python_package :
  ?paths:string list ->
  ?repository:string ->
  unit ->
  google_devtools_cloudbuild_v1_python_package

val google_devtools_cloudbuild_v1_repo_source_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_repo_source
val yojson_of_google_devtools_cloudbuild_v1_repo_source : google_devtools_cloudbuild_v1_repo_source -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_repo_source :
  ?branch_name:string ->
  ?commit_sha:string ->
  ?dir:string ->
  ?invert_regex:bool ->
  ?project_id:string ->
  ?repo_name:string ->
  ?substitutions:(string * string) list ->
  ?tag_name:string ->
  unit ->
  google_devtools_cloudbuild_v1_repo_source

val google_devtools_cloudbuild_v1_results_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_results
val yojson_of_google_devtools_cloudbuild_v1_results : google_devtools_cloudbuild_v1_results -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_results :
  ?artifact_manifest:string ->
  ?artifact_timing:google_devtools_cloudbuild_v1_time_span ->
  ?build_step_images:string list ->
  ?build_step_outputs:string list ->
  ?build_step_results:(string * google_devtools_cloudbuild_v1_build_step_results) list ->
  ?generic_artifacts:google_devtools_cloudbuild_v1_uploaded_generic_artifact list ->
  ?go_modules:google_devtools_cloudbuild_v1_uploaded_go_module list ->
  ?images:google_devtools_cloudbuild_v1_built_image list ->
  ?maven_artifacts:google_devtools_cloudbuild_v1_uploaded_maven_artifact list ->
  ?npm_packages:google_devtools_cloudbuild_v1_uploaded_npm_package list ->
  ?num_artifacts:string ->
  ?python_packages:google_devtools_cloudbuild_v1_uploaded_python_package list ->
  ?resource_usage:google_devtools_cloudbuild_v1_build_resource_usage ->
  unit ->
  google_devtools_cloudbuild_v1_results

val google_devtools_cloudbuild_v1_secret_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_secret
val yojson_of_google_devtools_cloudbuild_v1_secret : google_devtools_cloudbuild_v1_secret -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_secret :
  ?kms_key_name:string ->
  ?secret_env:(string * string) list ->
  unit ->
  google_devtools_cloudbuild_v1_secret

val google_devtools_cloudbuild_v1_secret_manager_secret_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_secret_manager_secret
val yojson_of_google_devtools_cloudbuild_v1_secret_manager_secret : google_devtools_cloudbuild_v1_secret_manager_secret -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_secret_manager_secret :
  ?env:string ->
  ?version_name:string ->
  unit ->
  google_devtools_cloudbuild_v1_secret_manager_secret

val google_devtools_cloudbuild_v1_secrets_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_secrets
val yojson_of_google_devtools_cloudbuild_v1_secrets : google_devtools_cloudbuild_v1_secrets -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_secrets :
  ?inline:google_devtools_cloudbuild_v1_inline_secret list ->
  ?secret_manager:google_devtools_cloudbuild_v1_secret_manager_secret list ->
  unit ->
  google_devtools_cloudbuild_v1_secrets

val google_devtools_cloudbuild_v1_source_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_source
val yojson_of_google_devtools_cloudbuild_v1_source : google_devtools_cloudbuild_v1_source -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_source :
  ?connected_repository:google_devtools_cloudbuild_v1_connected_repository ->
  ?developer_connect_config:google_devtools_cloudbuild_v1_developer_connect_config ->
  ?git_source:google_devtools_cloudbuild_v1_git_source ->
  ?repo_source:google_devtools_cloudbuild_v1_repo_source ->
  ?storage_source:google_devtools_cloudbuild_v1_storage_source ->
  ?storage_source_manifest:google_devtools_cloudbuild_v1_storage_source_manifest ->
  unit ->
  google_devtools_cloudbuild_v1_source

val google_devtools_cloudbuild_v1_source_provenance_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_source_provenance
val yojson_of_google_devtools_cloudbuild_v1_source_provenance : google_devtools_cloudbuild_v1_source_provenance -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_source_provenance :
  ?file_hashes:(string * google_devtools_cloudbuild_v1_file_hashes) list ->
  ?resolved_connected_repository:google_devtools_cloudbuild_v1_connected_repository ->
  ?resolved_git_source:google_devtools_cloudbuild_v1_git_source ->
  ?resolved_repo_source:google_devtools_cloudbuild_v1_repo_source ->
  ?resolved_storage_source:google_devtools_cloudbuild_v1_storage_source ->
  ?resolved_storage_source_manifest:google_devtools_cloudbuild_v1_storage_source_manifest ->
  unit ->
  google_devtools_cloudbuild_v1_source_provenance

val google_devtools_cloudbuild_v1_step_result_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_step_result
val yojson_of_google_devtools_cloudbuild_v1_step_result : google_devtools_cloudbuild_v1_step_result -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_step_result :
  ?attestation_content:string ->
  ?attestation_type:string ->
  ?name:string ->
  unit ->
  google_devtools_cloudbuild_v1_step_result

val google_devtools_cloudbuild_v1_storage_source_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_storage_source
val yojson_of_google_devtools_cloudbuild_v1_storage_source : google_devtools_cloudbuild_v1_storage_source -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_storage_source :
  ?bucket:string ->
  ?generation:string ->
  ?object_:string ->
  ?source_fetcher:[ `Source_fetcher_unspecified | `Gsutil | `Gcs_fetcher | `Unrecognized of string ] ->
  unit ->
  google_devtools_cloudbuild_v1_storage_source

val google_devtools_cloudbuild_v1_storage_source_manifest_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_storage_source_manifest
val yojson_of_google_devtools_cloudbuild_v1_storage_source_manifest : google_devtools_cloudbuild_v1_storage_source_manifest -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_storage_source_manifest :
  ?bucket:string ->
  ?generation:string ->
  ?object_:string ->
  unit ->
  google_devtools_cloudbuild_v1_storage_source_manifest

val google_devtools_cloudbuild_v1_time_span_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_time_span
val yojson_of_google_devtools_cloudbuild_v1_time_span : google_devtools_cloudbuild_v1_time_span -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_time_span :
  ?end_time:string ->
  ?start_time:string ->
  unit ->
  google_devtools_cloudbuild_v1_time_span

val google_devtools_cloudbuild_v1_uploaded_generic_artifact_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_uploaded_generic_artifact
val yojson_of_google_devtools_cloudbuild_v1_uploaded_generic_artifact : google_devtools_cloudbuild_v1_uploaded_generic_artifact -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_uploaded_generic_artifact :
  ?artifact_fingerprint:google_devtools_cloudbuild_v1_file_hashes ->
  ?artifact_registry_package:string ->
  ?file_hashes:(string * google_devtools_cloudbuild_v1_file_hashes) list ->
  ?push_timing:google_devtools_cloudbuild_v1_time_span ->
  ?uri:string ->
  unit ->
  google_devtools_cloudbuild_v1_uploaded_generic_artifact

val google_devtools_cloudbuild_v1_uploaded_go_module_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_uploaded_go_module
val yojson_of_google_devtools_cloudbuild_v1_uploaded_go_module : google_devtools_cloudbuild_v1_uploaded_go_module -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_uploaded_go_module :
  ?artifact_registry_package:string ->
  ?file_hashes:google_devtools_cloudbuild_v1_file_hashes ->
  ?push_timing:google_devtools_cloudbuild_v1_time_span ->
  ?uri:string ->
  unit ->
  google_devtools_cloudbuild_v1_uploaded_go_module

val google_devtools_cloudbuild_v1_uploaded_maven_artifact_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_uploaded_maven_artifact
val yojson_of_google_devtools_cloudbuild_v1_uploaded_maven_artifact : google_devtools_cloudbuild_v1_uploaded_maven_artifact -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_uploaded_maven_artifact :
  ?artifact_registry_package:string ->
  ?file_hashes:google_devtools_cloudbuild_v1_file_hashes ->
  ?push_timing:google_devtools_cloudbuild_v1_time_span ->
  ?uri:string ->
  unit ->
  google_devtools_cloudbuild_v1_uploaded_maven_artifact

val google_devtools_cloudbuild_v1_uploaded_npm_package_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_uploaded_npm_package
val yojson_of_google_devtools_cloudbuild_v1_uploaded_npm_package : google_devtools_cloudbuild_v1_uploaded_npm_package -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_uploaded_npm_package :
  ?artifact_registry_package:string ->
  ?file_hashes:google_devtools_cloudbuild_v1_file_hashes ->
  ?push_timing:google_devtools_cloudbuild_v1_time_span ->
  ?uri:string ->
  unit ->
  google_devtools_cloudbuild_v1_uploaded_npm_package

val google_devtools_cloudbuild_v1_uploaded_python_package_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_uploaded_python_package
val yojson_of_google_devtools_cloudbuild_v1_uploaded_python_package : google_devtools_cloudbuild_v1_uploaded_python_package -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_uploaded_python_package :
  ?artifact_registry_package:string ->
  ?file_hashes:google_devtools_cloudbuild_v1_file_hashes ->
  ?push_timing:google_devtools_cloudbuild_v1_time_span ->
  ?uri:string ->
  unit ->
  google_devtools_cloudbuild_v1_uploaded_python_package

val google_devtools_cloudbuild_v1_volume_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_volume
val yojson_of_google_devtools_cloudbuild_v1_volume : google_devtools_cloudbuild_v1_volume -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_volume :
  ?name:string ->
  ?path:string ->
  unit ->
  google_devtools_cloudbuild_v1_volume

val google_devtools_cloudbuild_v1_warning_of_yojson : Yojson.Safe.t -> google_devtools_cloudbuild_v1_warning
val yojson_of_google_devtools_cloudbuild_v1_warning : google_devtools_cloudbuild_v1_warning -> Yojson.Safe.t

val make_google_devtools_cloudbuild_v1_warning :
  ?priority:[ `Priority_unspecified | `Info | `Warning | `Alert | `Unrecognized of string ] ->
  ?text:string ->
  unit ->
  google_devtools_cloudbuild_v1_warning

val google_iam_v1_audit_config_of_yojson : Yojson.Safe.t -> google_iam_v1_audit_config
val yojson_of_google_iam_v1_audit_config : google_iam_v1_audit_config -> Yojson.Safe.t

val make_google_iam_v1_audit_config :
  ?audit_log_configs:google_iam_v1_audit_log_config list ->
  ?service:string ->
  unit ->
  google_iam_v1_audit_config

val google_iam_v1_audit_log_config_of_yojson : Yojson.Safe.t -> google_iam_v1_audit_log_config
val yojson_of_google_iam_v1_audit_log_config : google_iam_v1_audit_log_config -> Yojson.Safe.t

val make_google_iam_v1_audit_log_config :
  ?exempted_members:string list ->
  ?log_type:[ `Log_type_unspecified | `Admin_read | `Data_write | `Data_read | `Unrecognized of string ] ->
  unit ->
  google_iam_v1_audit_log_config

val google_iam_v1_binding_of_yojson : Yojson.Safe.t -> google_iam_v1_binding
val yojson_of_google_iam_v1_binding : google_iam_v1_binding -> Yojson.Safe.t

val make_google_iam_v1_binding :
  ?condition:google_type_expr ->
  ?members:string list ->
  ?role:string ->
  unit ->
  google_iam_v1_binding

val google_iam_v1_policy_of_yojson : Yojson.Safe.t -> google_iam_v1_policy
val yojson_of_google_iam_v1_policy : google_iam_v1_policy -> Yojson.Safe.t

val make_google_iam_v1_policy :
  ?audit_configs:google_iam_v1_audit_config list ->
  ?bindings:google_iam_v1_binding list ->
  ?etag:string ->
  ?version:int ->
  unit ->
  google_iam_v1_policy

val google_iam_v1_set_iam_policy_request_of_yojson : Yojson.Safe.t -> google_iam_v1_set_iam_policy_request
val yojson_of_google_iam_v1_set_iam_policy_request : google_iam_v1_set_iam_policy_request -> Yojson.Safe.t

val make_google_iam_v1_set_iam_policy_request :
  ?policy:google_iam_v1_policy ->
  ?update_mask:string ->
  unit ->
  google_iam_v1_set_iam_policy_request

val google_iam_v1_test_iam_permissions_request_of_yojson : Yojson.Safe.t -> google_iam_v1_test_iam_permissions_request
val yojson_of_google_iam_v1_test_iam_permissions_request : google_iam_v1_test_iam_permissions_request -> Yojson.Safe.t

val make_google_iam_v1_test_iam_permissions_request :
  ?permissions:string list ->
  unit ->
  google_iam_v1_test_iam_permissions_request

val google_iam_v1_test_iam_permissions_response_of_yojson : Yojson.Safe.t -> google_iam_v1_test_iam_permissions_response
val yojson_of_google_iam_v1_test_iam_permissions_response : google_iam_v1_test_iam_permissions_response -> Yojson.Safe.t

val make_google_iam_v1_test_iam_permissions_response :
  ?permissions:string list ->
  unit ->
  google_iam_v1_test_iam_permissions_response

val google_longrunning_list_operations_response_of_yojson : Yojson.Safe.t -> google_longrunning_list_operations_response
val yojson_of_google_longrunning_list_operations_response : google_longrunning_list_operations_response -> Yojson.Safe.t

val make_google_longrunning_list_operations_response :
  ?next_page_token:string ->
  ?operations:google_longrunning_operation list ->
  ?unreachable:string list ->
  unit ->
  google_longrunning_list_operations_response

val google_longrunning_operation_of_yojson : Yojson.Safe.t -> google_longrunning_operation
val yojson_of_google_longrunning_operation : google_longrunning_operation -> Yojson.Safe.t

val make_google_longrunning_operation :
  ?done_:bool ->
  ?error:google_rpc_status ->
  ?metadata:(string * Yojson.Safe.t) list ->
  ?name:string ->
  ?response:(string * Yojson.Safe.t) list ->
  unit ->
  google_longrunning_operation

val google_longrunning_wait_operation_request_of_yojson : Yojson.Safe.t -> google_longrunning_wait_operation_request
val yojson_of_google_longrunning_wait_operation_request : google_longrunning_wait_operation_request -> Yojson.Safe.t

val make_google_longrunning_wait_operation_request :
  ?timeout:string ->
  unit ->
  google_longrunning_wait_operation_request

val google_protobuf_empty_of_yojson : Yojson.Safe.t -> google_protobuf_empty
val yojson_of_google_protobuf_empty : google_protobuf_empty -> Yojson.Safe.t

val google_rpc_status_of_yojson : Yojson.Safe.t -> google_rpc_status
val yojson_of_google_rpc_status : google_rpc_status -> Yojson.Safe.t

val make_google_rpc_status :
  ?code:int ->
  ?details:(string * Yojson.Safe.t) list list ->
  ?message:string ->
  unit ->
  google_rpc_status

val google_type_expr_of_yojson : Yojson.Safe.t -> google_type_expr
val yojson_of_google_type_expr : google_type_expr -> Yojson.Safe.t

val make_google_type_expr :
  ?description:string ->
  ?expression:string ->
  ?location:string ->
  ?title:string ->
  unit ->
  google_type_expr

val proto2_bridge_message_set_of_yojson : Yojson.Safe.t -> proto2_bridge_message_set
val yojson_of_proto2_bridge_message_set : proto2_bridge_message_set -> Yojson.Safe.t

val util_status_proto_of_yojson : Yojson.Safe.t -> util_status_proto
val yojson_of_util_status_proto : util_status_proto -> Yojson.Safe.t

val make_util_status_proto :
  ?canonical_code:int ->
  ?code:int ->
  ?message:string ->
  ?message_set:proto2_bridge_message_set ->
  ?space:string ->
  unit ->
  util_status_proto

val base_url : string
val batch_endpoint : Uri.t

val batch :
  access_token:string ->
  'a Google_api.Call.t list ->
  (('a, Google_api.Error.t) result list, Google_api.Error.t) result
(** {!Google_api.Batch.execute} on {!batch_endpoint}. *)

module Projects : sig
  module Locations : sig
    val export_image :
      name:string ->
      body:google_cloud_run_v2_export_image_request ->
      unit ->
      google_cloud_run_v2_export_image_response Google_api.Call.t
    (** Export image for a given resource.

        [POST v2/{+name}:exportImage]

        - [name]: Required. The name of the resource of which image metadata should be exported. Format: `projects/\{project_id_or_number\}/locations/\{location\}/services/\{service\}/revisions/\{revision\}` for Revision `projects/\{project_id_or_number\}/locations/\{location\}/jobs/\{job\}/executions/\{execution\}` for Execution *)

    val export_image_metadata :
      name:string ->
      unit ->
      google_cloud_run_v2_metadata Google_api.Call.t
    (** Export image metadata for a given resource.

        [GET v2/{+name}:exportImageMetadata]

        - [name]: Required. The name of the resource of which image metadata should be exported. Format: `projects/\{project_id_or_number\}/locations/\{location\}/services/\{service\}/revisions/\{revision\}` for Revision `projects/\{project_id_or_number\}/locations/\{location\}/jobs/\{job\}/executions/\{execution\}` for Execution *)

    val export_metadata :
      name:string ->
      unit ->
      google_cloud_run_v2_metadata Google_api.Call.t
    (** Export generated customer metadata for a given resource.

        [GET v2/{+name}:exportMetadata]

        - [name]: Required. The name of the resource of which metadata should be exported. Format: `projects/\{project_id_or_number\}/locations/\{location\}/services/\{service\}` for Service `projects/\{project_id_or_number\}/locations/\{location\}/services/\{service\}/revisions/\{revision\}` for Revision `projects/\{project_id_or_number\}/locations/\{location\}/jobs/\{job\}/executions/\{execution\}` for Execution \{project_id_or_number\} may contains domain-scoped project IDs *)

    val export_project_metadata :
      name:string ->
      unit ->
      google_cloud_run_v2_metadata Google_api.Call.t
    (** Export generated customer metadata for a given project.

        [GET v2/{+name}:exportProjectMetadata]

        - [name]: Required. The name of the project of which metadata should be exported. Format: `projects/\{project_id_or_number\}/locations/\{location\}` for Project in a given location. *)

    module Builds : sig
      val submit :
        parent:string ->
        body:google_cloud_run_v2_submit_build_request ->
        unit ->
        google_cloud_run_v2_submit_build_response Google_api.Call.t
      (** Submits a build in a given project.

          [POST v2/{+parent}/builds:submit]

          - [parent]: Required. The project and location to build in. Location must be a region, e.g., 'us-central1' or 'global' if the global builder is to be used. Format: `projects/\{project\}/locations/\{location\}` *)
    end

    module Instances : sig
      val create :
        parent:string ->
        body:google_cloud_run_v2_instance ->
        ?instance_id:string ->
        ?validate_only:bool ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Creates an Instance.

          [POST v2/{+parent}/instances]

          - [parent]: Required. The location and project in which this Instance should be created.
          - [instance_id]: Optional. The unique identifier for the Instance. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the instance becomes \{parent\}/instances/\{instance_id\}. If not provided, the server will generate a unique `instance_id`.
          - [validate_only]: Optional. Indicates that the request should be validated and default values populated, without persisting the request or creating any resources. *)

      val delete :
        name:string ->
        ?etag:string ->
        ?validate_only:bool ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Deletes an Instance

          [DELETE v2/{+name}]

          - [name]: Required. The name of the Instance to delete.
          - [etag]: Optional. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
          - [validate_only]: Optional. Indicates that the request should be validated without actually deleting any resources. *)

      val get :
        name:string ->
        unit ->
        google_cloud_run_v2_instance Google_api.Call.t
      (** Gets an Instance

          [GET v2/{+name}]

          - [name]: Required. The name of the Instance to retrieve. *)

      val get_iam_policy :
        resource:string ->
        ?options_requested_policy_version:int ->
        unit ->
        google_iam_v1_policy Google_api.Call.t
      (** Gets the IAM Access Control policy currently in effect for the given Instance. This result does not include any inherited policies.

          [GET v2/{+resource}:getIamPolicy]

          - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
          - [options_requested_policy_version]: Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)

      val list :
        parent:string ->
        ?page_size:int ->
        ?page_token:string ->
        ?show_deleted:bool ->
        unit ->
        google_cloud_run_v2_list_instances_response Google_api.Call.t
      (** Lists Instances. Results are sorted by creation time, descending.

          [GET v2/{+parent}/instances]

          - [parent]: Required. The location and project to list resources on.
          - [page_size]: Optional. Maximum number of Instances to return in this call.
          - [page_token]: Optional. A page token received from a previous call to ListInstances. All other parameters must match.
          - [show_deleted]: Optional. If true, returns deleted (but unexpired) resources along with active ones. *)

      val patch :
        name:string ->
        body:google_cloud_run_v2_instance ->
        ?allow_missing:bool ->
        ?update_mask:string ->
        ?validate_only:bool ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Updates an Instance.

          [PATCH v2/{+name}]

          - [name]: The fully qualified name of this Instance. In `CreateInstanceRequest`, this field is ignored, and instead composed from `CreateInstanceRequest.parent` and `CreateInstanceRequest.instance_id`.
          - [allow_missing]: Optional. If set to `true`, and if the Instance does not exist, it will create a new one. The caller must have `run.instances.create` permissions if this is set to `true` and the Instance does not exist.
          - [update_mask]: Optional. The list of fields to be updated.
          - [validate_only]: Optional. Indicates that the request should be validated and default values populated, without persisting the request or updating any resources. *)

      val set_iam_policy :
        resource:string ->
        body:google_iam_v1_set_iam_policy_request ->
        unit ->
        google_iam_v1_policy Google_api.Call.t
      (** Sets the IAM Access control policy for the specified Instance. Overwrites any existing policy.

          [POST v2/{+resource}:setIamPolicy]

          - [resource]: REQUIRED: The resource for which the policy is being specified. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

      val start :
        name:string ->
        body:google_cloud_run_v2_start_instance_request ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Starts an Instance.

          [POST v2/{+name}:start]

          - [name]: Required. The name of the Instance to start. *)

      val stop :
        name:string ->
        body:google_cloud_run_v2_stop_instance_request ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Stops an Instance.

          [POST v2/{+name}:stop]

          - [name]: Required. The name of the Instance to stop. *)

      val test_iam_permissions :
        resource:string ->
        body:google_iam_v1_test_iam_permissions_request ->
        unit ->
        google_iam_v1_test_iam_permissions_response Google_api.Call.t
      (** Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.

          [POST v2/{+resource}:testIamPermissions]

          - [resource]: REQUIRED: The resource for which the policy detail is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)
    end

    module Jobs : sig
      val create :
        parent:string ->
        body:google_cloud_run_v2_job ->
        ?job_id:string ->
        ?validate_only:bool ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Creates a Job.

          [POST v2/{+parent}/jobs]

          - [parent]: Required. The location and project in which this Job should be created. Format: projects/\{project\}/locations/\{location\}, where \{project\} can be project id or number.
          - [job_id]: Optional. The unique identifier for the Job. The name of the job becomes \{parent\}/jobs/\{job_id\}. If not provided, the server will generate a unique `job_id`.
          - [validate_only]: Indicates that the request should be validated and default values populated, without persisting the request or creating any resources. *)

      val delete :
        name:string ->
        ?etag:string ->
        ?validate_only:bool ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Deletes a Job.

          [DELETE v2/{+name}]

          - [name]: Required. The full name of the Job. Format: projects/\{project\}/locations/\{location\}/jobs/\{job\}, where \{project\} can be project id or number.
          - [etag]: A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
          - [validate_only]: Indicates that the request should be validated without actually deleting any resources. *)

      val get :
        name:string ->
        unit ->
        google_cloud_run_v2_job Google_api.Call.t
      (** Gets information about a Job.

          [GET v2/{+name}]

          - [name]: Required. The full name of the Job. Format: projects/\{project\}/locations/\{location\}/jobs/\{job\}, where \{project\} can be project id or number. *)

      val get_iam_policy :
        resource:string ->
        ?options_requested_policy_version:int ->
        unit ->
        google_iam_v1_policy Google_api.Call.t
      (** Gets the IAM Access Control policy currently in effect for the given Job. This result does not include any inherited policies.

          [GET v2/{+resource}:getIamPolicy]

          - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
          - [options_requested_policy_version]: Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)

      val list :
        parent:string ->
        ?page_size:int ->
        ?page_token:string ->
        ?show_deleted:bool ->
        unit ->
        google_cloud_run_v2_list_jobs_response Google_api.Call.t
      (** Lists Jobs. Results are sorted by creation time, descending.

          [GET v2/{+parent}/jobs]

          - [parent]: Required. The location and project to list resources on. Format: projects/\{project\}/locations/\{location\}, where \{project\} can be project id or number.
          - [page_size]: Maximum number of Jobs to return in this call.
          - [page_token]: A page token received from a previous call to ListJobs. All other parameters must match.
          - [show_deleted]: If true, returns deleted (but unexpired) resources along with active ones. *)

      val patch :
        name:string ->
        body:google_cloud_run_v2_job ->
        ?allow_missing:bool ->
        ?validate_only:bool ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Updates a Job.

          [PATCH v2/{+name}]

          - [name]: The fully qualified name of this Job. Format: projects/\{project\}/locations/\{location\}/jobs/\{job\}
          - [allow_missing]: Optional. If set to true, and if the Job does not exist, it will create a new one. Caller must have both create and update permissions for this call if this is set to true.
          - [validate_only]: Indicates that the request should be validated and default values populated, without persisting the request or updating any resources. *)

      val run :
        name:string ->
        body:google_cloud_run_v2_run_job_request ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Triggers creation of a new Execution of this Job.

          [POST v2/{+name}:run]

          - [name]: Required. The full name of the Job. Format: projects/\{project\}/locations/\{location\}/jobs/\{job\}, where \{project\} can be project id or number. *)

      val set_iam_policy :
        resource:string ->
        body:google_iam_v1_set_iam_policy_request ->
        unit ->
        google_iam_v1_policy Google_api.Call.t
      (** Sets the IAM Access control policy for the specified Job. Overwrites any existing policy.

          [POST v2/{+resource}:setIamPolicy]

          - [resource]: REQUIRED: The resource for which the policy is being specified. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

      val test_iam_permissions :
        resource:string ->
        body:google_iam_v1_test_iam_permissions_request ->
        unit ->
        google_iam_v1_test_iam_permissions_response Google_api.Call.t
      (** Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.

          [POST v2/{+resource}:testIamPermissions]

          - [resource]: REQUIRED: The resource for which the policy detail is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

      module Executions : sig
        val cancel :
          name:string ->
          body:google_cloud_run_v2_cancel_execution_request ->
          unit ->
          google_longrunning_operation Google_api.Call.t
        (** Cancels an Execution.

            [POST v2/{+name}:cancel]

            - [name]: Required. The name of the Execution to cancel. Format: `projects/\{project\}/locations/\{location\}/jobs/\{job\}/executions/\{execution\}`, where `\{project\}` can be project id or number. *)

        val delete :
          name:string ->
          ?etag:string ->
          ?validate_only:bool ->
          unit ->
          google_longrunning_operation Google_api.Call.t
        (** Deletes an Execution.

            [DELETE v2/{+name}]

            - [name]: Required. The name of the Execution to delete. Format: `projects/\{project\}/locations/\{location\}/jobs/\{job\}/executions/\{execution\}`, where `\{project\}` can be project id or number.
            - [etag]: A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict during updates.
            - [validate_only]: Indicates that the request should be validated without actually deleting any resources. *)

        val export_status :
          name:string ->
          operation_id:string ->
          unit ->
          google_cloud_run_v2_export_status_response Google_api.Call.t
        (** Read the status of an image export operation.

            [GET v2/{+name}/{+operationId}:exportStatus]

            - [name]: Required. The name of the resource of which image export operation status has to be fetched. Format: `projects/\{project_id_or_number\}/locations/\{location\}/services/\{service\}/revisions/\{revision\}` for Revision `projects/\{project_id_or_number\}/locations/\{location\}/jobs/\{job\}/executions/\{execution\}` for Execution
            - [operation_id]: Required. The operation id returned from ExportImage. *)

        val get :
          name:string ->
          unit ->
          google_cloud_run_v2_execution Google_api.Call.t
        (** Gets information about an Execution.

            [GET v2/{+name}]

            - [name]: Required. The full name of the Execution. Format: `projects/\{project\}/locations/\{location\}/jobs/\{job\}/executions/\{execution\}`, where `\{project\}` can be project id or number. *)

        val list :
          parent:string ->
          ?page_size:int ->
          ?page_token:string ->
          ?show_deleted:bool ->
          unit ->
          google_cloud_run_v2_list_executions_response Google_api.Call.t
        (** Lists Executions from a Job. Results are sorted by creation time, descending.

            [GET v2/{+parent}/executions]

            - [parent]: Required. The Execution from which the Executions should be listed. To list all Executions across Jobs, use '-' instead of Job name. Format: `projects/\{project\}/locations/\{location\}/jobs/\{job\}`, where `\{project\}` can be project id or number.
            - [page_size]: Maximum number of Executions to return in this call.
            - [page_token]: A page token received from a previous call to ListExecutions. All other parameters must match.
            - [show_deleted]: If true, returns deleted (but unexpired) resources along with active ones. *)

        module Tasks : sig
          val get :
            name:string ->
            unit ->
            google_cloud_run_v2_task Google_api.Call.t
          (** Gets information about a Task.

              [GET v2/{+name}]

              - [name]: Required. The full name of the Task. Format: projects/\{project\}/locations/\{location\}/jobs/\{job\}/executions/\{execution\}/tasks/\{task\} *)

          val list :
            parent:string ->
            ?page_size:int ->
            ?page_token:string ->
            ?show_deleted:bool ->
            unit ->
            google_cloud_run_v2_list_tasks_response Google_api.Call.t
          (** Lists Tasks from an Execution of a Job.

              [GET v2/{+parent}/tasks]

              - [parent]: Required. The Execution from which the Tasks should be listed. To list all Tasks across Executions of a Job, use '-' instead of Execution name. To list all Tasks across Jobs, use '-' instead of Job name. Format: projects/\{project\}/locations/\{location\}/jobs/\{job\}/executions/\{execution\}
              - [page_size]: Maximum number of Tasks to return in this call.
              - [page_token]: A page token received from a previous call to ListTasks. All other parameters must match.
              - [show_deleted]: If true, returns deleted (but unexpired) resources along with active ones. *)
        end
      end
    end

    module Operations : sig
      val delete :
        name:string ->
        unit ->
        google_protobuf_empty Google_api.Call.t
      (** Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

          [DELETE v2/{+name}]

          - [name]: The name of the operation resource to be deleted. *)

      val get :
        name:string ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

          [GET v2/{+name}]

          - [name]: The name of the operation resource. *)

      val list :
        name:string ->
        ?filter:string ->
        ?page_size:int ->
        ?page_token:string ->
        ?return_partial_success:bool ->
        unit ->
        google_longrunning_list_operations_response Google_api.Call.t
      (** Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

          [GET v2/{+name}/operations]

          - [name]: Required. To query for all of the operations for a project.
          - [filter]: Optional. A filter for matching the completed or in-progress operations. The supported formats of *filter* are: To query for only completed operations: done:true To query for only ongoing operations: done:false Must be empty to query for all of the latest operations for the given parent project.
          - [page_size]: The maximum number of records that should be returned. Requested page size cannot exceed 100. If not set or set to less than or equal to 0, the default page size is 100. .
          - [page_token]: Token identifying which result to start with, which is returned by a previous list call.
          - [return_partial_success]: When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned in the ListOperationsResponse.unreachable field. This can only be `true` when reading across collections. For example, when `parent` is set to `'projects/example/locations/-'`. This field is not supported by default and will result in an `UNIMPLEMENTED` error if set unless explicitly documented otherwise in service or product specific documentation. *)

      val wait :
        name:string ->
        body:google_longrunning_wait_operation_request ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Waits until the specified long-running operation is done or reaches at most a specified timeout, returning the latest state. If the operation is already done, the latest state is immediately returned. If the timeout specified is greater than the default HTTP/RPC timeout, the HTTP/RPC timeout is used. If the server does not support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method is on a best-effort basis. It may return the latest state before the specified timeout (including immediately), meaning even an immediate response is no guarantee that the operation is done.

          [POST v2/{+name}:wait]

          - [name]: The name of the operation resource to wait on. *)
    end

    module Services : sig
      val create :
        parent:string ->
        body:google_cloud_run_v2_service ->
        ?service_id:string ->
        ?validate_only:bool ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Creates a new Service in a given project and location.

          [POST v2/{+parent}/services]

          - [parent]: Required. The location and project in which this service should be created. Format: projects/\{project\}/locations/\{location\}, where \{project\} can be project id or number. Only lowercase characters, digits, and hyphens.
          - [service_id]: Optional. The unique identifier for the Service. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the service becomes \{parent\}/services/\{service_id\}. If not provided, the server will generate a unique `service_id`.
          - [validate_only]: Indicates that the request should be validated and default values populated, without persisting the request or creating any resources. *)

      val delete :
        name:string ->
        ?etag:string ->
        ?validate_only:bool ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Deletes a Service. This will cause the Service to stop serving traffic and will delete all revisions.

          [DELETE v2/{+name}]

          - [name]: Required. The full name of the Service. Format: projects/\{project\}/locations/\{location\}/services/\{service\}, where \{project\} can be project id or number.
          - [etag]: A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
          - [validate_only]: Indicates that the request should be validated without actually deleting any resources. *)

      val get :
        name:string ->
        unit ->
        google_cloud_run_v2_service Google_api.Call.t
      (** Gets information about a Service.

          [GET v2/{+name}]

          - [name]: Required. The full name of the Service. Format: projects/\{project\}/locations/\{location\}/services/\{service\}, where \{project\} can be project id or number. *)

      val get_iam_policy :
        resource:string ->
        ?options_requested_policy_version:int ->
        unit ->
        google_iam_v1_policy Google_api.Call.t
      (** Gets the IAM Access Control policy currently in effect for the given Cloud Run Service. This result does not include any inherited policies.

          [GET v2/{+resource}:getIamPolicy]

          - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
          - [options_requested_policy_version]: Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)

      val list :
        parent:string ->
        ?page_size:int ->
        ?page_token:string ->
        ?show_deleted:bool ->
        unit ->
        google_cloud_run_v2_list_services_response Google_api.Call.t
      (** Lists Services. Results are sorted by creation time, descending.

          [GET v2/{+parent}/services]

          - [parent]: Required. The location and project to list resources on. Location must be a valid Google Cloud region, and cannot be the '-' wildcard. Format: projects/\{project\}/locations/\{location\}, where \{project\} can be project id or number.
          - [page_size]: Maximum number of Services to return in this call.
          - [page_token]: A page token received from a previous call to ListServices. All other parameters must match.
          - [show_deleted]: If true, returns deleted (but unexpired) resources along with active ones. *)

      val patch :
        name:string ->
        body:google_cloud_run_v2_service ->
        ?allow_missing:bool ->
        ?force_new_revision:bool ->
        ?update_mask:string ->
        ?validate_only:bool ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Updates a Service.

          [PATCH v2/{+name}]

          - [name]: Identifier. The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/\{project\}/locations/\{location\}/services/\{service_id\}
          - [allow_missing]: Optional. If set to true, and if the Service does not exist, it will create a new one. The caller must have 'run.services.create' permissions if this is set to true and the Service does not exist.
          - [force_new_revision]: Optional. If set to true, a new revision will be created from the template even if the system doesn't detect any changes from the previously deployed revision. This may be useful for cases where the underlying resources need to be recreated or reinitialized. For example if the image is specified by label, but the underlying image digest has changed) or if the container performs deployment initialization work that needs to be performed again.
          - [update_mask]: Optional. The list of fields to be updated.
          - [validate_only]: Indicates that the request should be validated and default values populated, without persisting the request or updating any resources. *)

      val set_iam_policy :
        resource:string ->
        body:google_iam_v1_set_iam_policy_request ->
        unit ->
        google_iam_v1_policy Google_api.Call.t
      (** Sets the IAM Access control policy for the specified Service. Overwrites any existing policy.

          [POST v2/{+resource}:setIamPolicy]

          - [resource]: REQUIRED: The resource for which the policy is being specified. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

      val test_iam_permissions :
        resource:string ->
        body:google_iam_v1_test_iam_permissions_request ->
        unit ->
        google_iam_v1_test_iam_permissions_response Google_api.Call.t
      (** Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.

          [POST v2/{+resource}:testIamPermissions]

          - [resource]: REQUIRED: The resource for which the policy detail is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

      module Revisions : sig
        val delete :
          name:string ->
          ?etag:string ->
          ?validate_only:bool ->
          unit ->
          google_longrunning_operation Google_api.Call.t
        (** Deletes a Revision.

            [DELETE v2/{+name}]

            - [name]: Required. The name of the Revision to delete. Format: projects/\{project\}/locations/\{location\}/services/\{service\}/revisions/\{revision\}
            - [etag]: A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict during updates.
            - [validate_only]: Indicates that the request should be validated without actually deleting any resources. *)

        val export_status :
          name:string ->
          operation_id:string ->
          unit ->
          google_cloud_run_v2_export_status_response Google_api.Call.t
        (** Read the status of an image export operation.

            [GET v2/{+name}/{+operationId}:exportStatus]

            - [name]: Required. The name of the resource of which image export operation status has to be fetched. Format: `projects/\{project_id_or_number\}/locations/\{location\}/services/\{service\}/revisions/\{revision\}` for Revision `projects/\{project_id_or_number\}/locations/\{location\}/jobs/\{job\}/executions/\{execution\}` for Execution
            - [operation_id]: Required. The operation id returned from ExportImage. *)

        val get :
          name:string ->
          unit ->
          google_cloud_run_v2_revision Google_api.Call.t
        (** Gets information about a Revision.

            [GET v2/{+name}]

            - [name]: Required. The full name of the Revision. Format: projects/\{project\}/locations/\{location\}/services/\{service\}/revisions/\{revision\} *)

        val list :
          parent:string ->
          ?page_size:int ->
          ?page_token:string ->
          ?show_deleted:bool ->
          unit ->
          google_cloud_run_v2_list_revisions_response Google_api.Call.t
        (** Lists Revisions from a given Service, or from a given location. Results are sorted by creation time, descending.

            [GET v2/{+parent}/revisions]

            - [parent]: Required. The Service from which the Revisions should be listed. To list all Revisions across Services, use '-' instead of Service name. Format: projects/\{project\}/locations/\{location\}/services/\{service\}
            - [page_size]: Maximum number of revisions to return in this call.
            - [page_token]: A page token received from a previous call to ListRevisions. All other parameters must match.
            - [show_deleted]: If true, returns deleted (but unexpired) resources along with active ones. *)
      end
    end

    module Source_uploads : sig
      val upload :
        parent:string ->
        body:google_cloud_run_v2_upload_source_request ->
        unit ->
        google_cloud_run_v2_upload_source_response Google_api.Call.t
      (** Uploads a source archive to a Google Cloud Storage bucket through Cloud Run. The uploaded source object should be used for Cloud Run resource deployments. User is responsible for managing the lifecycle of the uploaded object. If uploading through the Cloud Run API to Cloud Storage is not desired, you can use the IAM Deny Policy to deny the `run.locations.uploadSource` permission for all principals.

          [POST v2/{+parent}:uploadSource]

          - [parent]: Required. The project and location in which the source archive should be uploaded to, specified in the format `projects/*/locations/*`. *)
    end

    module Worker_pools : sig
      val create :
        parent:string ->
        body:google_cloud_run_v2_worker_pool ->
        ?validate_only:bool ->
        ?worker_pool_id:string ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Creates a new WorkerPool in a given project and location.

          [POST v2/{+parent}/workerPools]

          - [parent]: Required. The location and project in which this worker pool should be created. Format: `projects/\{project\}/locations/\{location\}`, where `\{project\}` can be project id or number. Only lowercase characters, digits, and hyphens.
          - [validate_only]: Optional. Indicates that the request should be validated and default values populated, without persisting the request or creating any resources.
          - [worker_pool_id]: Optional. The unique identifier for the WorkerPool. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the worker pool becomes `\{parent\}/workerPools/\{worker_pool_id\}`. If not provided, the server will generate a unique `worker_pool_id`. *)

      val delete :
        name:string ->
        ?etag:string ->
        ?validate_only:bool ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Deletes a WorkerPool.

          [DELETE v2/{+name}]

          - [name]: Required. The full name of the WorkerPool. Format: `projects/\{project\}/locations/\{location\}/workerPools/\{worker_pool\}`, where `\{project\}` can be project id or number.
          - [etag]: A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
          - [validate_only]: Optional. Indicates that the request should be validated without actually deleting any resources. *)

      val get :
        name:string ->
        unit ->
        google_cloud_run_v2_worker_pool Google_api.Call.t
      (** Gets information about a WorkerPool.

          [GET v2/{+name}]

          - [name]: Required. The full name of the WorkerPool. Format: `projects/\{project\}/locations/\{location\}/workerPools/\{worker_pool\}`, where `\{project\}` can be project id or number. *)

      val get_iam_policy :
        resource:string ->
        ?options_requested_policy_version:int ->
        unit ->
        google_iam_v1_policy Google_api.Call.t
      (** Gets the IAM Access Control policy currently in effect for the given Cloud Run WorkerPool. This result does not include any inherited policies.

          [GET v2/{+resource}:getIamPolicy]

          - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
          - [options_requested_policy_version]: Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)

      val list :
        parent:string ->
        ?page_size:int ->
        ?page_token:string ->
        ?show_deleted:bool ->
        unit ->
        google_cloud_run_v2_list_worker_pools_response Google_api.Call.t
      (** Lists WorkerPools. Results are sorted by creation time, descending.

          [GET v2/{+parent}/workerPools]

          - [parent]: Required. The location and project to list resources on. Location must be a valid Google Cloud region, and cannot be the '-' wildcard. Format: `projects/\{project\}/locations/\{location\}`, where `\{project\}` can be project id or number.
          - [page_size]: Maximum number of WorkerPools to return in this call.
          - [page_token]: A page token received from a previous call to ListWorkerPools. All other parameters must match.
          - [show_deleted]: If true, returns deleted (but unexpired) resources along with active ones. *)

      val patch :
        name:string ->
        body:google_cloud_run_v2_worker_pool ->
        ?allow_missing:bool ->
        ?force_new_revision:bool ->
        ?update_mask:string ->
        ?validate_only:bool ->
        unit ->
        google_longrunning_operation Google_api.Call.t
      (** Updates a WorkerPool.

          [PATCH v2/{+name}]

          - [name]: The fully qualified name of this WorkerPool. In CreateWorkerPoolRequest, this field is ignored, and instead composed from CreateWorkerPoolRequest.parent and CreateWorkerPoolRequest.worker_id. Format: `projects/\{project\}/locations/\{location\}/workerPools/\{worker_id\}`
          - [allow_missing]: Optional. If set to true, and if the WorkerPool does not exist, it will create a new one. The caller must have 'run.workerpools.create' permissions if this is set to true and the WorkerPool does not exist.
          - [force_new_revision]: Optional. If set to true, a new revision will be created from the template even if the system doesn't detect any changes from the previously deployed revision. This may be useful for cases where the underlying resources need to be recreated or reinitialized. For example if the image is specified by label, but the underlying image digest has changed) or if the container performs deployment initialization work that needs to be performed again.
          - [update_mask]: Optional. The list of fields to be updated.
          - [validate_only]: Optional. Indicates that the request should be validated and default values populated, without persisting the request or updating any resources. *)

      val set_iam_policy :
        resource:string ->
        body:google_iam_v1_set_iam_policy_request ->
        unit ->
        google_iam_v1_policy Google_api.Call.t
      (** Sets the IAM Access control policy for the specified WorkerPool. Overwrites any existing policy.

          [POST v2/{+resource}:setIamPolicy]

          - [resource]: REQUIRED: The resource for which the policy is being specified. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

      val test_iam_permissions :
        resource:string ->
        body:google_iam_v1_test_iam_permissions_request ->
        unit ->
        google_iam_v1_test_iam_permissions_response Google_api.Call.t
      (** Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.

          [POST v2/{+resource}:testIamPermissions]

          - [resource]: REQUIRED: The resource for which the policy detail is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field. *)

      module Revisions : sig
        val delete :
          name:string ->
          ?etag:string ->
          ?validate_only:bool ->
          unit ->
          google_longrunning_operation Google_api.Call.t
        (** Deletes a Revision.

            [DELETE v2/{+name}]

            - [name]: Required. The name of the Revision to delete. Format: projects/\{project\}/locations/\{location\}/services/\{service\}/revisions/\{revision\}
            - [etag]: A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict during updates.
            - [validate_only]: Indicates that the request should be validated without actually deleting any resources. *)

        val get :
          name:string ->
          unit ->
          google_cloud_run_v2_revision Google_api.Call.t
        (** Gets information about a Revision.

            [GET v2/{+name}]

            - [name]: Required. The full name of the Revision. Format: projects/\{project\}/locations/\{location\}/services/\{service\}/revisions/\{revision\} *)

        val list :
          parent:string ->
          ?page_size:int ->
          ?page_token:string ->
          ?show_deleted:bool ->
          unit ->
          google_cloud_run_v2_list_revisions_response Google_api.Call.t
        (** Lists Revisions from a given Service, or from a given location. Results are sorted by creation time, descending.

            [GET v2/{+parent}/revisions]

            - [parent]: Required. The Service from which the Revisions should be listed. To list all Revisions across Services, use '-' instead of Service name. Format: projects/\{project\}/locations/\{location\}/services/\{service\}
            - [page_size]: Maximum number of revisions to return in this call.
            - [page_token]: A page token received from a previous call to ListRevisions. All other parameters must match.
            - [show_deleted]: If true, returns deleted (but unexpired) resources along with active ones. *)
      end
    end
  end
end
