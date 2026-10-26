(* Generated from the Discovery document of cloudkms v1 (revision 20261016). Do not edit. *)

[@@@alert "-internal"]

type add_quorum_member = {
  two_factor_public_key_pem : string option;
}

and approve_single_tenant_hsm_instance_proposal_request = {
  quorum_reply : quorum_reply option;
  required_action_quorum_reply : required_action_quorum_reply option;
}

and approve_single_tenant_hsm_instance_proposal_response = Yojson.Safe.t

and asymmetric_decrypt_request = {
  ciphertext : string option;
  ciphertext_crc32c : string option;
}

and asymmetric_decrypt_response = {
  plaintext : string option;
  plaintext_crc32c : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  verified_ciphertext_crc32c : bool option;
}

and asymmetric_sign_request = {
  data : string option;
  data_crc32c : string option;
  digest : digest option;
  digest_crc32c : string option;
}

and asymmetric_sign_response = {
  name : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  signature : string option;
  signature_crc32c : string option;
  verified_data_crc32c : bool option;
  verified_digest_crc32c : bool option;
}

and audit_config = {
  audit_log_configs : audit_log_config list option;
  service : string option;
}

and audit_log_config = {
  exempted_members : string list option;
  log_type : [ `Log_type_unspecified | `Admin_read | `Data_write | `Data_read | `Unrecognized of string ] option;
}

and autokey_config = {
  etag : string option;
  key_project : string option;
  key_project_resolution_mode : [ `Key_project_resolution_mode_unspecified | `Dedicated_key_project | `Resource_project | `Disabled | `Unrecognized of string ] option;
  name : string option;
  state : [ `State_unspecified | `Active | `Key_project_deleted | `Uninitialized | `Key_project_permission_denied | `Unrecognized of string ] option;
}

and binding = {
  condition : expr option;
  members : string list option;
  role : string option;
}

and certificate = {
  issuer : string option;
  not_after_time : string option;
  not_before_time : string option;
  parsed : bool option;
  raw_der : string option;
  serial_number : string option;
  sha256_fingerprint : string option;
  subject : string option;
  subject_alternative_dns_names : string list option;
}

and certificate_chains = {
  cavium_certs : string list option;
  google_card_certs : string list option;
  google_partition_certs : string list option;
}

and challenge = {
  challenge : string option;
  public_key_pem : string option;
}

and challenge_reply = {
  public_key_pem : string option;
  signed_challenge : string option;
}

and checksummed_data = {
  crc32c_checksum : string option;
  data : string option;
}

and crypto_key = {
  create_time : string option;
  crypto_key_backend : string option;
  destroy_scheduled_duration : string option;
  import_only : bool option;
  key_access_justifications_policy : key_access_justifications_policy option;
  labels : (string * string) list option;
  name : string option;
  next_rotation_time : string option;
  primary : crypto_key_version option;
  purpose : [ `Crypto_key_purpose_unspecified | `Encrypt_decrypt | `Asymmetric_sign | `Asymmetric_decrypt | `Raw_encrypt_decrypt | `Mac | `Key_encapsulation | `Aes_wrapping | `Unrecognized of string ] option;
  rotation_period : string option;
  version_template : crypto_key_version_template option;
}

and crypto_key_version = {
  algorithm : [ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] option;
  attestation : key_operation_attestation option;
  create_time : string option;
  destroy_event_time : string option;
  destroy_time : string option;
  external_destruction_failure_reason : string option;
  external_protection_level_options : external_protection_level_options option;
  generate_time : string option;
  generation_failure_reason : string option;
  hsm_trusted : bool option;
  import_failure_reason : string option;
  import_job : string option;
  import_time : string option;
  name : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  reimport_eligible : bool option;
  state : [ `Crypto_key_version_state_unspecified | `Pending_generation | `Enabled | `Disabled | `Destroyed | `Destroy_scheduled | `Pending_import | `Import_failed | `Generation_failed | `Pending_external_destruction | `External_destruction_failed | `Unrecognized of string ] option;
  trusted_wrapping_enabled : bool option;
}

and crypto_key_version_template = {
  algorithm : [ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
}

and decapsulate_request = {
  ciphertext : string option;
  ciphertext_crc32c : string option;
}

and decapsulate_response = {
  name : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  shared_secret : string option;
  shared_secret_crc32c : string option;
  verified_ciphertext_crc32c : bool option;
}

and decrypt_request = {
  additional_authenticated_data : string option;
  additional_authenticated_data_crc32c : string option;
  ciphertext : string option;
  ciphertext_crc32c : string option;
}

and decrypt_response = {
  plaintext : string option;
  plaintext_crc32c : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  used_primary : bool option;
}

and delete_single_tenant_hsm_instance = Yojson.Safe.t

and destroy_crypto_key_version_request = Yojson.Safe.t

and digest = {
  external_mu : string option;
  sha256 : string option;
  sha384 : string option;
  sha512 : string option;
}

and disable_single_tenant_hsm_instance = Yojson.Safe.t

and ekm_config = {
  default_ekm_connection : string option;
  name : string option;
}

and ekm_connection = {
  create_time : string option;
  crypto_space_path : string option;
  etag : string option;
  key_management_mode : [ `Key_management_mode_unspecified | `Manual | `Cloud_kms | `Unrecognized of string ] option;
  name : string option;
  service_resolvers : service_resolver list option;
}

and empty = Yojson.Safe.t

and enable_single_tenant_hsm_instance = Yojson.Safe.t

and encrypt_request = {
  additional_authenticated_data : string option;
  additional_authenticated_data_crc32c : string option;
  plaintext : string option;
  plaintext_crc32c : string option;
}

and encrypt_response = {
  ciphertext : string option;
  ciphertext_crc32c : string option;
  name : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  verified_additional_authenticated_data_crc32c : bool option;
  verified_plaintext_crc32c : bool option;
}

and execute_single_tenant_hsm_instance_proposal_request = Yojson.Safe.t

and export_trusted_key_wrapped_crypto_key_version_response = {
  wrapped_key : string option;
  wrapped_key_crc32c : string option;
}

and expr = {
  description : string option;
  expression : string option;
  location : string option;
  title : string option;
}

and external_protection_level_options = {
  ekm_connection_backend_override : string option;
  ekm_connection_key_path : string option;
  external_key_uri : string option;
}

and generate_random_bytes_request = {
  length_bytes : int option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
}

and generate_random_bytes_response = {
  data : string option;
  data_crc32c : string option;
}

and import_crypto_key_version_request = {
  algorithm : [ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] option;
  crypto_key_version : string option;
  import_job : string option;
  rsa_aes_wrapped_key : string option;
  trusted_wrapping_enabled : bool option;
  wrapped_key : string option;
}

and import_job = {
  attestation : key_operation_attestation option;
  create_time : string option;
  crypto_key_backend : string option;
  expire_event_time : string option;
  expire_time : string option;
  generate_time : string option;
  import_method : [ `Import_method_unspecified | `Rsa_oaep_3072_sha1_aes_256 | `Rsa_oaep_4096_sha1_aes_256 | `Rsa_oaep_3072_sha256_aes_256 | `Rsa_oaep_4096_sha256_aes_256 | `Rsa_oaep_3072_sha256 | `Rsa_oaep_4096_sha256 | `Hpke_kem_ml_kem_768_hkdf_sha256_aes_256_gcm | `Hpke_kem_ml_kem_1024_hkdf_sha256_aes_256_gcm | `Hpke_kem_xwing_hkdf_sha256_aes_256_gcm | `Unrecognized of string ] option;
  name : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  public_key : wrapping_public_key option;
  public_key_format : [ `Public_key_format_unspecified | `Pem | `Der | `Nist_pqc | `Xwing_raw_bytes | `Unrecognized of string ] option;
  state : [ `Import_job_state_unspecified | `Pending_generation | `Active | `Expired | `Unrecognized of string ] option;
}

and import_trusted_key_wrapped_crypto_key_version_request = {
  algorithm : [ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] option;
  crypto_key_version : string option;
  importing_key : string option;
  wrapped_key : string option;
}

and key_access_justifications_enrollment_config = {
  audit_logging : bool option;
  policy_enforcement : bool option;
}

and key_access_justifications_policy = {
  allowed_access_reasons : [ `Reason_unspecified | `Customer_initiated_support | `Google_initiated_service | `Third_party_data_request | `Google_initiated_review | `Customer_initiated_access | `Google_initiated_system_operation | `Reason_not_expected | `Modified_customer_initiated_access | `Modified_google_initiated_system_operation | `Google_response_to_production_alert | `Customer_authorized_workflow_servicing | `Unrecognized of string ] list option;
}

and key_access_justifications_policy_config = {
  default_key_access_justification_policy : key_access_justifications_policy option;
  default_policy_available : bool option;
  name : string option;
}

and key_handle = {
  kms_key : string option;
  name : string option;
  resource_type_selector : string option;
}

and key_operation_attestation = {
  cert_chains : certificate_chains option;
  content : string option;
  format : [ `Attestation_format_unspecified | `Cavium_v1_compressed | `Cavium_v2_compressed | `Cavium_v209 | `Unrecognized of string ] option;
}

and key_ring = {
  create_time : string option;
  name : string option;
}

and list_crypto_key_versions_response = {
  crypto_key_versions : crypto_key_version list option;
  next_page_token : string option;
  total_size : int option;
}

and list_crypto_keys_response = {
  crypto_keys : crypto_key list option;
  next_page_token : string option;
  total_size : int option;
}

and list_ekm_connections_response = {
  ekm_connections : ekm_connection list option;
  next_page_token : string option;
  total_size : int option;
}

and list_import_jobs_response = {
  import_jobs : import_job list option;
  next_page_token : string option;
  total_size : int option;
}

and list_key_handles_response = {
  key_handles : key_handle list option;
  next_page_token : string option;
}

and list_key_rings_response = {
  key_rings : key_ring list option;
  next_page_token : string option;
  total_size : int option;
}

and list_locations_response = {
  locations : location list option;
  next_page_token : string option;
}

and list_retired_resources_response = {
  next_page_token : string option;
  retired_resources : retired_resource list option;
  total_size : string option;
}

and list_single_tenant_hsm_instance_proposals_response = {
  next_page_token : string option;
  single_tenant_hsm_instance_proposals : single_tenant_hsm_instance_proposal list option;
  total_size : int option;
}

and list_single_tenant_hsm_instances_response = {
  next_page_token : string option;
  single_tenant_hsm_instances : single_tenant_hsm_instance list option;
  total_size : int option;
}

and location = {
  display_name : string option;
  labels : (string * string) list option;
  location_id : string option;
  metadata : (string * Yojson.Safe.t) list option;
  name : string option;
}

and location_metadata = {
  ekm_available : bool option;
  hsm_available : bool option;
  hsm_single_tenant_available : bool option;
}

and mac_sign_request = {
  data : string option;
  data_crc32c : string option;
}

and mac_sign_response = {
  mac : string option;
  mac_crc32c : string option;
  name : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  verified_data_crc32c : bool option;
}

and mac_verify_request = {
  data : string option;
  data_crc32c : string option;
  mac : string option;
  mac_crc32c : string option;
}

and mac_verify_response = {
  name : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  success : bool option;
  verified_data_crc32c : bool option;
  verified_mac_crc32c : bool option;
  verified_success_integrity : bool option;
}

and operation = {
  done_ : bool option;
  error : status option;
  metadata : (string * Yojson.Safe.t) list option;
  name : string option;
  response : (string * Yojson.Safe.t) list option;
}

and policy = {
  audit_configs : audit_config list option;
  bindings : binding list option;
  etag : string option;
  version : int option;
}

and public_key = {
  algorithm : [ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] option;
  name : string option;
  pem : string option;
  pem_crc32c : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  public_key : checksummed_data option;
  public_key_format : [ `Public_key_format_unspecified | `Pem | `Der | `Nist_pqc | `Xwing_raw_bytes | `Unrecognized of string ] option;
}

and quorum_auth = {
  required_approver_count : int option;
  total_approver_count : int option;
  two_factor_public_key_pems : string list option;
}

and quorum_parameters = {
  approved_two_factor_public_key_pems : string list option;
  challenges : challenge list option;
  required_approver_count : int option;
}

and quorum_reply = {
  challenge_replies : challenge_reply list option;
}

and raw_decrypt_request = {
  additional_authenticated_data : string option;
  additional_authenticated_data_crc32c : string option;
  ciphertext : string option;
  ciphertext_crc32c : string option;
  initialization_vector : string option;
  initialization_vector_crc32c : string option;
  tag_length : int option;
}

and raw_decrypt_response = {
  plaintext : string option;
  plaintext_crc32c : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  verified_additional_authenticated_data_crc32c : bool option;
  verified_ciphertext_crc32c : bool option;
  verified_initialization_vector_crc32c : bool option;
}

and raw_encrypt_request = {
  additional_authenticated_data : string option;
  additional_authenticated_data_crc32c : string option;
  initialization_vector : string option;
  initialization_vector_crc32c : string option;
  plaintext : string option;
  plaintext_crc32c : string option;
}

and raw_encrypt_response = {
  ciphertext : string option;
  ciphertext_crc32c : string option;
  initialization_vector : string option;
  initialization_vector_crc32c : string option;
  name : string option;
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;
  tag_length : int option;
  verified_additional_authenticated_data_crc32c : bool option;
  verified_initialization_vector_crc32c : bool option;
  verified_plaintext_crc32c : bool option;
}

and refresh_single_tenant_hsm_instance = Yojson.Safe.t

and register_two_factor_auth_keys = {
  required_approver_count : int option;
  two_factor_public_key_pems : string list option;
}

and remove_quorum_member = {
  two_factor_public_key_pem : string option;
}

and required_action_quorum_parameters = {
  approved_two_factor_public_key_pems : string list option;
  quorum_challenges : challenge list option;
  required_approver_count : int option;
  required_challenges : challenge list option;
}

and required_action_quorum_reply = {
  quorum_challenge_replies : challenge_reply list option;
  required_challenge_replies : challenge_reply list option;
}

and restore_crypto_key_version_request = Yojson.Safe.t

and retired_resource = {
  delete_time : string option;
  name : string option;
  original_resource : string option;
  resource_type : string option;
}

and service_resolver = {
  endpoint_filter : string option;
  hostname : string option;
  server_certificates : certificate list option;
  service_directory_service : string option;
}

and set_iam_policy_request = {
  policy : policy option;
  update_mask : string option;
}

and show_effective_autokey_config_response = {
  key_project : string option;
  key_project_resolution_mode : [ `Key_project_resolution_mode_unspecified | `Dedicated_key_project | `Resource_project | `Disabled | `Unrecognized of string ] option;
  source : source option;
}

and show_effective_key_access_justifications_enrollment_config_response = {
  external_config : key_access_justifications_enrollment_config option;
  hardware_config : key_access_justifications_enrollment_config option;
  software_config : key_access_justifications_enrollment_config option;
}

and show_effective_key_access_justifications_policy_config_response = {
  effective_kaj_policy : key_access_justifications_policy_config option;
}

and single_tenant_hsm_instance = {
  create_time : string option;
  delete_time : string option;
  disable_time : string option;
  key_portability_enabled : bool option;
  name : string option;
  quorum_auth : quorum_auth option;
  state : [ `State_unspecified | `Creating | `Pending_two_factor_auth_registration | `Active | `Disabling | `Disabled | `Deleting | `Deleted | `Failed | `Unrecognized of string ] option;
  unrefreshed_duration_until_disable : string option;
}

and single_tenant_hsm_instance_proposal = {
  add_quorum_member : add_quorum_member option;
  create_time : string option;
  delete_single_tenant_hsm_instance : delete_single_tenant_hsm_instance option;
  delete_time : string option;
  disable_single_tenant_hsm_instance : disable_single_tenant_hsm_instance option;
  enable_single_tenant_hsm_instance : enable_single_tenant_hsm_instance option;
  expire_time : string option;
  failure_reason : string option;
  name : string option;
  purge_time : string option;
  quorum_parameters : quorum_parameters option;
  refresh_single_tenant_hsm_instance : refresh_single_tenant_hsm_instance option;
  register_two_factor_auth_keys : register_two_factor_auth_keys option;
  remove_quorum_member : remove_quorum_member option;
  required_action_quorum_parameters : required_action_quorum_parameters option;
  state : [ `State_unspecified | `Creating | `Pending | `Approved | `Running | `Succeeded | `Failed | `Deleted | `Unrecognized of string ] option;
  ttl : string option;
  upgrade_key_trust : upgrade_key_trust option;
}

and source = {
  name : string option;
}

and status = {
  code : int option;
  details : (string * Yojson.Safe.t) list list option;
  message : string option;
}

and test_iam_permissions_request = {
  permissions : string list option;
}

and test_iam_permissions_response = {
  permissions : string list option;
}

and update_crypto_key_primary_version_request = {
  crypto_key_version_id : string option;
}

and upgrade_key_trust = {
  name : string option;
  two_factor_public_key_pem : string option;
}

and verify_connectivity_response = Yojson.Safe.t

and wrapping_public_key = {
  data : string option;
  pem : string option;
}

let rec add_quorum_member_of_yojson json : add_quorum_member =
  let open Yojson.Safe.Util in
  {
    two_factor_public_key_pem = member "twoFactorPublicKeyPem" json |> to_option to_string;
  }

and yojson_of_add_quorum_member (value : add_quorum_member) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("twoFactorPublicKeyPem", (fun value -> `String value) field)) value.two_factor_public_key_pem;
       ])

and approve_single_tenant_hsm_instance_proposal_request_of_yojson json : approve_single_tenant_hsm_instance_proposal_request =
  let open Yojson.Safe.Util in
  {
    quorum_reply = member "quorumReply" json |> to_option quorum_reply_of_yojson;
    required_action_quorum_reply = member "requiredActionQuorumReply" json |> to_option required_action_quorum_reply_of_yojson;
  }

and yojson_of_approve_single_tenant_hsm_instance_proposal_request (value : approve_single_tenant_hsm_instance_proposal_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("quorumReply", yojson_of_quorum_reply field)) value.quorum_reply;
         Option.map (fun field -> ("requiredActionQuorumReply", yojson_of_required_action_quorum_reply field)) value.required_action_quorum_reply;
       ])

and approve_single_tenant_hsm_instance_proposal_response_of_yojson json : approve_single_tenant_hsm_instance_proposal_response =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_approve_single_tenant_hsm_instance_proposal_response (value : approve_single_tenant_hsm_instance_proposal_response) : Yojson.Safe.t = Fun.id value

and asymmetric_decrypt_request_of_yojson json : asymmetric_decrypt_request =
  let open Yojson.Safe.Util in
  {
    ciphertext = member "ciphertext" json |> to_option to_string;
    ciphertext_crc32c = member "ciphertextCrc32c" json |> to_option to_string;
  }

and yojson_of_asymmetric_decrypt_request (value : asymmetric_decrypt_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ciphertext", (fun value -> `String value) field)) value.ciphertext;
         Option.map (fun field -> ("ciphertextCrc32c", (fun value -> `String value) field)) value.ciphertext_crc32c;
       ])

and asymmetric_decrypt_response_of_yojson json : asymmetric_decrypt_response =
  let open Yojson.Safe.Util in
  {
    plaintext = member "plaintext" json |> to_option to_string;
    plaintext_crc32c = member "plaintextCrc32c" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    verified_ciphertext_crc32c = member "verifiedCiphertextCrc32c" json |> to_option to_bool;
  }

and yojson_of_asymmetric_decrypt_response (value : asymmetric_decrypt_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("plaintext", (fun value -> `String value) field)) value.plaintext;
         Option.map (fun field -> ("plaintextCrc32c", (fun value -> `String value) field)) value.plaintext_crc32c;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("verifiedCiphertextCrc32c", (fun value -> `Bool value) field)) value.verified_ciphertext_crc32c;
       ])

and asymmetric_sign_request_of_yojson json : asymmetric_sign_request =
  let open Yojson.Safe.Util in
  {
    data = member "data" json |> to_option to_string;
    data_crc32c = member "dataCrc32c" json |> to_option to_string;
    digest = member "digest" json |> to_option digest_of_yojson;
    digest_crc32c = member "digestCrc32c" json |> to_option to_string;
  }

and yojson_of_asymmetric_sign_request (value : asymmetric_sign_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("data", (fun value -> `String value) field)) value.data;
         Option.map (fun field -> ("dataCrc32c", (fun value -> `String value) field)) value.data_crc32c;
         Option.map (fun field -> ("digest", yojson_of_digest field)) value.digest;
         Option.map (fun field -> ("digestCrc32c", (fun value -> `String value) field)) value.digest_crc32c;
       ])

and asymmetric_sign_response_of_yojson json : asymmetric_sign_response =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    signature = member "signature" json |> to_option to_string;
    signature_crc32c = member "signatureCrc32c" json |> to_option to_string;
    verified_data_crc32c = member "verifiedDataCrc32c" json |> to_option to_bool;
    verified_digest_crc32c = member "verifiedDigestCrc32c" json |> to_option to_bool;
  }

and yojson_of_asymmetric_sign_response (value : asymmetric_sign_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("signature", (fun value -> `String value) field)) value.signature;
         Option.map (fun field -> ("signatureCrc32c", (fun value -> `String value) field)) value.signature_crc32c;
         Option.map (fun field -> ("verifiedDataCrc32c", (fun value -> `Bool value) field)) value.verified_data_crc32c;
         Option.map (fun field -> ("verifiedDigestCrc32c", (fun value -> `Bool value) field)) value.verified_digest_crc32c;
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

and autokey_config_of_yojson json : autokey_config =
  let open Yojson.Safe.Util in
  {
    etag = member "etag" json |> to_option to_string;
    key_project = member "keyProject" json |> to_option to_string;
    key_project_resolution_mode = member "keyProjectResolutionMode" json |> to_option (fun json -> match to_string json with "KEY_PROJECT_RESOLUTION_MODE_UNSPECIFIED" -> `Key_project_resolution_mode_unspecified | "DEDICATED_KEY_PROJECT" -> `Dedicated_key_project | "RESOURCE_PROJECT" -> `Resource_project | "DISABLED" -> `Disabled | value -> `Unrecognized value);
    name = member "name" json |> to_option to_string;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "ACTIVE" -> `Active | "KEY_PROJECT_DELETED" -> `Key_project_deleted | "UNINITIALIZED" -> `Uninitialized | "KEY_PROJECT_PERMISSION_DENIED" -> `Key_project_permission_denied | value -> `Unrecognized value);
  }

and yojson_of_autokey_config (value : autokey_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("keyProject", (fun value -> `String value) field)) value.key_project;
         Option.map (fun field -> ("keyProjectResolutionMode", (fun value -> `String ((function `Key_project_resolution_mode_unspecified -> "KEY_PROJECT_RESOLUTION_MODE_UNSPECIFIED" | `Dedicated_key_project -> "DEDICATED_KEY_PROJECT" | `Resource_project -> "RESOURCE_PROJECT" | `Disabled -> "DISABLED" | `Unrecognized value -> value) value)) field)) value.key_project_resolution_mode;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Active -> "ACTIVE" | `Key_project_deleted -> "KEY_PROJECT_DELETED" | `Uninitialized -> "UNINITIALIZED" | `Key_project_permission_denied -> "KEY_PROJECT_PERMISSION_DENIED" | `Unrecognized value -> value) value)) field)) value.state;
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

