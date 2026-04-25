#!/bin/bash

echo "🔧 Fixing duplicate 'branches' keys..."

for file in .github/workflows/*.yml; do
  echo "Processing $file"

  awk '
  BEGIN { skip=0 }
  
  # Detect push or pull_request block
  /^  push:/ || /^  pull_request:/ {
    skip=0
    print
    next
  }

  # First branches block → keep
  /^    branches:/ && skip==0 {
    skip=1
    print
    next
  }

  # Second branches block → remove
  /^    branches:/ && skip==1 {
    print "    # ❌ duplicate branches removed"
    next
  }

  # Keep all other lines
  {
    print
  }
  ' "$file" > tmp.yml && mv tmp.yml "$file"

done

echo "✅ Duplicate branches fixed!"
