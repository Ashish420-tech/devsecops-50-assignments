# Assignment 2: Container Security Scan with Trivy

## 📌 Objective

To scan Docker images for vulnerabilities using Trivy and integrate results into GitHub Security using SARIF.

---

## 🛠️ Tools Used

* Trivy (Container Vulnerability Scanner)
* Docker
* GitHub Actions
* SARIF (Static Analysis Results Interchange Format)

---

## 📂 Project Structure

```
assignment-02-trivy-container-scan/
├── docs/
├── reports/
│   ├── trivy-report.txt
│   └── trivy-report.sarif
└── README.md
```

---

## ⚙️ Setup & Installation

### Install Docker

```bash
sudo apt install docker.io -y
```

### Install Trivy

```bash
sudo apt install wget apt-transport-https gnupg lsb-release -y
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo "deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/trivy.list
sudo apt update
sudo apt install trivy -y
```

---

## 🔍 Manual Scan

```bash
docker pull nginx:latest
trivy image nginx:latest
```

### 📊 Scan Summary

* Total Vulnerabilities: 181
* HIGH: 14
* MEDIUM: 31
* LOW: 126

---

## 📁 Save Reports

```bash
trivy image --format table -o reports/trivy-report.txt nginx:latest
trivy image --format sarif -o reports/trivy-report.sarif nginx:latest
```

---

## ⚡ CI/CD Integration (GitHub Actions)

Workflow file:

```
.github/workflows/trivy-scan.yml
```

### Key Features:

* Runs on push to assignment branch
* Installs Trivy
* Scans Docker image
* Generates SARIF report
* Uploads results to GitHub Security tab

---

## 🔐 GitHub Security Integration

* SARIF report uploaded using GitHub Actions
* Results visible in:
  **Security → Code Scanning Alerts**

---

## 🚨 Key Learnings

* Official Docker images can contain vulnerabilities
* Trivy helps identify OS-level CVEs
* SARIF enables integration with GitHub Security
* CI/CD ensures automated security scanning
* Proper permissions (`security-events: write`) are required

---

## ❗ Issues Faced & Fixes

| Issue                   | Solution                      |
| ----------------------- | ----------------------------- |
| Workflow not triggering | Fixed incorrect workflow path |
| SARIF upload failed     | Added GitHub permissions      |
| Scan timeout            | Increased timeout duration    |

---

## ✅ Conclusion

Successfully implemented container security scanning using Trivy with CI/CD integration and GitHub Security dashboard visibility.
