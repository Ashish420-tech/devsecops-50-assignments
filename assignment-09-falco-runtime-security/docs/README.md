# Assignment 09 — Falco Runtime Security Monitoring

## 🔐 Tool Used

Falco (Runtime Security)

---

## 📌 Objective

To detect suspicious activity in Kubernetes at runtime using Falco.

---

## 🛠️ Implementation Steps

1. Installed Falco using Helm
2. Deployed Falco in Kubernetes cluster
3. Verified Falco pods are running
4. Created a test pod (nginx)
5. Triggered suspicious activity:

   * Accessed `/etc/shadow`
6. Captured Falco alerts using logs
7. Saved logs into reports directory

---

## 🚨 Detected Activity

Falco detected:

* Sensitive file access (`/etc/shadow`)
* Runtime security violation

---

## 📂 Project Structure

```
assignment-09-falco-runtime-security/
├── app/
├── docs/
│   └── README.md
├── reports/
│   └── falco-logs.txt
└── workflows/
```

---

## 🎯 Interview Questions & Answers

### ❓ What is Falco?

Falco is a runtime security tool that detects suspicious behavior in containers and Kubernetes using system call monitoring.

---

### ❓ How does Falco work?

Falco uses kernel-level visibility to monitor system calls and matches them against predefined security rules.

---

### ❓ What type of threats can Falco detect?

* Reverse shells
* Privilege escalation
* Sensitive file access
* Unexpected process execution

---

### ❓ Difference between SAST, DAST, and Runtime Security?

* SAST → Code-level vulnerabilities
* DAST → Running application testing
* Runtime Security → Detects live attacks in running containers

---

## 🌍 Real-World Use Case

* Used in production Kubernetes clusters
* Integrated with SIEM tools (Splunk, ELK)
* Helps security teams detect attacks in real-time

---

## ✅ Conclusion

Falco adds runtime security to the DevSecOps pipeline by detecting threats after deployment, ensuring complete security coverage.
