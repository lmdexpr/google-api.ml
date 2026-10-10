(lang dune 3.23)

(implicit_transitive_deps false)

(generate_opam_files true)

(name google-api)

(source
 (github lmdexpr/google-api.ml))

(license MIT)

(authors "Yuki Tajiri")

(maintainers "Yuki Tajiri")

(package
 (name google-api)
 (synopsis "Google APIs: HTTP effect, errors, calls and batch requests")
 (description
  "Transport-independent core shared by the generated Google API packages.\nHTTP goes through a single effect; see google-api-cohttp-eio for a handler.")
 (depends
  (ocaml
   (>= 5.5.0))
  dune
  yojson
  uri
  (alcotest :with-test)))

(package
 (name google-api-tasks)
 (synopsis "Google Tasks API v1")
 (description
  "Types, JSON codecs and calls generated from the Discovery document of the Google\nTasks API v1.")
 (depends
  (ocaml
   (>= 5.5.0))
  dune
  (google-api
   (= :version))
  uri
  yojson
  (alcotest :with-test)))

(package
 (name google-api-calendar)
 (synopsis "Google Calendar API v3")
 (description
  "Types, JSON codecs and calls generated from the Discovery document of the Google\nCalendar API v3.")
 (depends
  (ocaml
   (>= 5.5.0))
  dune
  (google-api
   (= :version))
  uri
  yojson
  (alcotest :with-test)))

(package
 (name google-api-directory)
 (synopsis "Google Admin SDK Directory API v1")
 (description
  "Types, JSON codecs and calls generated from the Discovery document of the Google\nAdmin SDK Directory API (directory_v1).")
 (depends
  (ocaml
   (>= 5.5.0))
  dune
  (google-api
   (= :version))
  uri
  yojson
  (alcotest :with-test)))

(package
 (name google-api-cloudidentity)
 (synopsis "Cloud Identity API v1")
 (description
  "Types, JSON codecs and calls generated from the Discovery document of the Cloud\nIdentity API v1.")
 (depends
  (ocaml
   (>= 5.5.0))
  dune
  (google-api
   (= :version))
  uri
  yojson
  (alcotest :with-test)))

(package
 (name google-api-bigquery)
 (synopsis "BigQuery API v2")
 (description
  "Types, JSON codecs and calls generated from the Discovery document of the\nBigQuery API v2.")
 (depends
  (ocaml
   (>= 5.5.0))
  dune
  (google-api
   (= :version))
  uri
  yojson
  (alcotest :with-test)))

(package
 (name google-api-pubsub)
 (synopsis "Cloud Pub/Sub API v1")
 (description
  "Types, JSON codecs and calls generated from the Discovery document of the Cloud\nPub/Sub API v1.")
 (depends
  (ocaml
   (>= 5.5.0))
  dune
  (google-api
   (= :version))
  uri
  yojson
  (alcotest :with-test)))

(package
 (name google-auth)
 (synopsis "Google sign-in (OpenID Connect) and OAuth 2.0 tokens")
 (description
  "Authorization URLs, code exchange with ID token validation and token refresh for\nGoogle accounts. HTTP goes through the google-api effect.")
 (depends
  (ocaml
   (>= 5.5.0))
  dune
  (google-api
   (= :version))
  (oidc
   (>= 0.2.0))
  (jose
   (>= 0.11.0))
  ptime
  digestif
  base64
  uri
  yojson
  (alcotest :with-test)
  (mirage-crypto-ec :with-test)
  (mirage-crypto-pk :with-test)
  (mirage-crypto-rng :with-test)))

(package
 (name google-api-cohttp-eio)
 (synopsis "Cohttp-eio handler for google-api")
 (description "Handles the google-api HTTP effect with a cohttp-eio client.")
 (depends
  (ocaml
   (>= 5.5.0))
  dune
  (google-api
   (= :version))
  eio
  cohttp-eio
  http
  (eio_main :with-test)
  (alcotest :with-test)))
