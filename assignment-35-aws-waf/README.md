# 🚀 Assignment 35: Web Application Firewall (AWS WAF)

## 📌 Overview

This project demonstrates how to secure a vulnerable web application using **AWS WAF** in a real-world DevSecOps setup.

We simulate an attack (XSS), expose the app publicly, and then protect it using WAF.

---

## 🏗️ Architecture

```
User → Application Load Balancer → AWS WAF → EC2 (Node.js App)
```

---

## 🛠️ Tech Stack

* AWS EC2
* AWS ALB (Application Load Balancer)
* AWS WAF
* Node.js (Vulnerable App)
* AWS CLI

---

## ⚙️ Step-by-Step Implementation

### 🔹 Step 1: Create Local Project

```bash
mkdir assignment-35-aws-waf
cd assignment-35-aws-waf
git init

mkdir -p app screenshots .github/workflows
touch README.md
```

---

### 🔹 Step 2: Create Vulnerable App

```javascript
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  const name = req.query.name || "Guest";

  // ❌ Vulnerable to XSS
  res.send(`<h1>Hello ${name}</h1>`);
});

app.listen(3004, () => {
  console.log("App running on port 3004");
});
```

---

### 🔹 Step 3: Configure AWS CLI

```bash
aws configure
aws sts get-caller-identity
```

---

### 🔹 Step 4: Create Infrastructure (CLI)

#### Get VPC

```bash
aws ec2 describe-vpcs --filters "Name=isDefault,Values=true"
```

#### Create Security Group

```bash
aws ec2 create-security-group \
--group-name waf-sg \
--description "WAF demo SG" \
--vpc-id <VPC-ID>
```

#### Allow Ports

```bash
aws ec2 authorize-security-group-ingress \
--group-id <SG-ID> \
--protocol tcp --port 22 --cidr 0.0.0.0/0

aws ec2 authorize-security-group-ingress \
--group-id <SG-ID> \
--protocol tcp --port 3004 --cidr 0.0.0.0/0
```

---

### 🔹 Step 5: Launch EC2

```bash
aws ec2 run-instances \
--image-id <AMI-ID> \
--instance-type t2.micro \
--key-name devops100 \
--security-group-ids <SG-ID> \
--subnet-id <SUBNET-ID> \
--associate-public-ip-address
```

---

### 🔹 Step 6: Deploy App

```bash
scp -i devops100.pem -r app ubuntu@<EC2-IP>:~

ssh -i devops100.pem ubuntu@<EC2-IP>

cd app
npm install
node app.js
```

---

### 🔹 Step 7: Verify Vulnerability

```
http://<EC2-IP>:3004/?name=<script>alert(1)</script>
```

✅ Alert appears → Vulnerable

---

### 🔹 Step 8: Create Target Group

```bash
aws elbv2 create-target-group \
--name waf-target-group \
--protocol HTTP \
--port 3004 \
--vpc-id <VPC-ID>
```

---

### 🔹 Step 9: Create ALB

```bash
aws elbv2 create-load-balancer \
--name waf-alb \
--subnets <SUBNET1> <SUBNET2> \
--security-groups <SG-ID> \
--scheme internet-facing \
--type application
```

---

### 🔹 Step 10: Create Listener

```bash
aws elbv2 create-listener \
--load-balancer-arn <ALB-ARN> \
--protocol HTTP \
--port 80 \
--default-actions Type=forward,TargetGroupArn=<TG-ARN>
```

---

### 🔹 Step 11: Create WAF

```bash
aws wafv2 create-web-acl \
--name waf-demo-acl \
--scope REGIONAL \
--default-action Allow={} \
--rules '[XSS RULE JSON]'
```

---

### 🔹 Step 12: Attach WAF

```bash
aws wafv2 associate-web-acl \
--web-acl-arn <WAF-ARN> \
--resource-arn <ALB-ARN>
```

---

## 🔥 Results

### ❌ Before WAF

* XSS attack successful
* Alert popup visible

### ✅ After WAF

* Request blocked
* 403 Forbidden

---

## 📊 Key Learnings

* WAF protects at edge layer
* ALB acts as entry point
* Defense-in-depth is critical
* Security + cost management both important

---

## ⚠️ Best Practices

* Always sanitize input (WAF is not a fix)
* Use managed rule groups in production
* Enable logging (CloudWatch/S3)
* Destroy resources after testing

---

## 🧹 Cleanup

```bash
aws ec2 terminate-instances
aws elbv2 delete-load-balancer
aws wafv2 delete-web-acl
aws ec2 delete-security-group
```

---

## 🎯 Conclusion

This project demonstrates real-world DevSecOps practices:

* Attack simulation
* Infrastructure setup
* Security enforcement
* Cost optimization

---

---


