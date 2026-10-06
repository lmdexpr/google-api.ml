#!/usr/bin/env bash
# Adds a generated API package: vendors the Discovery document, registers it in
# update-discovery.sh, dune-project and README, then generates the bindings.
# Tests are left to write by hand. Needs `curl`, `jq` and `dune`.
#
#   scripts/add-api.sh cloudidentity cloudidentity.v1.json \
#     'https://cloudidentity.googleapis.com/$discovery/rest?version=v1' 'Cloud Identity API v1'
set -euo pipefail

if [ $# -ne 4 ]; then
  echo "usage: $0 <name> <discovery-file> <discovery-url> <title>" >&2
  exit 2
fi
name=$1 file=$2 url=$3 title=$4

if ! [[ $name =~ ^[a-z][a-z0-9]*$ ]]; then
  echo "name must be lowercase alphanumeric: $name" >&2
  exit 2
fi

cd "$(dirname "$0")/.."

if [ -e "apis/$name" ] || [ -e "discovery/$file" ]; then
  echo "apis/$name or discovery/$file already exists" >&2
  exit 1
fi

# Same normalization as update-discovery.sh: Google reorders members per request.
curl -sSf "$url" | jq -S . > "discovery/$file"
printf 'discovery/%s revision %s\n' "$file" "$(jq -r .revision "discovery/$file")"

if jq -e '.. | objects | select(has("mediaUpload") or .supportsMediaDownload == true)' \
  "discovery/$file" > /dev/null; then
  echo "warning: the document has media methods, which the generator refuses" >&2
fi

printf "fetch %s '%s'\n" "$file" "$url" >> scripts/update-discovery.sh

mkdir "apis/$name"
sed "s/google_api_tasks/google_api_$name/g; s/google-api-tasks/google-api-$name/; s/tasks\.v1\.json/$file/" \
  apis/tasks/dune > "apis/$name/dune"
# dune only diffs, and so promotes, files that already exist.
touch "apis/$name/google_api_$name.ml" "apis/$name/google_api_$name.mli" "google-api-$name.opam"

# Wrap at 80 columns like the other descriptions; "\n" stays literal for dune.
description=$(
  printf 'Types, JSON codecs and calls generated from the Discovery document of the %s.\n' "$title" |
    awk '{
      line = ""
      for (i = 1; i <= NF; i++)
        if (line == "") line = $i
        else if (length(line) + 1 + length($i) <= 80) line = line " " $i
        else { out = out line "\\n"; line = $i }
      print out line
    }'
)

# Insert before google-auth so the API packages stay together.
STANZA="(package
 (name google-api-$name)
 (synopsis \"$title\")
 (description
  \"$description\")
 (depends
  (ocaml
   (>= 5.5.0))
  dune
  (google-api
   (= :version))
  uri
  yojson
  (alcotest :with-test)))" \
  awk '
    held { if ($0 == " (name google-auth)") printf "%s\n\n", ENVIRON["STANZA"]; print "(package"; held = 0 }
    $0 == "(package" { held = 1; next }
    { print }
  ' dune-project > dune-project.tmp
mv dune-project.tmp dune-project
grep -qF "(name google-api-$name)" dune-project || { echo "failed to update dune-project" >&2; exit 1; }

ROW="| \`google-api-$name\` | $title |" \
  awk 'index($0, "| `google-auth`") == 1 { print ENVIRON["ROW"] } { print }' README.md > README.md.tmp
mv README.md.tmp README.md
grep -qF "| \`google-api-$name\` |" README.md || { echo "failed to update README.md" >&2; exit 1; }

# A new package changes the dependency hash of the lock dir.
dune pkg lock
dune runtest || true
dune promote
dune runtest

echo "Added google-api-$name. Write test/test_$name.ml and register it in test/dune."
