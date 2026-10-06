#!/usr/bin/env bash
# Re-fetches the vendored Discovery documents. Review the diff, then run
# `dune runtest` and `dune promote` to regenerate the bindings.
set -euo pipefail

cd "$(dirname "$0")/../discovery"

# Google serves the members in a different order on every request.
fetch() {
  curl -sSf "$2" | jq -S . > "$1"
  printf '%s revision %s\n' "$1" "$(jq -r .revision "$1")"
}

fetch tasks.v1.json 'https://tasks.googleapis.com/$discovery/rest?version=v1'
fetch calendar.v3.json 'https://calendar-json.googleapis.com/$discovery/rest?version=v3'
fetch admin.directory_v1.json 'https://admin.googleapis.com/$discovery/rest?version=directory_v1'
fetch cloudidentity.v1.json 'https://cloudidentity.googleapis.com/$discovery/rest?version=v1'
