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
