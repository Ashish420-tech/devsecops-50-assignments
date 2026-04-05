# 🔐 Assignment 14: Secrets Management with External Secrets Operator

## 📌 Overview

This assignment demonstrates secure secrets management in Kubernetes using **External Secrets Operator (ESO)** integrated with **AWS Secrets Manager**.

---

## 🎯 Objectives

* Eliminate hardcoded secrets
* Centralize secret management in AWS
* Enable automatic synchronization to Kubernetes
* Demonstrate secure consumption in applications

---

## 🏗 Architecture

AWS Secrets Manager → External Secrets Operator → Kubernetes Secret → Application Pod

---

## ⚙️ Implementation Steps

### 1. Install External Secrets Operator

* Installed via Helm in `external-secrets` namespace

### 2. Create Secret in AWS

* Stored DB credentials in AWS Secrets Manager

### 3. Configure IAM Access

* Created IAM user with SecretsManagerReadWrite policy

### 4. Store AWS Credentials in Kubernetes

* Created Kubernetes secret (`aws-secret`)

### 5. Create SecretStore

* Configured ESO to connect with AWS

### 6. Create ExternalSecret

* Synced AWS secret to Kubernetes

### 7. Consume Secret in Pod

* Injected secret as environment variables

### 8. Secret Rotation

* Updated AWS secret
* Verified automatic sync in Kubernetes

---

## 🔐 Security Best Practices

* No hardcoded secrets
* IAM-based access control
* Automatic secret rotation
* Least privilege principle

---

## 🧠 Key Learnings

* Kubernetes does not auto-refresh env variables
* ESO enables dynamic secret sync
* External secret management is critical for DevSecOps

---

## 🚀 Outcome

Successfully implemented secure, scalable, and production-ready secrets management.
