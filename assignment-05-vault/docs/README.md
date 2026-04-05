# Assignment 05 - Secrets Management using HashiCorp Vault

## 📌 Objective

Implement secrets management using HashiCorp Vault to securely store and retrieve sensitive data.

---

## 🛠️ Tools Used

* HashiCorp Vault
* Docker
* CLI (Vault CLI)

---

## 🚀 Steps Performed

### 1. Run Vault using Docker

```bash
docker run -d \
  --name vault-dev \
  -p 8200:8200 \
  -e VAULT_DEV_ROOT_TOKEN_ID=root \
  -e VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200 \
  hashicorp/vault
```

---

### 2. Access Vault UI

* URL: http://localhost:8200
* Token: root

---

### 3. Enable KV Secrets Engine

* Path: `secret/`
* Engine: Key-Value (KV)

---

### 4. Store Secret

Path: `myapp`

Key-Value:

```
username = admin
password = devops123
```

---

### 5. Retrieve Secret using CLI

```bash
vault kv get secret/myapp
```

---

## 📸 Screenshots

(Add screenshots here)

* Vault UI login
* KV engine enabled
* Secret created
* CLI output

---

## 📊 Outcome

* Successfully stored secrets securely
* Retrieved secrets using CLI
* Understood secrets management workflow

---

## 🎯 Interview Questions

### Q1: What is HashiCorp Vault?

A tool for securely storing and managing secrets like API keys, passwords, and tokens.

### Q2: Why use Vault instead of environment variables?

Vault provides encryption, access control, and dynamic secrets.

### Q3: What is KV engine?

A key-value store used to store secrets with versioning support.

### Q4: How does Vault improve security?

* Centralized secrets management
* Encryption at rest
* Access policies
* Audit logging

---

## ✅ Conclusion

HashiCorp Vault helps implement secure secrets management in DevOps pipelines and production systems.