and certificate_of_yojson json : certificate =
  let open Yojson.Safe.Util in
  {
    issuer = member "issuer" json |> to_option to_string;
    not_after_time = member "notAfterTime" json |> to_option to_string;
    not_before_time = member "notBeforeTime" json |> to_option to_string;
    parsed = member "parsed" json |> to_option to_bool;
    raw_der = member "rawDer" json |> to_option to_string;
    serial_number = member "serialNumber" json |> to_option to_string;
    sha256_fingerprint = member "sha256Fingerprint" json |> to_option to_string;
    subject = member "subject" json |> to_option to_string;
    subject_alternative_dns_names = member "subjectAlternativeDnsNames" json |> to_option (convert_each to_string);
  }

and yojson_of_certificate (value : certificate) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("issuer", (fun value -> `String value) field)) value.issuer;
         Option.map (fun field -> ("notAfterTime", (fun value -> `String value) field)) value.not_after_time;
         Option.map (fun field -> ("notBeforeTime", (fun value -> `String value) field)) value.not_before_time;
         Option.map (fun field -> ("parsed", (fun value -> `Bool value) field)) value.parsed;
         Option.map (fun field -> ("rawDer", (fun value -> `String value) field)) value.raw_der;
         Option.map (fun field -> ("serialNumber", (fun value -> `String value) field)) value.serial_number;
         Option.map (fun field -> ("sha256Fingerprint", (fun value -> `String value) field)) value.sha256_fingerprint;
         Option.map (fun field -> ("subject", (fun value -> `String value) field)) value.subject;
         Option.map (fun field -> ("subjectAlternativeDnsNames", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.subject_alternative_dns_names;
       ])

and certificate_chains_of_yojson json : certificate_chains =
  let open Yojson.Safe.Util in
  {
    cavium_certs = member "caviumCerts" json |> to_option (convert_each to_string);
    google_card_certs = member "googleCardCerts" json |> to_option (convert_each to_string);
    google_partition_certs = member "googlePartitionCerts" json |> to_option (convert_each to_string);
  }

and yojson_of_certificate_chains (value : certificate_chains) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("caviumCerts", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.cavium_certs;
         Option.map (fun field -> ("googleCardCerts", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.google_card_certs;
         Option.map (fun field -> ("googlePartitionCerts", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.google_partition_certs;
       ])

and challenge_of_yojson json : challenge =
  let open Yojson.Safe.Util in
  {
    challenge = member "challenge" json |> to_option to_string;
    public_key_pem = member "publicKeyPem" json |> to_option to_string;
  }

and yojson_of_challenge (value : challenge) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("challenge", (fun value -> `String value) field)) value.challenge;
         Option.map (fun field -> ("publicKeyPem", (fun value -> `String value) field)) value.public_key_pem;
       ])

and challenge_reply_of_yojson json : challenge_reply =
  let open Yojson.Safe.Util in
  {
    public_key_pem = member "publicKeyPem" json |> to_option to_string;
    signed_challenge = member "signedChallenge" json |> to_option to_string;
  }

and yojson_of_challenge_reply (value : challenge_reply) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("publicKeyPem", (fun value -> `String value) field)) value.public_key_pem;
         Option.map (fun field -> ("signedChallenge", (fun value -> `String value) field)) value.signed_challenge;
       ])

and checksummed_data_of_yojson json : checksummed_data =
  let open Yojson.Safe.Util in
  {
    crc32c_checksum = member "crc32cChecksum" json |> to_option to_string;
    data = member "data" json |> to_option to_string;
  }

and yojson_of_checksummed_data (value : checksummed_data) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("crc32cChecksum", (fun value -> `String value) field)) value.crc32c_checksum;
         Option.map (fun field -> ("data", (fun value -> `String value) field)) value.data;
       ])

and crypto_key_of_yojson json : crypto_key =
  let open Yojson.Safe.Util in
  {
    create_time = member "createTime" json |> to_option to_string;
    crypto_key_backend = member "cryptoKeyBackend" json |> to_option to_string;
    destroy_scheduled_duration = member "destroyScheduledDuration" json |> to_option to_string;
    import_only = member "importOnly" json |> to_option to_bool;
    key_access_justifications_policy = member "keyAccessJustificationsPolicy" json |> to_option key_access_justifications_policy_of_yojson;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    name = member "name" json |> to_option to_string;
    next_rotation_time = member "nextRotationTime" json |> to_option to_string;
    primary = member "primary" json |> to_option crypto_key_version_of_yojson;
    purpose = member "purpose" json |> to_option (fun json -> match to_string json with "CRYPTO_KEY_PURPOSE_UNSPECIFIED" -> `Crypto_key_purpose_unspecified | "ENCRYPT_DECRYPT" -> `Encrypt_decrypt | "ASYMMETRIC_SIGN" -> `Asymmetric_sign | "ASYMMETRIC_DECRYPT" -> `Asymmetric_decrypt | "RAW_ENCRYPT_DECRYPT" -> `Raw_encrypt_decrypt | "MAC" -> `Mac | "KEY_ENCAPSULATION" -> `Key_encapsulation | "AES_WRAPPING" -> `Aes_wrapping | value -> `Unrecognized value);
    rotation_period = member "rotationPeriod" json |> to_option to_string;
    version_template = member "versionTemplate" json |> to_option crypto_key_version_template_of_yojson;
  }

and yojson_of_crypto_key (value : crypto_key) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("cryptoKeyBackend", (fun value -> `String value) field)) value.crypto_key_backend;
         Option.map (fun field -> ("destroyScheduledDuration", (fun value -> `String value) field)) value.destroy_scheduled_duration;
         Option.map (fun field -> ("importOnly", (fun value -> `Bool value) field)) value.import_only;
         Option.map (fun field -> ("keyAccessJustificationsPolicy", yojson_of_key_access_justifications_policy field)) value.key_access_justifications_policy;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("nextRotationTime", (fun value -> `String value) field)) value.next_rotation_time;
         Option.map (fun field -> ("primary", yojson_of_crypto_key_version field)) value.primary;
         Option.map (fun field -> ("purpose", (fun value -> `String ((function `Crypto_key_purpose_unspecified -> "CRYPTO_KEY_PURPOSE_UNSPECIFIED" | `Encrypt_decrypt -> "ENCRYPT_DECRYPT" | `Asymmetric_sign -> "ASYMMETRIC_SIGN" | `Asymmetric_decrypt -> "ASYMMETRIC_DECRYPT" | `Raw_encrypt_decrypt -> "RAW_ENCRYPT_DECRYPT" | `Mac -> "MAC" | `Key_encapsulation -> "KEY_ENCAPSULATION" | `Aes_wrapping -> "AES_WRAPPING" | `Unrecognized value -> value) value)) field)) value.purpose;
         Option.map (fun field -> ("rotationPeriod", (fun value -> `String value) field)) value.rotation_period;
         Option.map (fun field -> ("versionTemplate", yojson_of_crypto_key_version_template field)) value.version_template;
       ])

and crypto_key_version_of_yojson json : crypto_key_version =
  let open Yojson.Safe.Util in
  {
    algorithm = member "algorithm" json |> to_option (fun json -> match to_string json with "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" -> `Crypto_key_version_algorithm_unspecified | "GOOGLE_SYMMETRIC_ENCRYPTION" -> `Google_symmetric_encryption | "AES_128_GCM" -> `Aes_128_gcm | "AES_256_GCM" -> `Aes_256_gcm | "AES_128_CBC" -> `Aes_128_cbc | "AES_256_CBC" -> `Aes_256_cbc | "AES_128_CTR" -> `Aes_128_ctr | "AES_256_CTR" -> `Aes_256_ctr | "RSA_SIGN_PSS_2048_SHA256" -> `Rsa_sign_pss_2048_sha256 | "RSA_SIGN_PSS_3072_SHA256" -> `Rsa_sign_pss_3072_sha256 | "RSA_SIGN_PSS_4096_SHA256" -> `Rsa_sign_pss_4096_sha256 | "RSA_SIGN_PSS_4096_SHA512" -> `Rsa_sign_pss_4096_sha512 | "RSA_SIGN_PKCS1_2048_SHA256" -> `Rsa_sign_pkcs1_2048_sha256 | "RSA_SIGN_PKCS1_3072_SHA256" -> `Rsa_sign_pkcs1_3072_sha256 | "RSA_SIGN_PKCS1_4096_SHA256" -> `Rsa_sign_pkcs1_4096_sha256 | "RSA_SIGN_PKCS1_4096_SHA512" -> `Rsa_sign_pkcs1_4096_sha512 | "RSA_SIGN_RAW_PKCS1_2048" -> `Rsa_sign_raw_pkcs1_2048 | "RSA_SIGN_RAW_PKCS1_3072" -> `Rsa_sign_raw_pkcs1_3072 | "RSA_SIGN_RAW_PKCS1_4096" -> `Rsa_sign_raw_pkcs1_4096 | "RSA_DECRYPT_OAEP_2048_SHA256" -> `Rsa_decrypt_oaep_2048_sha256 | "RSA_DECRYPT_OAEP_3072_SHA256" -> `Rsa_decrypt_oaep_3072_sha256 | "RSA_DECRYPT_OAEP_4096_SHA256" -> `Rsa_decrypt_oaep_4096_sha256 | "RSA_DECRYPT_OAEP_4096_SHA512" -> `Rsa_decrypt_oaep_4096_sha512 | "RSA_DECRYPT_OAEP_2048_SHA1" -> `Rsa_decrypt_oaep_2048_sha1 | "RSA_DECRYPT_OAEP_3072_SHA1" -> `Rsa_decrypt_oaep_3072_sha1 | "RSA_DECRYPT_OAEP_4096_SHA1" -> `Rsa_decrypt_oaep_4096_sha1 | "EC_SIGN_P256_SHA256" -> `Ec_sign_p256_sha256 | "EC_SIGN_P384_SHA384" -> `Ec_sign_p384_sha384 | "EC_SIGN_SECP256K1_SHA256" -> `Ec_sign_secp256_k1_sha256 | "EC_SIGN_ED25519" -> `Ec_sign_ed25519 | "HMAC_SHA256" -> `Hmac_sha256 | "HMAC_SHA1" -> `Hmac_sha1 | "HMAC_SHA384" -> `Hmac_sha384 | "HMAC_SHA512" -> `Hmac_sha512 | "HMAC_SHA224" -> `Hmac_sha224 | "EXTERNAL_SYMMETRIC_ENCRYPTION" -> `External_symmetric_encryption | "ML_KEM_768" -> `Ml_kem_768 | "ML_KEM_1024" -> `Ml_kem_1024 | "KEM_XWING" -> `Kem_xwing | "PQ_SIGN_ML_DSA_44" -> `Pq_sign_ml_dsa_44 | "PQ_SIGN_ML_DSA_65" -> `Pq_sign_ml_dsa_65 | "PQ_SIGN_ML_DSA_87" -> `Pq_sign_ml_dsa_87 | "PQ_SIGN_SLH_DSA_SHA2_128S" -> `Pq_sign_slh_dsa_sha2_128_s | "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" -> `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | "PQ_SIGN_ML_DSA_44_EXTERNAL_MU" -> `Pq_sign_ml_dsa_44_external_mu | "PQ_SIGN_ML_DSA_65_EXTERNAL_MU" -> `Pq_sign_ml_dsa_65_external_mu | "PQ_SIGN_ML_DSA_87_EXTERNAL_MU" -> `Pq_sign_ml_dsa_87_external_mu | "KEM_ECDH_P256" -> `Kem_ecdh_p256 | "KEM_ECDH_P384" -> `Kem_ecdh_p384 | "AES_256_KWP" -> `Aes_256_kwp | value -> `Unrecognized value);
    attestation = member "attestation" json |> to_option key_operation_attestation_of_yojson;
    create_time = member "createTime" json |> to_option to_string;
    destroy_event_time = member "destroyEventTime" json |> to_option to_string;
    destroy_time = member "destroyTime" json |> to_option to_string;
    external_destruction_failure_reason = member "externalDestructionFailureReason" json |> to_option to_string;
    external_protection_level_options = member "externalProtectionLevelOptions" json |> to_option external_protection_level_options_of_yojson;
    generate_time = member "generateTime" json |> to_option to_string;
    generation_failure_reason = member "generationFailureReason" json |> to_option to_string;
    hsm_trusted = member "hsmTrusted" json |> to_option to_bool;
    import_failure_reason = member "importFailureReason" json |> to_option to_string;
    import_job = member "importJob" json |> to_option to_string;
    import_time = member "importTime" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    reimport_eligible = member "reimportEligible" json |> to_option to_bool;
    state = member "state" json |> to_option (fun json -> match to_string json with "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED" -> `Crypto_key_version_state_unspecified | "PENDING_GENERATION" -> `Pending_generation | "ENABLED" -> `Enabled | "DISABLED" -> `Disabled | "DESTROYED" -> `Destroyed | "DESTROY_SCHEDULED" -> `Destroy_scheduled | "PENDING_IMPORT" -> `Pending_import | "IMPORT_FAILED" -> `Import_failed | "GENERATION_FAILED" -> `Generation_failed | "PENDING_EXTERNAL_DESTRUCTION" -> `Pending_external_destruction | "EXTERNAL_DESTRUCTION_FAILED" -> `External_destruction_failed | value -> `Unrecognized value);
    trusted_wrapping_enabled = member "trustedWrappingEnabled" json |> to_option to_bool;
  }

and yojson_of_crypto_key_version (value : crypto_key_version) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("algorithm", (fun value -> `String ((function `Crypto_key_version_algorithm_unspecified -> "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" | `Google_symmetric_encryption -> "GOOGLE_SYMMETRIC_ENCRYPTION" | `Aes_128_gcm -> "AES_128_GCM" | `Aes_256_gcm -> "AES_256_GCM" | `Aes_128_cbc -> "AES_128_CBC" | `Aes_256_cbc -> "AES_256_CBC" | `Aes_128_ctr -> "AES_128_CTR" | `Aes_256_ctr -> "AES_256_CTR" | `Rsa_sign_pss_2048_sha256 -> "RSA_SIGN_PSS_2048_SHA256" | `Rsa_sign_pss_3072_sha256 -> "RSA_SIGN_PSS_3072_SHA256" | `Rsa_sign_pss_4096_sha256 -> "RSA_SIGN_PSS_4096_SHA256" | `Rsa_sign_pss_4096_sha512 -> "RSA_SIGN_PSS_4096_SHA512" | `Rsa_sign_pkcs1_2048_sha256 -> "RSA_SIGN_PKCS1_2048_SHA256" | `Rsa_sign_pkcs1_3072_sha256 -> "RSA_SIGN_PKCS1_3072_SHA256" | `Rsa_sign_pkcs1_4096_sha256 -> "RSA_SIGN_PKCS1_4096_SHA256" | `Rsa_sign_pkcs1_4096_sha512 -> "RSA_SIGN_PKCS1_4096_SHA512" | `Rsa_sign_raw_pkcs1_2048 -> "RSA_SIGN_RAW_PKCS1_2048" | `Rsa_sign_raw_pkcs1_3072 -> "RSA_SIGN_RAW_PKCS1_3072" | `Rsa_sign_raw_pkcs1_4096 -> "RSA_SIGN_RAW_PKCS1_4096" | `Rsa_decrypt_oaep_2048_sha256 -> "RSA_DECRYPT_OAEP_2048_SHA256" | `Rsa_decrypt_oaep_3072_sha256 -> "RSA_DECRYPT_OAEP_3072_SHA256" | `Rsa_decrypt_oaep_4096_sha256 -> "RSA_DECRYPT_OAEP_4096_SHA256" | `Rsa_decrypt_oaep_4096_sha512 -> "RSA_DECRYPT_OAEP_4096_SHA512" | `Rsa_decrypt_oaep_2048_sha1 -> "RSA_DECRYPT_OAEP_2048_SHA1" | `Rsa_decrypt_oaep_3072_sha1 -> "RSA_DECRYPT_OAEP_3072_SHA1" | `Rsa_decrypt_oaep_4096_sha1 -> "RSA_DECRYPT_OAEP_4096_SHA1" | `Ec_sign_p256_sha256 -> "EC_SIGN_P256_SHA256" | `Ec_sign_p384_sha384 -> "EC_SIGN_P384_SHA384" | `Ec_sign_secp256_k1_sha256 -> "EC_SIGN_SECP256K1_SHA256" | `Ec_sign_ed25519 -> "EC_SIGN_ED25519" | `Hmac_sha256 -> "HMAC_SHA256" | `Hmac_sha1 -> "HMAC_SHA1" | `Hmac_sha384 -> "HMAC_SHA384" | `Hmac_sha512 -> "HMAC_SHA512" | `Hmac_sha224 -> "HMAC_SHA224" | `External_symmetric_encryption -> "EXTERNAL_SYMMETRIC_ENCRYPTION" | `Ml_kem_768 -> "ML_KEM_768" | `Ml_kem_1024 -> "ML_KEM_1024" | `Kem_xwing -> "KEM_XWING" | `Pq_sign_ml_dsa_44 -> "PQ_SIGN_ML_DSA_44" | `Pq_sign_ml_dsa_65 -> "PQ_SIGN_ML_DSA_65" | `Pq_sign_ml_dsa_87 -> "PQ_SIGN_ML_DSA_87" | `Pq_sign_slh_dsa_sha2_128_s -> "PQ_SIGN_SLH_DSA_SHA2_128S" | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 -> "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" | `Pq_sign_ml_dsa_44_external_mu -> "PQ_SIGN_ML_DSA_44_EXTERNAL_MU" | `Pq_sign_ml_dsa_65_external_mu -> "PQ_SIGN_ML_DSA_65_EXTERNAL_MU" | `Pq_sign_ml_dsa_87_external_mu -> "PQ_SIGN_ML_DSA_87_EXTERNAL_MU" | `Kem_ecdh_p256 -> "KEM_ECDH_P256" | `Kem_ecdh_p384 -> "KEM_ECDH_P384" | `Aes_256_kwp -> "AES_256_KWP" | `Unrecognized value -> value) value)) field)) value.algorithm;
         Option.map (fun field -> ("attestation", yojson_of_key_operation_attestation field)) value.attestation;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("destroyEventTime", (fun value -> `String value) field)) value.destroy_event_time;
         Option.map (fun field -> ("destroyTime", (fun value -> `String value) field)) value.destroy_time;
         Option.map (fun field -> ("externalDestructionFailureReason", (fun value -> `String value) field)) value.external_destruction_failure_reason;
         Option.map (fun field -> ("externalProtectionLevelOptions", yojson_of_external_protection_level_options field)) value.external_protection_level_options;
         Option.map (fun field -> ("generateTime", (fun value -> `String value) field)) value.generate_time;
         Option.map (fun field -> ("generationFailureReason", (fun value -> `String value) field)) value.generation_failure_reason;
         Option.map (fun field -> ("hsmTrusted", (fun value -> `Bool value) field)) value.hsm_trusted;
         Option.map (fun field -> ("importFailureReason", (fun value -> `String value) field)) value.import_failure_reason;
         Option.map (fun field -> ("importJob", (fun value -> `String value) field)) value.import_job;
         Option.map (fun field -> ("importTime", (fun value -> `String value) field)) value.import_time;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("reimportEligible", (fun value -> `Bool value) field)) value.reimport_eligible;
         Option.map (fun field -> ("state", (fun value -> `String ((function `Crypto_key_version_state_unspecified -> "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED" | `Pending_generation -> "PENDING_GENERATION" | `Enabled -> "ENABLED" | `Disabled -> "DISABLED" | `Destroyed -> "DESTROYED" | `Destroy_scheduled -> "DESTROY_SCHEDULED" | `Pending_import -> "PENDING_IMPORT" | `Import_failed -> "IMPORT_FAILED" | `Generation_failed -> "GENERATION_FAILED" | `Pending_external_destruction -> "PENDING_EXTERNAL_DESTRUCTION" | `External_destruction_failed -> "EXTERNAL_DESTRUCTION_FAILED" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("trustedWrappingEnabled", (fun value -> `Bool value) field)) value.trusted_wrapping_enabled;
       ])

and crypto_key_version_template_of_yojson json : crypto_key_version_template =
  let open Yojson.Safe.Util in
  {
    algorithm = member "algorithm" json |> to_option (fun json -> match to_string json with "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" -> `Crypto_key_version_algorithm_unspecified | "GOOGLE_SYMMETRIC_ENCRYPTION" -> `Google_symmetric_encryption | "AES_128_GCM" -> `Aes_128_gcm | "AES_256_GCM" -> `Aes_256_gcm | "AES_128_CBC" -> `Aes_128_cbc | "AES_256_CBC" -> `Aes_256_cbc | "AES_128_CTR" -> `Aes_128_ctr | "AES_256_CTR" -> `Aes_256_ctr | "RSA_SIGN_PSS_2048_SHA256" -> `Rsa_sign_pss_2048_sha256 | "RSA_SIGN_PSS_3072_SHA256" -> `Rsa_sign_pss_3072_sha256 | "RSA_SIGN_PSS_4096_SHA256" -> `Rsa_sign_pss_4096_sha256 | "RSA_SIGN_PSS_4096_SHA512" -> `Rsa_sign_pss_4096_sha512 | "RSA_SIGN_PKCS1_2048_SHA256" -> `Rsa_sign_pkcs1_2048_sha256 | "RSA_SIGN_PKCS1_3072_SHA256" -> `Rsa_sign_pkcs1_3072_sha256 | "RSA_SIGN_PKCS1_4096_SHA256" -> `Rsa_sign_pkcs1_4096_sha256 | "RSA_SIGN_PKCS1_4096_SHA512" -> `Rsa_sign_pkcs1_4096_sha512 | "RSA_SIGN_RAW_PKCS1_2048" -> `Rsa_sign_raw_pkcs1_2048 | "RSA_SIGN_RAW_PKCS1_3072" -> `Rsa_sign_raw_pkcs1_3072 | "RSA_SIGN_RAW_PKCS1_4096" -> `Rsa_sign_raw_pkcs1_4096 | "RSA_DECRYPT_OAEP_2048_SHA256" -> `Rsa_decrypt_oaep_2048_sha256 | "RSA_DECRYPT_OAEP_3072_SHA256" -> `Rsa_decrypt_oaep_3072_sha256 | "RSA_DECRYPT_OAEP_4096_SHA256" -> `Rsa_decrypt_oaep_4096_sha256 | "RSA_DECRYPT_OAEP_4096_SHA512" -> `Rsa_decrypt_oaep_4096_sha512 | "RSA_DECRYPT_OAEP_2048_SHA1" -> `Rsa_decrypt_oaep_2048_sha1 | "RSA_DECRYPT_OAEP_3072_SHA1" -> `Rsa_decrypt_oaep_3072_sha1 | "RSA_DECRYPT_OAEP_4096_SHA1" -> `Rsa_decrypt_oaep_4096_sha1 | "EC_SIGN_P256_SHA256" -> `Ec_sign_p256_sha256 | "EC_SIGN_P384_SHA384" -> `Ec_sign_p384_sha384 | "EC_SIGN_SECP256K1_SHA256" -> `Ec_sign_secp256_k1_sha256 | "EC_SIGN_ED25519" -> `Ec_sign_ed25519 | "HMAC_SHA256" -> `Hmac_sha256 | "HMAC_SHA1" -> `Hmac_sha1 | "HMAC_SHA384" -> `Hmac_sha384 | "HMAC_SHA512" -> `Hmac_sha512 | "HMAC_SHA224" -> `Hmac_sha224 | "EXTERNAL_SYMMETRIC_ENCRYPTION" -> `External_symmetric_encryption | "ML_KEM_768" -> `Ml_kem_768 | "ML_KEM_1024" -> `Ml_kem_1024 | "KEM_XWING" -> `Kem_xwing | "PQ_SIGN_ML_DSA_44" -> `Pq_sign_ml_dsa_44 | "PQ_SIGN_ML_DSA_65" -> `Pq_sign_ml_dsa_65 | "PQ_SIGN_ML_DSA_87" -> `Pq_sign_ml_dsa_87 | "PQ_SIGN_SLH_DSA_SHA2_128S" -> `Pq_sign_slh_dsa_sha2_128_s | "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" -> `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | "PQ_SIGN_ML_DSA_44_EXTERNAL_MU" -> `Pq_sign_ml_dsa_44_external_mu | "PQ_SIGN_ML_DSA_65_EXTERNAL_MU" -> `Pq_sign_ml_dsa_65_external_mu | "PQ_SIGN_ML_DSA_87_EXTERNAL_MU" -> `Pq_sign_ml_dsa_87_external_mu | "KEM_ECDH_P256" -> `Kem_ecdh_p256 | "KEM_ECDH_P384" -> `Kem_ecdh_p384 | "AES_256_KWP" -> `Aes_256_kwp | value -> `Unrecognized value);
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
  }

and yojson_of_crypto_key_version_template (value : crypto_key_version_template) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("algorithm", (fun value -> `String ((function `Crypto_key_version_algorithm_unspecified -> "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" | `Google_symmetric_encryption -> "GOOGLE_SYMMETRIC_ENCRYPTION" | `Aes_128_gcm -> "AES_128_GCM" | `Aes_256_gcm -> "AES_256_GCM" | `Aes_128_cbc -> "AES_128_CBC" | `Aes_256_cbc -> "AES_256_CBC" | `Aes_128_ctr -> "AES_128_CTR" | `Aes_256_ctr -> "AES_256_CTR" | `Rsa_sign_pss_2048_sha256 -> "RSA_SIGN_PSS_2048_SHA256" | `Rsa_sign_pss_3072_sha256 -> "RSA_SIGN_PSS_3072_SHA256" | `Rsa_sign_pss_4096_sha256 -> "RSA_SIGN_PSS_4096_SHA256" | `Rsa_sign_pss_4096_sha512 -> "RSA_SIGN_PSS_4096_SHA512" | `Rsa_sign_pkcs1_2048_sha256 -> "RSA_SIGN_PKCS1_2048_SHA256" | `Rsa_sign_pkcs1_3072_sha256 -> "RSA_SIGN_PKCS1_3072_SHA256" | `Rsa_sign_pkcs1_4096_sha256 -> "RSA_SIGN_PKCS1_4096_SHA256" | `Rsa_sign_pkcs1_4096_sha512 -> "RSA_SIGN_PKCS1_4096_SHA512" | `Rsa_sign_raw_pkcs1_2048 -> "RSA_SIGN_RAW_PKCS1_2048" | `Rsa_sign_raw_pkcs1_3072 -> "RSA_SIGN_RAW_PKCS1_3072" | `Rsa_sign_raw_pkcs1_4096 -> "RSA_SIGN_RAW_PKCS1_4096" | `Rsa_decrypt_oaep_2048_sha256 -> "RSA_DECRYPT_OAEP_2048_SHA256" | `Rsa_decrypt_oaep_3072_sha256 -> "RSA_DECRYPT_OAEP_3072_SHA256" | `Rsa_decrypt_oaep_4096_sha256 -> "RSA_DECRYPT_OAEP_4096_SHA256" | `Rsa_decrypt_oaep_4096_sha512 -> "RSA_DECRYPT_OAEP_4096_SHA512" | `Rsa_decrypt_oaep_2048_sha1 -> "RSA_DECRYPT_OAEP_2048_SHA1" | `Rsa_decrypt_oaep_3072_sha1 -> "RSA_DECRYPT_OAEP_3072_SHA1" | `Rsa_decrypt_oaep_4096_sha1 -> "RSA_DECRYPT_OAEP_4096_SHA1" | `Ec_sign_p256_sha256 -> "EC_SIGN_P256_SHA256" | `Ec_sign_p384_sha384 -> "EC_SIGN_P384_SHA384" | `Ec_sign_secp256_k1_sha256 -> "EC_SIGN_SECP256K1_SHA256" | `Ec_sign_ed25519 -> "EC_SIGN_ED25519" | `Hmac_sha256 -> "HMAC_SHA256" | `Hmac_sha1 -> "HMAC_SHA1" | `Hmac_sha384 -> "HMAC_SHA384" | `Hmac_sha512 -> "HMAC_SHA512" | `Hmac_sha224 -> "HMAC_SHA224" | `External_symmetric_encryption -> "EXTERNAL_SYMMETRIC_ENCRYPTION" | `Ml_kem_768 -> "ML_KEM_768" | `Ml_kem_1024 -> "ML_KEM_1024" | `Kem_xwing -> "KEM_XWING" | `Pq_sign_ml_dsa_44 -> "PQ_SIGN_ML_DSA_44" | `Pq_sign_ml_dsa_65 -> "PQ_SIGN_ML_DSA_65" | `Pq_sign_ml_dsa_87 -> "PQ_SIGN_ML_DSA_87" | `Pq_sign_slh_dsa_sha2_128_s -> "PQ_SIGN_SLH_DSA_SHA2_128S" | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 -> "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" | `Pq_sign_ml_dsa_44_external_mu -> "PQ_SIGN_ML_DSA_44_EXTERNAL_MU" | `Pq_sign_ml_dsa_65_external_mu -> "PQ_SIGN_ML_DSA_65_EXTERNAL_MU" | `Pq_sign_ml_dsa_87_external_mu -> "PQ_SIGN_ML_DSA_87_EXTERNAL_MU" | `Kem_ecdh_p256 -> "KEM_ECDH_P256" | `Kem_ecdh_p384 -> "KEM_ECDH_P384" | `Aes_256_kwp -> "AES_256_KWP" | `Unrecognized value -> value) value)) field)) value.algorithm;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
       ])

and decapsulate_request_of_yojson json : decapsulate_request =
  let open Yojson.Safe.Util in
  {
    ciphertext = member "ciphertext" json |> to_option to_string;
    ciphertext_crc32c = member "ciphertextCrc32c" json |> to_option to_string;
  }

and yojson_of_decapsulate_request (value : decapsulate_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ciphertext", (fun value -> `String value) field)) value.ciphertext;
         Option.map (fun field -> ("ciphertextCrc32c", (fun value -> `String value) field)) value.ciphertext_crc32c;
       ])

and decapsulate_response_of_yojson json : decapsulate_response =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    shared_secret = member "sharedSecret" json |> to_option to_string;
    shared_secret_crc32c = member "sharedSecretCrc32c" json |> to_option to_string;
    verified_ciphertext_crc32c = member "verifiedCiphertextCrc32c" json |> to_option to_bool;
  }

and yojson_of_decapsulate_response (value : decapsulate_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("sharedSecret", (fun value -> `String value) field)) value.shared_secret;
         Option.map (fun field -> ("sharedSecretCrc32c", (fun value -> `String value) field)) value.shared_secret_crc32c;
         Option.map (fun field -> ("verifiedCiphertextCrc32c", (fun value -> `Bool value) field)) value.verified_ciphertext_crc32c;
       ])

