# Assignment 07 – OWASP Dependency-Check (SCA)

## 📌 Objective

To perform Software Composition Analysis (SCA) using OWASP Dependency-Check to identify vulnerabilities in third-party dependencies.

---

## 🛠️ Tool Used

* OWASP Dependency-Check

---

## 📂 Project Structure

```
assignment-07-dependency-check/
├── app/
├── reports/
├── docs/
├── workflows/
└── README.md
```

---

## 🚀 Steps Performed

1. Created project structure
2. Added Node.js application
3. Installed vulnerable dependencies:

   * express@4.17.1
   * lodash@4.17.20
4. Executed OWASP Dependency-Check scan using Docker

---

## 📊 Output

* Vulnerability report generated (HTML format)

---

## 🧠 Interview Explanation

OWASP Dependency-Check is a Software Composition Analysis (SCA) tool used to identify known vulnerabilities in project dependencies. It scans libraries against public CVE databases such as NVD and helps detect supply chain risks.

---

## 🌍 Real-World Use Case

In real-world DevSecOps pipelines, Dependency-Check is integrated into CI/CD to automatically scan dependencies during builds. This helps organizations prevent the use of vulnerable libraries and ensures secure software delivery.

---
