#!/bin/bash

echo "🔧 Fixing bracket spacing..."

for file in .github/workflows/*.yml; do
  sed -i 's/\[ /\[/g' "$file"
  sed -i 's/ \]/\]/g' "$file"
done

echo "✅ Bracket spacing fixed!"
