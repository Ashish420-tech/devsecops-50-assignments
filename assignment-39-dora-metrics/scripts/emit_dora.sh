#!/usr/bin/env bash
set -euo pipefail

EVENT_TYPE="${1:-deployment}"   # deployment | change | incident | recovery
STATUS="${2:-success}"          # success | failure
TS="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
SHA="${GITHUB_SHA:-local}"
ACTOR="${GITHUB_ACTOR:-local}"

cat <<EOF > dora_event.json
{
  "event_type": "$EVENT_TYPE",
  "status": "$STATUS",
  "timestamp": "$TS",
  "commit": "$SHA",
  "actor": "$ACTOR",
  "repo": "${GITHUB_REPOSITORY:-local}"
}
EOF

echo "Emitted dora_event.json:"
cat dora_event.json
