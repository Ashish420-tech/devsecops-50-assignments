                                                    🛡️ DevSecOps — 50 Hands-On Assignments  
                                            Integrating Security at Every Stage of the Software Development Lifecycle  
                                            By Ashish Mondal · DevSecOps Engineer & Security Automation Enthusiast  

                                            🔗 LinkedIn: https://www.linkedin.com/in/your-linkedin  
                                            🔗 GitHub: https://github.com/Ashish420-tech/devsecops-50-assignments  

---

🎯 What Is This Project?

This repository is a complete, hands-on DevSecOps lab — 50 real-world assignments that embed security into every phase of a modern CI/CD pipeline. Each assignment goes beyond surface-level tutorials: it covers the why behind each tool, the how of integration, and the what-if of common failure modes.

The core philosophy: Security is not a gate at the end — it's a pipeline-first discipline. Every commit, every build, every deploy has a security obligation.

---

📊 Coverage at a Glance

| Domain | Assignments | Key Tools |
|--------|------------|----------|
| 🔑 Secrets Management | 5 | Gitleaks · HashiCorp Vault · External Secrets Operator · AWS Secrets Manager |
| 📦 Container Security | 6 | Trivy · Cosign · Syft (SBOM) · Distroless · Rootless Images |
| 🏗️ IaC Security | 4 | Checkov · Kubesec · Terraform State Security · Remote Backends |
| 🔍 SAST / Code Quality | 2 | SonarQube · CodeQL |
| 🌐 DAST / API Testing | 3 | OWASP ZAP · Nuclei · kube-hunter |
| 📜 Supply Chain Security | 3 | Syft · Cosign · Dependency-Track |
| ☁️ Cloud Security | 5 | AWS GuardDuty · AWS SecurityHub · AWS WAF · EKS Hardening · S3 Audit |
| 🕸️ Network Security | 3 | Kubernetes NetworkPolicy · Istio mTLS · Kubernetes Audit Logging |
| 🚦 Runtime Security | 3 | Falco · Admission Controllers · Pod Security Standards |
| 🔐 Access & Identity | 4 | Kubernetes RBAC · OPA/Gatekeeper · OIDC Federated Identity · IAM Least Privilege |
| 📋 Compliance | 5 | CIS Benchmarks · kube-bench · SOC 2 · DORA Metrics · FOSSA |
| 📡 Monitoring & SIEM | 3 | Prometheus · Grafana · Splunk · ELK Stack |
| ⚙️ CI/CD Pipeline | 4 | GitHub Actions Security · Jenkins Hardening · Snyk · GitOps with ArgoCD |
| 🏁 Capstone Project | 1 | End-to-End DevSecOps Pipeline |

---

📁 Repository Structure

