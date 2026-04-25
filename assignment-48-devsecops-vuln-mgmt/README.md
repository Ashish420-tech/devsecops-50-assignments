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
```
docker build -t devsecops-app .
docker run -p 3000:3000 devsecops-app
```
