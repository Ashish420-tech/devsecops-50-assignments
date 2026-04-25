# 🔐 Assignment 49 — AWS EKS Security Hardening (DevSecOps)

## 📌 Overview
This project demonstrates how to provision and secure a Kubernetes cluster using AWS EKS, and how to integrate security checks into a DevSecOps workflow.

The focus is on:
- EKS cluster setup
- Security benchmarking using kube-bench
- Understanding managed service limitations
- CI/CD security integration using GitHub Actions

---

## ⚙️ Tools & Technologies

- AWS EKS
- eksctl
- kubectl
- kube-bench (CIS Benchmark)
- Trivy (CI security scanning)
- GitHub Actions

---

## 🏗️ Architecture


Developer → GitHub → GitHub Actions (Trivy Scan)
↓
AWS EKS Cluster
↓
kube-bench Scan
↓
Security Findings & Analysis


---

## 🚀 Implementation Steps

### 1️⃣ EKS Cluster Setup

Cluster created using eksctl:

```bash
eksctl create cluster \
  --name devsecops-cluster \
  --region us-east-1 \
  --node-type t3.small \
  --nodes 2 \
  --managed
2️⃣ Cluster Verification
kubectl get nodes

✔ Output shows worker nodes in Ready state

3️⃣ Run Security Scan (kube-bench)
kubectl run kube-bench \
  --image=aquasec/kube-bench:latest \
  --restart=Never \
  --command -- /usr/local/bin/kube-bench run --targets node

kubectl logs kube-bench
📊 Scan Results
Metric	Count
PASS	0
FAIL	13
WARN	0
⚠️ Key Observations
Failures are related to:
kubelet configuration
node-level security settings
These configurations are not directly accessible in EKS
🧠 Important Insight

Amazon EKS is a managed Kubernetes service.
Many CIS benchmark checks (especially node-level configurations) are managed by AWS and cannot be modified directly by users.

🔐 Security Recommendations
Implement IAM Roles for Service Accounts (IRSA)
Use Kubernetes Network Policies
Apply Pod Security Standards
Enable logging and monitoring (CloudWatch)
Integrate container/image scanning (Trivy)
🔄 CI/CD Integration

GitHub Actions workflow added:

name: EKS Security Scan

on:
  push:
    branches: [ main ]

jobs:
  security:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4

      - name: Run Trivy Scan
        uses: aquasecurity/trivy-action@v0.20.0
        with:
          scan-type: fs
          format: sarif
          output: results.sarif

      - name: Upload SARIF
        uses: github/codeql-action/upload-sarif@v3
        with:
          sarif_file: results.sarif
🎯 Key Learnings
Hands-on experience with AWS EKS provisioning
Understanding limitations of managed Kubernetes security
Running CIS benchmark scans using kube-bench
Integrating security into CI/CD pipelines
Interpreting real-world security findings
📌 Conclusion

This project demonstrates practical DevSecOps skills by combining cloud infrastructure, Kubernetes security, and CI/CD integration. It highlights both implementation and real-world limitations of securing managed Kubernetes services like EKS.

🧹 Cleanup (Important to avoid cost)
eksctl delete cluster --name devsecops-cluster --region us-east-1
📂 Repository

https://github.com/Ashish420-tech/devsecops-50-assignments

🚀 Author

Ashish Mondal
