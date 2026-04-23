# 🚀 Assignment 41: Kubernetes Runtime Security with Admission Controllers

## 📌 Overview

This project demonstrates **runtime security enforcement in Kubernetes** using admission controllers.
We implemented policy-as-code to prevent insecure workloads from being deployed.

---

## 🛠️ Tech Stack

* Kubernetes
* Kyverno (Admission Controller)
* GitHub Actions
* DevSecOps Practices

---

## 🔐 Security Controls Implemented

### ❌ Block Insecure Configurations

* Privileged containers
* Root user execution

### ✅ Enforce Best Practices

* Non-root containers
* Read-only filesystem
* No privilege escalation

---

## 📂 Project Structure

```
k8s/
 └── manifests/
     ├── bad-pod.yaml
     ├── secure-pod.yaml
     └── kyverno-policy.yaml
```

---

## ⚙️ How It Works

1. Kyverno acts as a Kubernetes Admission Controller
2. Every pod request is validated before deployment
3. If policy is violated → deployment is blocked

---

## 🧪 Testing

### ❌ Insecure Pod (Blocked)

```bash
kubectl apply -f bad-pod.yaml
```

### ✅ Secure Pod (Allowed)

```bash
kubectl apply -f secure-pod.yaml
```

---

## 🔄 CI/CD Security

GitHub Actions pipeline checks:

* Privileged containers
* Missing security configurations

---

## 🎯 Key Learnings

* Kubernetes Admission Controllers
* Policy-as-Code (Kyverno)
* Runtime Security Enforcement
* DevSecOps Pipeline Integration

---

## 📊 Industry Relevance

Aligned with:

* NIST SP 800-53
* CIS Benchmarks
* OWASP
* DevSecOps Maturity Model

---

## 👨‍💻 Author

Ashish Mondal
DevSecOps Engineer
