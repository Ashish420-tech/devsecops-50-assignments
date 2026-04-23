# 🚀 Assignment 40 – License Compliance Scanning with FOSSA

## 📌 Project Overview
This project demonstrates how to implement **License Compliance and Dependency Scanning** in a DevSecOps pipeline using FOSSA integrated with GitHub Actions.

The goal is to detect vulnerable dependencies and risky open-source licenses early in the CI/CD lifecycle and enforce security gates before deployment.

---

## 🛠️ Tools & Technologies

- FOSSA – License & Dependency Scanning
- GitHub Actions – CI/CD Automation
- SARIF – Security Report Format
- Node.js – Sample Application

---

## 🧠 Key Concepts Covered

- Software Composition Analysis (SCA)
- License Compliance (MIT, GPL, Apache)
- CI/CD Security Gates
- SARIF Integration with GitHub Security
- DevSecOps Pipeline Automation

---

## 📂 Project Structure


devsecops-50-assignments/
│
├── .github/
│ └── workflows/
│ └── fossa.yml # CI/CD Pipeline
│
├── assignment-40-fossa/
│ ├── app.js
│ ├── package.json
│ ├── package-lock.json
│ └── .fossa.yml # FOSSA Configuration


---

## ⚙️ Setup Instructions

### 1️⃣ Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/devsecops-50-assignments.git
cd assignment-40-fossa
2️⃣ Install Dependencies
npm install
3️⃣ Install FOSSA CLI
curl -H "Cache-Control: no-cache" https://raw.githubusercontent.com/fossas/fossa-cli/master/install-latest.sh | bash
4️⃣ Set API Key
export FOSSA_API_KEY=your_api_key
5️⃣ Run Scan Locally
fossa analyze
fossa test
🔄 CI/CD Pipeline (GitHub Actions)

Pipeline file: .github/workflows/fossa.yml

Workflow Features:
Runs on push & pull request
Installs FOSSA CLI
Scans dependencies
Generates SARIF report
Uploads results to GitHub Security tab
Fails pipeline on critical issues 🚨
🔐 Security Workflow
Developer Push Code
        ↓
GitHub Actions Trigger
        ↓
FOSSA Analyze (Dependencies + Licenses)
        ↓
FOSSA Test
        ↓
Critical Issue Found?
        ├── YES → ❌ Pipeline FAIL
        └── NO  → ✅ Pipeline PASS
        ↓
SARIF Upload → GitHub Security Dashboard
📊 Sample Commands
# Run full scan
fossa analyze && fossa test

# Fail only on critical issues
fossa test --severity critical

# Generate SARIF report
fossa test --format sarif --output fossa-results.sarif
🚨 Testing Pipeline Failure

To simulate vulnerability:

npm install minimist@0.0.8
git push

👉 This triggers pipeline failure due to vulnerable dependency.

📈 Security Benefits
Detects vulnerable dependencies early
Prevents risky licenses in production
Automates compliance checks
Improves DevSecOps maturity
💼 Interview Questions & Answers
Q1: What is FOSSA?

FOSSA is a tool for license compliance and dependency scanning used in DevSecOps pipelines.

Q2: What is SCA?

Software Composition Analysis (SCA) scans third-party dependencies for vulnerabilities and license risks.

Q3: Why fail pipeline on critical issues?

To prevent insecure code from reaching production environments.

Q4: What is SARIF?

SARIF is a standard format used to upload static analysis results to platforms like GitHub Security.

Q5: Why were dependencies not detected initially?

Because FOSSA scanned the wrong Git context instead of the application directory.

🏁 Conclusion

This project demonstrates a production-ready DevSecOps implementation with automated license compliance scanning and security enforcement using FOSSA.

🔗 Author

Ashish Mondal
DevSecOps Engineer | Cloud | Security | Automation
