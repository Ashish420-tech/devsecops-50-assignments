#!/bin/bash

echo "🚀 Updating GitHub Actions workflows with path filters..."

WORKFLOW_DIR=".github/workflows"
TARGET_PATH='assignment-48-devsecops-vuln-mgmt/**'

for file in $WORKFLOW_DIR/*.yml; do
  echo "🔧 Processing $file"

  # Check if paths already exist
  if grep -q "paths:" "$file"; then
    echo "⚠️ Skipping (already has paths): $file"
    continue
  fi

  # Add paths filter under push and pull_request
  sed -i '/on:/,/jobs:/ {
    /push:/a\    paths:\n      - "'"$TARGET_PATH"'"
    /pull_request:/a\    paths:\n      - "'"$TARGET_PATH"'"
  }' "$file"

  echo "✅ Updated $file"
done

echo "🎉 All workflows updated!"
