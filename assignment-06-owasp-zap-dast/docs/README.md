# 🔐 Assignment 06 — OWASP ZAP (DAST)

## 📌 Overview

In this assignment, we implemented Dynamic Application Security Testing (DAST) using OWASP ZAP to scan a running web application for vulnerabilities.

---

## 🛠️ Tool Used

* OWASP ZAP (Zed Attack Proxy)

---

## 🧪 Target Application

* OWASP Juice Shop (intentionally vulnerable app)
* Running via Docker on port 3000

---

## ⚙️ Implementation Steps

### 1. Setup Vulnerable Application

* Deployed Juice Shop using Docker Compose
* Verified application accessibility via browser

### 2. Run ZAP Baseline Scan

* Executed ZAP in Docker (headless mode)
* Connected using container network namespace
* Command used:

```
docker run --rm \
  --network=container:app-juice-shop-1 \
  -v $(pwd)/assignment-06-owasp-zap-dast/reports:/zap/wrk \
  ghcr.io/zaproxy/zaproxy:stable \
  zap-baseline.py \
  -t http://localhost:3000 \
  -r zap-report.html
```

---

## 📊 Scan Results

* WARNINGS: 8
* PASS: 59
* FAIL: 0

### 🔍 Key Findings:

* Missing Security Headers
* Dangerous JavaScript Functions
* Modern Web App Indicators

---

## 🧠 Interview Explanation

OWASP ZAP is a DAST tool used to scan running applications. Unlike SAST tools, it identifies runtime vulnerabilities such as XSS, insecure headers, and misconfigurations.

---

## ⚙️ DevOps Integration

* Integrated into CI/CD pipeline using Docker
* Runs after deployment (staging phase)
* Generates HTML report as artifact

---

## 🌍 Real-World Use Case

* Used in staging environments before production release
* Helps security teams identify runtime vulnerabilities
* Often combined with:

  * Kubernetes deployments
  * API security testing

---

## 🚀 Key Learnings

* DAST requires a live application
* Docker networking is critical for scanner communication
* OWASP ZAP can run in headless mode for CI/CD
* Handling real-world networking issues (WSL, container networks)

---

## 📁 Project Structure

```
assignment-06-owasp-zap-dast/
├── app/
├── docs/
├── reports/
└── workflows/
```
