# 🚀 Assignment 29 · IaC Security
## Kubernetes Manifest Security Scanning with Kubesec & Polaris

---

## 📌 Objective
Scan Kubernetes manifests for security misconfigurations using Kubesec and Polaris.

---

## 🛠 Tools Used
- Kubesec
- Polaris
- Kubernetes YAML

---

## 🏗️ Architecture

Kubernetes YAML → Security Scan (Kubesec / Polaris) → Risk Detection → Secure Manifest

---

## ⚠️ Insecure Manifest Issues

- Privileged container ❌
- Running as root ❌
- No resource limits ❌
- No security context ❌
- Using latest image tag ❌

---

## 🔍 Kubesec Scan (Before Fix)

```bash
kubesec scan insecure-deployment.yaml
Score: -30 ❌

🔧 Fixes Applied
Removed privileged mode
Added runAsNonRoot
Disabled privilege escalation
Added CPU & memory limits
Enabled read-only filesystem
Set image tag
🔍 Kubesec Scan (After Fix)
kubesec scan secure-deployment.yaml

Score: +8 ✅

🔍 Polaris Scan (After Fix)
polaris audit --audit-path secure-deployment.yaml

Score: 83 ✅

📈 Key Improvements
Improved security score significantly
Reduced attack surface
Enforced best practices
Eliminated critical risks
📂 Files
insecure-deployment.yaml
secure-deployment.yaml
✅ Conclusion

Kubernetes manifests must be scanned and hardened before deployment.
Tools like Kubesec and Polaris help detect and fix misconfigurations early in the DevSecOps pipeline.