and decrypt_request_of_yojson json : decrypt_request =
  let open Yojson.Safe.Util in
  {
    additional_authenticated_data = member "additionalAuthenticatedData" json |> to_option to_string;
    additional_authenticated_data_crc32c = member "additionalAuthenticatedDataCrc32c" json |> to_option to_string;
    ciphertext = member "ciphertext" json |> to_option to_string;
    ciphertext_crc32c = member "ciphertextCrc32c" json |> to_option to_string;
  }

and yojson_of_decrypt_request (value : decrypt_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("additionalAuthenticatedData", (fun value -> `String value) field)) value.additional_authenticated_data;
         Option.map (fun field -> ("additionalAuthenticatedDataCrc32c", (fun value -> `String value) field)) value.additional_authenticated_data_crc32c;
         Option.map (fun field -> ("ciphertext", (fun value -> `String value) field)) value.ciphertext;
         Option.map (fun field -> ("ciphertextCrc32c", (fun value -> `String value) field)) value.ciphertext_crc32c;
       ])

and decrypt_response_of_yojson json : decrypt_response =
  let open Yojson.Safe.Util in
  {
    plaintext = member "plaintext" json |> to_option to_string;
    plaintext_crc32c = member "plaintextCrc32c" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    used_primary = member "usedPrimary" json |> to_option to_bool;
  }

and yojson_of_decrypt_response (value : decrypt_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("plaintext", (fun value -> `String value) field)) value.plaintext;
         Option.map (fun field -> ("plaintextCrc32c", (fun value -> `String value) field)) value.plaintext_crc32c;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("usedPrimary", (fun value -> `Bool value) field)) value.used_primary;
       ])

and delete_single_tenant_hsm_instance_of_yojson json : delete_single_tenant_hsm_instance =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_delete_single_tenant_hsm_instance (value : delete_single_tenant_hsm_instance) : Yojson.Safe.t = Fun.id value

and destroy_crypto_key_version_request_of_yojson json : destroy_crypto_key_version_request =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_destroy_crypto_key_version_request (value : destroy_crypto_key_version_request) : Yojson.Safe.t = Fun.id value

and digest_of_yojson json : digest =
  let open Yojson.Safe.Util in
  {
    external_mu = member "externalMu" json |> to_option to_string;
    sha256 = member "sha256" json |> to_option to_string;
    sha384 = member "sha384" json |> to_option to_string;
    sha512 = member "sha512" json |> to_option to_string;
  }

and yojson_of_digest (value : digest) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("externalMu", (fun value -> `String value) field)) value.external_mu;
         Option.map (fun field -> ("sha256", (fun value -> `String value) field)) value.sha256;
         Option.map (fun field -> ("sha384", (fun value -> `String value) field)) value.sha384;
         Option.map (fun field -> ("sha512", (fun value -> `String value) field)) value.sha512;
       ])

and disable_single_tenant_hsm_instance_of_yojson json : disable_single_tenant_hsm_instance =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_disable_single_tenant_hsm_instance (value : disable_single_tenant_hsm_instance) : Yojson.Safe.t = Fun.id value

and ekm_config_of_yojson json : ekm_config =
  let open Yojson.Safe.Util in
  {
    default_ekm_connection = member "defaultEkmConnection" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_ekm_config (value : ekm_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("defaultEkmConnection", (fun value -> `String value) field)) value.default_ekm_connection;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and ekm_connection_of_yojson json : ekm_connection =
  let open Yojson.Safe.Util in
  {
    create_time = member "createTime" json |> to_option to_string;
    crypto_space_path = member "cryptoSpacePath" json |> to_option to_string;
    etag = member "etag" json |> to_option to_string;
    key_management_mode = member "keyManagementMode" json |> to_option (fun json -> match to_string json with "KEY_MANAGEMENT_MODE_UNSPECIFIED" -> `Key_management_mode_unspecified | "MANUAL" -> `Manual | "CLOUD_KMS" -> `Cloud_kms | value -> `Unrecognized value);
    name = member "name" json |> to_option to_string;
    service_resolvers = member "serviceResolvers" json |> to_option (convert_each service_resolver_of_yojson);
  }

and yojson_of_ekm_connection (value : ekm_connection) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("cryptoSpacePath", (fun value -> `String value) field)) value.crypto_space_path;
         Option.map (fun field -> ("etag", (fun value -> `String value) field)) value.etag;
         Option.map (fun field -> ("keyManagementMode", (fun value -> `String ((function `Key_management_mode_unspecified -> "KEY_MANAGEMENT_MODE_UNSPECIFIED" | `Manual -> "MANUAL" | `Cloud_kms -> "CLOUD_KMS" | `Unrecognized value -> value) value)) field)) value.key_management_mode;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("serviceResolvers", (fun items -> `List (List.map yojson_of_service_resolver items)) field)) value.service_resolvers;
       ])

and empty_of_yojson json : empty =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_empty (value : empty) : Yojson.Safe.t = Fun.id value

and enable_single_tenant_hsm_instance_of_yojson json : enable_single_tenant_hsm_instance =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_enable_single_tenant_hsm_instance (value : enable_single_tenant_hsm_instance) : Yojson.Safe.t = Fun.id value

and encrypt_request_of_yojson json : encrypt_request =
  let open Yojson.Safe.Util in
  {
    additional_authenticated_data = member "additionalAuthenticatedData" json |> to_option to_string;
    additional_authenticated_data_crc32c = member "additionalAuthenticatedDataCrc32c" json |> to_option to_string;
    plaintext = member "plaintext" json |> to_option to_string;
    plaintext_crc32c = member "plaintextCrc32c" json |> to_option to_string;
  }

and yojson_of_encrypt_request (value : encrypt_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("additionalAuthenticatedData", (fun value -> `String value) field)) value.additional_authenticated_data;
         Option.map (fun field -> ("additionalAuthenticatedDataCrc32c", (fun value -> `String value) field)) value.additional_authenticated_data_crc32c;
         Option.map (fun field -> ("plaintext", (fun value -> `String value) field)) value.plaintext;
         Option.map (fun field -> ("plaintextCrc32c", (fun value -> `String value) field)) value.plaintext_crc32c;
       ])

and encrypt_response_of_yojson json : encrypt_response =
  let open Yojson.Safe.Util in
  {
    ciphertext = member "ciphertext" json |> to_option to_string;
    ciphertext_crc32c = member "ciphertextCrc32c" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    verified_additional_authenticated_data_crc32c = member "verifiedAdditionalAuthenticatedDataCrc32c" json |> to_option to_bool;
    verified_plaintext_crc32c = member "verifiedPlaintextCrc32c" json |> to_option to_bool;
  }

and yojson_of_encrypt_response (value : encrypt_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ciphertext", (fun value -> `String value) field)) value.ciphertext;
         Option.map (fun field -> ("ciphertextCrc32c", (fun value -> `String value) field)) value.ciphertext_crc32c;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("verifiedAdditionalAuthenticatedDataCrc32c", (fun value -> `Bool value) field)) value.verified_additional_authenticated_data_crc32c;
         Option.map (fun field -> ("verifiedPlaintextCrc32c", (fun value -> `Bool value) field)) value.verified_plaintext_crc32c;
       ])

and execute_single_tenant_hsm_instance_proposal_request_of_yojson json : execute_single_tenant_hsm_instance_proposal_request =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_execute_single_tenant_hsm_instance_proposal_request (value : execute_single_tenant_hsm_instance_proposal_request) : Yojson.Safe.t = Fun.id value

and export_trusted_key_wrapped_crypto_key_version_response_of_yojson json : export_trusted_key_wrapped_crypto_key_version_response =
  let open Yojson.Safe.Util in
  {
    wrapped_key = member "wrappedKey" json |> to_option to_string;
    wrapped_key_crc32c = member "wrappedKeyCrc32c" json |> to_option to_string;
  }

and yojson_of_export_trusted_key_wrapped_crypto_key_version_response (value : export_trusted_key_wrapped_crypto_key_version_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("wrappedKey", (fun value -> `String value) field)) value.wrapped_key;
         Option.map (fun field -> ("wrappedKeyCrc32c", (fun value -> `String value) field)) value.wrapped_key_crc32c;
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

and external_protection_level_options_of_yojson json : external_protection_level_options =
  let open Yojson.Safe.Util in
  {
    ekm_connection_backend_override = member "ekmConnectionBackendOverride" json |> to_option to_string;
    ekm_connection_key_path = member "ekmConnectionKeyPath" json |> to_option to_string;
    external_key_uri = member "externalKeyUri" json |> to_option to_string;
  }

and yojson_of_external_protection_level_options (value : external_protection_level_options) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ekmConnectionBackendOverride", (fun value -> `String value) field)) value.ekm_connection_backend_override;
         Option.map (fun field -> ("ekmConnectionKeyPath", (fun value -> `String value) field)) value.ekm_connection_key_path;
         Option.map (fun field -> ("externalKeyUri", (fun value -> `String value) field)) value.external_key_uri;
       ])

and generate_random_bytes_request_of_yojson json : generate_random_bytes_request =
  let open Yojson.Safe.Util in
  {
    length_bytes = member "lengthBytes" json |> to_option to_int;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
  }

