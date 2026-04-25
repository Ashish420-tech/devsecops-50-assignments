#!/bin/bash

# Project Name
PROJECT="assignment-48-devsecops-vuln-mgmt"

echo "🚀 Creating DevSecOps Project Structure..."

# Create main directory
mkdir -p $PROJECT
cd $PROJECT || exit

# Create folders
mkdir -p app
mkdir -p k8s
mkdir -p .github/workflows

# -------------------------------
# Create Vulnerable App
# -------------------------------
cat <<EOF > app/index.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
    const userInput = req.query.name;
    res.send("Hello " + userInput); // Vulnerable to XSS
});

app.listen(3000, () => {
    console.log("App running on port 3000");
});
EOF

# -------------------------------
# Create package.json
# -------------------------------
cat <<EOF > app/package.json
{
  "name": "vulnerable-app",
  "version": "1.0.0",
  "main": "index.js",
  "dependencies": {
    "express": "4.17.1"
  }
}
EOF

# -------------------------------
# Create Dockerfile
# -------------------------------
cat <<EOF > Dockerfile
FROM node:16

WORKDIR /app
COPY app/ .

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]
EOF

# -------------------------------
# Create Kubernetes Deployment
# -------------------------------
cat <<EOF > k8s/deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: devsecops-app
spec:
  replicas: 1
  selector:
    matchLabels:
      app: devsecops-app
  template:
    metadata:
      labels:
        app: devsecops-app
    spec:
      containers:
      - name: devsecops-app
        image: yourdocker/devsecops-app:latest
        ports:
        - containerPort: 3000
EOF

# -------------------------------
# Create SonarQube Config
# -------------------------------
cat <<EOF > sonar-project.properties
sonar.projectKey=devsecops-app
sonar.sources=app
EOF

# -------------------------------
# Create GitHub Actions Workflow
# -------------------------------
cat <<EOF > .github/workflows/devsecops-pipeline.yml
name: DevSecOps Pipeline

on:
  push:
    branches: [ main ]
  pull_request:

jobs:
  security:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Trivy FS Scan
        uses: aquasecurity/trivy-action@master
        with:
          scan-type: fs
          severity: CRITICAL,HIGH
          exit-code: 1

      - name: Build Docker Image
        run: docker build -t devsecops-app .

      - name: Trivy Image Scan
        uses: aquasecurity/trivy-action@master
        with:
          image-ref: devsecops-app
          severity: CRITICAL,HIGH
          exit-code: 1
EOF

# -------------------------------
# Create README
# -------------------------------
cat <<EOF > README.md
# 🚀 DevSecOps Vulnerability Management Pipeline

This project demonstrates an end-to-end DevSecOps pipeline using:

- GitHub Actions
- Trivy
- SonarQube
- ArgoCD

## Features
- SAST + SCA scanning
- Container security scanning
- Pipeline gating (fail on critical vulnerabilities)
- Kubernetes deployment

## Run Locally
\`\`\`
docker build -t devsecops-app .
docker run -p 3000:3000 devsecops-app
\`\`\`
EOF

# -------------------------------
# Initialize Git
# -------------------------------
git init
git add .
git commit -m "Initial DevSecOps project setup"

echo "✅ Project setup complete!"
echo "👉 Next: Push to GitHub & connect pipeline"
