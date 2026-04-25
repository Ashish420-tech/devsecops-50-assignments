# 🚀 Assignment 48: Vulnerability Management – End-to-End DevSecOps Pipeline

## 📌 Overview

This project demonstrates a **production-grade DevSecOps pipeline** implementing **end-to-end vulnerability management** using modern tools and best practices.

The pipeline integrates:

* 🔹 CI/CD with GitHub Actions
* 🔹 Security scanning with Trivy, Gitleaks, Snyk
* 🔹 Secure build & validation
* 🔹 Automated security gates (fail on critical vulnerabilities)

---

## 🎯 Objective

To design and implement a **secure DevSecOps pipeline** that:

* Detects vulnerabilities early (Shift-Left Security)
* Enforces security policies in CI/CD
* Prevents insecure code from reaching production
* Provides actionable security insights

---

## 🏗️ Architecture

```text
Developer → GitHub → GitHub Actions
                      ↓
          --------------------------
          | Trivy (SCA / Image)   |
          | Gitleaks (Secrets)    |
          | Snyk (Dependencies)   |
          --------------------------
                      ↓
             Security Gate (Fail)
                      ↓
                 Build & Deploy
```

---

## ⚙️ Tech Stack

| Tool           | Purpose                             |
| -------------- | ----------------------------------- |
| GitHub Actions | CI/CD Automation                    |
| Trivy          | Vulnerability Scanning (FS + Image) |
| Gitleaks       | Secret Detection                    |
| Snyk           | Dependency Security                 |
| Docker         | Containerization                    |
| Kubernetes     | Deployment (optional)               |

---

## 📂 Project Structure

```text
assignment-48-devsecops-vuln-mgmt/
├── app/                      # Vulnerable sample app
├── Dockerfile               # Container build
├── k8s/                     # Kubernetes manifests
├── sonar-project.properties # SAST config
├── .github/workflows/
│   ├── vuln-mgmt.yml        # Main workflow
│   └── reusable-security.yml # Reusable pipeline
└── README.md
```

---

## 🔄 CI/CD Pipeline Flow

1. Developer pushes code / creates PR
2. GitHub Actions triggers pipeline
3. Security scans executed:

   * Trivy → vulnerabilities
   * Gitleaks → secrets
   * Snyk → dependencies
4. Security gate evaluates results
5. ❌ Pipeline fails on HIGH/CRITICAL issues
6. ✅ Only secure code proceeds

---

## 🛡️ Security Controls Implemented

* ✔ Vulnerability scanning (SCA + container)
* ✔ Secret detection
* ✔ Automated pipeline gating
* ✔ Path-based workflow isolation
* ✔ Reusable workflow architecture
* ✔ Secure CI/CD practices

---

## 📊 Key Features

* 🔥 **Shift-left security** (scan at PR stage)
* 🔥 **Fail-fast pipelines**
* 🔥 **Reusable GitHub workflows**
* 🔥 **Clean monorepo CI architecture**
* 🔥 **Automated validation**

---

## 🧪 How to Run Locally

```bash
# Build image
docker build -t devsecops-app .

# Run container
docker run -p 3000:3000 devsecops-app

# Run Trivy scan
trivy fs .
```

---

## 📸 Screenshots (Add Here)

* ❌ Pipeline failure (before fix)
* ✅ Pipeline success (after fix)
* 🔍 Trivy scan results
* 🔐 GitHub Security tab

---

## 📈 Metrics & Outcomes

* Reduced vulnerability exposure
* Faster detection (MTTD ↓)
* Faster remediation (MTTR ↓)
* Improved pipeline reliability

---

## 🧠 Key Learnings

* Importance of **pipeline gating**
* Managing **YAML complexity in CI/CD**
* Designing **scalable workflow architecture**
* Debugging real-world DevSecOps issues
* Implementing **security as code**

---

## ⚠️ Challenges Faced

* Duplicate YAML keys (`branches`)
* Workflow over-triggering
* Path-based filtering issues
* Nested Git repository bug
* CI pipeline noise

---

## 🚀 Future Enhancements

* Integrate SonarQube (SAST)
* Add ArgoCD (GitOps deployment)
* Implement SBOM generation
* Add Slack/Email notifications
* Dashboard with security metrics

---

## 📚 References

* NIST SP 800-53
* OWASP Top 10
* CIS Benchmarks
* DevSecOps Maturity Model (DSOMM)

---

## 👨‍💻 Author

**Ashish Mondal**

🔗 GitHub: https://github.com/Ashish420-tech

---

## ⭐ If you found this useful

Give this repo a ⭐ and connect with me for more DevSecOps projects!