and yojson_of_generate_random_bytes_request (value : generate_random_bytes_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("lengthBytes", (fun value -> `Int value) field)) value.length_bytes;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
       ])

and generate_random_bytes_response_of_yojson json : generate_random_bytes_response =
  let open Yojson.Safe.Util in
  {
    data = member "data" json |> to_option to_string;
    data_crc32c = member "dataCrc32c" json |> to_option to_string;
  }

and yojson_of_generate_random_bytes_response (value : generate_random_bytes_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("data", (fun value -> `String value) field)) value.data;
         Option.map (fun field -> ("dataCrc32c", (fun value -> `String value) field)) value.data_crc32c;
       ])

and import_crypto_key_version_request_of_yojson json : import_crypto_key_version_request =
  let open Yojson.Safe.Util in
  {
    algorithm = member "algorithm" json |> to_option (fun json -> match to_string json with "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" -> `Crypto_key_version_algorithm_unspecified | "GOOGLE_SYMMETRIC_ENCRYPTION" -> `Google_symmetric_encryption | "AES_128_GCM" -> `Aes_128_gcm | "AES_256_GCM" -> `Aes_256_gcm | "AES_128_CBC" -> `Aes_128_cbc | "AES_256_CBC" -> `Aes_256_cbc | "AES_128_CTR" -> `Aes_128_ctr | "AES_256_CTR" -> `Aes_256_ctr | "RSA_SIGN_PSS_2048_SHA256" -> `Rsa_sign_pss_2048_sha256 | "RSA_SIGN_PSS_3072_SHA256" -> `Rsa_sign_pss_3072_sha256 | "RSA_SIGN_PSS_4096_SHA256" -> `Rsa_sign_pss_4096_sha256 | "RSA_SIGN_PSS_4096_SHA512" -> `Rsa_sign_pss_4096_sha512 | "RSA_SIGN_PKCS1_2048_SHA256" -> `Rsa_sign_pkcs1_2048_sha256 | "RSA_SIGN_PKCS1_3072_SHA256" -> `Rsa_sign_pkcs1_3072_sha256 | "RSA_SIGN_PKCS1_4096_SHA256" -> `Rsa_sign_pkcs1_4096_sha256 | "RSA_SIGN_PKCS1_4096_SHA512" -> `Rsa_sign_pkcs1_4096_sha512 | "RSA_SIGN_RAW_PKCS1_2048" -> `Rsa_sign_raw_pkcs1_2048 | "RSA_SIGN_RAW_PKCS1_3072" -> `Rsa_sign_raw_pkcs1_3072 | "RSA_SIGN_RAW_PKCS1_4096" -> `Rsa_sign_raw_pkcs1_4096 | "RSA_DECRYPT_OAEP_2048_SHA256" -> `Rsa_decrypt_oaep_2048_sha256 | "RSA_DECRYPT_OAEP_3072_SHA256" -> `Rsa_decrypt_oaep_3072_sha256 | "RSA_DECRYPT_OAEP_4096_SHA256" -> `Rsa_decrypt_oaep_4096_sha256 | "RSA_DECRYPT_OAEP_4096_SHA512" -> `Rsa_decrypt_oaep_4096_sha512 | "RSA_DECRYPT_OAEP_2048_SHA1" -> `Rsa_decrypt_oaep_2048_sha1 | "RSA_DECRYPT_OAEP_3072_SHA1" -> `Rsa_decrypt_oaep_3072_sha1 | "RSA_DECRYPT_OAEP_4096_SHA1" -> `Rsa_decrypt_oaep_4096_sha1 | "EC_SIGN_P256_SHA256" -> `Ec_sign_p256_sha256 | "EC_SIGN_P384_SHA384" -> `Ec_sign_p384_sha384 | "EC_SIGN_SECP256K1_SHA256" -> `Ec_sign_secp256_k1_sha256 | "EC_SIGN_ED25519" -> `Ec_sign_ed25519 | "HMAC_SHA256" -> `Hmac_sha256 | "HMAC_SHA1" -> `Hmac_sha1 | "HMAC_SHA384" -> `Hmac_sha384 | "HMAC_SHA512" -> `Hmac_sha512 | "HMAC_SHA224" -> `Hmac_sha224 | "EXTERNAL_SYMMETRIC_ENCRYPTION" -> `External_symmetric_encryption | "ML_KEM_768" -> `Ml_kem_768 | "ML_KEM_1024" -> `Ml_kem_1024 | "KEM_XWING" -> `Kem_xwing | "PQ_SIGN_ML_DSA_44" -> `Pq_sign_ml_dsa_44 | "PQ_SIGN_ML_DSA_65" -> `Pq_sign_ml_dsa_65 | "PQ_SIGN_ML_DSA_87" -> `Pq_sign_ml_dsa_87 | "PQ_SIGN_SLH_DSA_SHA2_128S" -> `Pq_sign_slh_dsa_sha2_128_s | "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" -> `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | "PQ_SIGN_ML_DSA_44_EXTERNAL_MU" -> `Pq_sign_ml_dsa_44_external_mu | "PQ_SIGN_ML_DSA_65_EXTERNAL_MU" -> `Pq_sign_ml_dsa_65_external_mu | "PQ_SIGN_ML_DSA_87_EXTERNAL_MU" -> `Pq_sign_ml_dsa_87_external_mu | "KEM_ECDH_P256" -> `Kem_ecdh_p256 | "KEM_ECDH_P384" -> `Kem_ecdh_p384 | "AES_256_KWP" -> `Aes_256_kwp | value -> `Unrecognized value);
    crypto_key_version = member "cryptoKeyVersion" json |> to_option to_string;
    import_job = member "importJob" json |> to_option to_string;
    rsa_aes_wrapped_key = member "rsaAesWrappedKey" json |> to_option to_string;
    trusted_wrapping_enabled = member "trustedWrappingEnabled" json |> to_option to_bool;
    wrapped_key = member "wrappedKey" json |> to_option to_string;
  }

and yojson_of_import_crypto_key_version_request (value : import_crypto_key_version_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("algorithm", (fun value -> `String ((function `Crypto_key_version_algorithm_unspecified -> "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" | `Google_symmetric_encryption -> "GOOGLE_SYMMETRIC_ENCRYPTION" | `Aes_128_gcm -> "AES_128_GCM" | `Aes_256_gcm -> "AES_256_GCM" | `Aes_128_cbc -> "AES_128_CBC" | `Aes_256_cbc -> "AES_256_CBC" | `Aes_128_ctr -> "AES_128_CTR" | `Aes_256_ctr -> "AES_256_CTR" | `Rsa_sign_pss_2048_sha256 -> "RSA_SIGN_PSS_2048_SHA256" | `Rsa_sign_pss_3072_sha256 -> "RSA_SIGN_PSS_3072_SHA256" | `Rsa_sign_pss_4096_sha256 -> "RSA_SIGN_PSS_4096_SHA256" | `Rsa_sign_pss_4096_sha512 -> "RSA_SIGN_PSS_4096_SHA512" | `Rsa_sign_pkcs1_2048_sha256 -> "RSA_SIGN_PKCS1_2048_SHA256" | `Rsa_sign_pkcs1_3072_sha256 -> "RSA_SIGN_PKCS1_3072_SHA256" | `Rsa_sign_pkcs1_4096_sha256 -> "RSA_SIGN_PKCS1_4096_SHA256" | `Rsa_sign_pkcs1_4096_sha512 -> "RSA_SIGN_PKCS1_4096_SHA512" | `Rsa_sign_raw_pkcs1_2048 -> "RSA_SIGN_RAW_PKCS1_2048" | `Rsa_sign_raw_pkcs1_3072 -> "RSA_SIGN_RAW_PKCS1_3072" | `Rsa_sign_raw_pkcs1_4096 -> "RSA_SIGN_RAW_PKCS1_4096" | `Rsa_decrypt_oaep_2048_sha256 -> "RSA_DECRYPT_OAEP_2048_SHA256" | `Rsa_decrypt_oaep_3072_sha256 -> "RSA_DECRYPT_OAEP_3072_SHA256" | `Rsa_decrypt_oaep_4096_sha256 -> "RSA_DECRYPT_OAEP_4096_SHA256" | `Rsa_decrypt_oaep_4096_sha512 -> "RSA_DECRYPT_OAEP_4096_SHA512" | `Rsa_decrypt_oaep_2048_sha1 -> "RSA_DECRYPT_OAEP_2048_SHA1" | `Rsa_decrypt_oaep_3072_sha1 -> "RSA_DECRYPT_OAEP_3072_SHA1" | `Rsa_decrypt_oaep_4096_sha1 -> "RSA_DECRYPT_OAEP_4096_SHA1" | `Ec_sign_p256_sha256 -> "EC_SIGN_P256_SHA256" | `Ec_sign_p384_sha384 -> "EC_SIGN_P384_SHA384" | `Ec_sign_secp256_k1_sha256 -> "EC_SIGN_SECP256K1_SHA256" | `Ec_sign_ed25519 -> "EC_SIGN_ED25519" | `Hmac_sha256 -> "HMAC_SHA256" | `Hmac_sha1 -> "HMAC_SHA1" | `Hmac_sha384 -> "HMAC_SHA384" | `Hmac_sha512 -> "HMAC_SHA512" | `Hmac_sha224 -> "HMAC_SHA224" | `External_symmetric_encryption -> "EXTERNAL_SYMMETRIC_ENCRYPTION" | `Ml_kem_768 -> "ML_KEM_768" | `Ml_kem_1024 -> "ML_KEM_1024" | `Kem_xwing -> "KEM_XWING" | `Pq_sign_ml_dsa_44 -> "PQ_SIGN_ML_DSA_44" | `Pq_sign_ml_dsa_65 -> "PQ_SIGN_ML_DSA_65" | `Pq_sign_ml_dsa_87 -> "PQ_SIGN_ML_DSA_87" | `Pq_sign_slh_dsa_sha2_128_s -> "PQ_SIGN_SLH_DSA_SHA2_128S" | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 -> "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" | `Pq_sign_ml_dsa_44_external_mu -> "PQ_SIGN_ML_DSA_44_EXTERNAL_MU" | `Pq_sign_ml_dsa_65_external_mu -> "PQ_SIGN_ML_DSA_65_EXTERNAL_MU" | `Pq_sign_ml_dsa_87_external_mu -> "PQ_SIGN_ML_DSA_87_EXTERNAL_MU" | `Kem_ecdh_p256 -> "KEM_ECDH_P256" | `Kem_ecdh_p384 -> "KEM_ECDH_P384" | `Aes_256_kwp -> "AES_256_KWP" | `Unrecognized value -> value) value)) field)) value.algorithm;
         Option.map (fun field -> ("cryptoKeyVersion", (fun value -> `String value) field)) value.crypto_key_version;
         Option.map (fun field -> ("importJob", (fun value -> `String value) field)) value.import_job;
         Option.map (fun field -> ("rsaAesWrappedKey", (fun value -> `String value) field)) value.rsa_aes_wrapped_key;
         Option.map (fun field -> ("trustedWrappingEnabled", (fun value -> `Bool value) field)) value.trusted_wrapping_enabled;
         Option.map (fun field -> ("wrappedKey", (fun value -> `String value) field)) value.wrapped_key;
       ])

and import_job_of_yojson json : import_job =
  let open Yojson.Safe.Util in
  {
    attestation = member "attestation" json |> to_option key_operation_attestation_of_yojson;
    create_time = member "createTime" json |> to_option to_string;
    crypto_key_backend = member "cryptoKeyBackend" json |> to_option to_string;
    expire_event_time = member "expireEventTime" json |> to_option to_string;
    expire_time = member "expireTime" json |> to_option to_string;
    generate_time = member "generateTime" json |> to_option to_string;
    import_method = member "importMethod" json |> to_option (fun json -> match to_string json with "IMPORT_METHOD_UNSPECIFIED" -> `Import_method_unspecified | "RSA_OAEP_3072_SHA1_AES_256" -> `Rsa_oaep_3072_sha1_aes_256 | "RSA_OAEP_4096_SHA1_AES_256" -> `Rsa_oaep_4096_sha1_aes_256 | "RSA_OAEP_3072_SHA256_AES_256" -> `Rsa_oaep_3072_sha256_aes_256 | "RSA_OAEP_4096_SHA256_AES_256" -> `Rsa_oaep_4096_sha256_aes_256 | "RSA_OAEP_3072_SHA256" -> `Rsa_oaep_3072_sha256 | "RSA_OAEP_4096_SHA256" -> `Rsa_oaep_4096_sha256 | "HPKE_KEM_ML_KEM_768_HKDF_SHA256_AES_256_GCM" -> `Hpke_kem_ml_kem_768_hkdf_sha256_aes_256_gcm | "HPKE_KEM_ML_KEM_1024_HKDF_SHA256_AES_256_GCM" -> `Hpke_kem_ml_kem_1024_hkdf_sha256_aes_256_gcm | "HPKE_KEM_XWING_HKDF_SHA256_AES_256_GCM" -> `Hpke_kem_xwing_hkdf_sha256_aes_256_gcm | value -> `Unrecognized value);
    name = member "name" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    public_key = member "publicKey" json |> to_option wrapping_public_key_of_yojson;
    public_key_format = member "publicKeyFormat" json |> to_option (fun json -> match to_string json with "PUBLIC_KEY_FORMAT_UNSPECIFIED" -> `Public_key_format_unspecified | "PEM" -> `Pem | "DER" -> `Der | "NIST_PQC" -> `Nist_pqc | "XWING_RAW_BYTES" -> `Xwing_raw_bytes | value -> `Unrecognized value);
    state = member "state" json |> to_option (fun json -> match to_string json with "IMPORT_JOB_STATE_UNSPECIFIED" -> `Import_job_state_unspecified | "PENDING_GENERATION" -> `Pending_generation | "ACTIVE" -> `Active | "EXPIRED" -> `Expired | value -> `Unrecognized value);
  }

and yojson_of_import_job (value : import_job) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("attestation", yojson_of_key_operation_attestation field)) value.attestation;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("cryptoKeyBackend", (fun value -> `String value) field)) value.crypto_key_backend;
         Option.map (fun field -> ("expireEventTime", (fun value -> `String value) field)) value.expire_event_time;
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
         Option.map (fun field -> ("generateTime", (fun value -> `String value) field)) value.generate_time;
         Option.map (fun field -> ("importMethod", (fun value -> `String ((function `Import_method_unspecified -> "IMPORT_METHOD_UNSPECIFIED" | `Rsa_oaep_3072_sha1_aes_256 -> "RSA_OAEP_3072_SHA1_AES_256" | `Rsa_oaep_4096_sha1_aes_256 -> "RSA_OAEP_4096_SHA1_AES_256" | `Rsa_oaep_3072_sha256_aes_256 -> "RSA_OAEP_3072_SHA256_AES_256" | `Rsa_oaep_4096_sha256_aes_256 -> "RSA_OAEP_4096_SHA256_AES_256" | `Rsa_oaep_3072_sha256 -> "RSA_OAEP_3072_SHA256" | `Rsa_oaep_4096_sha256 -> "RSA_OAEP_4096_SHA256" | `Hpke_kem_ml_kem_768_hkdf_sha256_aes_256_gcm -> "HPKE_KEM_ML_KEM_768_HKDF_SHA256_AES_256_GCM" | `Hpke_kem_ml_kem_1024_hkdf_sha256_aes_256_gcm -> "HPKE_KEM_ML_KEM_1024_HKDF_SHA256_AES_256_GCM" | `Hpke_kem_xwing_hkdf_sha256_aes_256_gcm -> "HPKE_KEM_XWING_HKDF_SHA256_AES_256_GCM" | `Unrecognized value -> value) value)) field)) value.import_method;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("publicKey", yojson_of_wrapping_public_key field)) value.public_key;
         Option.map (fun field -> ("publicKeyFormat", (fun value -> `String ((function `Public_key_format_unspecified -> "PUBLIC_KEY_FORMAT_UNSPECIFIED" | `Pem -> "PEM" | `Der -> "DER" | `Nist_pqc -> "NIST_PQC" | `Xwing_raw_bytes -> "XWING_RAW_BYTES" | `Unrecognized value -> value) value)) field)) value.public_key_format;
         Option.map (fun field -> ("state", (fun value -> `String ((function `Import_job_state_unspecified -> "IMPORT_JOB_STATE_UNSPECIFIED" | `Pending_generation -> "PENDING_GENERATION" | `Active -> "ACTIVE" | `Expired -> "EXPIRED" | `Unrecognized value -> value) value)) field)) value.state;
       ])

and import_trusted_key_wrapped_crypto_key_version_request_of_yojson json : import_trusted_key_wrapped_crypto_key_version_request =
  let open Yojson.Safe.Util in
  {
    algorithm = member "algorithm" json |> to_option (fun json -> match to_string json with "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" -> `Crypto_key_version_algorithm_unspecified | "GOOGLE_SYMMETRIC_ENCRYPTION" -> `Google_symmetric_encryption | "AES_128_GCM" -> `Aes_128_gcm | "AES_256_GCM" -> `Aes_256_gcm | "AES_128_CBC" -> `Aes_128_cbc | "AES_256_CBC" -> `Aes_256_cbc | "AES_128_CTR" -> `Aes_128_ctr | "AES_256_CTR" -> `Aes_256_ctr | "RSA_SIGN_PSS_2048_SHA256" -> `Rsa_sign_pss_2048_sha256 | "RSA_SIGN_PSS_3072_SHA256" -> `Rsa_sign_pss_3072_sha256 | "RSA_SIGN_PSS_4096_SHA256" -> `Rsa_sign_pss_4096_sha256 | "RSA_SIGN_PSS_4096_SHA512" -> `Rsa_sign_pss_4096_sha512 | "RSA_SIGN_PKCS1_2048_SHA256" -> `Rsa_sign_pkcs1_2048_sha256 | "RSA_SIGN_PKCS1_3072_SHA256" -> `Rsa_sign_pkcs1_3072_sha256 | "RSA_SIGN_PKCS1_4096_SHA256" -> `Rsa_sign_pkcs1_4096_sha256 | "RSA_SIGN_PKCS1_4096_SHA512" -> `Rsa_sign_pkcs1_4096_sha512 | "RSA_SIGN_RAW_PKCS1_2048" -> `Rsa_sign_raw_pkcs1_2048 | "RSA_SIGN_RAW_PKCS1_3072" -> `Rsa_sign_raw_pkcs1_3072 | "RSA_SIGN_RAW_PKCS1_4096" -> `Rsa_sign_raw_pkcs1_4096 | "RSA_DECRYPT_OAEP_2048_SHA256" -> `Rsa_decrypt_oaep_2048_sha256 | "RSA_DECRYPT_OAEP_3072_SHA256" -> `Rsa_decrypt_oaep_3072_sha256 | "RSA_DECRYPT_OAEP_4096_SHA256" -> `Rsa_decrypt_oaep_4096_sha256 | "RSA_DECRYPT_OAEP_4096_SHA512" -> `Rsa_decrypt_oaep_4096_sha512 | "RSA_DECRYPT_OAEP_2048_SHA1" -> `Rsa_decrypt_oaep_2048_sha1 | "RSA_DECRYPT_OAEP_3072_SHA1" -> `Rsa_decrypt_oaep_3072_sha1 | "RSA_DECRYPT_OAEP_4096_SHA1" -> `Rsa_decrypt_oaep_4096_sha1 | "EC_SIGN_P256_SHA256" -> `Ec_sign_p256_sha256 | "EC_SIGN_P384_SHA384" -> `Ec_sign_p384_sha384 | "EC_SIGN_SECP256K1_SHA256" -> `Ec_sign_secp256_k1_sha256 | "EC_SIGN_ED25519" -> `Ec_sign_ed25519 | "HMAC_SHA256" -> `Hmac_sha256 | "HMAC_SHA1" -> `Hmac_sha1 | "HMAC_SHA384" -> `Hmac_sha384 | "HMAC_SHA512" -> `Hmac_sha512 | "HMAC_SHA224" -> `Hmac_sha224 | "EXTERNAL_SYMMETRIC_ENCRYPTION" -> `External_symmetric_encryption | "ML_KEM_768" -> `Ml_kem_768 | "ML_KEM_1024" -> `Ml_kem_1024 | "KEM_XWING" -> `Kem_xwing | "PQ_SIGN_ML_DSA_44" -> `Pq_sign_ml_dsa_44 | "PQ_SIGN_ML_DSA_65" -> `Pq_sign_ml_dsa_65 | "PQ_SIGN_ML_DSA_87" -> `Pq_sign_ml_dsa_87 | "PQ_SIGN_SLH_DSA_SHA2_128S" -> `Pq_sign_slh_dsa_sha2_128_s | "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" -> `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | "PQ_SIGN_ML_DSA_44_EXTERNAL_MU" -> `Pq_sign_ml_dsa_44_external_mu | "PQ_SIGN_ML_DSA_65_EXTERNAL_MU" -> `Pq_sign_ml_dsa_65_external_mu | "PQ_SIGN_ML_DSA_87_EXTERNAL_MU" -> `Pq_sign_ml_dsa_87_external_mu | "KEM_ECDH_P256" -> `Kem_ecdh_p256 | "KEM_ECDH_P384" -> `Kem_ecdh_p384 | "AES_256_KWP" -> `Aes_256_kwp | value -> `Unrecognized value);
    crypto_key_version = member "cryptoKeyVersion" json |> to_option to_string;
    importing_key = member "importingKey" json |> to_option to_string;
    wrapped_key = member "wrappedKey" json |> to_option to_string;
  }

and yojson_of_import_trusted_key_wrapped_crypto_key_version_request (value : import_trusted_key_wrapped_crypto_key_version_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("algorithm", (fun value -> `String ((function `Crypto_key_version_algorithm_unspecified -> "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" | `Google_symmetric_encryption -> "GOOGLE_SYMMETRIC_ENCRYPTION" | `Aes_128_gcm -> "AES_128_GCM" | `Aes_256_gcm -> "AES_256_GCM" | `Aes_128_cbc -> "AES_128_CBC" | `Aes_256_cbc -> "AES_256_CBC" | `Aes_128_ctr -> "AES_128_CTR" | `Aes_256_ctr -> "AES_256_CTR" | `Rsa_sign_pss_2048_sha256 -> "RSA_SIGN_PSS_2048_SHA256" | `Rsa_sign_pss_3072_sha256 -> "RSA_SIGN_PSS_3072_SHA256" | `Rsa_sign_pss_4096_sha256 -> "RSA_SIGN_PSS_4096_SHA256" | `Rsa_sign_pss_4096_sha512 -> "RSA_SIGN_PSS_4096_SHA512" | `Rsa_sign_pkcs1_2048_sha256 -> "RSA_SIGN_PKCS1_2048_SHA256" | `Rsa_sign_pkcs1_3072_sha256 -> "RSA_SIGN_PKCS1_3072_SHA256" | `Rsa_sign_pkcs1_4096_sha256 -> "RSA_SIGN_PKCS1_4096_SHA256" | `Rsa_sign_pkcs1_4096_sha512 -> "RSA_SIGN_PKCS1_4096_SHA512" | `Rsa_sign_raw_pkcs1_2048 -> "RSA_SIGN_RAW_PKCS1_2048" | `Rsa_sign_raw_pkcs1_3072 -> "RSA_SIGN_RAW_PKCS1_3072" | `Rsa_sign_raw_pkcs1_4096 -> "RSA_SIGN_RAW_PKCS1_4096" | `Rsa_decrypt_oaep_2048_sha256 -> "RSA_DECRYPT_OAEP_2048_SHA256" | `Rsa_decrypt_oaep_3072_sha256 -> "RSA_DECRYPT_OAEP_3072_SHA256" | `Rsa_decrypt_oaep_4096_sha256 -> "RSA_DECRYPT_OAEP_4096_SHA256" | `Rsa_decrypt_oaep_4096_sha512 -> "RSA_DECRYPT_OAEP_4096_SHA512" | `Rsa_decrypt_oaep_2048_sha1 -> "RSA_DECRYPT_OAEP_2048_SHA1" | `Rsa_decrypt_oaep_3072_sha1 -> "RSA_DECRYPT_OAEP_3072_SHA1" | `Rsa_decrypt_oaep_4096_sha1 -> "RSA_DECRYPT_OAEP_4096_SHA1" | `Ec_sign_p256_sha256 -> "EC_SIGN_P256_SHA256" | `Ec_sign_p384_sha384 -> "EC_SIGN_P384_SHA384" | `Ec_sign_secp256_k1_sha256 -> "EC_SIGN_SECP256K1_SHA256" | `Ec_sign_ed25519 -> "EC_SIGN_ED25519" | `Hmac_sha256 -> "HMAC_SHA256" | `Hmac_sha1 -> "HMAC_SHA1" | `Hmac_sha384 -> "HMAC_SHA384" | `Hmac_sha512 -> "HMAC_SHA512" | `Hmac_sha224 -> "HMAC_SHA224" | `External_symmetric_encryption -> "EXTERNAL_SYMMETRIC_ENCRYPTION" | `Ml_kem_768 -> "ML_KEM_768" | `Ml_kem_1024 -> "ML_KEM_1024" | `Kem_xwing -> "KEM_XWING" | `Pq_sign_ml_dsa_44 -> "PQ_SIGN_ML_DSA_44" | `Pq_sign_ml_dsa_65 -> "PQ_SIGN_ML_DSA_65" | `Pq_sign_ml_dsa_87 -> "PQ_SIGN_ML_DSA_87" | `Pq_sign_slh_dsa_sha2_128_s -> "PQ_SIGN_SLH_DSA_SHA2_128S" | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 -> "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" | `Pq_sign_ml_dsa_44_external_mu -> "PQ_SIGN_ML_DSA_44_EXTERNAL_MU" | `Pq_sign_ml_dsa_65_external_mu -> "PQ_SIGN_ML_DSA_65_EXTERNAL_MU" | `Pq_sign_ml_dsa_87_external_mu -> "PQ_SIGN_ML_DSA_87_EXTERNAL_MU" | `Kem_ecdh_p256 -> "KEM_ECDH_P256" | `Kem_ecdh_p384 -> "KEM_ECDH_P384" | `Aes_256_kwp -> "AES_256_KWP" | `Unrecognized value -> value) value)) field)) value.algorithm;
         Option.map (fun field -> ("cryptoKeyVersion", (fun value -> `String value) field)) value.crypto_key_version;
         Option.map (fun field -> ("importingKey", (fun value -> `String value) field)) value.importing_key;
         Option.map (fun field -> ("wrappedKey", (fun value -> `String value) field)) value.wrapped_key;
       ])

and key_access_justifications_enrollment_config_of_yojson json : key_access_justifications_enrollment_config =
  let open Yojson.Safe.Util in
  {
    audit_logging = member "auditLogging" json |> to_option to_bool;
    policy_enforcement = member "policyEnforcement" json |> to_option to_bool;
  }

and yojson_of_key_access_justifications_enrollment_config (value : key_access_justifications_enrollment_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("auditLogging", (fun value -> `Bool value) field)) value.audit_logging;
         Option.map (fun field -> ("policyEnforcement", (fun value -> `Bool value) field)) value.policy_enforcement;
       ])

and key_access_justifications_policy_of_yojson json : key_access_justifications_policy =
  let open Yojson.Safe.Util in
  {
    allowed_access_reasons = member "allowedAccessReasons" json |> to_option (convert_each (fun json -> match to_string json with "REASON_UNSPECIFIED" -> `Reason_unspecified | "CUSTOMER_INITIATED_SUPPORT" -> `Customer_initiated_support | "GOOGLE_INITIATED_SERVICE" -> `Google_initiated_service | "THIRD_PARTY_DATA_REQUEST" -> `Third_party_data_request | "GOOGLE_INITIATED_REVIEW" -> `Google_initiated_review | "CUSTOMER_INITIATED_ACCESS" -> `Customer_initiated_access | "GOOGLE_INITIATED_SYSTEM_OPERATION" -> `Google_initiated_system_operation | "REASON_NOT_EXPECTED" -> `Reason_not_expected | "MODIFIED_CUSTOMER_INITIATED_ACCESS" -> `Modified_customer_initiated_access | "MODIFIED_GOOGLE_INITIATED_SYSTEM_OPERATION" -> `Modified_google_initiated_system_operation | "GOOGLE_RESPONSE_TO_PRODUCTION_ALERT" -> `Google_response_to_production_alert | "CUSTOMER_AUTHORIZED_WORKFLOW_SERVICING" -> `Customer_authorized_workflow_servicing | value -> `Unrecognized value));
  }

