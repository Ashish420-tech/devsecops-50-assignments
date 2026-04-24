#!/bin/bash

# Create folder structure
mkdir -p assignment-44-docker-buildkit-security/.github/workflows
mkdir -p assignment-44-docker-buildkit-security/app

cd assignment-44-docker-buildkit-security || exit

# ----------------------------
# package.json (vulnerable app)
# ----------------------------
cat <<EOF > app/package.json
{
  "name": "vulnerable-app",
  "version": "1.0.0",
  "description": "Demo vulnerable Node.js app for security scanning",
  "main": "app.js",
  "dependencies": {
    "express": "4.17.1",
    "lodash": "4.17.15"
  }
}
EOF

# ----------------------------
# app.js
# ----------------------------
cat <<EOF > app/app.js
const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Vulnerable App Running");
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});
EOF

# ----------------------------
# Dockerfile
# ----------------------------
cat <<EOF > app/Dockerfile
FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "app.js"]
EOF

# ----------------------------
# BuildKit Config
# ----------------------------
cat <<EOF > docker-buildkit.yaml
version: "1.0"

scan:
  enabled: true
  severity: ["CRITICAL", "HIGH", "MEDIUM"]
  output:
    format: sarif
    file: docker-buildkit-results.sarif

filters:
  exclude:
    - node_modules/**
EOF

# ----------------------------
# GitHub Actions Workflow
# ----------------------------
cat <<EOF > .github/workflows/docker-buildkit.yml
name: Secure Docker Build with BuildKit and SBOM

on:
  push:
    branches: [ main, develop ]
  pull_request:

jobs:
  security-scan:
    runs-on: ubuntu-latest

    permissions:
      contents: read
      security-events: write

    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Install Trivy (Scanner)
        run: |
          sudo apt-get update
          sudo apt-get install -y wget apt-transport-https gnupg lsb-release
          wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
          echo "deb https://aquasecurity.github.io/trivy-repo/deb \$(lsb_release -sc) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list
          sudo apt-get update
          sudo apt-get install -y trivy

      - name: Build Docker Image with BuildKit
        run: |
          export DOCKER_BUILDKIT=1
          docker build -t test-app ./app

      - name: Scan Image with Trivy
        run: |
          trivy image --severity CRITICAL,HIGH --format sarif --output docker-buildkit-results.sarif test-app || true

      - name: Fail on Critical Vulnerabilities
        run: |
          CRITICAL_COUNT=\$(cat docker-buildkit-results.sarif | grep -c '"level":"error"' || true)
          if [ "\$CRITICAL_COUNT" -gt 0 ]; then
            echo "❌ Critical vulnerabilities found"
            exit 1
          fi

      - name: Upload SARIF to GitHub
        uses: github/codeql-action/upload-sarif@v3
        with:
          sarif_file: docker-buildkit-results.sarif
EOF

# ----------------------------
# README
# ----------------------------
cat <<EOF > README.md
# Assignment 44 - Secure Docker Build with BuildKit and SBOM

## 🔐 Objective
Implement CI/CD security using Docker BuildKit, SBOM, and vulnerability scanning.

## ⚙️ Tools Used
- Docker BuildKit
- Trivy
- GitHub Actions

## 🚀 Features
- Vulnerable Node.js app for testing
- Docker image build using BuildKit
- Security scan using Trivy
- SARIF upload to GitHub Security tab
- Pipeline fails on critical vulnerabilities

## 📊 Workflow
1. Build Docker image
2. Scan image
3. Generate SARIF report
4. Upload results
5. Fail pipeline on critical issues

## 📌 Result
Security issues are detected early in CI/CD pipeline.
EOF

# ----------------------------
# Empty result files (optional)
# ----------------------------
touch results.json docker-buildkit-results.sarif

echo "✅ Assignment 44 setup completed successfully!"
