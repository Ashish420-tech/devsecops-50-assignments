# Assignment 20 · Compliance

## Cloud Security Posture Management with AWS Security Hub

---

## 📌 Objective

To understand how Cloud Security Posture Management (CSPM) works using AWS native services:

* AWS Security Hub
* GuardDuty
* AWS Config

---

## 🧠 What is CSPM?

Cloud Security Posture Management (CSPM) helps identify and fix security risks in cloud environments.
It continuously monitors cloud resources and detects misconfigurations.

---

## 🔐 AWS Security Services Overview

### 1. AWS Security Hub

A centralized service that aggregates security findings from multiple AWS services into a single dashboard.

### 2. GuardDuty

A threat detection service that identifies suspicious activities such as unauthorized access or unusual behavior.

### 3. AWS Config

A service that monitors and records AWS resource configurations and evaluates them against compliance rules.

---

## 🧩 Architecture

GuardDuty → Detects threats
AWS Config → Checks configurations
↓
Security Hub → Aggregates findings

---

## ⚙️ Implementation (Theoretical as per PDF)

### Step 1: Enable Security Hub

Security Hub is enabled from the AWS Console to collect findings.

### Step 2: Enable GuardDuty

GuardDuty is activated to detect suspicious activities.

### Step 3: Enable AWS Config

AWS Config is enabled to track resource configurations.

### Step 4: Review Findings

All findings are aggregated in Security Hub for review and compliance monitoring.

---

## 📊 Expected Outcome

* Centralized view of security findings
* Identification of misconfigurations
* Basic compliance monitoring

---

## 📁 Reports

Findings summary is documented in the `reports/` directory.

---

## ✅ Conclusion

This assignment demonstrates how AWS native services work together to provide basic cloud security posture management.