and yojson_of_key_access_justifications_policy (value : key_access_justifications_policy) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("allowedAccessReasons", (fun items -> `List (List.map (fun value -> `String ((function `Reason_unspecified -> "REASON_UNSPECIFIED" | `Customer_initiated_support -> "CUSTOMER_INITIATED_SUPPORT" | `Google_initiated_service -> "GOOGLE_INITIATED_SERVICE" | `Third_party_data_request -> "THIRD_PARTY_DATA_REQUEST" | `Google_initiated_review -> "GOOGLE_INITIATED_REVIEW" | `Customer_initiated_access -> "CUSTOMER_INITIATED_ACCESS" | `Google_initiated_system_operation -> "GOOGLE_INITIATED_SYSTEM_OPERATION" | `Reason_not_expected -> "REASON_NOT_EXPECTED" | `Modified_customer_initiated_access -> "MODIFIED_CUSTOMER_INITIATED_ACCESS" | `Modified_google_initiated_system_operation -> "MODIFIED_GOOGLE_INITIATED_SYSTEM_OPERATION" | `Google_response_to_production_alert -> "GOOGLE_RESPONSE_TO_PRODUCTION_ALERT" | `Customer_authorized_workflow_servicing -> "CUSTOMER_AUTHORIZED_WORKFLOW_SERVICING" | `Unrecognized value -> value) value)) items)) field)) value.allowed_access_reasons;
       ])

and key_access_justifications_policy_config_of_yojson json : key_access_justifications_policy_config =
  let open Yojson.Safe.Util in
  {
    default_key_access_justification_policy = member "defaultKeyAccessJustificationPolicy" json |> to_option key_access_justifications_policy_of_yojson;
    default_policy_available = member "defaultPolicyAvailable" json |> to_option to_bool;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_key_access_justifications_policy_config (value : key_access_justifications_policy_config) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("defaultKeyAccessJustificationPolicy", yojson_of_key_access_justifications_policy field)) value.default_key_access_justification_policy;
         Option.map (fun field -> ("defaultPolicyAvailable", (fun value -> `Bool value) field)) value.default_policy_available;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and key_handle_of_yojson json : key_handle =
  let open Yojson.Safe.Util in
  {
    kms_key = member "kmsKey" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    resource_type_selector = member "resourceTypeSelector" json |> to_option to_string;
  }

and yojson_of_key_handle (value : key_handle) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("kmsKey", (fun value -> `String value) field)) value.kms_key;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("resourceTypeSelector", (fun value -> `String value) field)) value.resource_type_selector;
       ])

and key_operation_attestation_of_yojson json : key_operation_attestation =
  let open Yojson.Safe.Util in
  {
    cert_chains = member "certChains" json |> to_option certificate_chains_of_yojson;
    content = member "content" json |> to_option to_string;
    format = member "format" json |> to_option (fun json -> match to_string json with "ATTESTATION_FORMAT_UNSPECIFIED" -> `Attestation_format_unspecified | "CAVIUM_V1_COMPRESSED" -> `Cavium_v1_compressed | "CAVIUM_V2_COMPRESSED" -> `Cavium_v2_compressed | "CAVIUM_V209" -> `Cavium_v209 | value -> `Unrecognized value);
  }

and yojson_of_key_operation_attestation (value : key_operation_attestation) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("certChains", yojson_of_certificate_chains field)) value.cert_chains;
         Option.map (fun field -> ("content", (fun value -> `String value) field)) value.content;
         Option.map (fun field -> ("format", (fun value -> `String ((function `Attestation_format_unspecified -> "ATTESTATION_FORMAT_UNSPECIFIED" | `Cavium_v1_compressed -> "CAVIUM_V1_COMPRESSED" | `Cavium_v2_compressed -> "CAVIUM_V2_COMPRESSED" | `Cavium_v209 -> "CAVIUM_V209" | `Unrecognized value -> value) value)) field)) value.format;
       ])

and key_ring_of_yojson json : key_ring =
  let open Yojson.Safe.Util in
  {
    create_time = member "createTime" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
  }

and yojson_of_key_ring (value : key_ring) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and list_crypto_key_versions_response_of_yojson json : list_crypto_key_versions_response =
  let open Yojson.Safe.Util in
  {
    crypto_key_versions = member "cryptoKeyVersions" json |> to_option (convert_each crypto_key_version_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
    total_size = member "totalSize" json |> to_option to_int;
  }

and yojson_of_list_crypto_key_versions_response (value : list_crypto_key_versions_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cryptoKeyVersions", (fun items -> `List (List.map yojson_of_crypto_key_version items)) field)) value.crypto_key_versions;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("totalSize", (fun value -> `Int value) field)) value.total_size;
       ])

and list_crypto_keys_response_of_yojson json : list_crypto_keys_response =
  let open Yojson.Safe.Util in
  {
    crypto_keys = member "cryptoKeys" json |> to_option (convert_each crypto_key_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
    total_size = member "totalSize" json |> to_option to_int;
  }

and yojson_of_list_crypto_keys_response (value : list_crypto_keys_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cryptoKeys", (fun items -> `List (List.map yojson_of_crypto_key items)) field)) value.crypto_keys;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("totalSize", (fun value -> `Int value) field)) value.total_size;
       ])

and list_ekm_connections_response_of_yojson json : list_ekm_connections_response =
  let open Yojson.Safe.Util in
  {
    ekm_connections = member "ekmConnections" json |> to_option (convert_each ekm_connection_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
    total_size = member "totalSize" json |> to_option to_int;
  }

and yojson_of_list_ekm_connections_response (value : list_ekm_connections_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ekmConnections", (fun items -> `List (List.map yojson_of_ekm_connection items)) field)) value.ekm_connections;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("totalSize", (fun value -> `Int value) field)) value.total_size;
       ])

and list_import_jobs_response_of_yojson json : list_import_jobs_response =
  let open Yojson.Safe.Util in
  {
    import_jobs = member "importJobs" json |> to_option (convert_each import_job_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
    total_size = member "totalSize" json |> to_option to_int;
  }

and yojson_of_list_import_jobs_response (value : list_import_jobs_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("importJobs", (fun items -> `List (List.map yojson_of_import_job items)) field)) value.import_jobs;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("totalSize", (fun value -> `Int value) field)) value.total_size;
       ])

and list_key_handles_response_of_yojson json : list_key_handles_response =
  let open Yojson.Safe.Util in
  {
    key_handles = member "keyHandles" json |> to_option (convert_each key_handle_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_list_key_handles_response (value : list_key_handles_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("keyHandles", (fun items -> `List (List.map yojson_of_key_handle items)) field)) value.key_handles;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and list_key_rings_response_of_yojson json : list_key_rings_response =
  let open Yojson.Safe.Util in
  {
    key_rings = member "keyRings" json |> to_option (convert_each key_ring_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
    total_size = member "totalSize" json |> to_option to_int;
  }

and yojson_of_list_key_rings_response (value : list_key_rings_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("keyRings", (fun items -> `List (List.map yojson_of_key_ring items)) field)) value.key_rings;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("totalSize", (fun value -> `Int value) field)) value.total_size;
       ])

and list_locations_response_of_yojson json : list_locations_response =
  let open Yojson.Safe.Util in
  {
    locations = member "locations" json |> to_option (convert_each location_of_yojson);
    next_page_token = member "nextPageToken" json |> to_option to_string;
  }

and yojson_of_list_locations_response (value : list_locations_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("locations", (fun items -> `List (List.map yojson_of_location items)) field)) value.locations;
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
       ])

and list_retired_resources_response_of_yojson json : list_retired_resources_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    retired_resources = member "retiredResources" json |> to_option (convert_each retired_resource_of_yojson);
    total_size = member "totalSize" json |> to_option to_string;
  }

and yojson_of_list_retired_resources_response (value : list_retired_resources_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("retiredResources", (fun items -> `List (List.map yojson_of_retired_resource items)) field)) value.retired_resources;
         Option.map (fun field -> ("totalSize", (fun value -> `String value) field)) value.total_size;
       ])

and list_single_tenant_hsm_instance_proposals_response_of_yojson json : list_single_tenant_hsm_instance_proposals_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    single_tenant_hsm_instance_proposals = member "singleTenantHsmInstanceProposals" json |> to_option (convert_each single_tenant_hsm_instance_proposal_of_yojson);
    total_size = member "totalSize" json |> to_option to_int;
  }

and yojson_of_list_single_tenant_hsm_instance_proposals_response (value : list_single_tenant_hsm_instance_proposals_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("singleTenantHsmInstanceProposals", (fun items -> `List (List.map yojson_of_single_tenant_hsm_instance_proposal items)) field)) value.single_tenant_hsm_instance_proposals;
         Option.map (fun field -> ("totalSize", (fun value -> `Int value) field)) value.total_size;
       ])

and list_single_tenant_hsm_instances_response_of_yojson json : list_single_tenant_hsm_instances_response =
  let open Yojson.Safe.Util in
  {
    next_page_token = member "nextPageToken" json |> to_option to_string;
    single_tenant_hsm_instances = member "singleTenantHsmInstances" json |> to_option (convert_each single_tenant_hsm_instance_of_yojson);
    total_size = member "totalSize" json |> to_option to_int;
  }

and yojson_of_list_single_tenant_hsm_instances_response (value : list_single_tenant_hsm_instances_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("nextPageToken", (fun value -> `String value) field)) value.next_page_token;
         Option.map (fun field -> ("singleTenantHsmInstances", (fun items -> `List (List.map yojson_of_single_tenant_hsm_instance items)) field)) value.single_tenant_hsm_instances;
         Option.map (fun field -> ("totalSize", (fun value -> `Int value) field)) value.total_size;
       ])

and location_of_yojson json : location =
  let open Yojson.Safe.Util in
  {
    display_name = member "displayName" json |> to_option to_string;
    labels = member "labels" json |> to_option (fun json -> List.map (fun (key, value) -> (key, to_string value)) (to_assoc json));
    location_id = member "locationId" json |> to_option to_string;
    metadata = member "metadata" json |> to_option (fun json -> List.map (fun (key, value) -> (key, Fun.id value)) (to_assoc json));
    name = member "name" json |> to_option to_string;
  }

and yojson_of_location (value : location) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("displayName", (fun value -> `String value) field)) value.display_name;
         Option.map (fun field -> ("labels", (fun members -> `Assoc (List.map (fun (key, value) -> (key, (fun value -> `String value) value)) members)) field)) value.labels;
         Option.map (fun field -> ("locationId", (fun value -> `String value) field)) value.location_id;
         Option.map (fun field -> ("metadata", (fun members -> `Assoc (List.map (fun (key, value) -> (key, Fun.id value)) members)) field)) value.metadata;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
       ])

and location_metadata_of_yojson json : location_metadata =
  let open Yojson.Safe.Util in
  {
    ekm_available = member "ekmAvailable" json |> to_option to_bool;
    hsm_available = member "hsmAvailable" json |> to_option to_bool;
    hsm_single_tenant_available = member "hsmSingleTenantAvailable" json |> to_option to_bool;
  }

and yojson_of_location_metadata (value : location_metadata) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ekmAvailable", (fun value -> `Bool value) field)) value.ekm_available;
         Option.map (fun field -> ("hsmAvailable", (fun value -> `Bool value) field)) value.hsm_available;
         Option.map (fun field -> ("hsmSingleTenantAvailable", (fun value -> `Bool value) field)) value.hsm_single_tenant_available;
       ])

and mac_sign_request_of_yojson json : mac_sign_request =
  let open Yojson.Safe.Util in
  {
    data = member "data" json |> to_option to_string;
    data_crc32c = member "dataCrc32c" json |> to_option to_string;
  }

and yojson_of_mac_sign_request (value : mac_sign_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("data", (fun value -> `String value) field)) value.data;
         Option.map (fun field -> ("dataCrc32c", (fun value -> `String value) field)) value.data_crc32c;
       ])

and mac_sign_response_of_yojson json : mac_sign_response =
  let open Yojson.Safe.Util in
  {
    mac = member "mac" json |> to_option to_string;
    mac_crc32c = member "macCrc32c" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    verified_data_crc32c = member "verifiedDataCrc32c" json |> to_option to_bool;
  }

and yojson_of_mac_sign_response (value : mac_sign_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("mac", (fun value -> `String value) field)) value.mac;
         Option.map (fun field -> ("macCrc32c", (fun value -> `String value) field)) value.mac_crc32c;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("verifiedDataCrc32c", (fun value -> `Bool value) field)) value.verified_data_crc32c;
       ])

and mac_verify_request_of_yojson json : mac_verify_request =
  let open Yojson.Safe.Util in
  {
    data = member "data" json |> to_option to_string;
    data_crc32c = member "dataCrc32c" json |> to_option to_string;
    mac = member "mac" json |> to_option to_string;
    mac_crc32c = member "macCrc32c" json |> to_option to_string;
  }

and yojson_of_mac_verify_request (value : mac_verify_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("data", (fun value -> `String value) field)) value.data;
         Option.map (fun field -> ("dataCrc32c", (fun value -> `String value) field)) value.data_crc32c;
         Option.map (fun field -> ("mac", (fun value -> `String value) field)) value.mac;
         Option.map (fun field -> ("macCrc32c", (fun value -> `String value) field)) value.mac_crc32c;
       ])

and mac_verify_response_of_yojson json : mac_verify_response =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    success = member "success" json |> to_option to_bool;
    verified_data_crc32c = member "verifiedDataCrc32c" json |> to_option to_bool;
    verified_mac_crc32c = member "verifiedMacCrc32c" json |> to_option to_bool;
    verified_success_integrity = member "verifiedSuccessIntegrity" json |> to_option to_bool;
  }

and yojson_of_mac_verify_response (value : mac_verify_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("success", (fun value -> `Bool value) field)) value.success;
         Option.map (fun field -> ("verifiedDataCrc32c", (fun value -> `Bool value) field)) value.verified_data_crc32c;
         Option.map (fun field -> ("verifiedMacCrc32c", (fun value -> `Bool value) field)) value.verified_mac_crc32c;
         Option.map (fun field -> ("verifiedSuccessIntegrity", (fun value -> `Bool value) field)) value.verified_success_integrity;
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

and public_key_of_yojson json : public_key =
  let open Yojson.Safe.Util in
  {
    algorithm = member "algorithm" json |> to_option (fun json -> match to_string json with "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" -> `Crypto_key_version_algorithm_unspecified | "GOOGLE_SYMMETRIC_ENCRYPTION" -> `Google_symmetric_encryption | "AES_128_GCM" -> `Aes_128_gcm | "AES_256_GCM" -> `Aes_256_gcm | "AES_128_CBC" -> `Aes_128_cbc | "AES_256_CBC" -> `Aes_256_cbc | "AES_128_CTR" -> `Aes_128_ctr | "AES_256_CTR" -> `Aes_256_ctr | "RSA_SIGN_PSS_2048_SHA256" -> `Rsa_sign_pss_2048_sha256 | "RSA_SIGN_PSS_3072_SHA256" -> `Rsa_sign_pss_3072_sha256 | "RSA_SIGN_PSS_4096_SHA256" -> `Rsa_sign_pss_4096_sha256 | "RSA_SIGN_PSS_4096_SHA512" -> `Rsa_sign_pss_4096_sha512 | "RSA_SIGN_PKCS1_2048_SHA256" -> `Rsa_sign_pkcs1_2048_sha256 | "RSA_SIGN_PKCS1_3072_SHA256" -> `Rsa_sign_pkcs1_3072_sha256 | "RSA_SIGN_PKCS1_4096_SHA256" -> `Rsa_sign_pkcs1_4096_sha256 | "RSA_SIGN_PKCS1_4096_SHA512" -> `Rsa_sign_pkcs1_4096_sha512 | "RSA_SIGN_RAW_PKCS1_2048" -> `Rsa_sign_raw_pkcs1_2048 | "RSA_SIGN_RAW_PKCS1_3072" -> `Rsa_sign_raw_pkcs1_3072 | "RSA_SIGN_RAW_PKCS1_4096" -> `Rsa_sign_raw_pkcs1_4096 | "RSA_DECRYPT_OAEP_2048_SHA256" -> `Rsa_decrypt_oaep_2048_sha256 | "RSA_DECRYPT_OAEP_3072_SHA256" -> `Rsa_decrypt_oaep_3072_sha256 | "RSA_DECRYPT_OAEP_4096_SHA256" -> `Rsa_decrypt_oaep_4096_sha256 | "RSA_DECRYPT_OAEP_4096_SHA512" -> `Rsa_decrypt_oaep_4096_sha512 | "RSA_DECRYPT_OAEP_2048_SHA1" -> `Rsa_decrypt_oaep_2048_sha1 | "RSA_DECRYPT_OAEP_3072_SHA1" -> `Rsa_decrypt_oaep_3072_sha1 | "RSA_DECRYPT_OAEP_4096_SHA1" -> `Rsa_decrypt_oaep_4096_sha1 | "EC_SIGN_P256_SHA256" -> `Ec_sign_p256_sha256 | "EC_SIGN_P384_SHA384" -> `Ec_sign_p384_sha384 | "EC_SIGN_SECP256K1_SHA256" -> `Ec_sign_secp256_k1_sha256 | "EC_SIGN_ED25519" -> `Ec_sign_ed25519 | "HMAC_SHA256" -> `Hmac_sha256 | "HMAC_SHA1" -> `Hmac_sha1 | "HMAC_SHA384" -> `Hmac_sha384 | "HMAC_SHA512" -> `Hmac_sha512 | "HMAC_SHA224" -> `Hmac_sha224 | "EXTERNAL_SYMMETRIC_ENCRYPTION" -> `External_symmetric_encryption | "ML_KEM_768" -> `Ml_kem_768 | "ML_KEM_1024" -> `Ml_kem_1024 | "KEM_XWING" -> `Kem_xwing | "PQ_SIGN_ML_DSA_44" -> `Pq_sign_ml_dsa_44 | "PQ_SIGN_ML_DSA_65" -> `Pq_sign_ml_dsa_65 | "PQ_SIGN_ML_DSA_87" -> `Pq_sign_ml_dsa_87 | "PQ_SIGN_SLH_DSA_SHA2_128S" -> `Pq_sign_slh_dsa_sha2_128_s | "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" -> `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | "PQ_SIGN_ML_DSA_44_EXTERNAL_MU" -> `Pq_sign_ml_dsa_44_external_mu | "PQ_SIGN_ML_DSA_65_EXTERNAL_MU" -> `Pq_sign_ml_dsa_65_external_mu | "PQ_SIGN_ML_DSA_87_EXTERNAL_MU" -> `Pq_sign_ml_dsa_87_external_mu | "KEM_ECDH_P256" -> `Kem_ecdh_p256 | "KEM_ECDH_P384" -> `Kem_ecdh_p384 | "AES_256_KWP" -> `Aes_256_kwp | value -> `Unrecognized value);
    name = member "name" json |> to_option to_string;
    pem = member "pem" json |> to_option to_string;
    pem_crc32c = member "pemCrc32c" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    public_key = member "publicKey" json |> to_option checksummed_data_of_yojson;
    public_key_format = member "publicKeyFormat" json |> to_option (fun json -> match to_string json with "PUBLIC_KEY_FORMAT_UNSPECIFIED" -> `Public_key_format_unspecified | "PEM" -> `Pem | "DER" -> `Der | "NIST_PQC" -> `Nist_pqc | "XWING_RAW_BYTES" -> `Xwing_raw_bytes | value -> `Unrecognized value);
  }

and yojson_of_public_key (value : public_key) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("algorithm", (fun value -> `String ((function `Crypto_key_version_algorithm_unspecified -> "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" | `Google_symmetric_encryption -> "GOOGLE_SYMMETRIC_ENCRYPTION" | `Aes_128_gcm -> "AES_128_GCM" | `Aes_256_gcm -> "AES_256_GCM" | `Aes_128_cbc -> "AES_128_CBC" | `Aes_256_cbc -> "AES_256_CBC" | `Aes_128_ctr -> "AES_128_CTR" | `Aes_256_ctr -> "AES_256_CTR" | `Rsa_sign_pss_2048_sha256 -> "RSA_SIGN_PSS_2048_SHA256" | `Rsa_sign_pss_3072_sha256 -> "RSA_SIGN_PSS_3072_SHA256" | `Rsa_sign_pss_4096_sha256 -> "RSA_SIGN_PSS_4096_SHA256" | `Rsa_sign_pss_4096_sha512 -> "RSA_SIGN_PSS_4096_SHA512" | `Rsa_sign_pkcs1_2048_sha256 -> "RSA_SIGN_PKCS1_2048_SHA256" | `Rsa_sign_pkcs1_3072_sha256 -> "RSA_SIGN_PKCS1_3072_SHA256" | `Rsa_sign_pkcs1_4096_sha256 -> "RSA_SIGN_PKCS1_4096_SHA256" | `Rsa_sign_pkcs1_4096_sha512 -> "RSA_SIGN_PKCS1_4096_SHA512" | `Rsa_sign_raw_pkcs1_2048 -> "RSA_SIGN_RAW_PKCS1_2048" | `Rsa_sign_raw_pkcs1_3072 -> "RSA_SIGN_RAW_PKCS1_3072" | `Rsa_sign_raw_pkcs1_4096 -> "RSA_SIGN_RAW_PKCS1_4096" | `Rsa_decrypt_oaep_2048_sha256 -> "RSA_DECRYPT_OAEP_2048_SHA256" | `Rsa_decrypt_oaep_3072_sha256 -> "RSA_DECRYPT_OAEP_3072_SHA256" | `Rsa_decrypt_oaep_4096_sha256 -> "RSA_DECRYPT_OAEP_4096_SHA256" | `Rsa_decrypt_oaep_4096_sha512 -> "RSA_DECRYPT_OAEP_4096_SHA512" | `Rsa_decrypt_oaep_2048_sha1 -> "RSA_DECRYPT_OAEP_2048_SHA1" | `Rsa_decrypt_oaep_3072_sha1 -> "RSA_DECRYPT_OAEP_3072_SHA1" | `Rsa_decrypt_oaep_4096_sha1 -> "RSA_DECRYPT_OAEP_4096_SHA1" | `Ec_sign_p256_sha256 -> "EC_SIGN_P256_SHA256" | `Ec_sign_p384_sha384 -> "EC_SIGN_P384_SHA384" | `Ec_sign_secp256_k1_sha256 -> "EC_SIGN_SECP256K1_SHA256" | `Ec_sign_ed25519 -> "EC_SIGN_ED25519" | `Hmac_sha256 -> "HMAC_SHA256" | `Hmac_sha1 -> "HMAC_SHA1" | `Hmac_sha384 -> "HMAC_SHA384" | `Hmac_sha512 -> "HMAC_SHA512" | `Hmac_sha224 -> "HMAC_SHA224" | `External_symmetric_encryption -> "EXTERNAL_SYMMETRIC_ENCRYPTION" | `Ml_kem_768 -> "ML_KEM_768" | `Ml_kem_1024 -> "ML_KEM_1024" | `Kem_xwing -> "KEM_XWING" | `Pq_sign_ml_dsa_44 -> "PQ_SIGN_ML_DSA_44" | `Pq_sign_ml_dsa_65 -> "PQ_SIGN_ML_DSA_65" | `Pq_sign_ml_dsa_87 -> "PQ_SIGN_ML_DSA_87" | `Pq_sign_slh_dsa_sha2_128_s -> "PQ_SIGN_SLH_DSA_SHA2_128S" | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 -> "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" | `Pq_sign_ml_dsa_44_external_mu -> "PQ_SIGN_ML_DSA_44_EXTERNAL_MU" | `Pq_sign_ml_dsa_65_external_mu -> "PQ_SIGN_ML_DSA_65_EXTERNAL_MU" | `Pq_sign_ml_dsa_87_external_mu -> "PQ_SIGN_ML_DSA_87_EXTERNAL_MU" | `Kem_ecdh_p256 -> "KEM_ECDH_P256" | `Kem_ecdh_p384 -> "KEM_ECDH_P384" | `Aes_256_kwp -> "AES_256_KWP" | `Unrecognized value -> value) value)) field)) value.algorithm;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("pem", (fun value -> `String value) field)) value.pem;
         Option.map (fun field -> ("pemCrc32c", (fun value -> `String value) field)) value.pem_crc32c;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("publicKey", yojson_of_checksummed_data field)) value.public_key;
         Option.map (fun field -> ("publicKeyFormat", (fun value -> `String ((function `Public_key_format_unspecified -> "PUBLIC_KEY_FORMAT_UNSPECIFIED" | `Pem -> "PEM" | `Der -> "DER" | `Nist_pqc -> "NIST_PQC" | `Xwing_raw_bytes -> "XWING_RAW_BYTES" | `Unrecognized value -> value) value)) field)) value.public_key_format;
       ])

