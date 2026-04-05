Developer → GitHub → GitHub Actions (CI/CD Pipeline)

Pipeline Stages:

1. Secrets Scan → Gitleaks
2. Code Scan → SonarQube (SAST)
3. Dependency Scan → OWASP Dependency-Check (SCA)
4. IaC Scan → Checkov
5. Container Scan → Trivy
6. Dynamic Scan → OWASP ZAP (DAST)
7. Secrets Management → HashiCorp Vault

↓

Secure Application Deployment

↓

8. Runtime Security Monitoring → Falco
Developer
   │
   ▼
GitHub Repository
   │
   ├── Gitleaks (Secrets Scan) 🔐
   ├── Trivy (Container Scan) 🐳
   ├── Checkov (IaC Scan) 🏗️
   ├── SonarQube (SAST) 🔍
   ├── Dependency-Check (SCA) 📦
   │
   ▼
GitHub Actions (CI/CD Pipeline) ⚙️
   │
   ├── Secure Workflow (Least Privilege)
   ├── CodeQL (SAST) 🔍
   ├── OIDC Authentication 🔑 (No Secrets)
   │
   ▼
Build & Deploy Stage 🚀
   │
   ▼
Kubernetes Cluster ☸️
   │
   └── Network Policies (Assignment 8) 🌐
 
