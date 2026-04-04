# Assignment 3: IaC Security Scanning with Checkov

## 📌 Objective
Perform Infrastructure as Code (IaC) security scanning using Checkov on Terraform code and integrate with CI/CD.

---

## 🛠️ Tools Used
- Checkov
- Terraform
- GitHub Actions

---

## 📂 Project Structure
assignment-03-checkov/
├── terraform/
├── docs/
├── reports/
└── .github/workflows/


---

## 🚀 Steps Performed

### 1. Installed Checkov
- Used Python virtual environment
- Installed Checkov via pip

### 2. Created Terraform Code
- Added insecure S3 bucket configuration
- Added open security group (0.0.0.0/0)

### 3. Ran Local Scan
- Command:
  ```bash
  checkov -d .
Result:
Passed: 6
Failed: 17
4. Generated Reports

JSON Report:

checkov -d . -o json > reports/checkov-report.json

SARIF Report:

checkov -d . -o sarif > reports/checkov-report.sarif
5. CI/CD Integration
Created GitHub Actions workflow
Automated Checkov scan on push
Uploaded SARIF report to GitHub Security
🔍 Key Findings
❌ S3 Bucket Issues
Public access not restricted
No encryption
No versioning
No logging
❌ Security Group Issues
Open to internet (0.0.0.0/0)
All ports allowed
Missing proper configuration
📸 Screenshots
🔹 Checkov Scan Output

🔹 JSON Report

💡 Conclusion
Successfully implemented IaC security scanning
Identified multiple misconfigurations
Integrated security into CI/CD pipeline
Enabled GitHub Security visibility
