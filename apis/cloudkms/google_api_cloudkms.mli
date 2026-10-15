(* Generated from the Discovery document of cloudkms v1 (revision 20261010). Do not edit. *)

(** Cloud Key Management Service (KMS) API (cloudkms v1, revision 20261010).

    Manages keys and performs cryptographic operations in a central cloud service, for direct use by other cloud resources and applications.

    {{:https://cloud.google.com/kms/}Documentation} *)

(** Add a quorum member to the SingleTenantHsmInstance. This will increase the total_approver_count by 1. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation. *)
type add_quorum_member = {
  two_factor_public_key_pem : string option;  (** Required. The public key associated with the 2FA key for the new quorum member to add. Public keys must be associated with RSA 2048 keys. *)
}

(** Request message for HsmManagement.ApproveSingleTenantHsmInstanceProposal. *)
and approve_single_tenant_hsm_instance_proposal_request = {
  quorum_reply : quorum_reply option;  (** Required. The reply to QuorumParameters for approving the proposal. *)
  required_action_quorum_reply : required_action_quorum_reply option;  (** Required. The reply to RequiredActionQuorumParameters for approving the proposal. *)
}

(** Response message for HsmManagement.ApproveSingleTenantHsmInstanceProposal. *)
and approve_single_tenant_hsm_instance_proposal_response = Yojson.Safe.t

(** Request message for KeyManagementService.AsymmetricDecrypt. *)
and asymmetric_decrypt_request = {
  ciphertext : string option;  (** Required. The data encrypted with the named CryptoKeyVersion's public key using OAEP. *)
  ciphertext_crc32c : string option;  (** Optional. An optional CRC32C checksum of the AsymmetricDecryptRequest.ciphertext. If specified, KeyManagementService will verify the integrity of the received AsymmetricDecryptRequest.ciphertext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(AsymmetricDecryptRequest.ciphertext) is equal to AsymmetricDecryptRequest.ciphertext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
}

(** Response message for KeyManagementService.AsymmetricDecrypt. *)
and asymmetric_decrypt_response = {
  plaintext : string option;  (** The decrypted data originally encrypted with the matching public key. *)
  plaintext_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned AsymmetricDecryptResponse.plaintext. An integrity check of AsymmetricDecryptResponse.plaintext can be performed by computing the CRC32C checksum of AsymmetricDecryptResponse.plaintext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** The ProtectionLevel of the CryptoKeyVersion used in decryption. *)
  verified_ciphertext_crc32c : bool option;  (** Integrity verification field. A flag indicating whether AsymmetricDecryptRequest.ciphertext_crc32c was received by KeyManagementService and used for the integrity verification of the ciphertext. A false value of this field indicates either that AsymmetricDecryptRequest.ciphertext_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set AsymmetricDecryptRequest.ciphertext_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
}

(** Request message for KeyManagementService.AsymmetricSign. *)
and asymmetric_sign_request = {
  data : string option;  (** Optional. The data to sign. It can't be supplied if AsymmetricSignRequest.digest is supplied. *)
  data_crc32c : string option;  (** Optional. An optional CRC32C checksum of the AsymmetricSignRequest.data. If specified, KeyManagementService will verify the integrity of the received AsymmetricSignRequest.data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(AsymmetricSignRequest.data) is equal to AsymmetricSignRequest.data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  digest : digest option;  (** Optional. The digest of the data to sign. The digest must be produced with the same digest algorithm as specified by the key version's algorithm. This field may not be supplied if AsymmetricSignRequest.data is supplied. *)
  digest_crc32c : string option;  (** Optional. An optional CRC32C checksum of the AsymmetricSignRequest.digest. If specified, KeyManagementService will verify the integrity of the received AsymmetricSignRequest.digest using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(AsymmetricSignRequest.digest) is equal to AsymmetricSignRequest.digest_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
}

(** Response message for KeyManagementService.AsymmetricSign. *)
and asymmetric_sign_response = {
  name : string option;  (** The resource name of the CryptoKeyVersion used for signing. Check this field to verify that the intended resource was used for signing. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** The ProtectionLevel of the CryptoKeyVersion used for signing. *)
  signature : string option;  (** The created signature. *)
  signature_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned AsymmetricSignResponse.signature. An integrity check of AsymmetricSignResponse.signature can be performed by computing the CRC32C checksum of AsymmetricSignResponse.signature and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  verified_data_crc32c : bool option;  (** Integrity verification field. A flag indicating whether AsymmetricSignRequest.data_crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that AsymmetricSignRequest.data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set AsymmetricSignRequest.data_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
  verified_digest_crc32c : bool option;  (** Integrity verification field. A flag indicating whether AsymmetricSignRequest.digest_crc32c was received by KeyManagementService and used for the integrity verification of the digest. A false value of this field indicates either that AsymmetricSignRequest.digest_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set AsymmetricSignRequest.digest_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
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

(** Cloud KMS Autokey configuration for a project or folder. *)
and autokey_config = {
  etag : string option;  (** Optional. A checksum computed by the server based on the value of other fields. This may be sent on update requests to ensure that the client has an up-to-date value before proceeding. The request will be rejected with an ABORTED error on a mismatched etag. *)
  key_project : string option;  (** Optional. Name of the key project, e.g. `projects/\{PROJECT_ID\}` or `projects/\{PROJECT_NUMBER\}`, where Cloud KMS Autokey will provision a new CryptoKey when a KeyHandle is created. On UpdateAutokeyConfig, the caller will require `cloudkms.cryptoKeys.setIamPolicy` permission on this key project. Once configured, for Cloud KMS Autokey to function properly, this key project must have the Cloud KMS API activated and the Cloud KMS Service Agent for this key project must be granted the `cloudkms.admin` role (or pertinent permissions). A request with an empty key project field will clear the configuration. *)
  key_project_resolution_mode : [ `Key_project_resolution_mode_unspecified | `Dedicated_key_project | `Resource_project | `Disabled | `Unrecognized of string ] option;  (** Optional. KeyProjectResolutionMode for the AutokeyConfig. Valid values are `DEDICATED_KEY_PROJECT`, `RESOURCE_PROJECT`, or `DISABLED`. *)
  name : string option;  (** Identifier. Name of the AutokeyConfig resource, e.g. `folders/\{FOLDER_NUMBER\}/autokeyConfig`, `projects/\{PROJECT_NUMBER\}/autokeyConfig`, or `projects/\{PROJECT_ID\}/autokeyConfig`. *)
  state : [ `State_unspecified | `Active | `Key_project_deleted | `Uninitialized | `Key_project_permission_denied | `Unrecognized of string ] option;  (** Output only. The state for the AutokeyConfig. *)
}

(** Associates `members`, or principals, with a `role`. *)
and binding = {
  condition : expr option;  (** The condition that is associated with this binding. If the condition evaluates to `true`, then this binding applies to the current request. If the condition evaluates to `false`, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)
  members : string list option;  (** Specifies the principals requesting access for a Google Cloud resource. `members` can have the following values: * `allUsers`: A special identifier that represents anyone who is on the internet; with or without a Google account. * `allAuthenticatedUsers`: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * `user:\{emailid\}`: An email address that represents a specific Google account. For example, `alice\@example.com` . * `serviceAccount:\{emailid\}`: An email address that represents a Google service account. For example, `my-other-app\@appspot.gserviceaccount.com`. * `serviceAccount:\{projectid\}.svc.id.goog\[\{namespace\}/\{kubernetes-sa\}\]`: An identifier for a \[Kubernetes service account\](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-project.svc.id.goog\[my-namespace/my-kubernetes-sa\]`. * `group:\{emailid\}`: An email address that represents a Google group. For example, `admins\@example.com`. * `domain:\{domain\}`: The G Suite domain (primary) that represents all the users of that domain. For example, `google.com` or `example.com`. * `principal://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/subject/\{subject_attribute_value\}`: A single identity in a workforce identity pool. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/group/\{group_id\}`: All workforce identities in a group. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/attribute.\{attribute_name\}/\{attribute_value\}`: All workforce identities with a specific attribute value. * `principalSet://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/*`: All identities in a workforce identity pool. * `principal://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/subject/\{subject_attribute_value\}`: A single identity in a workload identity pool. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/group/\{group_id\}`: A workload identity pool group. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/attribute.\{attribute_name\}/\{attribute_value\}`: All identities in a workload identity pool with a certain attribute. * `principalSet://iam.googleapis.com/projects/\{project_number\}/locations/global/workloadIdentityPools/\{pool_id\}/*`: All identities in a workload identity pool. * `deleted:user:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a user that has been recently deleted. For example, `alice\@example.com?uid=123456789012345678901`. If the user is recovered, this value reverts to `user:\{emailid\}` and the recovered user retains the role in the binding. * `deleted:serviceAccount:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, `my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901`. If the service account is undeleted, this value reverts to `serviceAccount:\{emailid\}` and the undeleted service account retains the role in the binding. * `deleted:group:\{emailid\}?uid=\{uniqueid\}`: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, `admins\@example.com?uid=123456789012345678901`. If the group is recovered, this value reverts to `group:\{emailid\}` and the recovered group retains the role in the binding. * `deleted:principal://iam.googleapis.com/locations/global/workforcePools/\{pool_id\}/subject/\{subject_attribute_value\}`: Deleted single identity in a workforce identity pool. For example, `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`. *)
  role : string option;  (** Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM roles and permissions, see the \[IAM documentation\](https://cloud.google.com/iam/docs/roles-overview). For a list of the available pre-defined roles, see \[here\](https://cloud.google.com/iam/docs/understanding-roles). *)
}

(** A Certificate represents an X.509 certificate used to authenticate HTTPS connections to EKM replicas. *)
and certificate = {
  issuer : string option;  (** Output only. The issuer distinguished name in RFC 2253 format. Only present if parsed is true. *)
  not_after_time : string option;  (** Output only. The certificate is not valid after this time. Only present if parsed is true. *)
  not_before_time : string option;  (** Output only. The certificate is not valid before this time. Only present if parsed is true. *)
  parsed : bool option;  (** Output only. True if the certificate was parsed successfully. *)
  raw_der : string option;  (** Required. The raw certificate bytes in DER format. *)
  serial_number : string option;  (** Output only. The certificate serial number as a hex string. Only present if parsed is true. *)
  sha256_fingerprint : string option;  (** Output only. The SHA-256 certificate fingerprint as a hex string. Only present if parsed is true. *)
  subject : string option;  (** Output only. The subject distinguished name in RFC 2253 format. Only present if parsed is true. *)
  subject_alternative_dns_names : string list option;  (** Output only. The subject Alternative DNS names. Only present if parsed is true. *)
}

(** Certificate chains needed to verify the attestation. Certificates in chains are PEM-encoded and are ordered based on https://tools.ietf.org/html/rfc5246#section-7.4.2. *)
and certificate_chains = {
  cavium_certs : string list option;  (** Cavium certificate chain corresponding to the attestation. *)
  google_card_certs : string list option;  (** Google card certificate chain corresponding to the attestation. *)
  google_partition_certs : string list option;  (** Google partition certificate chain corresponding to the attestation. *)
}

(** A challenge to be signed by a 2FA key. *)
and challenge = {
  challenge : string option;  (** Output only. The challenge to be signed by the 2FA key indicated by the public key. *)
  public_key_pem : string option;  (** Output only. The public key associated with the 2FA key that should sign the challenge. *)
}

(** A reply to a challenge signed by a 2FA key. *)
and challenge_reply = {
  public_key_pem : string option;  (** Required. The public key associated with the 2FA key. *)
  signed_challenge : string option;  (** Required. The signed challenge associated with the 2FA key. The signature must be RSASSA-PKCS1 v1.5 with a SHA256 digest. *)
}

(** Data with integrity verification field. *)
and checksummed_data = {
  crc32c_checksum : string option;  (** Integrity verification field. A CRC32C checksum of the returned ChecksummedData.data. An integrity check of ChecksummedData.data can be performed by computing the CRC32C checksum of ChecksummedData.data and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed `2^32-1`, and can be safely downconverted to uint32 in languages that support this type. *)
  data : string option;  (** Raw Data. *)
}

(** A CryptoKey represents a logical key that can be used for cryptographic operations. A CryptoKey is made up of zero or more versions, which represent the actual key material used in cryptographic operations. *)
and crypto_key = {
  create_time : string option;  (** Output only. The time at which this CryptoKey was created. *)
  crypto_key_backend : string option;  (** Immutable. The resource name of the backend environment where the key material for all CryptoKeyVersions associated with this CryptoKey reside and where all related cryptographic operations are performed. Only applicable if CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource name in the format `projects/*/locations/*/ekmConnections/*`. Only applicable if CryptoKeyVersions have a ProtectionLevel of HSM_SINGLE_TENANT, with the resource name in the format `projects/*/locations/*/singleTenantHsmInstances/*`. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future. *)
  destroy_scheduled_duration : string option;  (** Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at creation time, the default duration is 30 days. *)
  import_only : bool option;  (** Immutable. Whether this key may contain imported versions only. *)
  key_access_justifications_policy : key_access_justifications_policy option;  (** Optional. The policy used for Key Access Justifications Policy Enforcement. If this field is present and this key is enrolled in Key Access Justifications Policy Enforcement, the policy will be evaluated in encrypt, decrypt, and sign operations, and the operation will fail if rejected by the policy. The policy is defined by specifying zero or more allowed justification codes. https://cloud.google.com/assured-workloads/key-access-justifications/docs/justification-codes By default, this field is absent, and all justification codes are allowed. If the `key_access_justifications_policy.allowed_access_reasons` is empty (zero allowed justification code), all encrypt, decrypt, and sign operations will fail. *)
  labels : (string * string) list option;  (** Labels with user-defined metadata. For more information, see \[Labeling Keys\](https://cloud.google.com/kms/docs/labeling-keys). *)
  name : string option;  (** Output only. The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`. *)
  next_rotation_time : string option;  (** At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of this CryptoKey. 2. Mark the new version as primary. Key rotations performed manually via CreateCryptoKeyVersion and UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted. *)
  primary : crypto_key_version option;  (** Output only. A copy of the 'primary' CryptoKeyVersion that will be used by Encrypt when this CryptoKey is given in EncryptRequest.name. The CryptoKey's primary version can be updated via UpdateCryptoKeyPrimaryVersion. Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be omitted. *)
  purpose : [ `Crypto_key_purpose_unspecified | `Encrypt_decrypt | `Asymmetric_sign | `Asymmetric_decrypt | `Raw_encrypt_decrypt | `Mac | `Key_encapsulation | `Aes_wrapping | `Unrecognized of string ] option;  (** Immutable. The immutable purpose of this CryptoKey. *)
  rotation_period : string option;  (** next_rotation_time will be advanced by this period when the service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. If rotation_period is set, next_rotation_time must also be set. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted. *)
  version_template : crypto_key_version_template option;  (** A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKeyVersion instances created by either CreateCryptoKeyVersion or auto-rotation are controlled by this template. *)
}

(** A CryptoKeyVersion represents an individual cryptographic key, and the associated key material. An ENABLED version can be used for cryptographic operations. For security reasons, the raw cryptographic key material represented by a CryptoKeyVersion can never be viewed or exported. It can only be used to encrypt, decrypt, or sign data when an authorized user or application invokes Cloud KMS. *)
and crypto_key_version = {
  algorithm : [ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] option;  (** Output only. The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports. *)
  attestation : key_operation_attestation option;  (** Output only. Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only provided for key versions with protection_level HSM. *)
  create_time : string option;  (** Output only. The time at which this CryptoKeyVersion was created. *)
  destroy_event_time : string option;  (** Output only. The time this CryptoKeyVersion's key material was destroyed. Only present if state is DESTROYED. *)
  destroy_time : string option;  (** Output only. The time this CryptoKeyVersion's key material is scheduled for destruction. Only present if state is DESTROY_SCHEDULED. *)
  external_destruction_failure_reason : string option;  (** Output only. The root cause of the most recent external destruction failure. Only present if state is EXTERNAL_DESTRUCTION_FAILED. *)
  external_protection_level_options : external_protection_level_options option;  (** ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels. *)
  generate_time : string option;  (** Output only. The time this CryptoKeyVersion's key material was generated. *)
  generation_failure_reason : string option;  (** Output only. The root cause of the most recent generation failure. Only present if state is GENERATION_FAILED. *)
  hsm_trusted : bool option;  (** Output only. Field indicating that the key wrapping key is trusted. This field is only valid for key purpose AES_256_WRAPPING, and protection level HSM_SINGLE_TENANT. *)
  import_failure_reason : string option;  (** Output only. The root cause of the most recent import failure. Only present if state is IMPORT_FAILED. *)
  import_job : string option;  (** Output only. The name of the ImportJob used in the most recent import of this CryptoKeyVersion. Only present if the underlying key material was imported. *)
  import_time : string option;  (** Output only. The time at which this CryptoKeyVersion's key material was most recently imported. *)
  name : string option;  (** Output only. The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** Output only. The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion. *)
  reimport_eligible : bool option;  (** Output only. Whether or not this key version is eligible for reimport, by being specified as a target in ImportCryptoKeyVersionRequest.crypto_key_version. *)
  state : [ `Crypto_key_version_state_unspecified | `Pending_generation | `Enabled | `Disabled | `Destroyed | `Destroy_scheduled | `Pending_import | `Import_failed | `Generation_failed | `Pending_external_destruction | `External_destruction_failed | `Unrecognized of string ] option;  (** The current state of the CryptoKeyVersion. *)
  trusted_wrapping_enabled : bool option;  (** Optional. Immutable. Field indicating that the key may be wrapped by a trusted key. This field can be set for all key purposes except ENCRYPT_DECRYPT, and is only valid for keys with protection level HSM_SINGLE_TENANT. This field can only be set at creation or import time via CreateCryptoKeyVersion, or ImportCryptoKeyVersion. *)
}

(** A CryptoKeyVersionTemplate specifies the properties to use when creating a new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or automatically as a result of auto-rotation. *)
and crypto_key_version_template = {
  algorithm : [ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] option;  (** Required. Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE. *)
}

(** Request message for KeyManagementService.Decapsulate. *)
and decapsulate_request = {
  ciphertext : string option;  (** Required. The ciphertext produced from encapsulation with the named CryptoKeyVersion public key(s). *)
  ciphertext_crc32c : string option;  (** Optional. A CRC32C checksum of the DecapsulateRequest.ciphertext. If specified, KeyManagementService will verify the integrity of the received DecapsulateRequest.ciphertext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(DecapsulateRequest.ciphertext) is equal to DecapsulateRequest.ciphertext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
}

(** Response message for KeyManagementService.Decapsulate. *)
and decapsulate_response = {
  name : string option;  (** The resource name of the CryptoKeyVersion used for decapsulation. Check this field to verify that the intended resource was used for decapsulation. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** The ProtectionLevel of the CryptoKeyVersion used in decapsulation. *)
  shared_secret : string option;  (** The decapsulated shared_secret originally encapsulated with the matching public key. *)
  shared_secret_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned DecapsulateResponse.shared_secret. An integrity check of DecapsulateResponse.shared_secret can be performed by computing the CRC32C checksum of DecapsulateResponse.shared_secret and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: receiving this response message indicates that KeyManagementService is able to successfully decrypt the ciphertext. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  verified_ciphertext_crc32c : bool option;  (** Integrity verification field. A flag indicating whether DecapsulateRequest.ciphertext_crc32c was received by KeyManagementService and used for the integrity verification of the ciphertext. A false value of this field indicates either that DecapsulateRequest.ciphertext_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set DecapsulateRequest.ciphertext_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
}

(** Request message for KeyManagementService.Decrypt. *)
and decrypt_request = {
  additional_authenticated_data : string option;  (** Optional. Optional data that must match the data originally supplied in EncryptRequest.additional_authenticated_data. *)
  additional_authenticated_data_crc32c : string option;  (** Optional. An optional CRC32C checksum of the DecryptRequest.additional_authenticated_data. If specified, KeyManagementService will verify the integrity of the received DecryptRequest.additional_authenticated_data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(DecryptRequest.additional_authenticated_data) is equal to DecryptRequest.additional_authenticated_data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  ciphertext : string option;  (** Required. The encrypted data originally returned in EncryptResponse.ciphertext. *)
  ciphertext_crc32c : string option;  (** Optional. An optional CRC32C checksum of the DecryptRequest.ciphertext. If specified, KeyManagementService will verify the integrity of the received DecryptRequest.ciphertext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(DecryptRequest.ciphertext) is equal to DecryptRequest.ciphertext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
}

(** Response message for KeyManagementService.Decrypt. *)
and decrypt_response = {
  plaintext : string option;  (** The decrypted data originally supplied in EncryptRequest.plaintext. *)
  plaintext_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned DecryptResponse.plaintext. An integrity check of DecryptResponse.plaintext can be performed by computing the CRC32C checksum of DecryptResponse.plaintext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: receiving this response message indicates that KeyManagementService is able to successfully decrypt the ciphertext. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** The ProtectionLevel of the CryptoKeyVersion used in decryption. *)
  used_primary : bool option;  (** Whether the Decryption was performed using the primary key version. *)
}

(** Delete the SingleTenantHsmInstance. Deleting a SingleTenantHsmInstance will make all CryptoKeys attached to the SingleTenantHsmInstance unusable. The SingleTenantHsmInstance must not be in the DELETING or DELETED state to perform this operation. *)
and delete_single_tenant_hsm_instance = Yojson.Safe.t

(** Request message for KeyManagementService.DestroyCryptoKeyVersion. *)
and destroy_crypto_key_version_request = Yojson.Safe.t

(** A Digest holds a cryptographic message digest. *)
and digest = {
  external_mu : string option;  (** A message digest produced with SHAKE-256, to be used with ML-DSA external-μ algorithms only. See 'message representative' note in section 6.2, algorithm 7 of the FIPS-204 standard: https://doi.org/10.6028/nist.fips.204 *)
  sha256 : string option;  (** A message digest produced with the SHA-256 algorithm. *)
  sha384 : string option;  (** A message digest produced with the SHA-384 algorithm. *)
  sha512 : string option;  (** A message digest produced with the SHA-512 algorithm. *)
}

(** Disable the SingleTenantHsmInstance. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation. *)
and disable_single_tenant_hsm_instance = Yojson.Safe.t

(** An EkmConfig is a singleton resource that represents configuration parameters that apply to all CryptoKeys and CryptoKeyVersions with a ProtectionLevel of EXTERNAL_VPC in a given project and location. *)
and ekm_config = {
  default_ekm_connection : string option;  (** Optional. Resource name of the default EkmConnection. Setting this field to the empty string removes the default. *)
  name : string option;  (** Output only. The resource name for the EkmConfig in the format `projects/*/locations/*/ekmConfig`. *)
}

(** An EkmConnection represents an individual EKM connection. It can be used for creating CryptoKeys and CryptoKeyVersions with a ProtectionLevel of EXTERNAL_VPC, as well as performing cryptographic operations using keys created within the EkmConnection. *)
and ekm_connection = {
  create_time : string option;  (** Output only. The time at which the EkmConnection was created. *)
  crypto_space_path : string option;  (** Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS. *)
  etag : string option;  (** Optional. Etag of the currently stored EkmConnection. *)
  key_management_mode : [ `Key_management_mode_unspecified | `Manual | `Cloud_kms | `Unrecognized of string ] option;  (** Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL. *)
  name : string option;  (** Output only. The resource name for the EkmConnection in the format `projects/*/locations/*/ekmConnections/*`. *)
  service_resolvers : service_resolver list option;  (** Optional. A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported. *)
}

(** A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo \{ rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); \} *)
and empty = Yojson.Safe.t

(** Enable the SingleTenantHsmInstance. The SingleTenantHsmInstance must be in the DISABLED state to perform this operation. *)
and enable_single_tenant_hsm_instance = Yojson.Safe.t

(** Request message for KeyManagementService.Encrypt. *)
and encrypt_request = {
  additional_authenticated_data : string option;  (** Optional. Optional data that, if specified, must also be provided during decryption through DecryptRequest.additional_authenticated_data. The maximum size depends on the key version's protection_level. For SOFTWARE, EXTERNAL, and EXTERNAL_VPC keys the AAD must be no larger than 64KiB. For HSM keys, the combined length of the plaintext and additional_authenticated_data fields must be no larger than 8KiB. *)
  additional_authenticated_data_crc32c : string option;  (** Optional. An optional CRC32C checksum of the EncryptRequest.additional_authenticated_data. If specified, KeyManagementService will verify the integrity of the received EncryptRequest.additional_authenticated_data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(EncryptRequest.additional_authenticated_data) is equal to EncryptRequest.additional_authenticated_data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  plaintext : string option;  (** Required. The data to encrypt. Must be no larger than 64KiB. The maximum size depends on the key version's protection_level. For SOFTWARE, EXTERNAL, and EXTERNAL_VPC keys, the plaintext must be no larger than 64KiB. For HSM keys, the combined length of the plaintext and additional_authenticated_data fields must be no larger than 8KiB. *)
  plaintext_crc32c : string option;  (** Optional. An optional CRC32C checksum of the EncryptRequest.plaintext. If specified, KeyManagementService will verify the integrity of the received EncryptRequest.plaintext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(EncryptRequest.plaintext) is equal to EncryptRequest.plaintext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
}

(** Response message for KeyManagementService.Encrypt. *)
and encrypt_response = {
  ciphertext : string option;  (** The encrypted data. *)
  ciphertext_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned EncryptResponse.ciphertext. An integrity check of EncryptResponse.ciphertext can be performed by computing the CRC32C checksum of EncryptResponse.ciphertext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  name : string option;  (** The resource name of the CryptoKeyVersion used in encryption. Check this field to verify that the intended resource was used for encryption. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** The ProtectionLevel of the CryptoKeyVersion used in encryption. *)
  verified_additional_authenticated_data_crc32c : bool option;  (** Integrity verification field. A flag indicating whether EncryptRequest.additional_authenticated_data_crc32c was received by KeyManagementService and used for the integrity verification of the AAD. A false value of this field indicates either that EncryptRequest.additional_authenticated_data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set EncryptRequest.additional_authenticated_data_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
  verified_plaintext_crc32c : bool option;  (** Integrity verification field. A flag indicating whether EncryptRequest.plaintext_crc32c was received by KeyManagementService and used for the integrity verification of the plaintext. A false value of this field indicates either that EncryptRequest.plaintext_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set EncryptRequest.plaintext_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
}

(** Request message for HsmManagement.ExecuteSingleTenantHsmInstanceProposal. *)
and execute_single_tenant_hsm_instance_proposal_request = Yojson.Safe.t

(** Response message for KeyManagementService.ExportTrustedKeyWrappedCryptoKeyVersion. *)
and export_trusted_key_wrapped_crypto_key_version_response = {
  wrapped_key : string option;  (** The wrapped key material. *)
  wrapped_key_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned ExportTrustedKeyWrappedCryptoKeyVersionResponse.wrapped_key. An integrity check of ExportTrustedKeyWrappedCryptoKeyVersionResponse.wrapped_key can be performed by computing the CRC32C checksum of ExportTrustedKeyWrappedCryptoKeyVersionResponse.wrapped_key and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
}

(** Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: 'Summary size limit' description: 'Determines if a summary is less than 100 chars' expression: 'document.summary.size() < 100' Example (Equality): title: 'Requestor is owner' description: 'Determines if requestor is the document owner' expression: 'document.owner == request.auth.claims.email' Example (Logic): title: 'Public documents' description: 'Determine whether the document should be publicly visible' expression: 'document.type != 'private' && document.type != 'internal'' Example (Data Manipulation): title: 'Notification string' description: 'Create a notification string with a timestamp.' expression: ''New message received at ' + string(document.create_time)' The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information. *)
and expr = {
  description : string option;  (** Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. *)
  expression : string option;  (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string option;  (** Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. *)
  title : string option;  (** Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. *)
}

(** ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels. *)
and external_protection_level_options = {
  ekm_connection_backend_override : string option;  (** Optional. The resource name of the backend environment where the key material of CryptoKeyVersions is associated with. Setting this field overrides the crypto_key_backend. This field may be set when CryptoKeyVersions is set to EXTERNAL_VPC. Format: `projects/*/locations/*/ekmConnections/*`. *)
  ekm_connection_key_path : string option;  (** Optional. The path to the external key material on the EKM when using EkmConnection e.g., 'v0/my/key'. Set this field instead of external_key_uri when using an EkmConnection. *)
  external_key_uri : string option;  (** Optional. The URI for an external resource that this CryptoKeyVersion represents. *)
}

(** Request message for KeyManagementService.GenerateRandomBytes. *)
and generate_random_bytes_request = {
  length_bytes : int option;  (** The length in bytes of the amount of randomness to retrieve. Minimum 8 bytes, maximum 1024 bytes. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** The ProtectionLevel to use when generating the random data. Currently, only HSM protection level is supported. *)
}

(** Response message for KeyManagementService.GenerateRandomBytes. *)
and generate_random_bytes_response = {
  data : string option;  (** The generated data. *)
  data_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned GenerateRandomBytesResponse.data. An integrity check of GenerateRandomBytesResponse.data can be performed by computing the CRC32C checksum of GenerateRandomBytesResponse.data and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
}

(** Request message for KeyManagementService.ImportCryptoKeyVersion. *)
and import_crypto_key_version_request = {
  algorithm : [ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] option;  (** Required. The algorithm of the key being imported. This does not need to match the version_template of the CryptoKey this version imports into. *)
  crypto_key_version : string option;  (** Optional. The optional name of an existing CryptoKeyVersion to target for an import operation. If this field is not present, a new CryptoKeyVersion containing the supplied key material is created. If this field is present, the supplied key material is imported into the existing CryptoKeyVersion. To import into an existing CryptoKeyVersion, the CryptoKeyVersion must be a child of ImportCryptoKeyVersionRequest.parent, have been previously created via ImportCryptoKeyVersion, and be in DESTROYED or IMPORT_FAILED state. The key material and algorithm must match the previous CryptoKeyVersion exactly if the CryptoKeyVersion has ever contained key material. *)
  import_job : string option;  (** Required. The name of the ImportJob that was used to wrap this key material. *)
  rsa_aes_wrapped_key : string option;  (** Optional. This field has the same meaning as wrapped_key. Prefer to use that field in new work. Either that field or this field (but not both) must be specified. *)
  trusted_wrapping_enabled : bool option;  (** Optional. Whether trusted wrapping will be enabled on the imported \[CryptoKeyVersion\]. This field is only supported for keys with CryptoKeyVersionTemplate.protection_level HSM_SINGLE_TENANT. This field is supported for all CryptoKeyPurposes besides ENCRYPT_DECRYPT. *)
  wrapped_key : string option;  (** Optional. The wrapped key material to import. Before wrapping, key material must be formatted. If importing symmetric key material, the expected key material format is plain bytes. If importing asymmetric key material, the expected key material format is PKCS#8-encoded DER (the PrivateKeyInfo structure from RFC 5208). When wrapping with import methods (RSA_OAEP_3072_SHA1_AES_256 or RSA_OAEP_4096_SHA1_AES_256 or RSA_OAEP_3072_SHA256_AES_256 or RSA_OAEP_4096_SHA256_AES_256), this field must contain the concatenation of: 1. An ephemeral AES-256 wrapping key wrapped with the public_key using RSAES-OAEP with SHA-1/SHA-256, MGF1 with SHA-1/SHA-256, and an empty label. 2. The formatted key to be imported, wrapped with the ephemeral AES-256 key using AES-KWP (RFC 5649). This format is the same as the format produced by PKCS#11 mechanism CKM_RSA_AES_KEY_WRAP. When wrapping with import methods (RSA_OAEP_3072_SHA256 or RSA_OAEP_4096_SHA256), this field must contain the formatted key to be imported, wrapped with the public_key using RSAES-OAEP with SHA-256, MGF1 with SHA-256, and an empty label. *)
}

(** An ImportJob can be used to create CryptoKeys and CryptoKeyVersions using pre-existing key material, generated outside of Cloud KMS. When an ImportJob is created, Cloud KMS will generate a 'wrapping key', which is a public/private key pair. You use the wrapping key to encrypt (also known as wrap) the pre-existing key material to protect it during the import process. The nature of the wrapping key depends on the choice of import_method. When the wrapping key generation is complete, the state will be set to ACTIVE and the public_key can be fetched. The fetched public key can then be used to wrap your pre-existing key material. Once the key material is wrapped, it can be imported into a new CryptoKeyVersion in an existing CryptoKey by calling ImportCryptoKeyVersion. Multiple CryptoKeyVersions can be imported with a single ImportJob. Cloud KMS uses the private key portion of the wrapping key to unwrap the key material. Only Cloud KMS has access to the private key. An ImportJob expires 3 days after it is created. Once expired, Cloud KMS will no longer be able to import or unwrap any key material that was wrapped with the ImportJob's public key. For more information, see \[Importing a key\](https://cloud.google.com/kms/docs/importing-a-key). *)
and import_job = {
  attestation : key_operation_attestation option;  (** Output only. Statement that was generated and signed by the key creator (for example, an HSM) at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only present if the chosen ImportMethod is one with a protection level of HSM. *)
  create_time : string option;  (** Output only. The time at which this ImportJob was created. *)
  crypto_key_backend : string option;  (** Immutable. The resource name of the backend environment where the key material for the wrapping key resides and where all related cryptographic operations are performed. Currently, this field is only populated for keys stored in HSM_SINGLE_TENANT. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future. Supported resources: * `'projects/*/locations/*/singleTenantHsmInstances/*'` *)
  expire_event_time : string option;  (** Output only. The time this ImportJob expired. Only present if state is EXPIRED. *)
  expire_time : string option;  (** Output only. The time at which this ImportJob is scheduled for expiration and can no longer be used to import key material. *)
  generate_time : string option;  (** Output only. The time this ImportJob's key material was generated. *)
  import_method : [ `Import_method_unspecified | `Rsa_oaep_3072_sha1_aes_256 | `Rsa_oaep_4096_sha1_aes_256 | `Rsa_oaep_3072_sha256_aes_256 | `Rsa_oaep_4096_sha256_aes_256 | `Rsa_oaep_3072_sha256 | `Rsa_oaep_4096_sha256 | `Hpke_kem_ml_kem_768_hkdf_sha256_aes_256_gcm | `Hpke_kem_ml_kem_1024_hkdf_sha256_aes_256_gcm | `Hpke_kem_xwing_hkdf_sha256_aes_256_gcm | `Unrecognized of string ] option;  (** Required. Immutable. The wrapping method to be used for incoming key material. *)
  name : string option;  (** Output only. The resource name for this ImportJob in the format `projects/*/locations/*/keyRings/*/importJobs/*`. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** Required. Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into. *)
  public_key : wrapping_public_key option;  (** Output only. The public key with which to wrap key material prior to import. Only returned if state is ACTIVE. *)
  public_key_format : [ `Public_key_format_unspecified | `Pem | `Der | `Nist_pqc | `Xwing_raw_bytes | `Unrecognized of string ] option;  (** Output only. Specifies the WrappingPublicKey format provided by the customer in the KeyManagementService.GetImportJob request. *)
  state : [ `Import_job_state_unspecified | `Pending_generation | `Active | `Expired | `Unrecognized of string ] option;  (** Output only. The current state of the ImportJob, indicating if it can be used. *)
}

(** Request message for KeyManagementService.ImportTrustedKeyWrappedCryptoKeyVersion. *)
and import_trusted_key_wrapped_crypto_key_version_request = {
  algorithm : [ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] option;  (** Required. Required - The algorithm of the key being imported. This does not need to match the version_template of the CryptoKey this version imports into. *)
  crypto_key_version : string option;  (** Optional. The optional name of an existing CryptoKeyVersion to target for an import operation. If this field is not present, a new CryptoKeyVersion containing the supplied key material is created. If this field is present, the supplied key material is imported into the existing CryptoKeyVersion. To import into an existing CryptoKeyVersion, the CryptoKeyVersion must be a child of ImportTrustedKeyWrappedCryptoKeyVersionRequest.parent, have been previously created via ImportTrustedKeyWrappedCryptoKeyVersion, and be in DESTROYED or IMPORT_FAILED state. The key material and algorithm must match the previous CryptoKeyVersion exactly if the CryptoKeyVersion has ever contained key material *)
  importing_key : string option;  (** Required. Required - the CKV of the trusted key used to import. This can be the name of a CryptoKeyVersion or a CryptoKey. *)
  wrapped_key : string option;  (** Required. The target key pre-wrapped on premises. *)
}

(** Represents the configuration of a protection level for a project's Key Access Justifications enrollment. *)
and key_access_justifications_enrollment_config = {
  audit_logging : bool option;  (** Indicates whether the project has KAJ logging enabled. *)
  policy_enforcement : bool option;  (** Indicates whether the project is enrolled in KAJ policy enforcement. *)
}

(** A KeyAccessJustificationsPolicy specifies zero or more allowed AccessReason values for encrypt, decrypt, and sign operations on a CryptoKey or KeyAccessJustificationsPolicyConfig (the default Key Access Justifications policy). *)
and key_access_justifications_policy = {
  allowed_access_reasons : [ `Reason_unspecified | `Customer_initiated_support | `Google_initiated_service | `Third_party_data_request | `Google_initiated_review | `Customer_initiated_access | `Google_initiated_system_operation | `Reason_not_expected | `Modified_customer_initiated_access | `Modified_google_initiated_system_operation | `Google_response_to_production_alert | `Customer_authorized_workflow_servicing | `Unrecognized of string ] list option;  (** The list of allowed reasons for access to a CryptoKey. Note that empty allowed_access_reasons has a different meaning depending on where this message appears. If this is under KeyAccessJustificationsPolicyConfig, it means allow-all. If this is under CryptoKey, it means deny-all. *)
}

(** Represents a singleton configuration for Key Access Justifications policies. *)
and key_access_justifications_policy_config = {
  default_key_access_justification_policy : key_access_justifications_policy option;  (** Optional. Specifies the default key access justifications (KAJ) policy used when a CryptoKey is created in this folder. This is only used when a Key Access Justifications policy is not provided in the CreateCryptoKeyRequest. This overrides any default policies in its ancestry. If this field is unset, or is set but contains an empty allowed_access_reasons list, no default Key Access Justifications (KAJ) policy configuration is active. In this scenario, all newly created keys will default to an 'allow-all' policy. *)
  default_policy_available : bool option;  (** Output only. Indicates whether this parent resource is available to default policy feature. Please consult \[the prerequisite of default policy feature\](https://cloud.google.com/assured-workloads/key-access-justifications/docs/set-default-policy#before) for more details. *)
  name : string option;  (** Identifier. Represents the resource name for this KeyAccessJustificationsPolicyConfig in the format of '\{ organizations|folders|projects\}/*/kajPolicyConfig'. *)
}

(** Resource-oriented representation of a request to Cloud KMS Autokey and the resulting provisioning of a CryptoKey. *)
and key_handle = {
  kms_key : string option;  (** Output only. Name of a CryptoKey that has been provisioned for Customer Managed Encryption Key (CMEK) use in the KeyHandle project and location for the requested resource type. The CryptoKey project will reflect the value configured in the AutokeyConfig on the resource project's ancestor folder at the time of the KeyHandle creation. If more than one ancestor folder has a configured AutokeyConfig, the nearest of these configurations is used. *)
  name : string option;  (** Identifier. Name of the KeyHandle resource, e.g. `projects/\{PROJECT_ID\}/locations/\{LOCATION\}/keyHandles/\{KEY_HANDLE_ID\}`. *)
  resource_type_selector : string option;  (** Required. Indicates the resource type that the resulting CryptoKey is meant to protect, e.g. `\{SERVICE\}.googleapis.com/\{TYPE\}`. See documentation for supported resource types. *)
}

(** Contains an HSM-generated attestation about a key operation. For more information, see \[Verifying attestations\] (https://cloud.google.com/kms/docs/attest-key). *)
and key_operation_attestation = {
  cert_chains : certificate_chains option;  (** Output only. The certificate chains needed to validate the attestation *)
  content : string option;  (** Output only. The attestation data provided by the HSM when the key operation was performed. *)
  format : [ `Attestation_format_unspecified | `Cavium_v1_compressed | `Cavium_v2_compressed | `Cavium_v209 | `Unrecognized of string ] option;  (** Output only. The format of the attestation data. *)
}

(** A KeyRing is a toplevel logical grouping of CryptoKeys. *)
and key_ring = {
  create_time : string option;  (** Output only. The time at which this KeyRing was created. *)
  name : string option;  (** Output only. The resource name for the KeyRing in the format `projects/*/locations/*/keyRings/*`. *)
}

(** Response message for KeyManagementService.ListCryptoKeyVersions. *)
and list_crypto_key_versions_response = {
  crypto_key_versions : crypto_key_version list option;  (** The list of CryptoKeyVersions. *)
  next_page_token : string option;  (** A token to retrieve next page of results. Pass this value in ListCryptoKeyVersionsRequest.page_token to retrieve the next page of results. *)
  total_size : int option;  (** The total number of CryptoKeyVersions that matched the query. This field is not populated if ListCryptoKeyVersionsRequest.filter is applied. *)
}

(** Response message for KeyManagementService.ListCryptoKeys. *)
and list_crypto_keys_response = {
  crypto_keys : crypto_key list option;  (** The list of CryptoKeys. *)
  next_page_token : string option;  (** A token to retrieve next page of results. Pass this value in ListCryptoKeysRequest.page_token to retrieve the next page of results. *)
  total_size : int option;  (** The total number of CryptoKeys that matched the query. This field is not populated if ListCryptoKeysRequest.filter is applied. *)
}

(** Response message for EkmService.ListEkmConnections. *)
and list_ekm_connections_response = {
  ekm_connections : ekm_connection list option;  (** The list of EkmConnections. *)
  next_page_token : string option;  (** A token to retrieve next page of results. Pass this value in ListEkmConnectionsRequest.page_token to retrieve the next page of results. *)
  total_size : int option;  (** The total number of EkmConnections that matched the query. This field is not populated if ListEkmConnectionsRequest.filter is applied. *)
}

(** Response message for KeyManagementService.ListImportJobs. *)
and list_import_jobs_response = {
  import_jobs : import_job list option;  (** The list of ImportJobs. *)
  next_page_token : string option;  (** A token to retrieve next page of results. Pass this value in ListImportJobsRequest.page_token to retrieve the next page of results. *)
  total_size : int option;  (** The total number of ImportJobs that matched the query. This field is not populated if ListImportJobsRequest.filter is applied. *)
}

(** Response message for Autokey.ListKeyHandles. *)
and list_key_handles_response = {
  key_handles : key_handle list option;  (** Resulting KeyHandles. *)
  next_page_token : string option;  (** A token to retrieve next page of results. Pass this value in ListKeyHandlesRequest.page_token to retrieve the next page of results. *)
}

(** Response message for KeyManagementService.ListKeyRings. *)
and list_key_rings_response = {
  key_rings : key_ring list option;  (** The list of KeyRings. *)
  next_page_token : string option;  (** A token to retrieve next page of results. Pass this value in ListKeyRingsRequest.page_token to retrieve the next page of results. *)
  total_size : int option;  (** The total number of KeyRings that matched the query. This field is not populated if ListKeyRingsRequest.filter is applied. *)
}

(** The response message for Locations.ListLocations. *)
and list_locations_response = {
  locations : location list option;  (** A list of locations that matches the specified filter in the request. *)
  next_page_token : string option;  (** The standard List next-page token. *)
}

(** Response message for KeyManagementService.ListRetiredResources. *)
and list_retired_resources_response = {
  next_page_token : string option;  (** A token to retrieve the next page of results. Pass this value in ListRetiredResourcesRequest.page_token to retrieve the next page of results. *)
  retired_resources : retired_resource list option;  (** The list of RetiredResources. *)
  total_size : string option;  (** The total number of RetiredResources that matched the query. *)
}

(** Response message for HsmManagement.ListSingleTenantHsmInstanceProposals. *)
and list_single_tenant_hsm_instance_proposals_response = {
  next_page_token : string option;  (** A token to retrieve next page of results. Pass this value in ListSingleTenantHsmInstanceProposalsRequest.page_token to retrieve the next page of results. *)
  single_tenant_hsm_instance_proposals : single_tenant_hsm_instance_proposal list option;  (** The list of SingleTenantHsmInstanceProposals. *)
  total_size : int option;  (** The total number of SingleTenantHsmInstanceProposals that matched the query. This field is not populated if ListSingleTenantHsmInstanceProposalsRequest.filter is applied. *)
}

(** Response message for HsmManagement.ListSingleTenantHsmInstances. *)
and list_single_tenant_hsm_instances_response = {
  next_page_token : string option;  (** A token to retrieve next page of results. Pass this value in ListSingleTenantHsmInstancesRequest.page_token to retrieve the next page of results. *)
  single_tenant_hsm_instances : single_tenant_hsm_instance list option;  (** The list of SingleTenantHsmInstances. *)
  total_size : int option;  (** The total number of SingleTenantHsmInstances that matched the query. This field is not populated if ListSingleTenantHsmInstancesRequest.filter is applied. *)
}

(** A resource that represents a Google Cloud location. *)
and location = {
  display_name : string option;  (** The friendly name for this location, typically a nearby city name. For example, 'Tokyo'. *)
  labels : (string * string) list option;  (** Cross-service attributes for the location. For example \{'cloud.googleapis.com/region': 'us-east1'\} *)
  location_id : string option;  (** The canonical id for this location. For example: `'us-east1'`. *)
  metadata : (string * Yojson.Safe.t) list option;  (** Service-specific metadata. For example the available capacity at the given location. *)
  name : string option;  (** Resource name for the location, which may vary between implementations. For example: `'projects/example-project/locations/us-east1'` *)
}

(** Cloud KMS metadata for the given google.cloud.location.Location. *)
and location_metadata = {
  ekm_available : bool option;  (** Indicates whether CryptoKeys with protection_level EXTERNAL can be created in this location. *)
  hsm_available : bool option;  (** Indicates whether CryptoKeys with protection_level HSM can be created in this location. *)
  hsm_single_tenant_available : bool option;  (** Indicates whether CryptoKeys with protection_level HSM_SINGLE_TENANT can be created in this location. *)
}

(** Request message for KeyManagementService.MacSign. *)
and mac_sign_request = {
  data : string option;  (** Required. The data to sign. The MAC tag is computed over this data field based on the specific algorithm. *)
  data_crc32c : string option;  (** Optional. An optional CRC32C checksum of the MacSignRequest.data. If specified, KeyManagementService will verify the integrity of the received MacSignRequest.data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(MacSignRequest.data) is equal to MacSignRequest.data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
}

(** Response message for KeyManagementService.MacSign. *)
and mac_sign_response = {
  mac : string option;  (** The created signature. *)
  mac_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned MacSignResponse.mac. An integrity check of MacSignResponse.mac can be performed by computing the CRC32C checksum of MacSignResponse.mac and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  name : string option;  (** The resource name of the CryptoKeyVersion used for signing. Check this field to verify that the intended resource was used for signing. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** The ProtectionLevel of the CryptoKeyVersion used for signing. *)
  verified_data_crc32c : bool option;  (** Integrity verification field. A flag indicating whether MacSignRequest.data_crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacSignRequest.data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set MacSignRequest.data_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
}

(** Request message for KeyManagementService.MacVerify. *)
and mac_verify_request = {
  data : string option;  (** Required. The data used previously as a MacSignRequest.data to generate the MAC tag. *)
  data_crc32c : string option;  (** Optional. An optional CRC32C checksum of the MacVerifyRequest.data. If specified, KeyManagementService will verify the integrity of the received MacVerifyRequest.data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(MacVerifyRequest.data) is equal to MacVerifyRequest.data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  mac : string option;  (** Required. The signature to verify. *)
  mac_crc32c : string option;  (** Optional. An optional CRC32C checksum of the MacVerifyRequest.mac. If specified, KeyManagementService will verify the integrity of the received MacVerifyRequest.mac using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(MacVerifyRequest.mac) is equal to MacVerifyRequest.mac_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
}

(** Response message for KeyManagementService.MacVerify. *)
and mac_verify_response = {
  name : string option;  (** The resource name of the CryptoKeyVersion used for verification. Check this field to verify that the intended resource was used for verification. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** The ProtectionLevel of the CryptoKeyVersion used for verification. *)
  success : bool option;  (** This field indicates whether or not the verification operation for MacVerifyRequest.mac over MacVerifyRequest.data was successful. *)
  verified_data_crc32c : bool option;  (** Integrity verification field. A flag indicating whether MacVerifyRequest.data_crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacVerifyRequest.data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set MacVerifyRequest.data_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
  verified_mac_crc32c : bool option;  (** Integrity verification field. A flag indicating whether MacVerifyRequest.mac_crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacVerifyRequest.mac_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set MacVerifyRequest.mac_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
  verified_success_integrity : bool option;  (** Integrity verification field. This value is used for the integrity verification of \[MacVerifyResponse.success\]. If the value of this field contradicts the value of \[MacVerifyResponse.success\], discard the response and perform a limited number of retries. *)
}

(** This resource represents a long-running operation that is the result of a network API call. *)
and operation = {
  done_ : bool option;  (** If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available. *)
  error : status option;  (** The error result of the operation in case of failure or cancellation. *)
  metadata : (string * Yojson.Safe.t) list option;  (** Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any. *)
  name : string option;  (** The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/\{unique_id\}`. *)
  response : (string * Yojson.Safe.t) list option;  (** The normal, successful response of the operation. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`. *)
}

(** An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` \{ 'bindings': \[ \{ 'role': 'roles/resourcemanager.organizationAdmin', 'members': \[ 'user:mike\@example.com', 'group:admins\@example.com', 'domain:google.com', 'serviceAccount:my-project-id\@appspot.gserviceaccount.com' \] \}, \{ 'role': 'roles/resourcemanager.organizationViewer', 'members': \[ 'user:eve\@example.com' \], 'condition': \{ 'title': 'expirable access', 'description': 'Does not grant access after Sep 2020', 'expression': 'request.time < timestamp('2020-10-01T00:00:00.000Z')', \} \} \], 'etag': 'BwWWja0YfJA=', 'version': 3 \} ``` **YAML example:** ``` bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the \[IAM documentation\](https://cloud.google.com/iam/docs/). *)
and policy = {
  audit_configs : audit_config list option;  (** Specifies cloud audit logging configuration for this policy. *)
  bindings : binding list option;  (** Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice\@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`. *)
  etag : string option;  (** `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. *)
  version : int option;  (** Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)
}

(** The public keys for a given CryptoKeyVersion. Obtained via GetPublicKey. *)
and public_key = {
  algorithm : [ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] option;  (** The Algorithm associated with this key. *)
  name : string option;  (** The name of the CryptoKeyVersion public key. Provided here for verification. *)
  pem : string option;  (** The public key, encoded in PEM format. For more information, see the \[RFC 7468\](https://tools.ietf.org/html/rfc7468) sections for \[General Considerations\](https://tools.ietf.org/html/rfc7468#section-2) and \[Textual Encoding of Subject Public Key Info\] (https://tools.ietf.org/html/rfc7468#section-13). *)
  pem_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned PublicKey.pem. An integrity check of PublicKey.pem can be performed by computing the CRC32C checksum of PublicKey.pem and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed `2^32-1`, and can be safely downconverted to uint32 in languages that support this type. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** The ProtectionLevel of the CryptoKeyVersion public key. *)
  public_key : checksummed_data option;  (** This field contains the public key (with integrity verification), formatted according to the public_key_format field. *)
  public_key_format : [ `Public_key_format_unspecified | `Pem | `Der | `Nist_pqc | `Xwing_raw_bytes | `Unrecognized of string ] option;  (** The PublicKey format specified by the customer through the public_key_format field. *)
}

(** Configuration for M of N quorum auth. *)
and quorum_auth = {
  required_approver_count : int option;  (** Output only. The required numbers of approvers. The M value used for M of N quorum auth. Must be greater than or equal to 2 and less than or equal to total_approver_count - 1. *)
  total_approver_count : int option;  (** Required. The total number of approvers. This is the N value used for M of N quorum auth. Must be greater than or equal to 3 and less than or equal to 16. *)
  two_factor_public_key_pems : string list option;  (** Output only. The public keys associated with the 2FA keys for M of N quorum auth. *)
}

(** Parameters of quorum approval for the SingleTenantHsmInstanceProposal. *)
and quorum_parameters = {
  approved_two_factor_public_key_pems : string list option;  (** Output only. The public keys associated with the 2FA keys that have already approved the SingleTenantHsmInstanceProposal by signing the challenge. *)
  challenges : challenge list option;  (** Output only. The challenges to be signed by 2FA keys for quorum auth. M of N of these challenges are required to be signed to approve the operation. *)
  required_approver_count : int option;  (** Output only. The required numbers of approvers. This is the M value used for M of N quorum auth. It is less than the number of public keys. *)
}

(** The reply to QuorumParameters for approving the proposal. *)
and quorum_reply = {
  challenge_replies : challenge_reply list option;  (** Required. The challenge replies to approve the proposal. Challenge replies can be sent across multiple requests. The proposal will be approved when required_approver_count challenge replies are provided. *)
}

(** Request message for KeyManagementService.RawDecrypt. *)
and raw_decrypt_request = {
  additional_authenticated_data : string option;  (** Optional. Optional data that must match the data originally supplied in RawEncryptRequest.additional_authenticated_data. *)
  additional_authenticated_data_crc32c : string option;  (** Optional. An optional CRC32C checksum of the RawDecryptRequest.additional_authenticated_data. If specified, KeyManagementService will verify the integrity of the received additional_authenticated_data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(additional_authenticated_data) is equal to additional_authenticated_data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  ciphertext : string option;  (** Required. The encrypted data originally returned in RawEncryptResponse.ciphertext. *)
  ciphertext_crc32c : string option;  (** Optional. An optional CRC32C checksum of the RawDecryptRequest.ciphertext. If specified, KeyManagementService will verify the integrity of the received ciphertext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(ciphertext) is equal to ciphertext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  initialization_vector : string option;  (** Required. The initialization vector (IV) used during encryption, which must match the data originally provided in RawEncryptResponse.initialization_vector. *)
  initialization_vector_crc32c : string option;  (** Optional. An optional CRC32C checksum of the RawDecryptRequest.initialization_vector. If specified, KeyManagementService will verify the integrity of the received initialization_vector using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(initialization_vector) is equal to initialization_vector_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  tag_length : int option;  (** The length of the authentication tag that is appended to the end of the ciphertext. If unspecified (0), the default value for the key's algorithm will be used (for AES-GCM, the default value is 16). *)
}

(** Response message for KeyManagementService.RawDecrypt. *)
and raw_decrypt_response = {
  plaintext : string option;  (** The decrypted data. *)
  plaintext_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned RawDecryptResponse.plaintext. An integrity check of plaintext can be performed by computing the CRC32C checksum of plaintext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: receiving this response message indicates that KeyManagementService is able to successfully decrypt the ciphertext. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** The ProtectionLevel of the CryptoKeyVersion used in decryption. *)
  verified_additional_authenticated_data_crc32c : bool option;  (** Integrity verification field. A flag indicating whether RawDecryptRequest.additional_authenticated_data_crc32c was received by KeyManagementService and used for the integrity verification of additional_authenticated_data. A false value of this field indicates either that // RawDecryptRequest.additional_authenticated_data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set RawDecryptRequest.additional_authenticated_data_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
  verified_ciphertext_crc32c : bool option;  (** Integrity verification field. A flag indicating whether RawDecryptRequest.ciphertext_crc32c was received by KeyManagementService and used for the integrity verification of the ciphertext. A false value of this field indicates either that RawDecryptRequest.ciphertext_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set RawDecryptRequest.ciphertext_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
  verified_initialization_vector_crc32c : bool option;  (** Integrity verification field. A flag indicating whether RawDecryptRequest.initialization_vector_crc32c was received by KeyManagementService and used for the integrity verification of initialization_vector. A false value of this field indicates either that RawDecryptRequest.initialization_vector_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set RawDecryptRequest.initialization_vector_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
}

(** Request message for KeyManagementService.RawEncrypt. *)
and raw_encrypt_request = {
  additional_authenticated_data : string option;  (** Optional. Optional data that, if specified, must also be provided during decryption through RawDecryptRequest.additional_authenticated_data. This field may only be used in conjunction with an algorithm that accepts additional authenticated data (for example, AES-GCM). The maximum size depends on the key version's protection_level. For SOFTWARE keys, the plaintext must be no larger than 64KiB. For HSM keys, the combined length of the plaintext and additional_authenticated_data fields must be no larger than 8KiB. *)
  additional_authenticated_data_crc32c : string option;  (** Optional. An optional CRC32C checksum of the RawEncryptRequest.additional_authenticated_data. If specified, KeyManagementService will verify the integrity of the received additional_authenticated_data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(additional_authenticated_data) is equal to additional_authenticated_data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  initialization_vector : string option;  (** Optional. A customer-supplied initialization vector that will be used for encryption. If it is not provided for AES-CBC and AES-CTR, one will be generated. It will be returned in RawEncryptResponse.initialization_vector. *)
  initialization_vector_crc32c : string option;  (** Optional. An optional CRC32C checksum of the RawEncryptRequest.initialization_vector. If specified, KeyManagementService will verify the integrity of the received initialization_vector using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(initialization_vector) is equal to initialization_vector_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  plaintext : string option;  (** Required. The data to encrypt. Must be no larger than 64KiB. The maximum size depends on the key version's protection_level. For SOFTWARE keys, the plaintext must be no larger than 64KiB. For HSM keys, the combined length of the plaintext and additional_authenticated_data fields must be no larger than 8KiB. *)
  plaintext_crc32c : string option;  (** Optional. An optional CRC32C checksum of the RawEncryptRequest.plaintext. If specified, KeyManagementService will verify the integrity of the received plaintext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(plaintext) is equal to plaintext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
}

(** Response message for KeyManagementService.RawEncrypt. *)
and raw_encrypt_response = {
  ciphertext : string option;  (** The encrypted data. In the case of AES-GCM, the authentication tag is the tag_length bytes at the end of this field. *)
  ciphertext_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned RawEncryptResponse.ciphertext. An integrity check of ciphertext can be performed by computing the CRC32C checksum of ciphertext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  initialization_vector : string option;  (** The initialization vector (IV) generated by the service during encryption. This value must be stored and provided in RawDecryptRequest.initialization_vector at decryption time. *)
  initialization_vector_crc32c : string option;  (** Integrity verification field. A CRC32C checksum of the returned RawEncryptResponse.initialization_vector. An integrity check of initialization_vector can be performed by computing the CRC32C checksum of initialization_vector and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. *)
  name : string option;  (** The resource name of the CryptoKeyVersion used in encryption. Check this field to verify that the intended resource was used for encryption. *)
  protection_level : [ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] option;  (** The ProtectionLevel of the CryptoKeyVersion used in encryption. *)
  tag_length : int option;  (** The length of the authentication tag that is appended to the end of the ciphertext. *)
  verified_additional_authenticated_data_crc32c : bool option;  (** Integrity verification field. A flag indicating whether RawEncryptRequest.additional_authenticated_data_crc32c was received by KeyManagementService and used for the integrity verification of additional_authenticated_data. A false value of this field indicates either that // RawEncryptRequest.additional_authenticated_data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set RawEncryptRequest.additional_authenticated_data_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
  verified_initialization_vector_crc32c : bool option;  (** Integrity verification field. A flag indicating whether RawEncryptRequest.initialization_vector_crc32c was received by KeyManagementService and used for the integrity verification of initialization_vector. A false value of this field indicates either that RawEncryptRequest.initialization_vector_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set RawEncryptRequest.initialization_vector_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
  verified_plaintext_crc32c : bool option;  (** Integrity verification field. A flag indicating whether RawEncryptRequest.plaintext_crc32c was received by KeyManagementService and used for the integrity verification of the plaintext. A false value of this field indicates either that RawEncryptRequest.plaintext_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set RawEncryptRequest.plaintext_crc32c but this field is still false, discard the response and perform a limited number of retries. *)
}

(** Refreshes the SingleTenantHsmInstance. This operation must be performed periodically to keep the SingleTenantHsmInstance active. This operation must be performed before unrefreshed_duration_until_disable has passed. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation. *)
and refresh_single_tenant_hsm_instance = Yojson.Safe.t

(** Register 2FA keys for the SingleTenantHsmInstance. This operation requires all Challenges to be signed by 2FA keys. The SingleTenantHsmInstance must be in the PENDING_TWO_FACTOR_AUTH_REGISTRATION state to perform this operation. *)
and register_two_factor_auth_keys = {
  required_approver_count : int option;  (** Required. The required numbers of approvers to set for the SingleTenantHsmInstance. This is the M value used for M of N quorum auth. Must be greater than or equal to 2 and less than or equal to total_approver_count - 1. *)
  two_factor_public_key_pems : string list option;  (** Required. The public keys associated with the 2FA keys for M of N quorum auth. Public keys must be associated with RSA 2048 keys. *)
}

(** Remove a quorum member from the SingleTenantHsmInstance. This will reduce total_approver_count by 1. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation. *)
and remove_quorum_member = {
  two_factor_public_key_pem : string option;  (** Required. The public key associated with the 2FA key for the quorum member to remove. Public keys must be associated with RSA 2048 keys. *)
}

(** Parameters for an approval that has both required challenges and a quorum. *)
and required_action_quorum_parameters = {
  approved_two_factor_public_key_pems : string list option;  (** Output only. The public keys associated with the 2FA keys that have already approved the SingleTenantHsmInstanceProposal by signing the challenge. *)
  quorum_challenges : challenge list option;  (** Output only. The challenges to be signed by 2FA keys for quorum auth. M of N of these challenges are required to be signed to approve the operation. *)
  required_approver_count : int option;  (** Output only. The required number of quorum approvers. This is the M value used for M of N quorum auth. It is less than the number of public keys. *)
  required_challenges : challenge list option;  (** Output only. A list of specific challenges that must be signed. For some operations, this will contain a single challenge. *)
}

(** The reply to RequiredActionQuorumParameters for approving the proposal. *)
and required_action_quorum_reply = {
  quorum_challenge_replies : challenge_reply list option;  (** Required. Quorum members' signed challenge replies. These can be provided across multiple requests. The proposal will be approved when required_approver_count quorum_challenge_replies are provided and when all required_challenge_replies are provided. *)
  required_challenge_replies : challenge_reply list option;  (** Required. All required challenges must be signed for the proposal to be approved. These can be sent across multiple requests. *)
}

(** Request message for KeyManagementService.RestoreCryptoKeyVersion. *)
and restore_crypto_key_version_request = Yojson.Safe.t

(** A RetiredResource resource represents the record of a deleted CryptoKey. Its purpose is to provide visibility into retained user data and to prevent reuse of these names for new CryptoKeys. *)
and retired_resource = {
  delete_time : string option;  (** Output only. The time at which the original resource was deleted and this RetiredResource record was created. *)
  name : string option;  (** Output only. Identifier. The resource name for this RetiredResource in the format `projects/*/locations/*/retiredResources/*`. *)
  original_resource : string option;  (** Output only. The full resource name of the original CryptoKey that was deleted in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`. *)
  resource_type : string option;  (** Output only. The resource type of the original deleted resource. *)
}

(** A ServiceResolver represents an EKM replica that can be reached within an EkmConnection. *)
and service_resolver = {
  endpoint_filter : string option;  (** Optional. The filter applied to the endpoints of the resolved service. If no filter is specified, all endpoints will be considered. An endpoint will be chosen arbitrarily from the filtered list for each request. For endpoint filter syntax and examples, see https://cloud.google.com/service-directory/docs/reference/rpc/google.cloud.servicedirectory.v1#resolveservicerequest. *)
  hostname : string option;  (** Required. The hostname of the EKM replica used at TLS and HTTP layers. *)
  server_certificates : certificate list option;  (** Required. A list of leaf server certificates used to authenticate HTTPS connections to the EKM replica. Currently, a maximum of 10 Certificate is supported. *)
  service_directory_service : string option;  (** Required. The resource name of the Service Directory service pointing to an EKM replica, in the format `projects/*/locations/*/namespaces/*/services/*`. *)
}

(** Request message for `SetIamPolicy` method. *)
and set_iam_policy_request = {
  policy : policy option;  (** REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them. *)
  update_mask : string option;  (** OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: 'bindings, etag'` *)
}

(** Response message for ShowEffectiveAutokeyConfig *)
and show_effective_autokey_config_response = {
  key_project : string option;  (** Name of the key project configured in the ancestry of the project or folder. *)
  key_project_resolution_mode : [ `Key_project_resolution_mode_unspecified | `Dedicated_key_project | `Resource_project | `Disabled | `Unrecognized of string ] option;  (** The KeyProjectResolutionMode for the AutokeyConfig. *)
  source : source option;  (** Source of the effective AutokeyConfig. *)
}

(** Represents a response message for KeyAccessJustificationsConfig.ShowEffectiveKeyAccessJustificationsEnrollmentConfig *)
and show_effective_key_access_justifications_enrollment_config_response = {
  external_config : key_access_justifications_enrollment_config option;  (** Contains the effective KeyAccessJustificationsEnrollmentConfig for external keys. *)
  hardware_config : key_access_justifications_enrollment_config option;  (** Contains the effective KeyAccessJustificationsEnrollmentConfig for hardware keys. *)
  software_config : key_access_justifications_enrollment_config option;  (** Contains the effective KeyAccessJustificationsEnrollmentConfig for software keys. *)
}

(** Represents a response message for KeyAccessJustificationsConfig.ShowEffectiveKeyAccessJustificationsPolicyConfig. *)
and show_effective_key_access_justifications_policy_config_response = {
  effective_kaj_policy : key_access_justifications_policy_config option;  (** Contains the effective KeyAccessJustificationsPolicyConfig. *)
}

(** A SingleTenantHsmInstance represents a single-tenant HSM instance. It can be used for creating CryptoKeys with a ProtectionLevel of HSM_SINGLE_TENANT, as well as performing cryptographic operations using keys created within the SingleTenantHsmInstance. *)
and single_tenant_hsm_instance = {
  create_time : string option;  (** Output only. The time at which the SingleTenantHsmInstance was created. *)
  delete_time : string option;  (** Output only. The time at which the SingleTenantHsmInstance was deleted. *)
  disable_time : string option;  (** Output only. The time at which the instance will be automatically disabled if not refreshed. This field is updated upon creation and after each successful refresh operation and enable. A RefreshSingleTenantHsmInstance operation must be made via a SingleTenantHsmInstanceProposal before this time otherwise the SingleTenantHsmInstance will become disabled. *)
  key_portability_enabled : bool option;  (** Optional. Immutable. Indicates whether key portability is enabled for the SingleTenantHsmInstance. This can only be set at creation time. Key portability features are disabled by default. *)
  name : string option;  (** Identifier. The resource name for this SingleTenantHsmInstance in the format `projects/*/locations/*/singleTenantHsmInstances/*`. *)
  quorum_auth : quorum_auth option;  (** Required. The quorum auth configuration for the SingleTenantHsmInstance. *)
  state : [ `State_unspecified | `Creating | `Pending_two_factor_auth_registration | `Active | `Disabling | `Disabled | `Deleting | `Deleted | `Failed | `Unrecognized of string ] option;  (** Output only. The state of the SingleTenantHsmInstance. *)
  unrefreshed_duration_until_disable : string option;  (** Output only. The system-defined duration that an instance can remain unrefreshed until it is automatically disabled. This will have a value of 730 days. *)
}

(** A SingleTenantHsmInstanceProposal represents a proposal to perform an operation on a SingleTenantHsmInstance. *)
and single_tenant_hsm_instance_proposal = {
  add_quorum_member : add_quorum_member option;  (** Add a quorum member to the SingleTenantHsmInstance. This will increase the total_approver_count by 1. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation. *)
  create_time : string option;  (** Output only. The time at which the SingleTenantHsmInstanceProposal was created. *)
  delete_single_tenant_hsm_instance : delete_single_tenant_hsm_instance option;  (** Delete the SingleTenantHsmInstance. Deleting a SingleTenantHsmInstance will make all CryptoKeys attached to the SingleTenantHsmInstance unusable. The SingleTenantHsmInstance must be in the DISABLED or PENDING_TWO_FACTOR_AUTH_REGISTRATION state to perform this operation. *)
  delete_time : string option;  (** Output only. The time at which the SingleTenantHsmInstanceProposal was deleted. *)
  disable_single_tenant_hsm_instance : disable_single_tenant_hsm_instance option;  (** Disable the SingleTenantHsmInstance. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation. *)
  enable_single_tenant_hsm_instance : enable_single_tenant_hsm_instance option;  (** Enable the SingleTenantHsmInstance. The SingleTenantHsmInstance must be in the DISABLED state to perform this operation. *)
  expire_time : string option;  (** The time at which the SingleTenantHsmInstanceProposal will expire if not approved and executed. *)
  failure_reason : string option;  (** Output only. The root cause of the most recent failure. Only present if state is FAILED. *)
  name : string option;  (** Identifier. The resource name for this SingleTenantHsmInstance in the format `projects/*/locations/*/singleTenantHsmInstances/*/proposals/*`. *)
  purge_time : string option;  (** Output only. The time at which the soft-deleted SingleTenantHsmInstanceProposal will be permanently purged. This field is only populated when the state is DELETED and will be set a time after expiration of the proposal, i.e. >= expire_time or (create_time + ttl). *)
  quorum_parameters : quorum_parameters option;  (** Output only. The quorum approval parameters for the SingleTenantHsmInstanceProposal. *)
  refresh_single_tenant_hsm_instance : refresh_single_tenant_hsm_instance option;  (** Refreshes the SingleTenantHsmInstance. This operation must be performed periodically to keep the SingleTenantHsmInstance active. This operation must be performed before unrefreshed_duration_until_disable has passed. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation. *)
  register_two_factor_auth_keys : register_two_factor_auth_keys option;  (** Register 2FA keys for the SingleTenantHsmInstance. This operation requires all N Challenges to be signed by 2FA keys. The SingleTenantHsmInstance must be in the PENDING_TWO_FACTOR_AUTH_REGISTRATION state to perform this operation. *)
  remove_quorum_member : remove_quorum_member option;  (** Remove a quorum member from the SingleTenantHsmInstance. This will reduce total_approver_count by 1. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation. *)
  required_action_quorum_parameters : required_action_quorum_parameters option;  (** Output only. Parameters for an approval of a SingleTenantHsmInstanceProposal that has both required challenges and a quorum. *)
  state : [ `State_unspecified | `Creating | `Pending | `Approved | `Running | `Succeeded | `Failed | `Deleted | `Unrecognized of string ] option;  (** Output only. The state of the SingleTenantHsmInstanceProposal. *)
  ttl : string option;  (** Input only. The TTL for the SingleTenantHsmInstanceProposal. Proposals will expire after this duration. *)
  upgrade_key_trust : upgrade_key_trust option;  (** Promotes a key with the AES_WRAPPING purpose to a trusted wrapping key. The key must be in the ACTIVE state to perform this operation. *)
}

(** Source of the effective AutokeyConfig. *)
and source = {
  name : string option;  (** Contains the resource name of the AutokeyConfig that is effective, for example, `folders/\{FOLDER_NUMBER\}` or `projects/\{PROJECT_NUMBER\}` or `organizations/\{ORGANIZATION_NUMBER\}`. *)
}

(** The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by \[gRPC\](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the \[API Design Guide\](https://cloud.google.com/apis/design/errors). *)
and status = {
  code : int option;  (** The status code, which should be an enum value of google.rpc.Code. *)
  details : (string * Yojson.Safe.t) list list option;  (** A list of messages that carry the error details. There is a common set of message types for APIs to use. *)
  message : string option;  (** A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client. *)
}

(** Request message for `TestIamPermissions` method. *)
and test_iam_permissions_request = {
  permissions : string list option;  (** The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `storage.*`) are not allowed. For more information see \[IAM Overview\](https://cloud.google.com/iam/docs/overview#permissions). *)
}

(** Response message for `TestIamPermissions` method. *)
and test_iam_permissions_response = {
  permissions : string list option;  (** A subset of `TestPermissionsRequest.permissions` that the caller is allowed. *)
}

(** Request message for KeyManagementService.UpdateCryptoKeyPrimaryVersion. *)
and update_crypto_key_primary_version_request = {
  crypto_key_version_id : string option;  (** Required. The id of the child CryptoKeyVersion to use as primary. *)
}

(** Promotes a key with the AES_WRAPPING purpose to a trusted wrapping key. The key must be in the ACTIVE state to perform this operation. *)
and upgrade_key_trust = {
  name : string option;  (** Required. The name of the CryptoKeyVersion to promote. *)
  two_factor_public_key_pem : string option;  (** Required. The public key associated with the 2FA key that will sign the login nonce for this operation. *)
}

(** Response message for EkmService.VerifyConnectivity. *)
and verify_connectivity_response = Yojson.Safe.t

(** The public key component of the wrapping key. For details of the type of key this public key corresponds to, see the ImportMethod. *)
and wrapping_public_key = {
  data : string option;  (** Output only. Contains the public key, formatted according to the PublicKey.PublicKeyFormat specified in the KeyManagementService.GetImportJob request. *)
  pem : string option;  (** The public key, encoded in PEM format. For more information, see the \[RFC 7468\](https://tools.ietf.org/html/rfc7468) sections for \[General Considerations\](https://tools.ietf.org/html/rfc7468#section-2) and \[Textual Encoding of Subject Public Key Info\] (https://tools.ietf.org/html/rfc7468#section-13). This field gets populated by default for RSA-based import methods, if no public_key_format is specified in the request. If you want to retrieve the wrapping key of an ImportJob in some other format, use KeyManagementService.GetImportJob and set the public_key_format to the desired public key format. *)
}

val add_quorum_member_of_yojson : Yojson.Safe.t -> add_quorum_member
val yojson_of_add_quorum_member : add_quorum_member -> Yojson.Safe.t

val make_add_quorum_member :
  ?two_factor_public_key_pem:string ->
  unit ->
  add_quorum_member

val approve_single_tenant_hsm_instance_proposal_request_of_yojson : Yojson.Safe.t -> approve_single_tenant_hsm_instance_proposal_request
val yojson_of_approve_single_tenant_hsm_instance_proposal_request : approve_single_tenant_hsm_instance_proposal_request -> Yojson.Safe.t

val make_approve_single_tenant_hsm_instance_proposal_request :
  ?quorum_reply:quorum_reply ->
  ?required_action_quorum_reply:required_action_quorum_reply ->
  unit ->
  approve_single_tenant_hsm_instance_proposal_request

val approve_single_tenant_hsm_instance_proposal_response_of_yojson : Yojson.Safe.t -> approve_single_tenant_hsm_instance_proposal_response
val yojson_of_approve_single_tenant_hsm_instance_proposal_response : approve_single_tenant_hsm_instance_proposal_response -> Yojson.Safe.t

val asymmetric_decrypt_request_of_yojson : Yojson.Safe.t -> asymmetric_decrypt_request
val yojson_of_asymmetric_decrypt_request : asymmetric_decrypt_request -> Yojson.Safe.t

val make_asymmetric_decrypt_request :
  ?ciphertext:string ->
  ?ciphertext_crc32c:string ->
  unit ->
  asymmetric_decrypt_request

val asymmetric_decrypt_response_of_yojson : Yojson.Safe.t -> asymmetric_decrypt_response
val yojson_of_asymmetric_decrypt_response : asymmetric_decrypt_response -> Yojson.Safe.t

val make_asymmetric_decrypt_response :
  ?plaintext:string ->
  ?plaintext_crc32c:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?verified_ciphertext_crc32c:bool ->
  unit ->
  asymmetric_decrypt_response

val asymmetric_sign_request_of_yojson : Yojson.Safe.t -> asymmetric_sign_request
val yojson_of_asymmetric_sign_request : asymmetric_sign_request -> Yojson.Safe.t

val make_asymmetric_sign_request :
  ?data:string ->
  ?data_crc32c:string ->
  ?digest:digest ->
  ?digest_crc32c:string ->
  unit ->
  asymmetric_sign_request

val asymmetric_sign_response_of_yojson : Yojson.Safe.t -> asymmetric_sign_response
val yojson_of_asymmetric_sign_response : asymmetric_sign_response -> Yojson.Safe.t

val make_asymmetric_sign_response :
  ?name:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?signature:string ->
  ?signature_crc32c:string ->
  ?verified_data_crc32c:bool ->
  ?verified_digest_crc32c:bool ->
  unit ->
  asymmetric_sign_response

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

val autokey_config_of_yojson : Yojson.Safe.t -> autokey_config
val yojson_of_autokey_config : autokey_config -> Yojson.Safe.t

val make_autokey_config :
  ?etag:string ->
  ?key_project:string ->
  ?key_project_resolution_mode:[ `Key_project_resolution_mode_unspecified | `Dedicated_key_project | `Resource_project | `Disabled | `Unrecognized of string ] ->
  ?name:string ->
  ?state:[ `State_unspecified | `Active | `Key_project_deleted | `Uninitialized | `Key_project_permission_denied | `Unrecognized of string ] ->
  unit ->
  autokey_config

val binding_of_yojson : Yojson.Safe.t -> binding
val yojson_of_binding : binding -> Yojson.Safe.t

val make_binding :
  ?condition:expr ->
  ?members:string list ->
  ?role:string ->
  unit ->
  binding

val certificate_of_yojson : Yojson.Safe.t -> certificate
val yojson_of_certificate : certificate -> Yojson.Safe.t

val make_certificate :
  ?issuer:string ->
  ?not_after_time:string ->
  ?not_before_time:string ->
  ?parsed:bool ->
  ?raw_der:string ->
  ?serial_number:string ->
  ?sha256_fingerprint:string ->
  ?subject:string ->
  ?subject_alternative_dns_names:string list ->
  unit ->
  certificate

val certificate_chains_of_yojson : Yojson.Safe.t -> certificate_chains
val yojson_of_certificate_chains : certificate_chains -> Yojson.Safe.t

val make_certificate_chains :
  ?cavium_certs:string list ->
  ?google_card_certs:string list ->
  ?google_partition_certs:string list ->
  unit ->
  certificate_chains

val challenge_of_yojson : Yojson.Safe.t -> challenge
val yojson_of_challenge : challenge -> Yojson.Safe.t

val make_challenge :
  ?challenge:string ->
  ?public_key_pem:string ->
  unit ->
  challenge

val challenge_reply_of_yojson : Yojson.Safe.t -> challenge_reply
val yojson_of_challenge_reply : challenge_reply -> Yojson.Safe.t

val make_challenge_reply :
  ?public_key_pem:string ->
  ?signed_challenge:string ->
  unit ->
  challenge_reply

val checksummed_data_of_yojson : Yojson.Safe.t -> checksummed_data
val yojson_of_checksummed_data : checksummed_data -> Yojson.Safe.t

val make_checksummed_data :
  ?crc32c_checksum:string ->
  ?data:string ->
  unit ->
  checksummed_data

val crypto_key_of_yojson : Yojson.Safe.t -> crypto_key
val yojson_of_crypto_key : crypto_key -> Yojson.Safe.t

val make_crypto_key :
  ?create_time:string ->
  ?crypto_key_backend:string ->
  ?destroy_scheduled_duration:string ->
  ?import_only:bool ->
  ?key_access_justifications_policy:key_access_justifications_policy ->
  ?labels:(string * string) list ->
  ?name:string ->
  ?next_rotation_time:string ->
  ?primary:crypto_key_version ->
  ?purpose:[ `Crypto_key_purpose_unspecified | `Encrypt_decrypt | `Asymmetric_sign | `Asymmetric_decrypt | `Raw_encrypt_decrypt | `Mac | `Key_encapsulation | `Aes_wrapping | `Unrecognized of string ] ->
  ?rotation_period:string ->
  ?version_template:crypto_key_version_template ->
  unit ->
  crypto_key

val crypto_key_version_of_yojson : Yojson.Safe.t -> crypto_key_version
val yojson_of_crypto_key_version : crypto_key_version -> Yojson.Safe.t

val make_crypto_key_version :
  ?algorithm:[ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] ->
  ?attestation:key_operation_attestation ->
  ?create_time:string ->
  ?destroy_event_time:string ->
  ?destroy_time:string ->
  ?external_destruction_failure_reason:string ->
  ?external_protection_level_options:external_protection_level_options ->
  ?generate_time:string ->
  ?generation_failure_reason:string ->
  ?hsm_trusted:bool ->
  ?import_failure_reason:string ->
  ?import_job:string ->
  ?import_time:string ->
  ?name:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?reimport_eligible:bool ->
  ?state:[ `Crypto_key_version_state_unspecified | `Pending_generation | `Enabled | `Disabled | `Destroyed | `Destroy_scheduled | `Pending_import | `Import_failed | `Generation_failed | `Pending_external_destruction | `External_destruction_failed | `Unrecognized of string ] ->
  ?trusted_wrapping_enabled:bool ->
  unit ->
  crypto_key_version

val crypto_key_version_template_of_yojson : Yojson.Safe.t -> crypto_key_version_template
val yojson_of_crypto_key_version_template : crypto_key_version_template -> Yojson.Safe.t

val make_crypto_key_version_template :
  ?algorithm:[ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  unit ->
  crypto_key_version_template

val decapsulate_request_of_yojson : Yojson.Safe.t -> decapsulate_request
val yojson_of_decapsulate_request : decapsulate_request -> Yojson.Safe.t

val make_decapsulate_request :
  ?ciphertext:string ->
  ?ciphertext_crc32c:string ->
  unit ->
  decapsulate_request

val decapsulate_response_of_yojson : Yojson.Safe.t -> decapsulate_response
val yojson_of_decapsulate_response : decapsulate_response -> Yojson.Safe.t

val make_decapsulate_response :
  ?name:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?shared_secret:string ->
  ?shared_secret_crc32c:string ->
  ?verified_ciphertext_crc32c:bool ->
  unit ->
  decapsulate_response

val decrypt_request_of_yojson : Yojson.Safe.t -> decrypt_request
val yojson_of_decrypt_request : decrypt_request -> Yojson.Safe.t

val make_decrypt_request :
  ?additional_authenticated_data:string ->
  ?additional_authenticated_data_crc32c:string ->
  ?ciphertext:string ->
  ?ciphertext_crc32c:string ->
  unit ->
  decrypt_request

val decrypt_response_of_yojson : Yojson.Safe.t -> decrypt_response
val yojson_of_decrypt_response : decrypt_response -> Yojson.Safe.t

val make_decrypt_response :
  ?plaintext:string ->
  ?plaintext_crc32c:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?used_primary:bool ->
  unit ->
  decrypt_response

val delete_single_tenant_hsm_instance_of_yojson : Yojson.Safe.t -> delete_single_tenant_hsm_instance
val yojson_of_delete_single_tenant_hsm_instance : delete_single_tenant_hsm_instance -> Yojson.Safe.t

val destroy_crypto_key_version_request_of_yojson : Yojson.Safe.t -> destroy_crypto_key_version_request
val yojson_of_destroy_crypto_key_version_request : destroy_crypto_key_version_request -> Yojson.Safe.t

val digest_of_yojson : Yojson.Safe.t -> digest
val yojson_of_digest : digest -> Yojson.Safe.t

val make_digest :
  ?external_mu:string ->
  ?sha256:string ->
  ?sha384:string ->
  ?sha512:string ->
  unit ->
  digest

val disable_single_tenant_hsm_instance_of_yojson : Yojson.Safe.t -> disable_single_tenant_hsm_instance
val yojson_of_disable_single_tenant_hsm_instance : disable_single_tenant_hsm_instance -> Yojson.Safe.t

val ekm_config_of_yojson : Yojson.Safe.t -> ekm_config
val yojson_of_ekm_config : ekm_config -> Yojson.Safe.t

val make_ekm_config :
  ?default_ekm_connection:string ->
  ?name:string ->
  unit ->
  ekm_config

val ekm_connection_of_yojson : Yojson.Safe.t -> ekm_connection
val yojson_of_ekm_connection : ekm_connection -> Yojson.Safe.t

val make_ekm_connection :
  ?create_time:string ->
  ?crypto_space_path:string ->
  ?etag:string ->
  ?key_management_mode:[ `Key_management_mode_unspecified | `Manual | `Cloud_kms | `Unrecognized of string ] ->
  ?name:string ->
  ?service_resolvers:service_resolver list ->
  unit ->
  ekm_connection

val empty_of_yojson : Yojson.Safe.t -> empty
val yojson_of_empty : empty -> Yojson.Safe.t

val enable_single_tenant_hsm_instance_of_yojson : Yojson.Safe.t -> enable_single_tenant_hsm_instance
val yojson_of_enable_single_tenant_hsm_instance : enable_single_tenant_hsm_instance -> Yojson.Safe.t

val encrypt_request_of_yojson : Yojson.Safe.t -> encrypt_request
val yojson_of_encrypt_request : encrypt_request -> Yojson.Safe.t

val make_encrypt_request :
  ?additional_authenticated_data:string ->
  ?additional_authenticated_data_crc32c:string ->
  ?plaintext:string ->
  ?plaintext_crc32c:string ->
  unit ->
  encrypt_request

val encrypt_response_of_yojson : Yojson.Safe.t -> encrypt_response
val yojson_of_encrypt_response : encrypt_response -> Yojson.Safe.t

val make_encrypt_response :
  ?ciphertext:string ->
  ?ciphertext_crc32c:string ->
  ?name:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?verified_additional_authenticated_data_crc32c:bool ->
  ?verified_plaintext_crc32c:bool ->
  unit ->
  encrypt_response

val execute_single_tenant_hsm_instance_proposal_request_of_yojson : Yojson.Safe.t -> execute_single_tenant_hsm_instance_proposal_request
val yojson_of_execute_single_tenant_hsm_instance_proposal_request : execute_single_tenant_hsm_instance_proposal_request -> Yojson.Safe.t

val export_trusted_key_wrapped_crypto_key_version_response_of_yojson : Yojson.Safe.t -> export_trusted_key_wrapped_crypto_key_version_response
val yojson_of_export_trusted_key_wrapped_crypto_key_version_response : export_trusted_key_wrapped_crypto_key_version_response -> Yojson.Safe.t

val make_export_trusted_key_wrapped_crypto_key_version_response :
  ?wrapped_key:string ->
  ?wrapped_key_crc32c:string ->
  unit ->
  export_trusted_key_wrapped_crypto_key_version_response

val expr_of_yojson : Yojson.Safe.t -> expr
val yojson_of_expr : expr -> Yojson.Safe.t

val make_expr :
  ?description:string ->
  ?expression:string ->
  ?location:string ->
  ?title:string ->
  unit ->
  expr

val external_protection_level_options_of_yojson : Yojson.Safe.t -> external_protection_level_options
val yojson_of_external_protection_level_options : external_protection_level_options -> Yojson.Safe.t

val make_external_protection_level_options :
  ?ekm_connection_backend_override:string ->
  ?ekm_connection_key_path:string ->
  ?external_key_uri:string ->
  unit ->
  external_protection_level_options

val generate_random_bytes_request_of_yojson : Yojson.Safe.t -> generate_random_bytes_request
val yojson_of_generate_random_bytes_request : generate_random_bytes_request -> Yojson.Safe.t

val make_generate_random_bytes_request :
  ?length_bytes:int ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  unit ->
  generate_random_bytes_request

val generate_random_bytes_response_of_yojson : Yojson.Safe.t -> generate_random_bytes_response
val yojson_of_generate_random_bytes_response : generate_random_bytes_response -> Yojson.Safe.t

val make_generate_random_bytes_response :
  ?data:string ->
  ?data_crc32c:string ->
  unit ->
  generate_random_bytes_response

val import_crypto_key_version_request_of_yojson : Yojson.Safe.t -> import_crypto_key_version_request
val yojson_of_import_crypto_key_version_request : import_crypto_key_version_request -> Yojson.Safe.t

val make_import_crypto_key_version_request :
  ?algorithm:[ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] ->
  ?crypto_key_version:string ->
  ?import_job:string ->
  ?rsa_aes_wrapped_key:string ->
  ?trusted_wrapping_enabled:bool ->
  ?wrapped_key:string ->
  unit ->
  import_crypto_key_version_request

val import_job_of_yojson : Yojson.Safe.t -> import_job
val yojson_of_import_job : import_job -> Yojson.Safe.t

val make_import_job :
  ?attestation:key_operation_attestation ->
  ?create_time:string ->
  ?crypto_key_backend:string ->
  ?expire_event_time:string ->
  ?expire_time:string ->
  ?generate_time:string ->
  ?import_method:[ `Import_method_unspecified | `Rsa_oaep_3072_sha1_aes_256 | `Rsa_oaep_4096_sha1_aes_256 | `Rsa_oaep_3072_sha256_aes_256 | `Rsa_oaep_4096_sha256_aes_256 | `Rsa_oaep_3072_sha256 | `Rsa_oaep_4096_sha256 | `Hpke_kem_ml_kem_768_hkdf_sha256_aes_256_gcm | `Hpke_kem_ml_kem_1024_hkdf_sha256_aes_256_gcm | `Hpke_kem_xwing_hkdf_sha256_aes_256_gcm | `Unrecognized of string ] ->
  ?name:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?public_key:wrapping_public_key ->
  ?public_key_format:[ `Public_key_format_unspecified | `Pem | `Der | `Nist_pqc | `Xwing_raw_bytes | `Unrecognized of string ] ->
  ?state:[ `Import_job_state_unspecified | `Pending_generation | `Active | `Expired | `Unrecognized of string ] ->
  unit ->
  import_job

val import_trusted_key_wrapped_crypto_key_version_request_of_yojson : Yojson.Safe.t -> import_trusted_key_wrapped_crypto_key_version_request
val yojson_of_import_trusted_key_wrapped_crypto_key_version_request : import_trusted_key_wrapped_crypto_key_version_request -> Yojson.Safe.t

val make_import_trusted_key_wrapped_crypto_key_version_request :
  ?algorithm:[ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] ->
  ?crypto_key_version:string ->
  ?importing_key:string ->
  ?wrapped_key:string ->
  unit ->
  import_trusted_key_wrapped_crypto_key_version_request

val key_access_justifications_enrollment_config_of_yojson : Yojson.Safe.t -> key_access_justifications_enrollment_config
val yojson_of_key_access_justifications_enrollment_config : key_access_justifications_enrollment_config -> Yojson.Safe.t

val make_key_access_justifications_enrollment_config :
  ?audit_logging:bool ->
  ?policy_enforcement:bool ->
  unit ->
  key_access_justifications_enrollment_config

val key_access_justifications_policy_of_yojson : Yojson.Safe.t -> key_access_justifications_policy
val yojson_of_key_access_justifications_policy : key_access_justifications_policy -> Yojson.Safe.t

val make_key_access_justifications_policy :
  ?allowed_access_reasons:[ `Reason_unspecified | `Customer_initiated_support | `Google_initiated_service | `Third_party_data_request | `Google_initiated_review | `Customer_initiated_access | `Google_initiated_system_operation | `Reason_not_expected | `Modified_customer_initiated_access | `Modified_google_initiated_system_operation | `Google_response_to_production_alert | `Customer_authorized_workflow_servicing | `Unrecognized of string ] list ->
  unit ->
  key_access_justifications_policy

val key_access_justifications_policy_config_of_yojson : Yojson.Safe.t -> key_access_justifications_policy_config
val yojson_of_key_access_justifications_policy_config : key_access_justifications_policy_config -> Yojson.Safe.t

val make_key_access_justifications_policy_config :
  ?default_key_access_justification_policy:key_access_justifications_policy ->
  ?default_policy_available:bool ->
  ?name:string ->
  unit ->
  key_access_justifications_policy_config

val key_handle_of_yojson : Yojson.Safe.t -> key_handle
val yojson_of_key_handle : key_handle -> Yojson.Safe.t

val make_key_handle :
  ?kms_key:string ->
  ?name:string ->
  ?resource_type_selector:string ->
  unit ->
  key_handle

val key_operation_attestation_of_yojson : Yojson.Safe.t -> key_operation_attestation
val yojson_of_key_operation_attestation : key_operation_attestation -> Yojson.Safe.t

val make_key_operation_attestation :
  ?cert_chains:certificate_chains ->
  ?content:string ->
  ?format:[ `Attestation_format_unspecified | `Cavium_v1_compressed | `Cavium_v2_compressed | `Cavium_v209 | `Unrecognized of string ] ->
  unit ->
  key_operation_attestation

val key_ring_of_yojson : Yojson.Safe.t -> key_ring
val yojson_of_key_ring : key_ring -> Yojson.Safe.t

val make_key_ring :
  ?create_time:string ->
  ?name:string ->
  unit ->
  key_ring

val list_crypto_key_versions_response_of_yojson : Yojson.Safe.t -> list_crypto_key_versions_response
val yojson_of_list_crypto_key_versions_response : list_crypto_key_versions_response -> Yojson.Safe.t

val make_list_crypto_key_versions_response :
  ?crypto_key_versions:crypto_key_version list ->
  ?next_page_token:string ->
  ?total_size:int ->
  unit ->
  list_crypto_key_versions_response

val list_crypto_keys_response_of_yojson : Yojson.Safe.t -> list_crypto_keys_response
val yojson_of_list_crypto_keys_response : list_crypto_keys_response -> Yojson.Safe.t

val make_list_crypto_keys_response :
  ?crypto_keys:crypto_key list ->
  ?next_page_token:string ->
  ?total_size:int ->
  unit ->
  list_crypto_keys_response

val list_ekm_connections_response_of_yojson : Yojson.Safe.t -> list_ekm_connections_response
val yojson_of_list_ekm_connections_response : list_ekm_connections_response -> Yojson.Safe.t

val make_list_ekm_connections_response :
  ?ekm_connections:ekm_connection list ->
  ?next_page_token:string ->
  ?total_size:int ->
  unit ->
  list_ekm_connections_response

val list_import_jobs_response_of_yojson : Yojson.Safe.t -> list_import_jobs_response
val yojson_of_list_import_jobs_response : list_import_jobs_response -> Yojson.Safe.t

val make_list_import_jobs_response :
  ?import_jobs:import_job list ->
  ?next_page_token:string ->
  ?total_size:int ->
  unit ->
  list_import_jobs_response

val list_key_handles_response_of_yojson : Yojson.Safe.t -> list_key_handles_response
val yojson_of_list_key_handles_response : list_key_handles_response -> Yojson.Safe.t

val make_list_key_handles_response :
  ?key_handles:key_handle list ->
  ?next_page_token:string ->
  unit ->
  list_key_handles_response

val list_key_rings_response_of_yojson : Yojson.Safe.t -> list_key_rings_response
val yojson_of_list_key_rings_response : list_key_rings_response -> Yojson.Safe.t

val make_list_key_rings_response :
  ?key_rings:key_ring list ->
  ?next_page_token:string ->
  ?total_size:int ->
  unit ->
  list_key_rings_response

val list_locations_response_of_yojson : Yojson.Safe.t -> list_locations_response
val yojson_of_list_locations_response : list_locations_response -> Yojson.Safe.t

val make_list_locations_response :
  ?locations:location list ->
  ?next_page_token:string ->
  unit ->
  list_locations_response

val list_retired_resources_response_of_yojson : Yojson.Safe.t -> list_retired_resources_response
val yojson_of_list_retired_resources_response : list_retired_resources_response -> Yojson.Safe.t

val make_list_retired_resources_response :
  ?next_page_token:string ->
  ?retired_resources:retired_resource list ->
  ?total_size:string ->
  unit ->
  list_retired_resources_response

val list_single_tenant_hsm_instance_proposals_response_of_yojson : Yojson.Safe.t -> list_single_tenant_hsm_instance_proposals_response
val yojson_of_list_single_tenant_hsm_instance_proposals_response : list_single_tenant_hsm_instance_proposals_response -> Yojson.Safe.t

val make_list_single_tenant_hsm_instance_proposals_response :
  ?next_page_token:string ->
  ?single_tenant_hsm_instance_proposals:single_tenant_hsm_instance_proposal list ->
  ?total_size:int ->
  unit ->
  list_single_tenant_hsm_instance_proposals_response

val list_single_tenant_hsm_instances_response_of_yojson : Yojson.Safe.t -> list_single_tenant_hsm_instances_response
val yojson_of_list_single_tenant_hsm_instances_response : list_single_tenant_hsm_instances_response -> Yojson.Safe.t

val make_list_single_tenant_hsm_instances_response :
  ?next_page_token:string ->
  ?single_tenant_hsm_instances:single_tenant_hsm_instance list ->
  ?total_size:int ->
  unit ->
  list_single_tenant_hsm_instances_response

val location_of_yojson : Yojson.Safe.t -> location
val yojson_of_location : location -> Yojson.Safe.t

val make_location :
  ?display_name:string ->
  ?labels:(string * string) list ->
  ?location_id:string ->
  ?metadata:(string * Yojson.Safe.t) list ->
  ?name:string ->
  unit ->
  location

val location_metadata_of_yojson : Yojson.Safe.t -> location_metadata
val yojson_of_location_metadata : location_metadata -> Yojson.Safe.t

val make_location_metadata :
  ?ekm_available:bool ->
  ?hsm_available:bool ->
  ?hsm_single_tenant_available:bool ->
  unit ->
  location_metadata

val mac_sign_request_of_yojson : Yojson.Safe.t -> mac_sign_request
val yojson_of_mac_sign_request : mac_sign_request -> Yojson.Safe.t

val make_mac_sign_request :
  ?data:string ->
  ?data_crc32c:string ->
  unit ->
  mac_sign_request

val mac_sign_response_of_yojson : Yojson.Safe.t -> mac_sign_response
val yojson_of_mac_sign_response : mac_sign_response -> Yojson.Safe.t

val make_mac_sign_response :
  ?mac:string ->
  ?mac_crc32c:string ->
  ?name:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?verified_data_crc32c:bool ->
  unit ->
  mac_sign_response

val mac_verify_request_of_yojson : Yojson.Safe.t -> mac_verify_request
val yojson_of_mac_verify_request : mac_verify_request -> Yojson.Safe.t

val make_mac_verify_request :
  ?data:string ->
  ?data_crc32c:string ->
  ?mac:string ->
  ?mac_crc32c:string ->
  unit ->
  mac_verify_request

val mac_verify_response_of_yojson : Yojson.Safe.t -> mac_verify_response
val yojson_of_mac_verify_response : mac_verify_response -> Yojson.Safe.t

val make_mac_verify_response :
  ?name:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?success:bool ->
  ?verified_data_crc32c:bool ->
  ?verified_mac_crc32c:bool ->
  ?verified_success_integrity:bool ->
  unit ->
  mac_verify_response

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
  ?audit_configs:audit_config list ->
  ?bindings:binding list ->
  ?etag:string ->
  ?version:int ->
  unit ->
  policy

val public_key_of_yojson : Yojson.Safe.t -> public_key
val yojson_of_public_key : public_key -> Yojson.Safe.t

val make_public_key :
  ?algorithm:[ `Crypto_key_version_algorithm_unspecified | `Google_symmetric_encryption | `Aes_128_gcm | `Aes_256_gcm | `Aes_128_cbc | `Aes_256_cbc | `Aes_128_ctr | `Aes_256_ctr | `Rsa_sign_pss_2048_sha256 | `Rsa_sign_pss_3072_sha256 | `Rsa_sign_pss_4096_sha256 | `Rsa_sign_pss_4096_sha512 | `Rsa_sign_pkcs1_2048_sha256 | `Rsa_sign_pkcs1_3072_sha256 | `Rsa_sign_pkcs1_4096_sha256 | `Rsa_sign_pkcs1_4096_sha512 | `Rsa_sign_raw_pkcs1_2048 | `Rsa_sign_raw_pkcs1_3072 | `Rsa_sign_raw_pkcs1_4096 | `Rsa_decrypt_oaep_2048_sha256 | `Rsa_decrypt_oaep_3072_sha256 | `Rsa_decrypt_oaep_4096_sha256 | `Rsa_decrypt_oaep_4096_sha512 | `Rsa_decrypt_oaep_2048_sha1 | `Rsa_decrypt_oaep_3072_sha1 | `Rsa_decrypt_oaep_4096_sha1 | `Ec_sign_p256_sha256 | `Ec_sign_p384_sha384 | `Ec_sign_secp256_k1_sha256 | `Ec_sign_ed25519 | `Hmac_sha256 | `Hmac_sha1 | `Hmac_sha384 | `Hmac_sha512 | `Hmac_sha224 | `External_symmetric_encryption | `Ml_kem_768 | `Ml_kem_1024 | `Kem_xwing | `Pq_sign_ml_dsa_44 | `Pq_sign_ml_dsa_65 | `Pq_sign_ml_dsa_87 | `Pq_sign_slh_dsa_sha2_128_s | `Pq_sign_hash_slh_dsa_sha2_128_s_sha256 | `Pq_sign_ml_dsa_44_external_mu | `Pq_sign_ml_dsa_65_external_mu | `Pq_sign_ml_dsa_87_external_mu | `Kem_ecdh_p256 | `Kem_ecdh_p384 | `Aes_256_kwp | `Unrecognized of string ] ->
  ?name:string ->
  ?pem:string ->
  ?pem_crc32c:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?public_key:checksummed_data ->
  ?public_key_format:[ `Public_key_format_unspecified | `Pem | `Der | `Nist_pqc | `Xwing_raw_bytes | `Unrecognized of string ] ->
  unit ->
  public_key

val quorum_auth_of_yojson : Yojson.Safe.t -> quorum_auth
val yojson_of_quorum_auth : quorum_auth -> Yojson.Safe.t

val make_quorum_auth :
  ?required_approver_count:int ->
  ?total_approver_count:int ->
  ?two_factor_public_key_pems:string list ->
  unit ->
  quorum_auth

val quorum_parameters_of_yojson : Yojson.Safe.t -> quorum_parameters
val yojson_of_quorum_parameters : quorum_parameters -> Yojson.Safe.t

val make_quorum_parameters :
  ?approved_two_factor_public_key_pems:string list ->
  ?challenges:challenge list ->
  ?required_approver_count:int ->
  unit ->
  quorum_parameters

val quorum_reply_of_yojson : Yojson.Safe.t -> quorum_reply
val yojson_of_quorum_reply : quorum_reply -> Yojson.Safe.t

val make_quorum_reply :
  ?challenge_replies:challenge_reply list ->
  unit ->
  quorum_reply

val raw_decrypt_request_of_yojson : Yojson.Safe.t -> raw_decrypt_request
val yojson_of_raw_decrypt_request : raw_decrypt_request -> Yojson.Safe.t

val make_raw_decrypt_request :
  ?additional_authenticated_data:string ->
  ?additional_authenticated_data_crc32c:string ->
  ?ciphertext:string ->
  ?ciphertext_crc32c:string ->
  ?initialization_vector:string ->
  ?initialization_vector_crc32c:string ->
  ?tag_length:int ->
  unit ->
  raw_decrypt_request

val raw_decrypt_response_of_yojson : Yojson.Safe.t -> raw_decrypt_response
val yojson_of_raw_decrypt_response : raw_decrypt_response -> Yojson.Safe.t

val make_raw_decrypt_response :
  ?plaintext:string ->
  ?plaintext_crc32c:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?verified_additional_authenticated_data_crc32c:bool ->
  ?verified_ciphertext_crc32c:bool ->
  ?verified_initialization_vector_crc32c:bool ->
  unit ->
  raw_decrypt_response

val raw_encrypt_request_of_yojson : Yojson.Safe.t -> raw_encrypt_request
val yojson_of_raw_encrypt_request : raw_encrypt_request -> Yojson.Safe.t

val make_raw_encrypt_request :
  ?additional_authenticated_data:string ->
  ?additional_authenticated_data_crc32c:string ->
  ?initialization_vector:string ->
  ?initialization_vector_crc32c:string ->
  ?plaintext:string ->
  ?plaintext_crc32c:string ->
  unit ->
  raw_encrypt_request

val raw_encrypt_response_of_yojson : Yojson.Safe.t -> raw_encrypt_response
val yojson_of_raw_encrypt_response : raw_encrypt_response -> Yojson.Safe.t

val make_raw_encrypt_response :
  ?ciphertext:string ->
  ?ciphertext_crc32c:string ->
  ?initialization_vector:string ->
  ?initialization_vector_crc32c:string ->
  ?name:string ->
  ?protection_level:[ `Protection_level_unspecified | `Software | `Hsm | `External | `External_vpc | `Hsm_single_tenant | `Unrecognized of string ] ->
  ?tag_length:int ->
  ?verified_additional_authenticated_data_crc32c:bool ->
  ?verified_initialization_vector_crc32c:bool ->
  ?verified_plaintext_crc32c:bool ->
  unit ->
  raw_encrypt_response

val refresh_single_tenant_hsm_instance_of_yojson : Yojson.Safe.t -> refresh_single_tenant_hsm_instance
val yojson_of_refresh_single_tenant_hsm_instance : refresh_single_tenant_hsm_instance -> Yojson.Safe.t

val register_two_factor_auth_keys_of_yojson : Yojson.Safe.t -> register_two_factor_auth_keys
val yojson_of_register_two_factor_auth_keys : register_two_factor_auth_keys -> Yojson.Safe.t

val make_register_two_factor_auth_keys :
  ?required_approver_count:int ->
  ?two_factor_public_key_pems:string list ->
  unit ->
  register_two_factor_auth_keys

val remove_quorum_member_of_yojson : Yojson.Safe.t -> remove_quorum_member
val yojson_of_remove_quorum_member : remove_quorum_member -> Yojson.Safe.t

val make_remove_quorum_member :
  ?two_factor_public_key_pem:string ->
  unit ->
  remove_quorum_member

val required_action_quorum_parameters_of_yojson : Yojson.Safe.t -> required_action_quorum_parameters
val yojson_of_required_action_quorum_parameters : required_action_quorum_parameters -> Yojson.Safe.t

val make_required_action_quorum_parameters :
  ?approved_two_factor_public_key_pems:string list ->
  ?quorum_challenges:challenge list ->
  ?required_approver_count:int ->
  ?required_challenges:challenge list ->
  unit ->
  required_action_quorum_parameters

val required_action_quorum_reply_of_yojson : Yojson.Safe.t -> required_action_quorum_reply
val yojson_of_required_action_quorum_reply : required_action_quorum_reply -> Yojson.Safe.t

val make_required_action_quorum_reply :
  ?quorum_challenge_replies:challenge_reply list ->
  ?required_challenge_replies:challenge_reply list ->
  unit ->
  required_action_quorum_reply

val restore_crypto_key_version_request_of_yojson : Yojson.Safe.t -> restore_crypto_key_version_request
val yojson_of_restore_crypto_key_version_request : restore_crypto_key_version_request -> Yojson.Safe.t

val retired_resource_of_yojson : Yojson.Safe.t -> retired_resource
val yojson_of_retired_resource : retired_resource -> Yojson.Safe.t

val make_retired_resource :
  ?delete_time:string ->
  ?name:string ->
  ?original_resource:string ->
  ?resource_type:string ->
  unit ->
  retired_resource

val service_resolver_of_yojson : Yojson.Safe.t -> service_resolver
val yojson_of_service_resolver : service_resolver -> Yojson.Safe.t

val make_service_resolver :
  ?endpoint_filter:string ->
  ?hostname:string ->
  ?server_certificates:certificate list ->
  ?service_directory_service:string ->
  unit ->
  service_resolver

val set_iam_policy_request_of_yojson : Yojson.Safe.t -> set_iam_policy_request
val yojson_of_set_iam_policy_request : set_iam_policy_request -> Yojson.Safe.t

val make_set_iam_policy_request :
  ?policy:policy ->
  ?update_mask:string ->
  unit ->
  set_iam_policy_request

val show_effective_autokey_config_response_of_yojson : Yojson.Safe.t -> show_effective_autokey_config_response
val yojson_of_show_effective_autokey_config_response : show_effective_autokey_config_response -> Yojson.Safe.t

val make_show_effective_autokey_config_response :
  ?key_project:string ->
  ?key_project_resolution_mode:[ `Key_project_resolution_mode_unspecified | `Dedicated_key_project | `Resource_project | `Disabled | `Unrecognized of string ] ->
  ?source:source ->
  unit ->
  show_effective_autokey_config_response

val show_effective_key_access_justifications_enrollment_config_response_of_yojson : Yojson.Safe.t -> show_effective_key_access_justifications_enrollment_config_response
val yojson_of_show_effective_key_access_justifications_enrollment_config_response : show_effective_key_access_justifications_enrollment_config_response -> Yojson.Safe.t

val make_show_effective_key_access_justifications_enrollment_config_response :
  ?external_config:key_access_justifications_enrollment_config ->
  ?hardware_config:key_access_justifications_enrollment_config ->
  ?software_config:key_access_justifications_enrollment_config ->
  unit ->
  show_effective_key_access_justifications_enrollment_config_response

val show_effective_key_access_justifications_policy_config_response_of_yojson : Yojson.Safe.t -> show_effective_key_access_justifications_policy_config_response
val yojson_of_show_effective_key_access_justifications_policy_config_response : show_effective_key_access_justifications_policy_config_response -> Yojson.Safe.t

val make_show_effective_key_access_justifications_policy_config_response :
  ?effective_kaj_policy:key_access_justifications_policy_config ->
  unit ->
  show_effective_key_access_justifications_policy_config_response

val single_tenant_hsm_instance_of_yojson : Yojson.Safe.t -> single_tenant_hsm_instance
val yojson_of_single_tenant_hsm_instance : single_tenant_hsm_instance -> Yojson.Safe.t

val make_single_tenant_hsm_instance :
  ?create_time:string ->
  ?delete_time:string ->
  ?disable_time:string ->
  ?key_portability_enabled:bool ->
  ?name:string ->
  ?quorum_auth:quorum_auth ->
  ?state:[ `State_unspecified | `Creating | `Pending_two_factor_auth_registration | `Active | `Disabling | `Disabled | `Deleting | `Deleted | `Failed | `Unrecognized of string ] ->
  ?unrefreshed_duration_until_disable:string ->
  unit ->
  single_tenant_hsm_instance

val single_tenant_hsm_instance_proposal_of_yojson : Yojson.Safe.t -> single_tenant_hsm_instance_proposal
val yojson_of_single_tenant_hsm_instance_proposal : single_tenant_hsm_instance_proposal -> Yojson.Safe.t

val make_single_tenant_hsm_instance_proposal :
  ?add_quorum_member:add_quorum_member ->
  ?create_time:string ->
  ?delete_single_tenant_hsm_instance:delete_single_tenant_hsm_instance ->
  ?delete_time:string ->
  ?disable_single_tenant_hsm_instance:disable_single_tenant_hsm_instance ->
  ?enable_single_tenant_hsm_instance:enable_single_tenant_hsm_instance ->
  ?expire_time:string ->
  ?failure_reason:string ->
  ?name:string ->
  ?purge_time:string ->
  ?quorum_parameters:quorum_parameters ->
  ?refresh_single_tenant_hsm_instance:refresh_single_tenant_hsm_instance ->
  ?register_two_factor_auth_keys:register_two_factor_auth_keys ->
  ?remove_quorum_member:remove_quorum_member ->
  ?required_action_quorum_parameters:required_action_quorum_parameters ->
  ?state:[ `State_unspecified | `Creating | `Pending | `Approved | `Running | `Succeeded | `Failed | `Deleted | `Unrecognized of string ] ->
  ?ttl:string ->
  ?upgrade_key_trust:upgrade_key_trust ->
  unit ->
  single_tenant_hsm_instance_proposal

val source_of_yojson : Yojson.Safe.t -> source
val yojson_of_source : source -> Yojson.Safe.t

val make_source :
  ?name:string ->
  unit ->
  source

val status_of_yojson : Yojson.Safe.t -> status
val yojson_of_status : status -> Yojson.Safe.t

val make_status :
  ?code:int ->
  ?details:(string * Yojson.Safe.t) list list ->
  ?message:string ->
  unit ->
  status

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

val update_crypto_key_primary_version_request_of_yojson : Yojson.Safe.t -> update_crypto_key_primary_version_request
val yojson_of_update_crypto_key_primary_version_request : update_crypto_key_primary_version_request -> Yojson.Safe.t

val make_update_crypto_key_primary_version_request :
  ?crypto_key_version_id:string ->
  unit ->
  update_crypto_key_primary_version_request

val upgrade_key_trust_of_yojson : Yojson.Safe.t -> upgrade_key_trust
val yojson_of_upgrade_key_trust : upgrade_key_trust -> Yojson.Safe.t

val make_upgrade_key_trust :
  ?name:string ->
  ?two_factor_public_key_pem:string ->
  unit ->
  upgrade_key_trust

val verify_connectivity_response_of_yojson : Yojson.Safe.t -> verify_connectivity_response
val yojson_of_verify_connectivity_response : verify_connectivity_response -> Yojson.Safe.t

val wrapping_public_key_of_yojson : Yojson.Safe.t -> wrapping_public_key
val yojson_of_wrapping_public_key : wrapping_public_key -> Yojson.Safe.t

val make_wrapping_public_key :
  ?data:string ->
  ?pem:string ->
  unit ->
  wrapping_public_key

val base_url : string
val batch_endpoint : Uri.t

val batch :
  access_token:string ->
  'a Google_api.Call.t list ->
  (('a, Google_api.Error.t) result list, Google_api.Error.t) result
(** {!Google_api.Batch.execute} on {!batch_endpoint}. *)

module Folders : sig
  val get_autokey_config :
    name:string ->
    unit ->
    autokey_config Google_api.Call.t
  (** Returns the AutokeyConfig for a folder or project.

      [GET v1/{+name}]

      - [name]: Required. Name of the AutokeyConfig resource, e.g. `folders/\{FOLDER_NUMBER\}/autokeyConfig`, `projects/\{PROJECT_NUMBER\}/autokeyConfig`, or `projects/\{PROJECT_ID\}/autokeyConfig`. *)

  val get_kaj_policy_config :
    name:string ->
    unit ->
    key_access_justifications_policy_config Google_api.Call.t
  (** Gets the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

      [GET v1/{+name}]

      - [name]: Required. Specifies the name of the KeyAccessJustificationsPolicyConfig to get. *)

  val show_effective_autokey_config :
    parent:string ->
    unit ->
    show_effective_autokey_config_response Google_api.Call.t
  (** Returns the effective Cloud KMS Autokey configuration for a given project or folder. Note on permissions: - If called on a project (`projects/\{project\}`), requires `cloudkms.projects.showEffectiveAutokeyConfig`. - If called on a folder (`folders/\{folder\}`), requires `cloudkms.folders.showEffectiveAutokeyConfig`.

      [GET v1/{+parent}:showEffectiveAutokeyConfig]

      - [parent]: Required. Name of the resource project or folder to show the effective Cloud KMS Autokey configuration for. This may be helpful for evaluating the effect of nested folder configurations on a given resource project. Format: * projects/\{project\} * folders/\{folder\} *)

  val update_autokey_config :
    name:string ->
    body:autokey_config ->
    ?update_mask:string ->
    unit ->
    autokey_config Google_api.Call.t
  (** Updates the AutokeyConfig for a folder or a project. The caller must have both `cloudkms.autokeyConfigs.update` permission on the parent folder and `cloudkms.cryptoKeys.setIamPolicy` permission on the provided key project. A KeyHandle creation in the folder's descendant projects will use this configuration to determine where to create the resulting CryptoKey.

      [PATCH v1/{+name}]

      - [name]: Identifier. Name of the AutokeyConfig resource, e.g. `folders/\{FOLDER_NUMBER\}/autokeyConfig`, `projects/\{PROJECT_NUMBER\}/autokeyConfig`, or `projects/\{PROJECT_ID\}/autokeyConfig`.
      - [update_mask]: Required. Masks which fields of the AutokeyConfig to update, e.g. `keyProject`. *)

  val update_kaj_policy_config :
    name:string ->
    body:key_access_justifications_policy_config ->
    ?update_mask:string ->
    unit ->
    key_access_justifications_policy_config Google_api.Call.t
  (** Updates the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

      [PATCH v1/{+name}]

      - [name]: Identifier. Represents the resource name for this KeyAccessJustificationsPolicyConfig in the format of '\{ organizations|folders|projects\}/*/kajPolicyConfig'.
      - [update_mask]: Optional. Specifies the list of fields to update. *)
end

module Organizations : sig
  val get_kaj_policy_config :
    name:string ->
    unit ->
    key_access_justifications_policy_config Google_api.Call.t
  (** Gets the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

      [GET v1/{+name}]

      - [name]: Required. Specifies the name of the KeyAccessJustificationsPolicyConfig to get. *)

  val update_kaj_policy_config :
    name:string ->
    body:key_access_justifications_policy_config ->
    ?update_mask:string ->
    unit ->
    key_access_justifications_policy_config Google_api.Call.t
  (** Updates the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

      [PATCH v1/{+name}]

      - [name]: Identifier. Represents the resource name for this KeyAccessJustificationsPolicyConfig in the format of '\{ organizations|folders|projects\}/*/kajPolicyConfig'.
      - [update_mask]: Optional. Specifies the list of fields to update. *)
end

module Projects : sig
  val get_autokey_config :
    name:string ->
    unit ->
    autokey_config Google_api.Call.t
  (** Returns the AutokeyConfig for a folder or project.

      [GET v1/{+name}]

      - [name]: Required. Name of the AutokeyConfig resource, e.g. `folders/\{FOLDER_NUMBER\}/autokeyConfig`, `projects/\{PROJECT_NUMBER\}/autokeyConfig`, or `projects/\{PROJECT_ID\}/autokeyConfig`. *)

  val get_kaj_policy_config :
    name:string ->
    unit ->
    key_access_justifications_policy_config Google_api.Call.t
  (** Gets the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

      [GET v1/{+name}]

      - [name]: Required. Specifies the name of the KeyAccessJustificationsPolicyConfig to get. *)

  val show_effective_autokey_config :
    parent:string ->
    unit ->
    show_effective_autokey_config_response Google_api.Call.t
  (** Returns the effective Cloud KMS Autokey configuration for a given project or folder. Note on permissions: - If called on a project (`projects/\{project\}`), requires `cloudkms.projects.showEffectiveAutokeyConfig`. - If called on a folder (`folders/\{folder\}`), requires `cloudkms.folders.showEffectiveAutokeyConfig`.

      [GET v1/{+parent}:showEffectiveAutokeyConfig]

      - [parent]: Required. Name of the resource project or folder to show the effective Cloud KMS Autokey configuration for. This may be helpful for evaluating the effect of nested folder configurations on a given resource project. Format: * projects/\{project\} * folders/\{folder\} *)

  val show_effective_key_access_justifications_enrollment_config :
    project:string ->
    unit ->
    show_effective_key_access_justifications_enrollment_config_response Google_api.Call.t
  (** Returns the KeyAccessJustificationsEnrollmentConfig of the resource closest to the given project in hierarchy.

      [GET v1/{+project}:showEffectiveKeyAccessJustificationsEnrollmentConfig]

      - [project]: Required. Specifies the number or id of the project to get the effective KeyAccessJustificationsEnrollmentConfig for. *)

  val show_effective_key_access_justifications_policy_config :
    project:string ->
    unit ->
    show_effective_key_access_justifications_policy_config_response Google_api.Call.t
  (** Returns the KeyAccessJustificationsPolicyConfig of the resource closest to the given project in hierarchy.

      [GET v1/{+project}:showEffectiveKeyAccessJustificationsPolicyConfig]

      - [project]: Required. Specifies the number or id of the project to get the effective KeyAccessJustificationsPolicyConfig. In the format of 'projects/\{ |\}' *)

  val update_autokey_config :
    name:string ->
    body:autokey_config ->
    ?update_mask:string ->
    unit ->
    autokey_config Google_api.Call.t
  (** Updates the AutokeyConfig for a folder or a project. The caller must have both `cloudkms.autokeyConfigs.update` permission on the parent folder and `cloudkms.cryptoKeys.setIamPolicy` permission on the provided key project. A KeyHandle creation in the folder's descendant projects will use this configuration to determine where to create the resulting CryptoKey.

      [PATCH v1/{+name}]

      - [name]: Identifier. Name of the AutokeyConfig resource, e.g. `folders/\{FOLDER_NUMBER\}/autokeyConfig`, `projects/\{PROJECT_NUMBER\}/autokeyConfig`, or `projects/\{PROJECT_ID\}/autokeyConfig`.
      - [update_mask]: Required. Masks which fields of the AutokeyConfig to update, e.g. `keyProject`. *)

  val update_kaj_policy_config :
    name:string ->
    body:key_access_justifications_policy_config ->
    ?update_mask:string ->
    unit ->
    key_access_justifications_policy_config Google_api.Call.t
  (** Updates the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

      [PATCH v1/{+name}]

      - [name]: Identifier. Represents the resource name for this KeyAccessJustificationsPolicyConfig in the format of '\{ organizations|folders|projects\}/*/kajPolicyConfig'.
      - [update_mask]: Optional. Specifies the list of fields to update. *)

  module Locations : sig
    val generate_random_bytes :
      location:string ->
      body:generate_random_bytes_request ->
      unit ->
      generate_random_bytes_response Google_api.Call.t
    (** Generate random bytes using the Cloud KMS randomness source in the provided location.

        [POST v1/{+location}:generateRandomBytes]

        - [location]: The project-specific location in which to generate random bytes. For example, 'projects/my-project/locations/us-central1'. *)

    val get :
      name:string ->
      unit ->
      location Google_api.Call.t
    (** Gets information about a location.

        [GET v1/{+name}]

        - [name]: Resource name for the location. *)

    val get_ekm_config :
      name:string ->
      unit ->
      ekm_config Google_api.Call.t
    (** Returns the EkmConfig singleton resource for a given project and location.

        [GET v1/{+name}]

        - [name]: Required. The name of the EkmConfig to get. *)

    val list :
      name:string ->
      ?extra_location_types:string list ->
      ?filter:string ->
      ?page_size:int ->
      ?page_token:string ->
      unit ->
      list_locations_response Google_api.Call.t
    (** Lists information about the supported locations for this service. This method lists locations based on the resource scope provided in the ListLocationsRequest.name field: * **Global locations**: If `name` is empty, the method lists the public locations available to all projects. * **Project-specific locations**: If `name` follows the format `projects/\{project\}`, the method lists locations visible to that specific project. This includes public, private, or other project-specific locations enabled for the project. For gRPC and client library implementations, the resource name is passed as the `name` field. For direct service calls, the resource name is incorporated into the request path based on the specific service implementation and version.

        [GET v1/{+name}/locations]

        - [name]: The resource that owns the locations collection, if applicable.
        - [extra_location_types]: Optional. Do not use this field unless explicitly documented otherwise. This is primarily for internal usage.
        - [filter]: A filter to narrow down results to a preferred subset. The filtering language accepts strings like `'displayName=tokyo'`, and is documented in more detail in \[AIP-160\](https://google.aip.dev/160).
        - [page_size]: The maximum number of results to return. If not set, the service selects a default.
        - [page_token]: A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequent page. *)

    val update_ekm_config :
      name:string ->
      body:ekm_config ->
      ?update_mask:string ->
      unit ->
      ekm_config Google_api.Call.t
    (** Updates the EkmConfig singleton resource for a given project and location.

        [PATCH v1/{+name}]

        - [name]: Output only. The resource name for the EkmConfig in the format `projects/*/locations/*/ekmConfig`.
        - [update_mask]: Required. List of fields to be updated in this request. *)

    module Ekm_config : sig
      val get_iam_policy :
        resource:string ->
        ?options_requested_policy_version:int ->
        unit ->
        policy Google_api.Call.t
      (** Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

          [GET v1/{+resource}:getIamPolicy]

          - [resource]: REQUIRED: The resource for which the policy is being requested. See \[Resource names\](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
          - [options_requested_policy_version]: Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the \[IAM documentation\](https://cloud.google.com/iam/help/conditions/resource-policies). *)

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

    module Ekm_connections : sig
      val create :
        parent:string ->
        body:ekm_connection ->
        ?ekm_connection_id:string ->
        unit ->
        ekm_connection Google_api.Call.t
      (** Creates a new EkmConnection in a given Project and Location.

          [POST v1/{+parent}/ekmConnections]

          - [parent]: Required. The resource name of the location associated with the EkmConnection, in the format `projects/*/locations/*`.
          - [ekm_connection_id]: Required. It must be unique within a location and match the regular expression `\[a-zA-Z0-9_-\]\{1,63\}`. *)

      val get :
        name:string ->
        unit ->
        ekm_connection Google_api.Call.t
      (** Returns metadata for a given EkmConnection.

          [GET v1/{+name}]

          - [name]: Required. The name of the EkmConnection to get. *)

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
        ?filter:string ->
        ?order_by:string ->
        ?page_size:int ->
        ?page_token:string ->
        unit ->
        list_ekm_connections_response Google_api.Call.t
      (** Lists EkmConnections.

          [GET v1/{+parent}/ekmConnections]

          - [parent]: Required. The resource name of the location associated with the EkmConnections to list, in the format `projects/*/locations/*`.
          - [filter]: Optional. Only include resources that match the filter in the response. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
          - [order_by]: Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
          - [page_size]: Optional. Optional limit on the number of EkmConnections to include in the response. Further EkmConnections can subsequently be obtained by including the ListEkmConnectionsResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.
          - [page_token]: Optional. Optional pagination token, returned earlier via ListEkmConnectionsResponse.next_page_token. *)

      val patch :
        name:string ->
        body:ekm_connection ->
        ?update_mask:string ->
        unit ->
        ekm_connection Google_api.Call.t
      (** Updates an EkmConnection's metadata.

          [PATCH v1/{+name}]

          - [name]: Output only. The resource name for the EkmConnection in the format `projects/*/locations/*/ekmConnections/*`.
          - [update_mask]: Required. List of fields to be updated in this request. *)

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

      val verify_connectivity :
        name:string ->
        unit ->
        verify_connectivity_response Google_api.Call.t
      (** Verifies that Cloud KMS can successfully connect to the external key manager specified by an EkmConnection. If there is an error connecting to the EKM, this method returns a FAILED_PRECONDITION status containing structured information as described at https://cloud.google.com/kms/docs/reference/ekm_errors.

          [GET v1/{+name}:verifyConnectivity]

          - [name]: Required. The name of the EkmConnection to verify. *)
    end

    module Key_handles : sig
      val create :
        parent:string ->
        body:key_handle ->
        ?key_handle_id:string ->
        unit ->
        operation Google_api.Call.t
      (** Creates a new KeyHandle, triggering the provisioning of a new CryptoKey for CMEK use with the given resource type in the configured key project and the same location. GetOperation should be used to resolve the resulting long-running operation and get the resulting KeyHandle and CryptoKey.

          [POST v1/{+parent}/keyHandles]

          - [parent]: Required. Name of the resource project and location to create the KeyHandle in, e.g. `projects/\{PROJECT_ID\}/locations/\{LOCATION\}`.
          - [key_handle_id]: Optional. Id of the KeyHandle. Must be unique to the resource project and location. If not provided by the caller, a new UUID is used. *)

      val get :
        name:string ->
        unit ->
        key_handle Google_api.Call.t
      (** Returns the KeyHandle.

          [GET v1/{+name}]

          - [name]: Required. Name of the KeyHandle resource, e.g. `projects/\{PROJECT_ID\}/locations/\{LOCATION\}/keyHandles/\{KEY_HANDLE_ID\}`. *)

      val list :
        parent:string ->
        ?filter:string ->
        ?page_size:int ->
        ?page_token:string ->
        unit ->
        list_key_handles_response Google_api.Call.t
      (** Lists KeyHandles.

          [GET v1/{+parent}/keyHandles]

          - [parent]: Required. Name of the resource project and location from which to list KeyHandles, e.g. `projects/\{PROJECT_ID\}/locations/\{LOCATION\}`.
          - [filter]: Optional. Filter to apply when listing KeyHandles, e.g. `resource_type_selector='\{SERVICE\}.googleapis.com/\{TYPE\}'`.
          - [page_size]: Optional. Optional limit on the number of KeyHandles to include in the response. The service may return fewer than this value. Further KeyHandles can subsequently be obtained by including the ListKeyHandlesResponse.next_page_token in a subsequent request. If unspecified, at most 100 KeyHandles will be returned.
          - [page_token]: Optional. Optional pagination token, returned earlier via ListKeyHandlesResponse.next_page_token. *)
    end

    module Key_rings : sig
      val create :
        parent:string ->
        body:key_ring ->
        ?key_ring_id:string ->
        unit ->
        key_ring Google_api.Call.t
      (** Create a new KeyRing in a given Project and Location.

          [POST v1/{+parent}/keyRings]

          - [parent]: Required. The resource name of the location associated with the KeyRings, in the format `projects/*/locations/*`.
          - [key_ring_id]: Required. It must be unique within a location and match the regular expression `\[a-zA-Z0-9_-\]\{1,63\}` *)

      val delete :
        name:string ->
        unit ->
        operation Google_api.Call.t
      (** Permanently deletes the given KeyRing. All child resources of the KeyRing must have been previously deleted using their corresponding Delete operations. The specified key ring will be immediately and permanently deleted upon calling this method. This action cannot be undone.

          [DELETE v1/{+name}]

          - [name]: Required. The name of the KeyRing to delete. *)

      val get :
        name:string ->
        unit ->
        key_ring Google_api.Call.t
      (** Returns metadata for a given KeyRing.

          [GET v1/{+name}]

          - [name]: Required. The name of the KeyRing to get. *)

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
        ?filter:string ->
        ?order_by:string ->
        ?page_size:int ->
        ?page_token:string ->
        unit ->
        list_key_rings_response Google_api.Call.t
      (** Lists KeyRings.

          [GET v1/{+parent}/keyRings]

          - [parent]: Required. The resource name of the location associated with the KeyRings, in the format `projects/*/locations/*`.
          - [filter]: Optional. Only include resources that match the filter in the response. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
          - [order_by]: Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
          - [page_size]: Optional. Optional limit on the number of KeyRings to include in the response. Further KeyRings can subsequently be obtained by including the ListKeyRingsResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.
          - [page_token]: Optional. Optional pagination token, returned earlier via ListKeyRingsResponse.next_page_token. *)

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

      module Crypto_keys : sig
        val create :
          parent:string ->
          body:crypto_key ->
          ?crypto_key_id:string ->
          ?skip_initial_version_creation:bool ->
          ?trusted_wrapping_enabled:bool ->
          unit ->
          crypto_key Google_api.Call.t
        (** Create a new CryptoKey within a KeyRing. CryptoKey.purpose and CryptoKey.version_template.algorithm are required.

            [POST v1/{+parent}/cryptoKeys]

            - [parent]: Required. The name of the KeyRing associated with the CryptoKeys.
            - [crypto_key_id]: Required. It must be unique within a KeyRing and match the regular expression `\[a-zA-Z0-9_-\]\{1,63\}`
            - [skip_initial_version_creation]: If set to true, the request will create a CryptoKey without any CryptoKeyVersions. You must manually call CreateCryptoKeyVersion or ImportCryptoKeyVersion before you can use this CryptoKey.
            - [trusted_wrapping_enabled]: Optional. Whether trusted wrapping will be enabled on the first CryptoKeyVersions created for this CryptoKey. This field is only supported for keys with CryptoKeyVersionTemplate.protection_level HSM_SINGLE_TENANT. This field is supported for all CryptoKeyPurposes except ENCRYPT_DECRYPT. *)

        val decrypt :
          name:string ->
          body:decrypt_request ->
          unit ->
          decrypt_response Google_api.Call.t
        (** Decrypts data that was protected by Encrypt. The CryptoKey.purpose must be ENCRYPT_DECRYPT.

            [POST v1/{+name}:decrypt]

            - [name]: Required. The resource name of the CryptoKey to use for decryption. The server will choose the appropriate version. *)

        val delete :
          name:string ->
          unit ->
          operation Google_api.Call.t
        (** Permanently deletes the given CryptoKey. All child CryptoKeyVersions must have been previously deleted using KeyManagementService.DeleteCryptoKeyVersion. The specified crypto key will be immediately and permanently deleted upon calling this method. This action cannot be undone.

            [DELETE v1/{+name}]

            - [name]: Required. The name of the CryptoKey to delete. *)

        val encrypt :
          name:string ->
          body:encrypt_request ->
          unit ->
          encrypt_response Google_api.Call.t
        (** Encrypts data, so that it can only be recovered by a call to Decrypt. The CryptoKey.purpose must be ENCRYPT_DECRYPT.

            [POST v1/{+name}:encrypt]

            - [name]: Required. The resource name of the CryptoKey or CryptoKeyVersion to use for encryption. If a CryptoKey is specified, the server will use its primary version. *)

        val get :
          name:string ->
          unit ->
          crypto_key Google_api.Call.t
        (** Returns metadata for a given CryptoKey, as well as its primary CryptoKeyVersion.

            [GET v1/{+name}]

            - [name]: Required. The name of the CryptoKey to get. *)

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
          ?filter:string ->
          ?order_by:string ->
          ?page_size:int ->
          ?page_token:string ->
          ?version_view:[ `Crypto_key_version_view_unspecified | `Full | `Unrecognized of string ] ->
          unit ->
          list_crypto_keys_response Google_api.Call.t
        (** Lists CryptoKeys.

            [GET v1/{+parent}/cryptoKeys]

            - [parent]: Required. The resource name of the KeyRing to list, in the format `projects/*/locations/*/keyRings/*`.
            - [filter]: Optional. Only include resources that match the filter in the response. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
            - [order_by]: Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
            - [page_size]: Optional. Optional limit on the number of CryptoKeys to include in the response. Further CryptoKeys can subsequently be obtained by including the ListCryptoKeysResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.
            - [page_token]: Optional. Optional pagination token, returned earlier via ListCryptoKeysResponse.next_page_token.
            - [version_view]: The fields of the primary version to include in the response. *)

        val patch :
          name:string ->
          body:crypto_key ->
          ?update_mask:string ->
          unit ->
          crypto_key Google_api.Call.t
        (** Update a CryptoKey.

            [PATCH v1/{+name}]

            - [name]: Output only. The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
            - [update_mask]: Required. List of fields to be updated in this request. *)

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

        val update_primary_version :
          name:string ->
          body:update_crypto_key_primary_version_request ->
          unit ->
          crypto_key Google_api.Call.t
        (** Update the version of a CryptoKey that will be used in Encrypt. Returns an error if called on a key whose purpose is not ENCRYPT_DECRYPT.

            [POST v1/{+name}:updatePrimaryVersion]

            - [name]: Required. The resource name of the CryptoKey to update. *)

        module Crypto_key_versions : sig
          val asymmetric_decrypt :
            name:string ->
            body:asymmetric_decrypt_request ->
            unit ->
            asymmetric_decrypt_response Google_api.Call.t
          (** Decrypts data that was encrypted with a public key retrieved from GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose ASYMMETRIC_DECRYPT.

              [POST v1/{+name}:asymmetricDecrypt]

              - [name]: Required. The resource name of the CryptoKeyVersion to use for decryption. *)

          val asymmetric_sign :
            name:string ->
            body:asymmetric_sign_request ->
            unit ->
            asymmetric_sign_response Google_api.Call.t
          (** Signs data using a CryptoKeyVersion with CryptoKey.purpose ASYMMETRIC_SIGN, producing a signature that can be verified with the public key retrieved from GetPublicKey.

              [POST v1/{+name}:asymmetricSign]

              - [name]: Required. The resource name of the CryptoKeyVersion to use for signing. *)

          val create :
            parent:string ->
            body:crypto_key_version ->
            unit ->
            crypto_key_version Google_api.Call.t
          (** Create a new CryptoKeyVersion in a CryptoKey. The server will assign the next sequential id. If unset, state will be set to ENABLED.

              [POST v1/{+parent}/cryptoKeyVersions]

              - [parent]: Required. The name of the CryptoKey associated with the CryptoKeyVersions. *)

          val decapsulate :
            name:string ->
            body:decapsulate_request ->
            unit ->
            decapsulate_response Google_api.Call.t
          (** Decapsulates data that was encapsulated with a public key retrieved from GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose KEY_ENCAPSULATION.

              [POST v1/{+name}:decapsulate]

              - [name]: Required. The resource name of the CryptoKeyVersion to use for decapsulation. *)

          val delete :
            name:string ->
            unit ->
            operation Google_api.Call.t
          (** Permanently deletes the given CryptoKeyVersion. Only possible if the version has not been previously imported and if its state is one of DESTROYED, IMPORT_FAILED, or GENERATION_FAILED. Successfully imported CryptoKeyVersions cannot be deleted at this time. The specified version will be immediately and permanently deleted upon calling this method. This action cannot be undone.

              [DELETE v1/{+name}]

              - [name]: Required. The name of the CryptoKeyVersion to delete. *)

          val destroy :
            name:string ->
            body:destroy_crypto_key_version_request ->
            unit ->
            crypto_key_version Google_api.Call.t
          (** Schedule a CryptoKeyVersion for destruction. Upon calling this method, CryptoKeyVersion.state will be set to DESTROY_SCHEDULED, and destroy_time will be set to the time destroy_scheduled_duration in the future. At that time, the state will automatically change to DESTROYED, and the key material will be irrevocably destroyed. Before the destroy_time is reached, RestoreCryptoKeyVersion may be called to reverse the process.

              [POST v1/{+name}:destroy]

              - [name]: Required. The resource name of the CryptoKeyVersion to destroy. *)

          val export_trusted_key_wrapped_crypto_key_version :
            name:string ->
            ?wrapping_key:string ->
            unit ->
            export_trusted_key_wrapped_crypto_key_version_response Google_api.Call.t
          (** Exports a CryptoKeyVersion with a trusted key. The CryptoKeyVersion must have trusted_wrapping_enabled set to true. The CryptoKeyVersion of the \[wrapping_key\] must have the AES_WRAPPING purpose. The \[wrapping_key\] must have the AES_256_KWP algorithm.

              [GET v1/{+name}:exportTrustedKeyWrappedCryptoKeyVersion]

              - [name]: Required. The name of the CryptoKeyVersion to export. The CryptoKeyVersion must have trusted_wrapping_enabled set to true.
              - [wrapping_key]: Required. The name of the CryptoKeyVersion to use as a wrapping key. The CryptoKeyVersion must have hsm_trusted set to true. *)

          val get :
            name:string ->
            unit ->
            crypto_key_version Google_api.Call.t
          (** Returns metadata for a given CryptoKeyVersion.

              [GET v1/{+name}]

              - [name]: Required. The name of the CryptoKeyVersion to get. *)

          val get_public_key :
            name:string ->
            ?public_key_format:[ `Public_key_format_unspecified | `Pem | `Der | `Nist_pqc | `Xwing_raw_bytes | `Unrecognized of string ] ->
            unit ->
            public_key Google_api.Call.t
          (** Returns the public key for the given CryptoKeyVersion. The CryptoKey.purpose must be ASYMMETRIC_SIGN or ASYMMETRIC_DECRYPT.

              [GET v1/{+name}/publicKey]

              - [name]: Required. The name of the CryptoKeyVersion public key to get.
              - [public_key_format]: Optional. The PublicKey format specified by the user. This field is required for PQC algorithms. If specified, the public key will be exported through the public_key field in the requested format. Otherwise, the pem field will be populated for non-PQC algorithms, and an error will be returned for PQC algorithms. *)

          val import :
            parent:string ->
            body:import_crypto_key_version_request ->
            unit ->
            crypto_key_version Google_api.Call.t
          (** Import wrapped key material into a CryptoKeyVersion. All requests must specify a CryptoKey. If a CryptoKeyVersion is additionally specified in the request, key material will be reimported into that version. Otherwise, a new version will be created, and will be assigned the next sequential id within the CryptoKey.

              [POST v1/{+parent}/cryptoKeyVersions:import]

              - [parent]: Required. The name of the CryptoKey to be imported into. The create permission is only required on this key when creating a new CryptoKeyVersion. *)

          val import_trusted_key_wrapped_crypto_key_version :
            parent:string ->
            body:import_trusted_key_wrapped_crypto_key_version_request ->
            unit ->
            crypto_key_version Google_api.Call.t
          (** Import wrapped key material into a CryptoKeyVersion with a trusted key. All requests must specify a CryptoKey. If a CryptoKeyVersion is additionally specified in the request, key material will be reimported into that version. Otherwise, a new version will be created, and will be assigned the next sequential id within the CryptoKey. The CryptoKeyVersion will have trusted_wrapping_enabled set to true.

              [POST v1/{+parent}/cryptoKeyVersions:importTrustedKeyWrappedCryptoKeyVersion]

              - [parent]: Required. The name of the CryptoKey to be imported into. *)

          val list :
            parent:string ->
            ?filter:string ->
            ?order_by:string ->
            ?page_size:int ->
            ?page_token:string ->
            ?view:[ `Crypto_key_version_view_unspecified | `Full | `Unrecognized of string ] ->
            unit ->
            list_crypto_key_versions_response Google_api.Call.t
          (** Lists CryptoKeyVersions.

              [GET v1/{+parent}/cryptoKeyVersions]

              - [parent]: Required. The resource name of the CryptoKey to list, in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
              - [filter]: Optional. Only include resources that match the filter in the response. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
              - [order_by]: Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
              - [page_size]: Optional. Optional limit on the number of CryptoKeyVersions to include in the response. Further CryptoKeyVersions can subsequently be obtained by including the ListCryptoKeyVersionsResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.
              - [page_token]: Optional. Optional pagination token, returned earlier via ListCryptoKeyVersionsResponse.next_page_token.
              - [view]: The fields to include in the response. *)

          val mac_sign :
            name:string ->
            body:mac_sign_request ->
            unit ->
            mac_sign_response Google_api.Call.t
          (** Signs data using a CryptoKeyVersion with CryptoKey.purpose MAC, producing a tag that can be verified by another source with the same key.

              [POST v1/{+name}:macSign]

              - [name]: Required. The resource name of the CryptoKeyVersion to use for signing. *)

          val mac_verify :
            name:string ->
            body:mac_verify_request ->
            unit ->
            mac_verify_response Google_api.Call.t
          (** Verifies MAC tag using a CryptoKeyVersion with CryptoKey.purpose MAC, and returns a response that indicates whether or not the verification was successful.

              [POST v1/{+name}:macVerify]

              - [name]: Required. The resource name of the CryptoKeyVersion to use for verification. *)

          val patch :
            name:string ->
            body:crypto_key_version ->
            ?update_mask:string ->
            unit ->
            crypto_key_version Google_api.Call.t
          (** Update a CryptoKeyVersion's metadata. state may be changed between ENABLED and DISABLED using this method. See DestroyCryptoKeyVersion and RestoreCryptoKeyVersion to move between other states.

              [PATCH v1/{+name}]

              - [name]: Output only. The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
              - [update_mask]: Required. List of fields to be updated in this request. *)

          val raw_decrypt :
            name:string ->
            body:raw_decrypt_request ->
            unit ->
            raw_decrypt_response Google_api.Call.t
          (** Decrypts data that was originally encrypted using a raw cryptographic mechanism. The CryptoKey.purpose must be RAW_ENCRYPT_DECRYPT.

              [POST v1/{+name}:rawDecrypt]

              - [name]: Required. The resource name of the CryptoKeyVersion to use for decryption. *)

          val raw_encrypt :
            name:string ->
            body:raw_encrypt_request ->
            unit ->
            raw_encrypt_response Google_api.Call.t
          (** Encrypts data using portable cryptographic primitives. Most users should choose Encrypt and Decrypt rather than their raw counterparts. The CryptoKey.purpose must be RAW_ENCRYPT_DECRYPT.

              [POST v1/{+name}:rawEncrypt]

              - [name]: Required. The resource name of the CryptoKeyVersion to use for encryption. *)

          val restore :
            name:string ->
            body:restore_crypto_key_version_request ->
            unit ->
            crypto_key_version Google_api.Call.t
          (** Restore a CryptoKeyVersion in the DESTROY_SCHEDULED state. Upon restoration of the CryptoKeyVersion, state will be set to DISABLED, and destroy_time will be cleared.

              [POST v1/{+name}:restore]

              - [name]: Required. The resource name of the CryptoKeyVersion to restore. *)
        end
      end

      module Import_jobs : sig
        val create :
          parent:string ->
          body:import_job ->
          ?import_job_id:string ->
          unit ->
          import_job Google_api.Call.t
        (** Create a new ImportJob within a KeyRing. ImportJob.import_method is required.

            [POST v1/{+parent}/importJobs]

            - [parent]: Required. The name of the KeyRing associated with the ImportJobs.
            - [import_job_id]: Required. It must be unique within a KeyRing and match the regular expression `\[a-zA-Z0-9_-\]\{1,63\}` *)

        val get :
          name:string ->
          ?public_key_format:[ `Public_key_format_unspecified | `Pem | `Der | `Nist_pqc | `Xwing_raw_bytes | `Unrecognized of string ] ->
          unit ->
          import_job Google_api.Call.t
        (** Returns metadata for a given ImportJob.

            [GET v1/{+name}]

            - [name]: Required. The name of the ImportJob to get.
            - [public_key_format]: Optional. Specifies the WrappingPublicKey format. If not specified: * For RSA-based import methods, the wrapping key will be returned in PEM format * For pure ML-KEM-based import methods, the wrapping key will be returned in the raw bytes format specified in FIPS-203 * For X-Wing-based import methods, the wrapping key will be returned in the raw bytes format specified in https://datatracker.ietf.org/doc/draft-connolly-cfrg-xwing-kem. *)

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
          ?filter:string ->
          ?order_by:string ->
          ?page_size:int ->
          ?page_token:string ->
          unit ->
          list_import_jobs_response Google_api.Call.t
        (** Lists ImportJobs.

            [GET v1/{+parent}/importJobs]

            - [parent]: Required. The resource name of the KeyRing to list, in the format `projects/*/locations/*/keyRings/*`.
            - [filter]: Optional. Only include resources that match the filter in the response. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
            - [order_by]: Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
            - [page_size]: Optional. Optional limit on the number of ImportJobs to include in the response. Further ImportJobs can subsequently be obtained by including the ListImportJobsResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.
            - [page_token]: Optional. Optional pagination token, returned earlier via ListImportJobsResponse.next_page_token. *)

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
    end

    module Operations : sig
      val get :
        name:string ->
        unit ->
        operation Google_api.Call.t
      (** Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

          [GET v1/{+name}]

          - [name]: The name of the operation resource. *)
    end

    module Retired_resources : sig
      val get :
        name:string ->
        unit ->
        retired_resource Google_api.Call.t
      (** Retrieves a specific RetiredResource resource, which represents the record of a deleted CryptoKey.

          [GET v1/{+name}]

          - [name]: Required. The name of the RetiredResource to get. *)

      val list :
        parent:string ->
        ?page_size:int ->
        ?page_token:string ->
        unit ->
        list_retired_resources_response Google_api.Call.t
      (** Lists the RetiredResources which are the records of deleted CryptoKeys. RetiredResources prevent the reuse of these resource names after deletion.

          [GET v1/{+parent}/retiredResources]

          - [parent]: Required. The project-specific location holding the RetiredResources, in the format `projects/*/locations/*`.
          - [page_size]: Optional. Optional limit on the number of RetiredResources to be included in the response. Further RetiredResources can subsequently be obtained by including the ListRetiredResourcesResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.
          - [page_token]: Optional. Optional pagination token, returned earlier via ListRetiredResourcesResponse.next_page_token. *)
    end

    module Single_tenant_hsm_instances : sig
      val create :
        parent:string ->
        body:single_tenant_hsm_instance ->
        ?single_tenant_hsm_instance_id:string ->
        unit ->
        operation Google_api.Call.t
      (** Creates a new SingleTenantHsmInstance in a given Project and Location. User must create a RegisterTwoFactorAuthKeys proposal with this single-tenant HSM instance to finish setup of the instance.

          [POST v1/{+parent}/singleTenantHsmInstances]

          - [parent]: Required. The resource name of the location associated with the SingleTenantHsmInstance, in the format `projects/*/locations/*`.
          - [single_tenant_hsm_instance_id]: Optional. It must be unique within a location and match the regular expression `\[a-zA-Z0-9_-\]\{1,63\}`. *)

      val get :
        name:string ->
        unit ->
        single_tenant_hsm_instance Google_api.Call.t
      (** Returns metadata for a given SingleTenantHsmInstance.

          [GET v1/{+name}]

          - [name]: Required. The name of the SingleTenantHsmInstance to get. *)

      val list :
        parent:string ->
        ?filter:string ->
        ?order_by:string ->
        ?page_size:int ->
        ?page_token:string ->
        ?show_deleted:bool ->
        unit ->
        list_single_tenant_hsm_instances_response Google_api.Call.t
      (** Lists SingleTenantHsmInstances.

          [GET v1/{+parent}/singleTenantHsmInstances]

          - [parent]: Required. The resource name of the location associated with the SingleTenantHsmInstances to list, in the format `projects/*/locations/*`.
          - [filter]: Optional. Only include resources that match the filter in the response. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
          - [order_by]: Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
          - [page_size]: Optional. Optional limit on the number of SingleTenantHsmInstances to include in the response. Further SingleTenantHsmInstances can subsequently be obtained by including the ListSingleTenantHsmInstancesResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.
          - [page_token]: Optional. Optional pagination token, returned earlier via ListSingleTenantHsmInstancesResponse.next_page_token.
          - [show_deleted]: Optional. If set to true, HsmManagement.ListSingleTenantHsmInstances will also return SingleTenantHsmInstances in DELETED state. *)

      module Proposals : sig
        val approve :
          name:string ->
          body:approve_single_tenant_hsm_instance_proposal_request ->
          unit ->
          approve_single_tenant_hsm_instance_proposal_response Google_api.Call.t
        (** Approves a SingleTenantHsmInstanceProposal for a given SingleTenantHsmInstance. The proposal must be in the PENDING state.

            [POST v1/{+name}:approve]

            - [name]: Required. The name of the SingleTenantHsmInstanceProposal to approve. *)

        val create :
          parent:string ->
          body:single_tenant_hsm_instance_proposal ->
          ?single_tenant_hsm_instance_proposal_id:string ->
          unit ->
          operation Google_api.Call.t
        (** Creates a new SingleTenantHsmInstanceProposal for a given SingleTenantHsmInstance.

            [POST v1/{+parent}/proposals]

            - [parent]: Required. The name of the SingleTenantHsmInstance associated with the SingleTenantHsmInstanceProposals.
            - [single_tenant_hsm_instance_proposal_id]: Optional. It must be unique within a location and match the regular expression `\[a-zA-Z0-9_-\]\{1,63\}`. *)

        val delete :
          name:string ->
          unit ->
          empty Google_api.Call.t
        (** Deletes a SingleTenantHsmInstanceProposal.

            [DELETE v1/{+name}]

            - [name]: Required. The name of the SingleTenantHsmInstanceProposal to delete. *)

        val execute :
          name:string ->
          body:execute_single_tenant_hsm_instance_proposal_request ->
          unit ->
          operation Google_api.Call.t
        (** Executes a SingleTenantHsmInstanceProposal for a given SingleTenantHsmInstance. The proposal must be in the APPROVED state.

            [POST v1/{+name}:execute]

            - [name]: Required. The name of the SingleTenantHsmInstanceProposal to execute. *)

        val get :
          name:string ->
          unit ->
          single_tenant_hsm_instance_proposal Google_api.Call.t
        (** Returns metadata for a given SingleTenantHsmInstanceProposal.

            [GET v1/{+name}]

            - [name]: Required. The name of the SingleTenantHsmInstanceProposal to get. *)

        val list :
          parent:string ->
          ?filter:string ->
          ?order_by:string ->
          ?page_size:int ->
          ?page_token:string ->
          ?show_deleted:bool ->
          unit ->
          list_single_tenant_hsm_instance_proposals_response Google_api.Call.t
        (** Lists SingleTenantHsmInstanceProposals.

            [GET v1/{+parent}/proposals]

            - [parent]: Required. The resource name of the single tenant HSM instance associated with the SingleTenantHsmInstanceProposals to list, in the format `projects/*/locations/*/singleTenantHsmInstances/*`.
            - [filter]: Optional. Only include resources that match the filter in the response. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
            - [order_by]: Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see \[Sorting and filtering list results\](https://cloud.google.com/kms/docs/sorting-and-filtering).
            - [page_size]: Optional. Optional limit on the number of SingleTenantHsmInstanceProposals to include in the response. Further SingleTenantHsmInstanceProposals can subsequently be obtained by including the ListSingleTenantHsmInstanceProposalsResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.
            - [page_token]: Optional. Optional pagination token, returned earlier via ListSingleTenantHsmInstanceProposalsResponse.next_page_token.
            - [show_deleted]: Optional. If set to true, HsmManagement.ListSingleTenantHsmInstanceProposals will also return SingleTenantHsmInstanceProposals in DELETED state. *)
      end
    end
  end
end
