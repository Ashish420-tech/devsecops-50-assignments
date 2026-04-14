# 🏗 Architecture Explanation

## Components

### 1. AWS Secrets Manager

* Stores sensitive credentials securely
* Supports encryption and rotation

### 2. External Secrets Operator

* Kubernetes operator
* Fetches secrets from AWS
* Syncs to Kubernetes

### 3. Kubernetes Secret

* Native resource
* Used by applications

### 4. Application Pod

* Consumes secrets via environment variables

---

## 🔄 Data Flow

1. Secret stored in AWS
2. ESO fetches secret using IAM credentials
3. ESO creates Kubernetes Secret
4. Pod consumes secret securely

---

## 🔐 Security Layers

* AWS IAM authentication
* Encrypted secret storage
* Controlled Kubernetes access