and quorum_auth_of_yojson json : quorum_auth =
  let open Yojson.Safe.Util in
  {
    required_approver_count = member "requiredApproverCount" json |> to_option to_int;
    total_approver_count = member "totalApproverCount" json |> to_option to_int;
    two_factor_public_key_pems = member "twoFactorPublicKeyPems" json |> to_option (convert_each to_string);
  }

and yojson_of_quorum_auth (value : quorum_auth) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("requiredApproverCount", (fun value -> `Int value) field)) value.required_approver_count;
         Option.map (fun field -> ("totalApproverCount", (fun value -> `Int value) field)) value.total_approver_count;
         Option.map (fun field -> ("twoFactorPublicKeyPems", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.two_factor_public_key_pems;
       ])

and quorum_parameters_of_yojson json : quorum_parameters =
  let open Yojson.Safe.Util in
  {
    approved_two_factor_public_key_pems = member "approvedTwoFactorPublicKeyPems" json |> to_option (convert_each to_string);
    challenges = member "challenges" json |> to_option (convert_each challenge_of_yojson);
    required_approver_count = member "requiredApproverCount" json |> to_option to_int;
  }

and yojson_of_quorum_parameters (value : quorum_parameters) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("approvedTwoFactorPublicKeyPems", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.approved_two_factor_public_key_pems;
         Option.map (fun field -> ("challenges", (fun items -> `List (List.map yojson_of_challenge items)) field)) value.challenges;
         Option.map (fun field -> ("requiredApproverCount", (fun value -> `Int value) field)) value.required_approver_count;
       ])

and quorum_reply_of_yojson json : quorum_reply =
  let open Yojson.Safe.Util in
  {
    challenge_replies = member "challengeReplies" json |> to_option (convert_each challenge_reply_of_yojson);
  }

and yojson_of_quorum_reply (value : quorum_reply) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("challengeReplies", (fun items -> `List (List.map yojson_of_challenge_reply items)) field)) value.challenge_replies;
       ])

and raw_decrypt_request_of_yojson json : raw_decrypt_request =
  let open Yojson.Safe.Util in
  {
    additional_authenticated_data = member "additionalAuthenticatedData" json |> to_option to_string;
    additional_authenticated_data_crc32c = member "additionalAuthenticatedDataCrc32c" json |> to_option to_string;
    ciphertext = member "ciphertext" json |> to_option to_string;
    ciphertext_crc32c = member "ciphertextCrc32c" json |> to_option to_string;
    initialization_vector = member "initializationVector" json |> to_option to_string;
    initialization_vector_crc32c = member "initializationVectorCrc32c" json |> to_option to_string;
    tag_length = member "tagLength" json |> to_option to_int;
  }

and yojson_of_raw_decrypt_request (value : raw_decrypt_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("additionalAuthenticatedData", (fun value -> `String value) field)) value.additional_authenticated_data;
         Option.map (fun field -> ("additionalAuthenticatedDataCrc32c", (fun value -> `String value) field)) value.additional_authenticated_data_crc32c;
         Option.map (fun field -> ("ciphertext", (fun value -> `String value) field)) value.ciphertext;
         Option.map (fun field -> ("ciphertextCrc32c", (fun value -> `String value) field)) value.ciphertext_crc32c;
         Option.map (fun field -> ("initializationVector", (fun value -> `String value) field)) value.initialization_vector;
         Option.map (fun field -> ("initializationVectorCrc32c", (fun value -> `String value) field)) value.initialization_vector_crc32c;
         Option.map (fun field -> ("tagLength", (fun value -> `Int value) field)) value.tag_length;
       ])

and raw_decrypt_response_of_yojson json : raw_decrypt_response =
  let open Yojson.Safe.Util in
  {
    plaintext = member "plaintext" json |> to_option to_string;
    plaintext_crc32c = member "plaintextCrc32c" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    verified_additional_authenticated_data_crc32c = member "verifiedAdditionalAuthenticatedDataCrc32c" json |> to_option to_bool;
    verified_ciphertext_crc32c = member "verifiedCiphertextCrc32c" json |> to_option to_bool;
    verified_initialization_vector_crc32c = member "verifiedInitializationVectorCrc32c" json |> to_option to_bool;
  }

and yojson_of_raw_decrypt_response (value : raw_decrypt_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("plaintext", (fun value -> `String value) field)) value.plaintext;
         Option.map (fun field -> ("plaintextCrc32c", (fun value -> `String value) field)) value.plaintext_crc32c;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("verifiedAdditionalAuthenticatedDataCrc32c", (fun value -> `Bool value) field)) value.verified_additional_authenticated_data_crc32c;
         Option.map (fun field -> ("verifiedCiphertextCrc32c", (fun value -> `Bool value) field)) value.verified_ciphertext_crc32c;
         Option.map (fun field -> ("verifiedInitializationVectorCrc32c", (fun value -> `Bool value) field)) value.verified_initialization_vector_crc32c;
       ])

and raw_encrypt_request_of_yojson json : raw_encrypt_request =
  let open Yojson.Safe.Util in
  {
    additional_authenticated_data = member "additionalAuthenticatedData" json |> to_option to_string;
    additional_authenticated_data_crc32c = member "additionalAuthenticatedDataCrc32c" json |> to_option to_string;
    initialization_vector = member "initializationVector" json |> to_option to_string;
    initialization_vector_crc32c = member "initializationVectorCrc32c" json |> to_option to_string;
    plaintext = member "plaintext" json |> to_option to_string;
    plaintext_crc32c = member "plaintextCrc32c" json |> to_option to_string;
  }

and yojson_of_raw_encrypt_request (value : raw_encrypt_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("additionalAuthenticatedData", (fun value -> `String value) field)) value.additional_authenticated_data;
         Option.map (fun field -> ("additionalAuthenticatedDataCrc32c", (fun value -> `String value) field)) value.additional_authenticated_data_crc32c;
         Option.map (fun field -> ("initializationVector", (fun value -> `String value) field)) value.initialization_vector;
         Option.map (fun field -> ("initializationVectorCrc32c", (fun value -> `String value) field)) value.initialization_vector_crc32c;
         Option.map (fun field -> ("plaintext", (fun value -> `String value) field)) value.plaintext;
         Option.map (fun field -> ("plaintextCrc32c", (fun value -> `String value) field)) value.plaintext_crc32c;
       ])

and raw_encrypt_response_of_yojson json : raw_encrypt_response =
  let open Yojson.Safe.Util in
  {
    ciphertext = member "ciphertext" json |> to_option to_string;
    ciphertext_crc32c = member "ciphertextCrc32c" json |> to_option to_string;
    initialization_vector = member "initializationVector" json |> to_option to_string;
    initialization_vector_crc32c = member "initializationVectorCrc32c" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    protection_level = member "protectionLevel" json |> to_option (fun json -> match to_string json with "PROTECTION_LEVEL_UNSPECIFIED" -> `Protection_level_unspecified | "SOFTWARE" -> `Software | "HSM" -> `Hsm | "EXTERNAL" -> `External | "EXTERNAL_VPC" -> `External_vpc | "HSM_SINGLE_TENANT" -> `Hsm_single_tenant | value -> `Unrecognized value);
    tag_length = member "tagLength" json |> to_option to_int;
    verified_additional_authenticated_data_crc32c = member "verifiedAdditionalAuthenticatedDataCrc32c" json |> to_option to_bool;
    verified_initialization_vector_crc32c = member "verifiedInitializationVectorCrc32c" json |> to_option to_bool;
    verified_plaintext_crc32c = member "verifiedPlaintextCrc32c" json |> to_option to_bool;
  }

and yojson_of_raw_encrypt_response (value : raw_encrypt_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("ciphertext", (fun value -> `String value) field)) value.ciphertext;
         Option.map (fun field -> ("ciphertextCrc32c", (fun value -> `String value) field)) value.ciphertext_crc32c;
         Option.map (fun field -> ("initializationVector", (fun value -> `String value) field)) value.initialization_vector;
         Option.map (fun field -> ("initializationVectorCrc32c", (fun value -> `String value) field)) value.initialization_vector_crc32c;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("protectionLevel", (fun value -> `String ((function `Protection_level_unspecified -> "PROTECTION_LEVEL_UNSPECIFIED" | `Software -> "SOFTWARE" | `Hsm -> "HSM" | `External -> "EXTERNAL" | `External_vpc -> "EXTERNAL_VPC" | `Hsm_single_tenant -> "HSM_SINGLE_TENANT" | `Unrecognized value -> value) value)) field)) value.protection_level;
         Option.map (fun field -> ("tagLength", (fun value -> `Int value) field)) value.tag_length;
         Option.map (fun field -> ("verifiedAdditionalAuthenticatedDataCrc32c", (fun value -> `Bool value) field)) value.verified_additional_authenticated_data_crc32c;
         Option.map (fun field -> ("verifiedInitializationVectorCrc32c", (fun value -> `Bool value) field)) value.verified_initialization_vector_crc32c;
         Option.map (fun field -> ("verifiedPlaintextCrc32c", (fun value -> `Bool value) field)) value.verified_plaintext_crc32c;
       ])

and refresh_single_tenant_hsm_instance_of_yojson json : refresh_single_tenant_hsm_instance =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_refresh_single_tenant_hsm_instance (value : refresh_single_tenant_hsm_instance) : Yojson.Safe.t = Fun.id value

and register_two_factor_auth_keys_of_yojson json : register_two_factor_auth_keys =
  let open Yojson.Safe.Util in
  {
    required_approver_count = member "requiredApproverCount" json |> to_option to_int;
    two_factor_public_key_pems = member "twoFactorPublicKeyPems" json |> to_option (convert_each to_string);
  }

and yojson_of_register_two_factor_auth_keys (value : register_two_factor_auth_keys) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("requiredApproverCount", (fun value -> `Int value) field)) value.required_approver_count;
         Option.map (fun field -> ("twoFactorPublicKeyPems", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.two_factor_public_key_pems;
       ])

and remove_quorum_member_of_yojson json : remove_quorum_member =
  let open Yojson.Safe.Util in
  {
    two_factor_public_key_pem = member "twoFactorPublicKeyPem" json |> to_option to_string;
  }

and yojson_of_remove_quorum_member (value : remove_quorum_member) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("twoFactorPublicKeyPem", (fun value -> `String value) field)) value.two_factor_public_key_pem;
       ])

and required_action_quorum_parameters_of_yojson json : required_action_quorum_parameters =
  let open Yojson.Safe.Util in
  {
    approved_two_factor_public_key_pems = member "approvedTwoFactorPublicKeyPems" json |> to_option (convert_each to_string);
    quorum_challenges = member "quorumChallenges" json |> to_option (convert_each challenge_of_yojson);
    required_approver_count = member "requiredApproverCount" json |> to_option to_int;
    required_challenges = member "requiredChallenges" json |> to_option (convert_each challenge_of_yojson);
  }

and yojson_of_required_action_quorum_parameters (value : required_action_quorum_parameters) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("approvedTwoFactorPublicKeyPems", (fun items -> `List (List.map (fun value -> `String value) items)) field)) value.approved_two_factor_public_key_pems;
         Option.map (fun field -> ("quorumChallenges", (fun items -> `List (List.map yojson_of_challenge items)) field)) value.quorum_challenges;
         Option.map (fun field -> ("requiredApproverCount", (fun value -> `Int value) field)) value.required_approver_count;
         Option.map (fun field -> ("requiredChallenges", (fun items -> `List (List.map yojson_of_challenge items)) field)) value.required_challenges;
       ])

and required_action_quorum_reply_of_yojson json : required_action_quorum_reply =
  let open Yojson.Safe.Util in
  {
    quorum_challenge_replies = member "quorumChallengeReplies" json |> to_option (convert_each challenge_reply_of_yojson);
    required_challenge_replies = member "requiredChallengeReplies" json |> to_option (convert_each challenge_reply_of_yojson);
  }

and yojson_of_required_action_quorum_reply (value : required_action_quorum_reply) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("quorumChallengeReplies", (fun items -> `List (List.map yojson_of_challenge_reply items)) field)) value.quorum_challenge_replies;
         Option.map (fun field -> ("requiredChallengeReplies", (fun items -> `List (List.map yojson_of_challenge_reply items)) field)) value.required_challenge_replies;
       ])

and restore_crypto_key_version_request_of_yojson json : restore_crypto_key_version_request =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_restore_crypto_key_version_request (value : restore_crypto_key_version_request) : Yojson.Safe.t = Fun.id value

and retired_resource_of_yojson json : retired_resource =
  let open Yojson.Safe.Util in
  {
    delete_time = member "deleteTime" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    original_resource = member "originalResource" json |> to_option to_string;
    resource_type = member "resourceType" json |> to_option to_string;
  }

and yojson_of_retired_resource (value : retired_resource) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("deleteTime", (fun value -> `String value) field)) value.delete_time;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("originalResource", (fun value -> `String value) field)) value.original_resource;
         Option.map (fun field -> ("resourceType", (fun value -> `String value) field)) value.resource_type;
       ])

and service_resolver_of_yojson json : service_resolver =
  let open Yojson.Safe.Util in
  {
    endpoint_filter = member "endpointFilter" json |> to_option to_string;
    hostname = member "hostname" json |> to_option to_string;
    server_certificates = member "serverCertificates" json |> to_option (convert_each certificate_of_yojson);
    service_directory_service = member "serviceDirectoryService" json |> to_option to_string;
  }

and yojson_of_service_resolver (value : service_resolver) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("endpointFilter", (fun value -> `String value) field)) value.endpoint_filter;
         Option.map (fun field -> ("hostname", (fun value -> `String value) field)) value.hostname;
         Option.map (fun field -> ("serverCertificates", (fun items -> `List (List.map yojson_of_certificate items)) field)) value.server_certificates;
         Option.map (fun field -> ("serviceDirectoryService", (fun value -> `String value) field)) value.service_directory_service;
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

and show_effective_autokey_config_response_of_yojson json : show_effective_autokey_config_response =
  let open Yojson.Safe.Util in
  {
    key_project = member "keyProject" json |> to_option to_string;
    key_project_resolution_mode = member "keyProjectResolutionMode" json |> to_option (fun json -> match to_string json with "KEY_PROJECT_RESOLUTION_MODE_UNSPECIFIED" -> `Key_project_resolution_mode_unspecified | "DEDICATED_KEY_PROJECT" -> `Dedicated_key_project | "RESOURCE_PROJECT" -> `Resource_project | "DISABLED" -> `Disabled | value -> `Unrecognized value);
    source = member "source" json |> to_option source_of_yojson;
  }

and yojson_of_show_effective_autokey_config_response (value : show_effective_autokey_config_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("keyProject", (fun value -> `String value) field)) value.key_project;
         Option.map (fun field -> ("keyProjectResolutionMode", (fun value -> `String ((function `Key_project_resolution_mode_unspecified -> "KEY_PROJECT_RESOLUTION_MODE_UNSPECIFIED" | `Dedicated_key_project -> "DEDICATED_KEY_PROJECT" | `Resource_project -> "RESOURCE_PROJECT" | `Disabled -> "DISABLED" | `Unrecognized value -> value) value)) field)) value.key_project_resolution_mode;
         Option.map (fun field -> ("source", yojson_of_source field)) value.source;
       ])

and show_effective_key_access_justifications_enrollment_config_response_of_yojson json : show_effective_key_access_justifications_enrollment_config_response =
  let open Yojson.Safe.Util in
  {
    external_config = member "externalConfig" json |> to_option key_access_justifications_enrollment_config_of_yojson;
    hardware_config = member "hardwareConfig" json |> to_option key_access_justifications_enrollment_config_of_yojson;
    software_config = member "softwareConfig" json |> to_option key_access_justifications_enrollment_config_of_yojson;
  }

and yojson_of_show_effective_key_access_justifications_enrollment_config_response (value : show_effective_key_access_justifications_enrollment_config_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("externalConfig", yojson_of_key_access_justifications_enrollment_config field)) value.external_config;
         Option.map (fun field -> ("hardwareConfig", yojson_of_key_access_justifications_enrollment_config field)) value.hardware_config;
         Option.map (fun field -> ("softwareConfig", yojson_of_key_access_justifications_enrollment_config field)) value.software_config;
       ])

and show_effective_key_access_justifications_policy_config_response_of_yojson json : show_effective_key_access_justifications_policy_config_response =
  let open Yojson.Safe.Util in
  {
    effective_kaj_policy = member "effectiveKajPolicy" json |> to_option key_access_justifications_policy_config_of_yojson;
  }

