# 🚀 Assignment 37: Kubernetes Audit Logging Deep Dive (DevSecOps)

## 📌 Overview

This project demonstrates **Kubernetes Audit Logging and Security Enforcement in CI/CD pipelines**.
It simulates real-world DevSecOps practices by detecting risky operations (like resource deletion) and automatically failing the pipeline.

---

## 🎯 Objective

* Implement Kubernetes audit logging concepts
* Detect critical operations from logs
* Integrate security checks into CI/CD
* Enforce pipeline failure on security violations

---

## 🛠 Tech Stack

* Kubernetes (Minikube)
* GitHub Actions
* YAML (CI/CD pipelines)
* Linux CLI

---

## 📂 Project Structure

```
assignment-37-kubernetes-security/
│── app/
│   └── test.yaml
│── .github/workflows/
│   └── kubernetes.yml
│── audit.log
│── audit-policy.yaml
│── kubernetes.yaml
│── README.md
```

---

## 🔐 Audit Logging Concept

Kubernetes audit logging tracks **who did what and when** inside the cluster.

Example audit event:

```json
{
  "verb": "delete",
  "resource": "namespace",
  "user": "admin"
}
```

---

## ⚙️ Implementation

### 1️⃣ Audit Log Simulation

Due to local Minikube limitations, audit logs are simulated:

```
audit.log
```

```json
{"verb":"create","resource":"pods","user":"admin"}
{"verb":"delete","resource":"namespace","user":"admin"}
```

---

### 2️⃣ CI/CD Security Pipeline

GitHub Actions workflow:

```
.github/workflows/kubernetes.yml
```

```yaml
- name: Audit Security Check
  run: |
    echo "Scanning audit logs..."
    cat audit.log

    if grep -i "delete" audit.log; then
      echo "🚨 CRITICAL: Delete operation detected"
      exit 1
    else
      echo "✅ No critical issues found"
    fi
```

---

## 🚨 Security Enforcement

| Action Detected | Pipeline Result |
| --------------- | --------------- |
| create          | ✅ Pass          |
| delete          | ❌ Fail          |

👉 This ensures **dangerous operations are blocked automatically**

---

## 🔄 Workflow Execution

1. Developer pushes code
2. GitHub Actions runs
3. Audit logs are scanned
4. If critical action found → pipeline fails

---

## 📊 Output (Example)

### ❌ Failed Pipeline

```
CRITICAL: Delete operation detected
Process completed with exit code 1
```

### ✅ Successful Pipeline

```
No critical issues found
```

---

## ⚠️ Challenges Faced

* Minikube API server crashed when enabling full audit logging
* Docker driver limitations in WSL environment
* `.gitignore` blocking audit.log file
* Workflow not triggering due to branch mismatch

---

## 💡 Solution Approach

* Used lightweight audit simulation instead of API server logging
* Fixed `.gitignore` to include audit.log
* Updated GitHub Actions trigger for correct branch
* Implemented CI/CD-based security enforcement

---

## 🧠 Key Learnings

* Audit logging is critical for Kubernetes security
* CI/CD pipelines can enforce security policies automatically
* `.gitignore` can silently break security workflows
* Debugging DevOps issues requires systematic thinking

---

## 🔥 Real-World Application

In production:

* Use EKS/AKS control plane logging
* Integrate with SIEM tools (Splunk, ELK)
* Automate alerting & incident response

---

## 📈 DevSecOps Maturity Mapping

* ✅ Level 1: Security scanning in CI
* ✅ Level 2: Policy enforcement
* ⏳ Level 3: Runtime monitoring (future scope)

---

## 🎯 Conclusion

This project demonstrates how to:

* Monitor Kubernetes activity
* Detect security risks
* Enforce policies in CI/CD

👉 A practical example of **DevSecOps in action**

---

## 👨‍💻 Author

Ashish Mondal
DevOps | Cloud | DevSecOps Enthusiast

---

## ⭐ If you like this project

Give it a ⭐ on GitHub and connect on LinkedIn!
