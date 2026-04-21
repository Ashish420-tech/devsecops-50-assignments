🚀 Assignment 36: Snyk Security in CI/CD (DevSecOps)
📌 Overview

This project demonstrates how to integrate Snyk (Software Composition Analysis) into a CI/CD pipeline using GitHub Actions to automatically detect and prevent vulnerable dependencies before deployment.

The goal is to enforce a security gate where builds fail if high or critical vulnerabilities are detected.

🛠️ Tech Stack
Node.js
npm
Snyk CLI
GitHub Actions
SARIF (Security Reporting)
🎯 Key Features
🔍 Dependency vulnerability scanning using Snyk
🚫 CI pipeline fails on HIGH/CRITICAL vulnerabilities
🔐 Secure authentication using GitHub Secrets (SNYK_TOKEN)
📊 SARIF report integration with GitHub Security Dashboard
🔄 Automated scans on push and pull requests
📂 Project Structure
.
├── assignment-36-snyk-security/
│   ├── package.json
│   ├── package-lock.json
├── .github/
│   └── workflows/
│       └── snyk.yml
├── .gitignore
└── README.md
⚙️ CI/CD Workflow

The GitHub Actions workflow performs:

Checkout code
Setup Node.js
Install dependencies
Run Snyk scan
Upload SARIF report
🔐 Snyk Integration
Step 1: Get API Token
Go to Snyk Dashboard → Account Settings
Copy Personal API Token
Step 2: Add GitHub Secret
Name: SNYK_TOKEN
Value: <your-token>
🚀 Workflow File
name: Snyk Security Scan

on:
  push:
    branches: [main, assignment-36-snyk-security]
  pull_request:

jobs:
  security-scan:
    runs-on: ubuntu-latest

    permissions:
      contents: read
      security-events: write

    defaults:
      run:
        working-directory: assignment-36-snyk-security

    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-node@v4
        with:
          node-version: 18

      - run: npm install

      - run: npm install -g snyk

      - run: snyk test --file=package.json --sarif-file-output=snyk.sarif --severity-threshold=high
        env:
          SNYK_TOKEN: ${{ secrets.SNYK_TOKEN }}

      - uses: github/codeql-action/upload-sarif@v3
        if: always()
        with:
          sarif_file: assignment-36-snyk-security/snyk.sarif
🧪 Testing the Security Gate
✅ Clean Run (PASS)
No vulnerabilities
Pipeline succeeds
❌ Vulnerable Run (FAIL)
npm install lodash@4.17.11

👉 Push code → Pipeline fails automatically

📊 GitHub Security Dashboard
Navigate to Security → Code Scanning Alerts
View Snyk results via SARIF integration
🧠 Key Learnings
Implemented SCA (Software Composition Analysis)
Secured CI/CD pipeline with automated vulnerability checks
Managed secrets securely using GitHub Secrets
Debugged real-world CI issues:
npm permission errors
workflow path issues
authentication failures
multi-project repo handling
💼 Real-World Use Case

This setup ensures:

Vulnerable dependencies are blocked before production
Developers get early feedback
Security is integrated into DevOps → DevSecOps
🔥 Interview Q&A

Q: What is Snyk?
A: A security tool used to find and fix vulnerabilities in dependencies.

Q: How does your pipeline enforce security?
A: It fails builds when vulnerabilities exceed a defined severity threshold.

Q: Why use SARIF?
A: To integrate scan results into GitHub Security Dashboard.

Q: How do you handle secrets?
A: Using GitHub Secrets (SNYK_TOKEN) for secure authentication.

🏁 Conclusion

This project demonstrates a production-grade DevSecOps practice by integrating automated security scanning into CI/CD pipelines, ensuring secure and reliable software delivery.

🔗 Author

Ashish Mondal
DevOps | DevSecOps Engineer

⭐ If you found this useful, give it a star!
