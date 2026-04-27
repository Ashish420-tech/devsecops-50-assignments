# 🚀 DevSecOps Capstone Project (GitOps with ArgoCD)

## 📌 Overview
This project demonstrates a complete **DevSecOps pipeline** using GitOps principles.

It integrates:
- Secure application development
- Containerization
- Kubernetes deployment
- GitOps automation using ArgoCD
- Secret management using HashiCorp Vault
- Code quality and security scanning

---

## 🧱 Tech Stack

- **Node.js** – Application
- **Docker** – Containerization
- **Kubernetes (Minikube)** – Deployment
- **ArgoCD** – GitOps Continuous Delivery
- **HashiCorp Vault** – Secret Management
- **SonarQube** – Code Quality Analysis
- **Trivy / Gitleaks** – Security Scanning
- **GitHub** – Source Control

---

## 🏗️ Architecture


Developer
↓
GitHub (branch: assignment-50-devsecops-capstone)
↓
ArgoCD (GitOps)
↓
Kubernetes (Minikube)
↓
Docker Container (Node.js App + Vault)


---

## 📁 Project Structure


assignment-50-devsecops-capstone/
├── app/
│ ├── app.js
│ ├── package.json
│ └── package-lock.json
├── k8s/
│ ├── deployment.yaml
│ └── service.yaml
├── Dockerfile
└── README.md


---

## 🔐 Secret Management (Vault)

- Vault runs in **dev mode**
- Secret stored at:


secret/data/app


- Application fetches secret dynamically using API

---

## 🐳 Docker Build

```bash
docker build -t capstone-app:latest .
☸️ Kubernetes Deployment
kubectl apply -f k8s/
🚀 GitOps with ArgoCD (CLI)
Login
argocd login localhost:8081 --insecure
Create App
argocd app create capstone-app \
--repo https://github.com/Ashish420-tech/devsecops-50-assignments.git \
--path assignment-50-devsecops-capstone/k8s \
--revision assignment-50-devsecops-capstone \
--dest-server https://kubernetes.default.svc \
--dest-namespace default \
--sync-policy automated
Sync
argocd app sync capstone-app
📊 SonarQube Analysis
Code scanned successfully
Quality Gate: ✅ Passed
No vulnerabilities detected
🔍 Security Scanning
Trivy → Filesystem + Container scanning
Gitleaks → Secret detection
✅ Results
✔ Automated deployment via GitOps
✔ Secure secret management using Vault
✔ Clean containerized application
✔ Kubernetes deployment working
✔ ArgoCD showing Healthy + Synced
🎯 Key Learnings
GitOps eliminates manual deployment errors
Secrets should never be hardcoded
CI/CD + Security must be integrated
Kubernetes + ArgoCD = production-ready pipeline
👨‍💻 Author

Ashish Mondal
GitHub: https://github.com/Ashish420-tech

⭐ Conclusion

This project demonstrates a real-world DevSecOps pipeline combining:

Automation
Security
Scalability
Reliability
