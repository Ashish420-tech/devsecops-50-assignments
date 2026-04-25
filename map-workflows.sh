#!/bin/bash

echo "🚀 Mapping workflows to correct assignments..."

declare -A mapping

mapping["kube-hunter-scan.yml"]="assignment-45-kubernetes-penetration-testing-kube-hunter/**"
mapping["aws-s3-scan.yml"]="assignment-43-s3-security-audit/**"
mapping["dora.yml"]="assignment-39-dora-metrics/**"
mapping["encryption.yml"]="assignment-42-encryption/**"
mapping["opa.yml"]="assignment-47-opa/**"
mapping["secure-workflow.yml"]="assignment-41-kubernetes-runtime-security/**"
mapping["snyk.yml"]="assignment-36-snyk-security/**"
mapping["trivy-scan.yml"]="assignment-33-docker-security/**"
mapping["checkov.yml"]="assignment-37-kubernetes-security/**"
mapping["docker-buildkit.yml"]="assignment-48-devsecops-vuln-mgmt/**"

for file in "${!mapping[@]}"; do
  path=${mapping[$file]
}
  filepath=".github/workflows/$file"

  if [ -f "$filepath" ]; then
    echo "Fixing $file"

    awk -v p="$path" '
    BEGIN {in_on=0}
    /^on:/ {
      print "on:"
      print "  push:"
      print "    branches: [main]"
      print "    paths:"
      print "      - \"" p "\""
      print ""
      print "  pull_request:"
      print "    branches: [main]"
      print "    paths:"
      print "      - \"" p "\""
      in_on=1
      next
    }
    in_on && /^[^ ]/ {in_on=0}
    !in_on {print}
    ' "$filepath" > tmp && mv tmp "$filepath"
  fi
done

echo "✅ Mapping complete!"
