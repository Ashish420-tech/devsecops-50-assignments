#!/bin/bash

WORKFLOW_DIR=".github/workflows"
TARGET="assignment-48-devsecops-vuln-mgmt/**"

echo "🔍 Verifying workflows..."

for file in $WORKFLOW_DIR/*.yml; do
  echo "-----------------------------"
  echo "Checking: $file"

  if grep -q "$TARGET" "$file"; then
    echo "✅ Path filter present"
  else
    echo "❌ Missing path filter"
  fi

  if grep -q "paths:" "$file"; then
    echo "✅ 'paths' key exists"
  else
    echo "❌ 'paths' key missing"
  fi
done

echo "🎯 Verification complete"