```bash
devsecops-50-assignments/

├── assignment-01-gitleaks/                # Secrets Detection
├── assignment-02-trivy/                  # Container Vulnerability Scanning
├── assignment-03-checkov/                # IaC Security Scanning
├── assignment-04-sonarqube/              # SAST & Code Quality
├── assignment-05-vault/                  # Secrets Management
├── assignment-06-owasp-zap/              # Dynamic Application Testing
├── assignment-07-opa-gatekeeper/         # Kubernetes Policy Enforcement
├── assignment-08-network-policy/         # Kubernetes Network Security
├── assignment-09-github-actions/         # Secure CI/CD Workflows
├── assignment-10-kube-bench/             # CIS Benchmark Compliance
├── assignment-11-falco/                  # Runtime Threat Detection
├── assignment-12-sbom/                   # Software Bill of Materials
├── assignment-13-kubernetes-rbac/        # Identity & Access Management
├── assignment-14-external-secrets/       # External Secrets Operator + AWS SM
├── assignment-15-terraform-state-security/ # Terraform State Security ✅
│ ...
├── assignment-50-capstone/               # End-to-End DevSecOps Pipeline

🔧 The DevSecOps Toolchain

CI/CD SECURITY PIPELINE

Pre-Commit → Build → Test → Artifacts → Runtime

Gitleaks → Trivy (image) → OWASP ZAP → Cosign → Falco  
Husky → Checkov (IaC) → Nuclei (API) → Syft → Istio mTLS  
pre-commit → SonarQube → kube-hunter → Trivy → NetworkPolicy  

DEPLOY & GOVERN  
OPA Gatekeeper · Kyverno  
ArgoCD · Vault · RBAC  

MONITOR & COMPLY  
Prometheus · Grafana · Splunk  
AWS SecurityHub · kube-bench
✅ Completed Assignments (15 / 50)

🔐 Assignment 01 — Detect Hardcoded Secrets with Gitleaks
📦 Assignment 02 — Container Vulnerability Scanning with Trivy
🏗️ Assignment 03 — IaC Security Scanning with Checkov
🔍 Assignment 04 — Static Analysis with SonarQube
🗝️ Assignment 05 — Secrets Management with HashiCorp Vault
🌐 Assignment 06 — Dynamic Testing with OWASP ZAP
📦 Assignment 07 — Dependency Scanning with OWASP Dependency-Check
🕸️ Assignment 08 — Network Policy Enforcement in Kubernetes
⚙️ Assignment 09 — Secure GitHub Actions Workflows
📋 Assignment 10 — Kubernetes CIS Benchmark with kube-bench
🦅 Assignment 11 — Runtime Threat Detection with Falco
📜 Assignment 12 — SBOM Generation and Verification
🔐 Assignment 13 — Kubernetes RBAC Deep Dive
🗝️ Assignment 14 — External Secrets Operator with AWS Secrets Manager
🏗️ Assignment 15 — Terraform State Security & Remote Backends ✅

🧠 Key Technical Competencies Demonstrated

SAST → SonarQube · CodeQL · Semgrep
DAST → OWASP ZAP · Nuclei · kube-hunter
SCA → OWASP Dependency-Check · Snyk · Syft
IaC Sec → Checkov · Kubesec · Terrascan
Secrets → Gitleaks · HashiCorp Vault · AWS Secrets Manager
Runtime → Falco · OPA · Pod Security Standards
CI/CD → GitHub Actions · Jenkins · ArgoCD
Cloud → AWS GuardDuty · SecurityHub · WAF · EKS
Crypto → Cosign · cert-manager · mTLS (Istio)
Compliance → CIS · SOC 2 · NIST SP 800-53 · DORA Metrics

⚙️ CI/CD Pipeline Overview

on: [push, pull_request]

jobs:
  secrets-scan:
  sast:
  sca:
  container-scan:
  iac-scan:
  dast:
  sign-and-publish:

Every stage is a mandatory gate. Failure at any point halts the pipeline.

🌍 Real-World Impact

Supply chain attacks (SolarWinds-style) → Cosign image signing + SBOM generation
Secret sprawl (Uber breach) → Gitleaks + Vault injection
Misconfigured cloud (Capital One) → Checkov + AWS SecurityHub
Container escape → Falco syscall monitoring
Log4Shell → Dependency-Track CVE management

🚀 Getting Started

# Prerequisites
docker --version
kubectl version
terraform --version
git --version

# Clone the repository
git clone https://github.com/Ashish420-tech/devsecops-50-assignments.git
cd devsecops-50-assignments

# Start with Assignment 01
cd assignment-01-gitleaks

📈 Progress Tracker

Secrets Management ██████░░░░ 3/5  
Container Security ████░░░░░░ 2/6  
IaC Security ███░░░░░░░ 2/4   ⬅️ UPDATED  
SAST █████░░░░░ 1/2  
DAST / API Testing ███░░░░░░░ 1/3  
Supply Chain ███░░░░░░░ 1/3  
Network Security ███░░░░░░░ 1/3  
CI/CD Security ██░░░░░░░░ 1/4  
Compliance ██░░░░░░░░ 1/5  
Runtime Security ███░░░░░░░ 1/3  
Access & Identity ██░░░░░░░░ 1/4  
Cloud Security ░░░░░░░░░░ 0/5  
Monitoring & SIEM ░░░░░░░░░░ 0/3  
Capstone ░░░░░░░░░░ 0/1  

Overall: ███████░░░ 15/50 (30%)

📚 References & Standards

NIST SP 800-53
CIS Kubernetes Benchmark
OWASP DevSecOps Guideline
SLSA Supply Chain Framework
SOC 2 Type II Controls

🔥 Latest Achievement

✅ Assignment 15 — Terraform State Security & Remote Backends

Secured Terraform state using S3 backend
Enabled state locking with DynamoDB
Encrypted state using AWS KMS
Prevented sensitive data exposure in tfstate

Built with security-first thinking by Ashish Mondal

"Security is not a feature — it's a foundation."

⭐ Star · 🍴 Fork · 🔗 Share