and yojson_of_show_effective_key_access_justifications_policy_config_response (value : show_effective_key_access_justifications_policy_config_response) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("effectiveKajPolicy", yojson_of_key_access_justifications_policy_config field)) value.effective_kaj_policy;
       ])

and single_tenant_hsm_instance_of_yojson json : single_tenant_hsm_instance =
  let open Yojson.Safe.Util in
  {
    create_time = member "createTime" json |> to_option to_string;
    delete_time = member "deleteTime" json |> to_option to_string;
    disable_time = member "disableTime" json |> to_option to_string;
    key_portability_enabled = member "keyPortabilityEnabled" json |> to_option to_bool;
    name = member "name" json |> to_option to_string;
    quorum_auth = member "quorumAuth" json |> to_option quorum_auth_of_yojson;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "CREATING" -> `Creating | "PENDING_TWO_FACTOR_AUTH_REGISTRATION" -> `Pending_two_factor_auth_registration | "ACTIVE" -> `Active | "DISABLING" -> `Disabling | "DISABLED" -> `Disabled | "DELETING" -> `Deleting | "DELETED" -> `Deleted | "FAILED" -> `Failed | value -> `Unrecognized value);
    unrefreshed_duration_until_disable = member "unrefreshedDurationUntilDisable" json |> to_option to_string;
  }

and yojson_of_single_tenant_hsm_instance (value : single_tenant_hsm_instance) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("deleteTime", (fun value -> `String value) field)) value.delete_time;
         Option.map (fun field -> ("disableTime", (fun value -> `String value) field)) value.disable_time;
         Option.map (fun field -> ("keyPortabilityEnabled", (fun value -> `Bool value) field)) value.key_portability_enabled;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("quorumAuth", yojson_of_quorum_auth field)) value.quorum_auth;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Creating -> "CREATING" | `Pending_two_factor_auth_registration -> "PENDING_TWO_FACTOR_AUTH_REGISTRATION" | `Active -> "ACTIVE" | `Disabling -> "DISABLING" | `Disabled -> "DISABLED" | `Deleting -> "DELETING" | `Deleted -> "DELETED" | `Failed -> "FAILED" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("unrefreshedDurationUntilDisable", (fun value -> `String value) field)) value.unrefreshed_duration_until_disable;
       ])

and single_tenant_hsm_instance_proposal_of_yojson json : single_tenant_hsm_instance_proposal =
  let open Yojson.Safe.Util in
  {
    add_quorum_member = member "addQuorumMember" json |> to_option add_quorum_member_of_yojson;
    create_time = member "createTime" json |> to_option to_string;
    delete_single_tenant_hsm_instance = member "deleteSingleTenantHsmInstance" json |> to_option delete_single_tenant_hsm_instance_of_yojson;
    delete_time = member "deleteTime" json |> to_option to_string;
    disable_single_tenant_hsm_instance = member "disableSingleTenantHsmInstance" json |> to_option disable_single_tenant_hsm_instance_of_yojson;
    enable_single_tenant_hsm_instance = member "enableSingleTenantHsmInstance" json |> to_option enable_single_tenant_hsm_instance_of_yojson;
    expire_time = member "expireTime" json |> to_option to_string;
    failure_reason = member "failureReason" json |> to_option to_string;
    name = member "name" json |> to_option to_string;
    purge_time = member "purgeTime" json |> to_option to_string;
    quorum_parameters = member "quorumParameters" json |> to_option quorum_parameters_of_yojson;
    refresh_single_tenant_hsm_instance = member "refreshSingleTenantHsmInstance" json |> to_option refresh_single_tenant_hsm_instance_of_yojson;
    register_two_factor_auth_keys = member "registerTwoFactorAuthKeys" json |> to_option register_two_factor_auth_keys_of_yojson;
    remove_quorum_member = member "removeQuorumMember" json |> to_option remove_quorum_member_of_yojson;
    required_action_quorum_parameters = member "requiredActionQuorumParameters" json |> to_option required_action_quorum_parameters_of_yojson;
    state = member "state" json |> to_option (fun json -> match to_string json with "STATE_UNSPECIFIED" -> `State_unspecified | "CREATING" -> `Creating | "PENDING" -> `Pending | "APPROVED" -> `Approved | "RUNNING" -> `Running | "SUCCEEDED" -> `Succeeded | "FAILED" -> `Failed | "DELETED" -> `Deleted | value -> `Unrecognized value);
    ttl = member "ttl" json |> to_option to_string;
    upgrade_key_trust = member "upgradeKeyTrust" json |> to_option upgrade_key_trust_of_yojson;
  }

and yojson_of_single_tenant_hsm_instance_proposal (value : single_tenant_hsm_instance_proposal) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("addQuorumMember", yojson_of_add_quorum_member field)) value.add_quorum_member;
         Option.map (fun field -> ("createTime", (fun value -> `String value) field)) value.create_time;
         Option.map (fun field -> ("deleteSingleTenantHsmInstance", yojson_of_delete_single_tenant_hsm_instance field)) value.delete_single_tenant_hsm_instance;
         Option.map (fun field -> ("deleteTime", (fun value -> `String value) field)) value.delete_time;
         Option.map (fun field -> ("disableSingleTenantHsmInstance", yojson_of_disable_single_tenant_hsm_instance field)) value.disable_single_tenant_hsm_instance;
         Option.map (fun field -> ("enableSingleTenantHsmInstance", yojson_of_enable_single_tenant_hsm_instance field)) value.enable_single_tenant_hsm_instance;
         Option.map (fun field -> ("expireTime", (fun value -> `String value) field)) value.expire_time;
         Option.map (fun field -> ("failureReason", (fun value -> `String value) field)) value.failure_reason;
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("purgeTime", (fun value -> `String value) field)) value.purge_time;
         Option.map (fun field -> ("quorumParameters", yojson_of_quorum_parameters field)) value.quorum_parameters;
         Option.map (fun field -> ("refreshSingleTenantHsmInstance", yojson_of_refresh_single_tenant_hsm_instance field)) value.refresh_single_tenant_hsm_instance;
         Option.map (fun field -> ("registerTwoFactorAuthKeys", yojson_of_register_two_factor_auth_keys field)) value.register_two_factor_auth_keys;
         Option.map (fun field -> ("removeQuorumMember", yojson_of_remove_quorum_member field)) value.remove_quorum_member;
         Option.map (fun field -> ("requiredActionQuorumParameters", yojson_of_required_action_quorum_parameters field)) value.required_action_quorum_parameters;
         Option.map (fun field -> ("state", (fun value -> `String ((function `State_unspecified -> "STATE_UNSPECIFIED" | `Creating -> "CREATING" | `Pending -> "PENDING" | `Approved -> "APPROVED" | `Running -> "RUNNING" | `Succeeded -> "SUCCEEDED" | `Failed -> "FAILED" | `Deleted -> "DELETED" | `Unrecognized value -> value) value)) field)) value.state;
         Option.map (fun field -> ("ttl", (fun value -> `String value) field)) value.ttl;
         Option.map (fun field -> ("upgradeKeyTrust", yojson_of_upgrade_key_trust field)) value.upgrade_key_trust;
       ])

and source_of_yojson json : source =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
  }

and yojson_of_source (value : source) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
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

and update_crypto_key_primary_version_request_of_yojson json : update_crypto_key_primary_version_request =
  let open Yojson.Safe.Util in
  {
    crypto_key_version_id = member "cryptoKeyVersionId" json |> to_option to_string;
  }

and yojson_of_update_crypto_key_primary_version_request (value : update_crypto_key_primary_version_request) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("cryptoKeyVersionId", (fun value -> `String value) field)) value.crypto_key_version_id;
       ])

and upgrade_key_trust_of_yojson json : upgrade_key_trust =
  let open Yojson.Safe.Util in
  {
    name = member "name" json |> to_option to_string;
    two_factor_public_key_pem = member "twoFactorPublicKeyPem" json |> to_option to_string;
  }

and yojson_of_upgrade_key_trust (value : upgrade_key_trust) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("name", (fun value -> `String value) field)) value.name;
         Option.map (fun field -> ("twoFactorPublicKeyPem", (fun value -> `String value) field)) value.two_factor_public_key_pem;
       ])

and verify_connectivity_response_of_yojson json : verify_connectivity_response =
  let open Yojson.Safe.Util in
  Fun.id json

and yojson_of_verify_connectivity_response (value : verify_connectivity_response) : Yojson.Safe.t = Fun.id value

and wrapping_public_key_of_yojson json : wrapping_public_key =
  let open Yojson.Safe.Util in
  {
    data = member "data" json |> to_option to_string;
    pem = member "pem" json |> to_option to_string;
  }

