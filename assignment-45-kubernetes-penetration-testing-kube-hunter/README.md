# 🚀 Assignment 45: Kubernetes Penetration Testing with kube-hunter

## 📌 Objective
Perform Kubernetes penetration testing using kube-hunter and integrate security scanning into a DevSecOps pipeline.

---

## 🛠️ Tools & Technologies
- Kubernetes
- kube-hunter
- GitHub Actions
- SARIF Security Reports

---

## 📂 Project Structure
assignment-45-kubernetes-penetration-testing-kube-hunter/
│
├── README.md
├── kube-hunter.yaml
├── reports/
├── sample-app/
└── screenshots/


---

## ⚙️ Implementation Steps

### 1️⃣ Install kube-hunter
```bash
pip install kube-hunter
2️⃣ Run Basic Scan
kube-hunter --remote localhost
3️⃣ Configure kube-hunter

File: kube-hunter.yaml

Defined severity levels
Configured output format
Applied exclusions
4️⃣ CI/CD Integration (GitHub Actions)

✔ Automated security scan on push & PR
✔ JSON output generation
✔ Security gate (fail on critical issues)
✔ Workflow-based execution

🔍 GitHub Actions Workflow Features
Code checkout
kube-hunter installation
Automated scan execution
Results logging
Pipeline enforcement
📊 Key Security Concepts
Kubernetes Penetration Testing
Vulnerability Detection
Shift-Left Security
DevSecOps Pipeline Integration
📈 DevSecOps Impact
Early detection of vulnerabilities
Automated security checks in CI/CD
Improved Kubernetes security posture
Alignment with security best practices
⚠️ Limitations
Scan executed on localhost (no real cluster)
Limited vulnerability detection in CI environment
🧠 Key Learnings
Integration of security tools into CI/CD
Kubernetes attack surface awareness
Pipeline-based security enforcement
Debugging GitHub Actions workflows
🔗 Author

Ashish Mondal
DevSecOps Engineer 🚀
