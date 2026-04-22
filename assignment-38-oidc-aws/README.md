# 🔐 Assignment 38: OIDC Federated Identity (GitHub Actions → AWS)

## 🚀 Overview

This project demonstrates how to implement **secure, passwordless authentication** between GitHub Actions and AWS using **OIDC (OpenID Connect)**.
It eliminates static AWS credentials and enforces **least privilege access** using IAM roles.

---

## 🎯 Objective

* Replace AWS access keys with **OIDC-based authentication**
* Enable GitHub Actions to securely assume an AWS IAM role
* Enforce **least privilege** using a custom IAM policy
* Execute AWS operations (S3) via CI/CD pipeline

---

## 🏗️ Architecture

```text
GitHub Actions
   ↓ (OIDC Token)
AWS IAM Role (GitHubOIDCRole)
   ↓
STS Temporary Credentials
   ↓
S3 Bucket (Restricted Access)
```

---

## ⚙️ Technologies Used

* GitHub Actions
* AWS IAM
* AWS STS
* Amazon S3
* OIDC (OpenID Connect)

---

## 🧩 Implementation Steps

### 1️⃣ Configure OIDC Provider in AWS

* Provider URL:

  ```
  https://token.actions.githubusercontent.com
  ```
* Audience:

  ```
  sts.amazonaws.com
  ```

---

### 2️⃣ Create IAM Role

* Trusted entity: Web Identity
* Provider: GitHub OIDC
* Restrict access:

  ```
  repo:Ashish420-tech/devsecops-50-assignments:ref:refs/heads/assignment-38-oidc-aws
  ```

---

### 3️⃣ Attach Least Privilege Policy

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["s3:ListBucket"],
      "Resource": "arn:aws:s3:::mysex420"
    }
  ]
}
```

---

### 4️⃣ GitHub Actions Workflow

```yaml
name: OIDC AWS Test

on:
  push:
    branches: [assignment-38-oidc-aws]

permissions:
  id-token: write
  contents: read

jobs:
  aws-test:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Configure AWS Credentials (OIDC)
        uses: aws-actions/configure-aws-credentials@v4
        with:
          role-to-assume: <YOUR_ROLE_ARN>
          aws-region: ap-south-1

      - name: Verify AWS Identity
        run: aws sts get-caller-identity

      - name: List Specific Bucket
        run: aws s3 ls s3://mysex420
```

---

## ✅ Output

```json
{
  "Account": "XXXXXXXXXXXX",
  "Arn": "arn:aws:sts::XXXXXXXXXXXX:assumed-role/GitHubOIDCRole/GitHubActions"
}
```

```text
2026-04-19  mysex420
```

---

## 🔐 Security Best Practices

* ❌ No hardcoded AWS credentials
* ✅ Use **OIDC temporary tokens**
* ✅ Restrict access to specific repo & branch
* ✅ Implement **least privilege IAM policy**
* ✅ Use STS for short-lived credentials

---

## ⚠️ Common Mistakes

* Using `aws s3 ls` with restricted policy ❌
* Using `AdministratorAccess` ❌
* Not restricting GitHub repo/branch ❌
* Storing AWS keys in GitHub secrets ❌

---

## 🎯 Key Learnings

* OIDC enables **secure CI/CD authentication**
* IAM roles + trust policies enforce access control
* Least privilege prevents over-permission risks
* GitHub Actions integrates seamlessly with AWS

---

## 🏆 Interview Q&A

### Q1: Why use OIDC instead of access keys?

**Answer:**
OIDC eliminates long-term credentials by using short-lived tokens, reducing the risk of credential leakage and improving security.

---

### Q2: What is AssumeRoleWithWebIdentity?

**Answer:**
It allows external identity providers (like GitHub) to assume AWS roles using OIDC tokens.

---

### Q3: What is least privilege?

**Answer:**
Granting only the minimum permissions required to perform a task.

---

## 📊 Project Outcome

✔️ Secure GitHub → AWS integration
✔️ Passwordless authentication
✔️ Production-level DevSecOps implementation
✔️ AWS resource access via CI/CD pipeline

---

## 🔗 Repository

👉 https://github.com/Ashish420-tech/devsecops-50-assignments

---

## 👨‍💻 Author

Ashish Mondal
DevSecOps Engineer | Cloud | Security | Automation

---
