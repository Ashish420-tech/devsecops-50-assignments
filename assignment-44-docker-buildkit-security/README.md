# 🔐 Assignment 44: Secure Docker Build with BuildKit, SBOM & DevSecOps Pipeline

## 🚀 Overview

This project demonstrates a **production-grade DevSecOps CI/CD pipeline** integrating security controls across the software supply chain. The pipeline enforces policies, scans vulnerabilities, generates SBOMs, and signs container images.

---

## 🧠 Objective

To implement **secure Docker build and CI/CD security practices** using modern DevSecOps tools and methodologies.

---

## 🛠️ Tech Stack

* Docker BuildKit – Secure container builds
* OPA + Conftest – Policy-as-Code enforcement
* Syft – SBOM (Software Bill of Materials) generation
* Trivy – Vulnerability scanning
* Cosign – Container image signing
* GitHub Actions – CI/CD pipeline automation

---

## 🔄 Pipeline Flow

```text
Policy Check → Build Image → Generate SBOM → Scan → Security Gate → Sign → Upload
```

---

## 🔐 Security Controls Implemented

### ✅ Policy Enforcement (Shift-Left Security)

* Block insecure Dockerfile practices
* Prevent use of `latest` tag
* Prevent running containers as root

### ✅ SBOM Generation

* Full dependency visibility using Syft
* Enables compliance and audit readiness

### ✅ Vulnerability Scanning

* Detects CVEs in container images
* Pipeline fails on critical/high severity issues

### ✅ Supply Chain Security

* Image signing using Cosign
* Ensures artifact integrity and trust

### ✅ CI/CD Integration

* Automated security checks on push & pull request
* SARIF upload to GitHub Security dashboard

---

## 📂 Project Structure

```text
devsecops-50-assignments/
│
├── .github/workflows/docker-buildkit.yml
├── policy/
│   └── docker.rego
├── assignment-44-docker-buildkit-security/
│   ├── app/
│   │   ├── Dockerfile
│   │   ├── app.js
│   │   └── package.json
│   └── docker-buildkit.yaml
```

---

## ⚙️ How It Works

1. OPA policies validate Dockerfile before build
2. Docker image is built using BuildKit
3. SBOM is generated using Syft
4. Image is scanned for vulnerabilities using Trivy
5. Pipeline fails if critical vulnerabilities are found
6. SARIF results are uploaded to GitHub Security tab
7. Image is signed using Cosign (on main branch)

---

## 📊 Key Benefits

* Early detection of security issues
* Enforced secure coding practices
* Improved software supply chain integrity
* Compliance readiness (NIST, CIS, OWASP)

---

## 💼 Real-World Relevance

This pipeline aligns with industry standards such as:

* NIST SP 800-53 (RA-5, SI-3)
* CIS Controls (Continuous Vulnerability Management)
* DevSecOps Maturity Model (Level 2+)

---

## 📌 Conclusion

This project demonstrates how to implement **end-to-end CI/CD security**, enabling teams to detect, prevent, and mitigate risks before deployment.

---

## 👨‍💻 Author

Ashish Mondal
DevSecOps Enthusiast 🚀