and yojson_of_wrapping_public_key (value : wrapping_public_key) : Yojson.Safe.t =
  `Assoc
    (List.filter_map Fun.id
       [
         Option.map (fun field -> ("data", (fun value -> `String value) field)) value.data;
         Option.map (fun field -> ("pem", (fun value -> `String value) field)) value.pem;
       ])

let make_add_quorum_member ?two_factor_public_key_pem () : add_quorum_member = { two_factor_public_key_pem }

let make_approve_single_tenant_hsm_instance_proposal_request ?quorum_reply ?required_action_quorum_reply () : approve_single_tenant_hsm_instance_proposal_request = { quorum_reply; required_action_quorum_reply }

let make_asymmetric_decrypt_request ?ciphertext ?ciphertext_crc32c () : asymmetric_decrypt_request = { ciphertext; ciphertext_crc32c }

let make_asymmetric_decrypt_response ?plaintext ?plaintext_crc32c ?protection_level ?verified_ciphertext_crc32c () : asymmetric_decrypt_response = { plaintext; plaintext_crc32c; protection_level; verified_ciphertext_crc32c }

let make_asymmetric_sign_request ?data ?data_crc32c ?digest ?digest_crc32c () : asymmetric_sign_request = { data; data_crc32c; digest; digest_crc32c }

let make_asymmetric_sign_response ?name ?protection_level ?signature ?signature_crc32c ?verified_data_crc32c ?verified_digest_crc32c () : asymmetric_sign_response = { name; protection_level; signature; signature_crc32c; verified_data_crc32c; verified_digest_crc32c }

let make_audit_config ?audit_log_configs ?service () : audit_config = { audit_log_configs; service }

let make_audit_log_config ?exempted_members ?log_type () : audit_log_config = { exempted_members; log_type }

let make_autokey_config ?etag ?key_project ?key_project_resolution_mode ?name ?state () : autokey_config = { etag; key_project; key_project_resolution_mode; name; state }

let make_binding ?condition ?members ?role () : binding = { condition; members; role }

let make_certificate ?issuer ?not_after_time ?not_before_time ?parsed ?raw_der ?serial_number ?sha256_fingerprint ?subject ?subject_alternative_dns_names () : certificate = { issuer; not_after_time; not_before_time; parsed; raw_der; serial_number; sha256_fingerprint; subject; subject_alternative_dns_names }

let make_certificate_chains ?cavium_certs ?google_card_certs ?google_partition_certs () : certificate_chains = { cavium_certs; google_card_certs; google_partition_certs }

let make_challenge ?challenge ?public_key_pem () : challenge = { challenge; public_key_pem }

let make_challenge_reply ?public_key_pem ?signed_challenge () : challenge_reply = { public_key_pem; signed_challenge }

let make_checksummed_data ?crc32c_checksum ?data () : checksummed_data = { crc32c_checksum; data }

let make_crypto_key ?create_time ?crypto_key_backend ?destroy_scheduled_duration ?import_only ?key_access_justifications_policy ?labels ?name ?next_rotation_time ?primary ?purpose ?rotation_period ?version_template () : crypto_key = { create_time; crypto_key_backend; destroy_scheduled_duration; import_only; key_access_justifications_policy; labels; name; next_rotation_time; primary; purpose; rotation_period; version_template }

let make_crypto_key_version ?algorithm ?attestation ?create_time ?destroy_event_time ?destroy_time ?external_destruction_failure_reason ?external_protection_level_options ?generate_time ?generation_failure_reason ?hsm_trusted ?import_failure_reason ?import_job ?import_time ?name ?protection_level ?reimport_eligible ?state ?trusted_wrapping_enabled () : crypto_key_version = { algorithm; attestation; create_time; destroy_event_time; destroy_time; external_destruction_failure_reason; external_protection_level_options; generate_time; generation_failure_reason; hsm_trusted; import_failure_reason; import_job; import_time; name; protection_level; reimport_eligible; state; trusted_wrapping_enabled }

let make_crypto_key_version_template ?algorithm ?protection_level () : crypto_key_version_template = { algorithm; protection_level }

let make_decapsulate_request ?ciphertext ?ciphertext_crc32c () : decapsulate_request = { ciphertext; ciphertext_crc32c }

let make_decapsulate_response ?name ?protection_level ?shared_secret ?shared_secret_crc32c ?verified_ciphertext_crc32c () : decapsulate_response = { name; protection_level; shared_secret; shared_secret_crc32c; verified_ciphertext_crc32c }

let make_decrypt_request ?additional_authenticated_data ?additional_authenticated_data_crc32c ?ciphertext ?ciphertext_crc32c () : decrypt_request = { additional_authenticated_data; additional_authenticated_data_crc32c; ciphertext; ciphertext_crc32c }

let make_decrypt_response ?plaintext ?plaintext_crc32c ?protection_level ?used_primary () : decrypt_response = { plaintext; plaintext_crc32c; protection_level; used_primary }

let make_digest ?external_mu ?sha256 ?sha384 ?sha512 () : digest = { external_mu; sha256; sha384; sha512 }

let make_ekm_config ?default_ekm_connection ?name () : ekm_config = { default_ekm_connection; name }

let make_ekm_connection ?create_time ?crypto_space_path ?etag ?key_management_mode ?name ?service_resolvers () : ekm_connection = { create_time; crypto_space_path; etag; key_management_mode; name; service_resolvers }

let make_encrypt_request ?additional_authenticated_data ?additional_authenticated_data_crc32c ?plaintext ?plaintext_crc32c () : encrypt_request = { additional_authenticated_data; additional_authenticated_data_crc32c; plaintext; plaintext_crc32c }

let make_encrypt_response ?ciphertext ?ciphertext_crc32c ?name ?protection_level ?verified_additional_authenticated_data_crc32c ?verified_plaintext_crc32c () : encrypt_response = { ciphertext; ciphertext_crc32c; name; protection_level; verified_additional_authenticated_data_crc32c; verified_plaintext_crc32c }

let make_export_trusted_key_wrapped_crypto_key_version_response ?wrapped_key ?wrapped_key_crc32c () : export_trusted_key_wrapped_crypto_key_version_response = { wrapped_key; wrapped_key_crc32c }

let make_expr ?description ?expression ?location ?title () : expr = { description; expression; location; title }

let make_external_protection_level_options ?ekm_connection_backend_override ?ekm_connection_key_path ?external_key_uri () : external_protection_level_options = { ekm_connection_backend_override; ekm_connection_key_path; external_key_uri }

let make_generate_random_bytes_request ?length_bytes ?protection_level () : generate_random_bytes_request = { length_bytes; protection_level }

let make_generate_random_bytes_response ?data ?data_crc32c () : generate_random_bytes_response = { data; data_crc32c }

let make_import_crypto_key_version_request ?algorithm ?crypto_key_version ?import_job ?rsa_aes_wrapped_key ?trusted_wrapping_enabled ?wrapped_key () : import_crypto_key_version_request = { algorithm; crypto_key_version; import_job; rsa_aes_wrapped_key; trusted_wrapping_enabled; wrapped_key }

let make_import_job ?attestation ?create_time ?crypto_key_backend ?expire_event_time ?expire_time ?generate_time ?import_method ?name ?protection_level ?public_key ?public_key_format ?state () : import_job = { attestation; create_time; crypto_key_backend; expire_event_time; expire_time; generate_time; import_method; name; protection_level; public_key; public_key_format; state }

let make_import_trusted_key_wrapped_crypto_key_version_request ?algorithm ?crypto_key_version ?importing_key ?wrapped_key () : import_trusted_key_wrapped_crypto_key_version_request = { algorithm; crypto_key_version; importing_key; wrapped_key }

let make_key_access_justifications_enrollment_config ?audit_logging ?policy_enforcement () : key_access_justifications_enrollment_config = { audit_logging; policy_enforcement }

let make_key_access_justifications_policy ?allowed_access_reasons () : key_access_justifications_policy = { allowed_access_reasons }

let make_key_access_justifications_policy_config ?default_key_access_justification_policy ?default_policy_available ?name () : key_access_justifications_policy_config = { default_key_access_justification_policy; default_policy_available; name }

let make_key_handle ?kms_key ?name ?resource_type_selector () : key_handle = { kms_key; name; resource_type_selector }

let make_key_operation_attestation ?cert_chains ?content ?format () : key_operation_attestation = { cert_chains; content; format }

let make_key_ring ?create_time ?name () : key_ring = { create_time; name }

let make_list_crypto_key_versions_response ?crypto_key_versions ?next_page_token ?total_size () : list_crypto_key_versions_response = { crypto_key_versions; next_page_token; total_size }

let make_list_crypto_keys_response ?crypto_keys ?next_page_token ?total_size () : list_crypto_keys_response = { crypto_keys; next_page_token; total_size }

let make_list_ekm_connections_response ?ekm_connections ?next_page_token ?total_size () : list_ekm_connections_response = { ekm_connections; next_page_token; total_size }

let make_list_import_jobs_response ?import_jobs ?next_page_token ?total_size () : list_import_jobs_response = { import_jobs; next_page_token; total_size }

let make_list_key_handles_response ?key_handles ?next_page_token () : list_key_handles_response = { key_handles; next_page_token }

let make_list_key_rings_response ?key_rings ?next_page_token ?total_size () : list_key_rings_response = { key_rings; next_page_token; total_size }

let make_list_locations_response ?locations ?next_page_token () : list_locations_response = { locations; next_page_token }

let make_list_retired_resources_response ?next_page_token ?retired_resources ?total_size () : list_retired_resources_response = { next_page_token; retired_resources; total_size }

let make_list_single_tenant_hsm_instance_proposals_response ?next_page_token ?single_tenant_hsm_instance_proposals ?total_size () : list_single_tenant_hsm_instance_proposals_response = { next_page_token; single_tenant_hsm_instance_proposals; total_size }

let make_list_single_tenant_hsm_instances_response ?next_page_token ?single_tenant_hsm_instances ?total_size () : list_single_tenant_hsm_instances_response = { next_page_token; single_tenant_hsm_instances; total_size }

let make_location ?display_name ?labels ?location_id ?metadata ?name () : location = { display_name; labels; location_id; metadata; name }

let make_location_metadata ?ekm_available ?hsm_available ?hsm_single_tenant_available () : location_metadata = { ekm_available; hsm_available; hsm_single_tenant_available }

let make_mac_sign_request ?data ?data_crc32c () : mac_sign_request = { data; data_crc32c }

let make_mac_sign_response ?mac ?mac_crc32c ?name ?protection_level ?verified_data_crc32c () : mac_sign_response = { mac; mac_crc32c; name; protection_level; verified_data_crc32c }

let make_mac_verify_request ?data ?data_crc32c ?mac ?mac_crc32c () : mac_verify_request = { data; data_crc32c; mac; mac_crc32c }

let make_mac_verify_response ?name ?protection_level ?success ?verified_data_crc32c ?verified_mac_crc32c ?verified_success_integrity () : mac_verify_response = { name; protection_level; success; verified_data_crc32c; verified_mac_crc32c; verified_success_integrity }

let make_operation ?done_ ?error ?metadata ?name ?response () : operation = { done_; error; metadata; name; response }

let make_policy ?audit_configs ?bindings ?etag ?version () : policy = { audit_configs; bindings; etag; version }

let make_public_key ?algorithm ?name ?pem ?pem_crc32c ?protection_level ?public_key ?public_key_format () : public_key = { algorithm; name; pem; pem_crc32c; protection_level; public_key; public_key_format }

let make_quorum_auth ?required_approver_count ?total_approver_count ?two_factor_public_key_pems () : quorum_auth = { required_approver_count; total_approver_count; two_factor_public_key_pems }

let make_quorum_parameters ?approved_two_factor_public_key_pems ?challenges ?required_approver_count () : quorum_parameters = { approved_two_factor_public_key_pems; challenges; required_approver_count }

let make_quorum_reply ?challenge_replies () : quorum_reply = { challenge_replies }

let make_raw_decrypt_request ?additional_authenticated_data ?additional_authenticated_data_crc32c ?ciphertext ?ciphertext_crc32c ?initialization_vector ?initialization_vector_crc32c ?tag_length () : raw_decrypt_request = { additional_authenticated_data; additional_authenticated_data_crc32c; ciphertext; ciphertext_crc32c; initialization_vector; initialization_vector_crc32c; tag_length }

let make_raw_decrypt_response ?plaintext ?plaintext_crc32c ?protection_level ?verified_additional_authenticated_data_crc32c ?verified_ciphertext_crc32c ?verified_initialization_vector_crc32c () : raw_decrypt_response = { plaintext; plaintext_crc32c; protection_level; verified_additional_authenticated_data_crc32c; verified_ciphertext_crc32c; verified_initialization_vector_crc32c }

let make_raw_encrypt_request ?additional_authenticated_data ?additional_authenticated_data_crc32c ?initialization_vector ?initialization_vector_crc32c ?plaintext ?plaintext_crc32c () : raw_encrypt_request = { additional_authenticated_data; additional_authenticated_data_crc32c; initialization_vector; initialization_vector_crc32c; plaintext; plaintext_crc32c }

let make_raw_encrypt_response ?ciphertext ?ciphertext_crc32c ?initialization_vector ?initialization_vector_crc32c ?name ?protection_level ?tag_length ?verified_additional_authenticated_data_crc32c ?verified_initialization_vector_crc32c ?verified_plaintext_crc32c () : raw_encrypt_response = { ciphertext; ciphertext_crc32c; initialization_vector; initialization_vector_crc32c; name; protection_level; tag_length; verified_additional_authenticated_data_crc32c; verified_initialization_vector_crc32c; verified_plaintext_crc32c }

let make_register_two_factor_auth_keys ?required_approver_count ?two_factor_public_key_pems () : register_two_factor_auth_keys = { required_approver_count; two_factor_public_key_pems }

let make_remove_quorum_member ?two_factor_public_key_pem () : remove_quorum_member = { two_factor_public_key_pem }

let make_required_action_quorum_parameters ?approved_two_factor_public_key_pems ?quorum_challenges ?required_approver_count ?required_challenges () : required_action_quorum_parameters = { approved_two_factor_public_key_pems; quorum_challenges; required_approver_count; required_challenges }

let make_required_action_quorum_reply ?quorum_challenge_replies ?required_challenge_replies () : required_action_quorum_reply = { quorum_challenge_replies; required_challenge_replies }

let make_retired_resource ?delete_time ?name ?original_resource ?resource_type () : retired_resource = { delete_time; name; original_resource; resource_type }

let make_service_resolver ?endpoint_filter ?hostname ?server_certificates ?service_directory_service () : service_resolver = { endpoint_filter; hostname; server_certificates; service_directory_service }

let make_set_iam_policy_request ?policy ?update_mask () : set_iam_policy_request = { policy; update_mask }

let make_show_effective_autokey_config_response ?key_project ?key_project_resolution_mode ?source () : show_effective_autokey_config_response = { key_project; key_project_resolution_mode; source }

let make_show_effective_key_access_justifications_enrollment_config_response ?external_config ?hardware_config ?software_config () : show_effective_key_access_justifications_enrollment_config_response = { external_config; hardware_config; software_config }

let make_show_effective_key_access_justifications_policy_config_response ?effective_kaj_policy () : show_effective_key_access_justifications_policy_config_response = { effective_kaj_policy }

let make_single_tenant_hsm_instance ?create_time ?delete_time ?disable_time ?key_portability_enabled ?name ?quorum_auth ?state ?unrefreshed_duration_until_disable () : single_tenant_hsm_instance = { create_time; delete_time; disable_time; key_portability_enabled; name; quorum_auth; state; unrefreshed_duration_until_disable }

let make_single_tenant_hsm_instance_proposal ?add_quorum_member ?create_time ?delete_single_tenant_hsm_instance ?delete_time ?disable_single_tenant_hsm_instance ?enable_single_tenant_hsm_instance ?expire_time ?failure_reason ?name ?purge_time ?quorum_parameters ?refresh_single_tenant_hsm_instance ?register_two_factor_auth_keys ?remove_quorum_member ?required_action_quorum_parameters ?state ?ttl ?upgrade_key_trust () : single_tenant_hsm_instance_proposal = { add_quorum_member; create_time; delete_single_tenant_hsm_instance; delete_time; disable_single_tenant_hsm_instance; enable_single_tenant_hsm_instance; expire_time; failure_reason; name; purge_time; quorum_parameters; refresh_single_tenant_hsm_instance; register_two_factor_auth_keys; remove_quorum_member; required_action_quorum_parameters; state; ttl; upgrade_key_trust }

let make_source ?name () : source = { name }

let make_status ?code ?details ?message () : status = { code; details; message }

let make_test_iam_permissions_request ?permissions () : test_iam_permissions_request = { permissions }

let make_test_iam_permissions_response ?permissions () : test_iam_permissions_response = { permissions }

let make_update_crypto_key_primary_version_request ?crypto_key_version_id () : update_crypto_key_primary_version_request = { crypto_key_version_id }

let make_upgrade_key_trust ?name ?two_factor_public_key_pem () : upgrade_key_trust = { name; two_factor_public_key_pem }

let make_wrapping_public_key ?data ?pem () : wrapping_public_key = { data; pem }

let base_url = "https://cloudkms.googleapis.com/"
let batch_endpoint = Uri.of_string "https://cloudkms.googleapis.com/batch"
let batch ~access_token calls = Google_api.Batch.execute ~access_token ~endpoint:batch_endpoint calls

module Folders = struct
  let get_autokey_config ~name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json autokey_config_of_yojson)

  let get_kaj_policy_config ~name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json key_access_justifications_policy_config_of_yojson)

  let show_effective_autokey_config ~parent () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ ":showEffectiveAutokeyConfig"))
      (Google_api_runtime.Call.json show_effective_autokey_config_response_of_yojson)

  let update_autokey_config ~name ~body ?update_mask () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
              ]))
      ~body:(yojson_of_autokey_config body)
      (Google_api_runtime.Call.json autokey_config_of_yojson)

  let update_kaj_policy_config ~name ~body ?update_mask () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
              ]))
      ~body:(yojson_of_key_access_justifications_policy_config body)
      (Google_api_runtime.Call.json key_access_justifications_policy_config_of_yojson)
end

module Organizations = struct
  let get_kaj_policy_config ~name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json key_access_justifications_policy_config_of_yojson)

  let update_kaj_policy_config ~name ~body ?update_mask () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
              ]))
      ~body:(yojson_of_key_access_justifications_policy_config body)
      (Google_api_runtime.Call.json key_access_justifications_policy_config_of_yojson)
end

module Projects = struct
  let get_autokey_config ~name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json autokey_config_of_yojson)

  let get_kaj_policy_config ~name () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
      (Google_api_runtime.Call.json key_access_justifications_policy_config_of_yojson)

  let show_effective_autokey_config ~parent () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ ":showEffectiveAutokeyConfig"))
      (Google_api_runtime.Call.json show_effective_autokey_config_response_of_yojson)

  let show_effective_key_access_justifications_enrollment_config ~project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project ^ ":showEffectiveKeyAccessJustificationsEnrollmentConfig"))
      (Google_api_runtime.Call.json show_effective_key_access_justifications_enrollment_config_response_of_yojson)

  let show_effective_key_access_justifications_policy_config ~project () =
    Google_api_runtime.Call.make ~meth:`GET
      ~uri:
        (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) project ^ ":showEffectiveKeyAccessJustificationsPolicyConfig"))
      (Google_api_runtime.Call.json show_effective_key_access_justifications_policy_config_response_of_yojson)

  let update_autokey_config ~name ~body ?update_mask () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
              ]))
      ~body:(yojson_of_autokey_config body)
      (Google_api_runtime.Call.json autokey_config_of_yojson)

  let update_kaj_policy_config ~name ~body ?update_mask () =
    Google_api_runtime.Call.make ~meth:`PATCH
      ~uri:
        (Uri.add_query_params
           (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
           (List.concat
              [
                Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
              ]))
      ~body:(yojson_of_key_access_justifications_policy_config body)
      (Google_api_runtime.Call.json key_access_justifications_policy_config_of_yojson)

  module Locations = struct
    let generate_random_bytes ~location ~body () =
      Google_api_runtime.Call.make ~meth:`POST
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) location ^ ":generateRandomBytes"))
        ~body:(yojson_of_generate_random_bytes_request body)
        (Google_api_runtime.Call.json generate_random_bytes_response_of_yojson)

    let get ~name () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        (Google_api_runtime.Call.json location_of_yojson)

    let get_ekm_config ~name () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
        (Google_api_runtime.Call.json ekm_config_of_yojson)

    let list ~name ?extra_location_types ?filter ?page_size ?page_token () =
      Google_api_runtime.Call.make ~meth:`GET
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ "/locations"))
             (List.concat
                [
                  Google_api_runtime.Query.repeated "extraLocationTypes" Fun.id extra_location_types;
                  Google_api_runtime.Query.optional "filter" Fun.id filter;
                  Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                  Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                ]))
        (Google_api_runtime.Call.json list_locations_response_of_yojson)

    let update_ekm_config ~name ~body ?update_mask () =
      Google_api_runtime.Call.make ~meth:`PATCH
        ~uri:
          (Uri.add_query_params
             (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
             (List.concat
                [
                  Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
                ]))
        ~body:(yojson_of_ekm_config body)
        (Google_api_runtime.Call.json ekm_config_of_yojson)

    module Ekm_config = struct
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

    module Ekm_connections = struct
      let create ~parent ~body ?ekm_connection_id () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/ekmConnections"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "ekmConnectionId" Fun.id ekm_connection_id;
                  ]))
          ~body:(yojson_of_ekm_connection body)
          (Google_api_runtime.Call.json ekm_connection_of_yojson)

      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json ekm_connection_of_yojson)

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

      let list ~parent ?filter ?order_by ?page_size ?page_token () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/ekmConnections"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "filter" Fun.id filter;
                    Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  ]))
          (Google_api_runtime.Call.json list_ekm_connections_response_of_yojson)

      let patch ~name ~body ?update_mask () =
        Google_api_runtime.Call.make ~meth:`PATCH
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
                  ]))
          ~body:(yojson_of_ekm_connection body)
          (Google_api_runtime.Call.json ekm_connection_of_yojson)

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

      let verify_connectivity ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":verifyConnectivity"))
          (Google_api_runtime.Call.json verify_connectivity_response_of_yojson)
    end

    module Key_handles = struct
      let create ~parent ~body ?key_handle_id () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/keyHandles"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "keyHandleId" Fun.id key_handle_id;
                  ]))
          ~body:(yojson_of_key_handle body)
          (Google_api_runtime.Call.json operation_of_yojson)

      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json key_handle_of_yojson)

      let list ~parent ?filter ?page_size ?page_token () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/keyHandles"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "filter" Fun.id filter;
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  ]))
          (Google_api_runtime.Call.json list_key_handles_response_of_yojson)
    end

    module Key_rings = struct
      let create ~parent ~body ?key_ring_id () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/keyRings"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "keyRingId" Fun.id key_ring_id;
                  ]))
          ~body:(yojson_of_key_ring body)
          (Google_api_runtime.Call.json key_ring_of_yojson)

      let delete ~name () =
        Google_api_runtime.Call.make ~meth:`DELETE
          ~uri:
            (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json operation_of_yojson)

      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json key_ring_of_yojson)

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

      let list ~parent ?filter ?order_by ?page_size ?page_token () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/keyRings"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "filter" Fun.id filter;
                    Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  ]))
          (Google_api_runtime.Call.json list_key_rings_response_of_yojson)

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

      module Crypto_keys = struct
        let create ~parent ~body ?crypto_key_id ?skip_initial_version_creation ?trusted_wrapping_enabled () =
          Google_api_runtime.Call.make ~meth:`POST
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/cryptoKeys"))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "cryptoKeyId" Fun.id crypto_key_id;
                      Google_api_runtime.Query.optional "skipInitialVersionCreation" string_of_bool skip_initial_version_creation;
                      Google_api_runtime.Query.optional "trustedWrappingEnabled" string_of_bool trusted_wrapping_enabled;
                    ]))
            ~body:(yojson_of_crypto_key body)
            (Google_api_runtime.Call.json crypto_key_of_yojson)

        let decrypt ~name ~body () =
          Google_api_runtime.Call.make ~meth:`POST
            ~uri:
              (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":decrypt"))
            ~body:(yojson_of_decrypt_request body)
            (Google_api_runtime.Call.json decrypt_response_of_yojson)

        let delete ~name () =
          Google_api_runtime.Call.make ~meth:`DELETE
            ~uri:
              (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
            (Google_api_runtime.Call.json operation_of_yojson)

        let encrypt ~name ~body () =
          Google_api_runtime.Call.make ~meth:`POST
            ~uri:
              (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":encrypt"))
            ~body:(yojson_of_encrypt_request body)
            (Google_api_runtime.Call.json encrypt_response_of_yojson)

        let get ~name () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
            (Google_api_runtime.Call.json crypto_key_of_yojson)

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

        let list ~parent ?filter ?order_by ?page_size ?page_token ?version_view () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/cryptoKeys"))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "filter" Fun.id filter;
                      Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                      Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                      Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                      Google_api_runtime.Query.optional "versionView" (function `Crypto_key_version_view_unspecified -> "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED" | `Full -> "FULL" | `Unrecognized value -> value) version_view;
                    ]))
            (Google_api_runtime.Call.json list_crypto_keys_response_of_yojson)

        let patch ~name ~body ?update_mask () =
          Google_api_runtime.Call.make ~meth:`PATCH
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
                    ]))
            ~body:(yojson_of_crypto_key body)
            (Google_api_runtime.Call.json crypto_key_of_yojson)

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

        let update_primary_version ~name ~body () =
          Google_api_runtime.Call.make ~meth:`POST
            ~uri:
              (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":updatePrimaryVersion"))
            ~body:(yojson_of_update_crypto_key_primary_version_request body)
            (Google_api_runtime.Call.json crypto_key_of_yojson)

        module Crypto_key_versions = struct
          let asymmetric_decrypt ~name ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":asymmetricDecrypt"))
              ~body:(yojson_of_asymmetric_decrypt_request body)
              (Google_api_runtime.Call.json asymmetric_decrypt_response_of_yojson)

          let asymmetric_sign ~name ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":asymmetricSign"))
              ~body:(yojson_of_asymmetric_sign_request body)
              (Google_api_runtime.Call.json asymmetric_sign_response_of_yojson)

          let create ~parent ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/cryptoKeyVersions"))
              ~body:(yojson_of_crypto_key_version body)
              (Google_api_runtime.Call.json crypto_key_version_of_yojson)

          let decapsulate ~name ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":decapsulate"))
              ~body:(yojson_of_decapsulate_request body)
              (Google_api_runtime.Call.json decapsulate_response_of_yojson)

          let delete ~name () =
            Google_api_runtime.Call.make ~meth:`DELETE
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
              (Google_api_runtime.Call.json operation_of_yojson)

          let destroy ~name ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":destroy"))
              ~body:(yojson_of_destroy_crypto_key_version_request body)
              (Google_api_runtime.Call.json crypto_key_version_of_yojson)

          let export_trusted_key_wrapped_crypto_key_version ~name ?wrapping_key () =
            Google_api_runtime.Call.make ~meth:`GET
              ~uri:
                (Uri.add_query_params
                   (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":exportTrustedKeyWrappedCryptoKeyVersion"))
                   (List.concat
                      [
                        Google_api_runtime.Query.optional "wrappingKey" Fun.id wrapping_key;
                      ]))
              (Google_api_runtime.Call.json export_trusted_key_wrapped_crypto_key_version_response_of_yojson)

          let get ~name () =
            Google_api_runtime.Call.make ~meth:`GET
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
              (Google_api_runtime.Call.json crypto_key_version_of_yojson)

          let get_public_key ~name ?public_key_format () =
            Google_api_runtime.Call.make ~meth:`GET
              ~uri:
                (Uri.add_query_params
                   (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ "/publicKey"))
                   (List.concat
                      [
                        Google_api_runtime.Query.optional "publicKeyFormat" (function `Public_key_format_unspecified -> "PUBLIC_KEY_FORMAT_UNSPECIFIED" | `Pem -> "PEM" | `Der -> "DER" | `Nist_pqc -> "NIST_PQC" | `Xwing_raw_bytes -> "XWING_RAW_BYTES" | `Unrecognized value -> value) public_key_format;
                      ]))
              (Google_api_runtime.Call.json public_key_of_yojson)

          let import ~parent ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/cryptoKeyVersions:import"))
              ~body:(yojson_of_import_crypto_key_version_request body)
              (Google_api_runtime.Call.json crypto_key_version_of_yojson)

          let import_trusted_key_wrapped_crypto_key_version ~parent ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/cryptoKeyVersions:importTrustedKeyWrappedCryptoKeyVersion"))
              ~body:(yojson_of_import_trusted_key_wrapped_crypto_key_version_request body)
              (Google_api_runtime.Call.json crypto_key_version_of_yojson)

          let list ~parent ?filter ?order_by ?page_size ?page_token ?view () =
            Google_api_runtime.Call.make ~meth:`GET
              ~uri:
                (Uri.add_query_params
                   (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/cryptoKeyVersions"))
                   (List.concat
                      [
                        Google_api_runtime.Query.optional "filter" Fun.id filter;
                        Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                        Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                        Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                        Google_api_runtime.Query.optional "view" (function `Crypto_key_version_view_unspecified -> "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED" | `Full -> "FULL" | `Unrecognized value -> value) view;
                      ]))
              (Google_api_runtime.Call.json list_crypto_key_versions_response_of_yojson)

          let mac_sign ~name ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":macSign"))
              ~body:(yojson_of_mac_sign_request body)
              (Google_api_runtime.Call.json mac_sign_response_of_yojson)

          let mac_verify ~name ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":macVerify"))
              ~body:(yojson_of_mac_verify_request body)
              (Google_api_runtime.Call.json mac_verify_response_of_yojson)

          let patch ~name ~body ?update_mask () =
            Google_api_runtime.Call.make ~meth:`PATCH
              ~uri:
                (Uri.add_query_params
                   (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
                   (List.concat
                      [
                        Google_api_runtime.Query.optional "updateMask" Fun.id update_mask;
                      ]))
              ~body:(yojson_of_crypto_key_version body)
              (Google_api_runtime.Call.json crypto_key_version_of_yojson)

          let raw_decrypt ~name ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":rawDecrypt"))
              ~body:(yojson_of_raw_decrypt_request body)
              (Google_api_runtime.Call.json raw_decrypt_response_of_yojson)

          let raw_encrypt ~name ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":rawEncrypt"))
              ~body:(yojson_of_raw_encrypt_request body)
              (Google_api_runtime.Call.json raw_encrypt_response_of_yojson)

          let restore ~name ~body () =
            Google_api_runtime.Call.make ~meth:`POST
              ~uri:
                (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":restore"))
              ~body:(yojson_of_restore_crypto_key_version_request body)
              (Google_api_runtime.Call.json crypto_key_version_of_yojson)
        end
      end

      module Import_jobs = struct
        let create ~parent ~body ?import_job_id () =
          Google_api_runtime.Call.make ~meth:`POST
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/importJobs"))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "importJobId" Fun.id import_job_id;
                    ]))
            ~body:(yojson_of_import_job body)
            (Google_api_runtime.Call.json import_job_of_yojson)

        let get ~name ?public_key_format () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "publicKeyFormat" (function `Public_key_format_unspecified -> "PUBLIC_KEY_FORMAT_UNSPECIFIED" | `Pem -> "PEM" | `Der -> "DER" | `Nist_pqc -> "NIST_PQC" | `Xwing_raw_bytes -> "XWING_RAW_BYTES" | `Unrecognized value -> value) public_key_format;
                    ]))
            (Google_api_runtime.Call.json import_job_of_yojson)

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

        let list ~parent ?filter ?order_by ?page_size ?page_token () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/importJobs"))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "filter" Fun.id filter;
                      Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                      Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                      Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                    ]))
            (Google_api_runtime.Call.json list_import_jobs_response_of_yojson)

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
    end

    module Operations = struct
      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json operation_of_yojson)
    end

    module Retired_resources = struct
      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json retired_resource_of_yojson)

      let list ~parent ?page_size ?page_token () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/retiredResources"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                  ]))
          (Google_api_runtime.Call.json list_retired_resources_response_of_yojson)
    end

    module Single_tenant_hsm_instances = struct
      let create ~parent ~body ?single_tenant_hsm_instance_id () =
        Google_api_runtime.Call.make ~meth:`POST
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/singleTenantHsmInstances"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "singleTenantHsmInstanceId" Fun.id single_tenant_hsm_instance_id;
                  ]))
          ~body:(yojson_of_single_tenant_hsm_instance body)
          (Google_api_runtime.Call.json operation_of_yojson)

      let get ~name () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
          (Google_api_runtime.Call.json single_tenant_hsm_instance_of_yojson)

      let list ~parent ?filter ?order_by ?page_size ?page_token ?show_deleted () =
        Google_api_runtime.Call.make ~meth:`GET
          ~uri:
            (Uri.add_query_params
               (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/singleTenantHsmInstances"))
               (List.concat
                  [
                    Google_api_runtime.Query.optional "filter" Fun.id filter;
                    Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                    Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                    Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                    Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                  ]))
          (Google_api_runtime.Call.json list_single_tenant_hsm_instances_response_of_yojson)

      module Proposals = struct
        let approve ~name ~body () =
          Google_api_runtime.Call.make ~meth:`POST
            ~uri:
              (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":approve"))
            ~body:(yojson_of_approve_single_tenant_hsm_instance_proposal_request body)
            (Google_api_runtime.Call.json approve_single_tenant_hsm_instance_proposal_response_of_yojson)

        let create ~parent ~body ?single_tenant_hsm_instance_proposal_id () =
          Google_api_runtime.Call.make ~meth:`POST
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/proposals"))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "singleTenantHsmInstanceProposalId" Fun.id single_tenant_hsm_instance_proposal_id;
                    ]))
            ~body:(yojson_of_single_tenant_hsm_instance_proposal body)
            (Google_api_runtime.Call.json operation_of_yojson)

        let delete ~name () =
          Google_api_runtime.Call.make ~meth:`DELETE
            ~uri:
              (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
            (Google_api_runtime.Call.json empty_of_yojson)

        let execute ~name ~body () =
          Google_api_runtime.Call.make ~meth:`POST
            ~uri:
              (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name ^ ":execute"))
            ~body:(yojson_of_execute_single_tenant_hsm_instance_proposal_request body)
            (Google_api_runtime.Call.json operation_of_yojson)

        let get ~name () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) name))
            (Google_api_runtime.Call.json single_tenant_hsm_instance_proposal_of_yojson)

        let list ~parent ?filter ?order_by ?page_size ?page_token ?show_deleted () =
          Google_api_runtime.Call.make ~meth:`GET
            ~uri:
              (Uri.add_query_params
                 (Uri.of_string (base_url ^ "v1/" ^ Uri.pct_encode ~component:(`Custom (`Path, "/", "")) parent ^ "/proposals"))
                 (List.concat
                    [
                      Google_api_runtime.Query.optional "filter" Fun.id filter;
                      Google_api_runtime.Query.optional "orderBy" Fun.id order_by;
                      Google_api_runtime.Query.optional "pageSize" string_of_int page_size;
                      Google_api_runtime.Query.optional "pageToken" Fun.id page_token;
                      Google_api_runtime.Query.optional "showDeleted" string_of_bool show_deleted;
                    ]))
            (Google_api_runtime.Call.json list_single_tenant_hsm_instance_proposals_response_of_yojson)
      end
    end
  end
end
