#!/usr/bin/env bash

EVENT_TYPE="${1:-deployment}"
STATUS="${2:-success}"

cat <<EOF > dora_event.json
{
  "title": "DORA: $EVENT_TYPE",
  "text": "DORA Event Triggered\nType: $EVENT_TYPE\nStatus: $STATUS\nCommit: $GITHUB_SHA\nActor: $GITHUB_ACTOR",
  "tags": ["dora","event:$EVENT_TYPE","status:$STATUS"],
  "alert_type": "info",
  "source_type_name": "github-actions"
}
EOF
