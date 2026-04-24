# 🔐 Assignment 43 – S3 Security Audit & Remediation (DevSecOps)

## 🚀 Overview

This project demonstrates how to **detect and remediate AWS S3 security misconfigurations** using a DevSecOps pipeline.
We used Terraform for infrastructure and Checkov for automated security scanning integrated with GitHub Actions.

---

## 🛠️ Tech Stack

* AWS S3
* Terraform (IaC)
* Checkov (IaC Security Scanner)
* GitHub Actions (CI/CD)
* SARIF (Security Reporting)

---

## 📂 Project Structure

```
devsecops-50-assignments/
├── .github/workflows/aws-s3-scan.yml
└── assignment-43-s3-security-audit/
    ├── terraform/s3-bucket.tf
    ├── config/aws-s3.yml
    ├── reports/
    ├── scripts/
    └── README.md
```

---

## 🔴 Phase 1 – Insecure Configuration (Detection)

Created an intentionally insecure S3 bucket:

* ❌ Public access enabled
* ❌ No encryption
* ❌ No versioning

### 🔍 Result

* Checkov detected critical issues
* CI/CD pipeline failed
* SARIF report generated in GitHub Security tab

---

## 🟢 Phase 2 – Secure Configuration (Remediation)

Applied best practices:

* ✅ Block public access
* ✅ Enable versioning
* ✅ Enable encryption (KMS)
* ✅ Enable access logging
* ✅ Add lifecycle policy

### 🔍 Result

* Security issues resolved
* Pipeline passed successfully
* Clean security report

---

## ⚙️ CI/CD Security Pipeline

GitHub Actions workflow:

* Runs on push & PR
* Executes Checkov scan on Terraform
* Generates SARIF report
* Uploads results to GitHub Security dashboard
* Fails build on critical vulnerabilities

---

## 📊 Security Controls Implemented

| Control             | Status |
| ------------------- | ------ |
| Public Access Block | ✅      |
| Encryption at Rest  | ✅      |
| Versioning          | ✅      |
| Logging             | ✅      |
| Lifecycle Policy    | ✅      |
| KMS Encryption      | ✅      |

---

## 🧠 Key Learnings

* Importance of **least privilege in S3**
* How to integrate **security into CI/CD pipelines**
* Terraform security best practices
* Automated vulnerability detection & remediation
* DevSecOps shift-left approach

---

## 📈 Outcome

✔ Built a real-world DevSecOps pipeline
✔ Detected and fixed critical cloud security issues
✔ Automated security enforcement in CI/CD

---

## 👨‍💻 Author

**Ashish Mondal**
DevSecOps | Cloud Security | AWS | Terraform

---
