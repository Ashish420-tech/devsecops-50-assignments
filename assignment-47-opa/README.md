# 🔐 Policy as Code with Open Policy Agent (OPA)

### Microservice Authorization + CI/CD Security Enforcement

---

## 🚀 Project Overview

This project demonstrates **Policy-as-Code using Open Policy Agent (OPA)** to enforce **microservice-level authorization** in a DevSecOps pipeline.

It simulates a real-world scenario where API access is controlled based on:

* User roles
* HTTP methods
* Resource paths

The policy is integrated into a **GitHub Actions pipeline**, acting as a **security gate** that blocks unauthorized requests before deployment.

---

## 🎯 Key Features

* ✅ Policy-as-Code using **OPA + Rego**
* ✅ Role-Based Access Control (RBAC)
* ✅ API-level authorization (method + path)
* ✅ CI/CD security enforcement (GitHub Actions)
* ✅ Pipeline fails on policy violations
* ✅ SARIF reporting for GitHub Security dashboard
* ✅ Real-world DevSecOps implementation

---

## 🧠 Architecture

```
Developer → Git Push → GitHub Actions → OPA Policy Evaluation
                                      ↓
                           Policy Violation Detected
                                      ↓
                          ❌ Pipeline Fails (Security Gate)
                                      ↓
                     SARIF Report → GitHub Security Dashboard
```

---

## 🛠️ Tech Stack

* **Open Policy Agent (OPA)**
* **Rego (Policy Language)**
* **GitHub Actions (CI/CD)**
* **SARIF (Security Reporting Format)**
* **Linux / Bash**

---

## 📁 Project Structure

```
devsecops-50-assignments/
│
├── .github/workflows/
│   └── opa.yml              # CI/CD pipeline
│
└── assignment-47-opa/
    ├── policies/
    │   └── auth.rego        # OPA policy
    └── input.json           # Sample input
```

---

## 🔍 OPA Policy (Rego)

```rego
package authz

default allow = false

allow if {
    input.role == "admin"
}

allow if {
    input.role == "user"
    input.method == "GET"
}
```

---

## 🧪 Test Scenarios

| Role  | Method | Path   | Result  |
| ----- | ------ | ------ | ------- |
| admin | POST   | /users | ✅ Allow |
| user  | GET    | /users | ✅ Allow |
| user  | POST   | /users | ❌ Deny  |

---

## ⚙️ CI/CD Pipeline

The GitHub Actions workflow:

1. Installs OPA and dependencies
2. Evaluates policy against API request
3. Generates SARIF report
4. Uploads results to GitHub Security
5. Fails pipeline if violation detected

---

## 🔐 Security Enforcement

* **Default Deny (Zero Trust Model)**
* **Least Privilege Access**
* **Automated Policy Validation**
* **Shift-left Security in CI/CD**

---

## 📊 Security Visibility

Policy violations are:

* Captured in SARIF format
* Uploaded to GitHub Security tab
* Available for audit and tracking

---

## 🧠 DevSecOps Concepts Implemented

* Policy as Code
* Shift-left security
* CI/CD security gates
* Automated compliance enforcement
* RBAC authorization model
* Security observability

---

## 📈 Learning Outcomes

* Implemented OPA in real-world scenarios
* Integrated security into CI/CD pipelines
* Built automated policy enforcement
* Debugged CI/CD and path issues
* Handled GitHub security permissions

---

## ⚠️ Common Challenges Solved

* CI path resolution issues
* Workflow trigger misconfiguration
* SARIF permission errors
* GitHub Actions debugging
* Rego v1 syntax changes

---

## 🔥 Why This Project Matters

Modern cloud-native systems require:

* Fine-grained authorization
* Automated security enforcement
* Policy-driven governance

This project demonstrates **enterprise-grade DevSecOps practices** used in:

* Kubernetes admission controllers
* API gateways
* Service meshes (Envoy + OPA)

---

## 🚀 Future Enhancements

* Envoy + OPA integration
* Kubernetes admission controller policies
* Dynamic policy loading
* Slack/Email alerts
* Policy versioning and governance

---

## 👨‍💻 Author

**Ashish Mondal**
DevSecOps Enthusiast | Cloud Security | CI/CD Automation

---

## ⭐ If you found this useful

Give this repo a ⭐ and connect with me on LinkedIn!
