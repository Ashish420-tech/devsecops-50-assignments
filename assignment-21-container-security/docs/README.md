# Assignment 21: Container Security – Pod Security Standards & Admission Control

## Objective
To implement Kubernetes Pod Security Standards (PSS) and demonstrate Admission Control.

---

## Tools Used
- Kubernetes
- Pod Security Standards (PSS)
- kubectl

---

## Architecture
User → Kubernetes API Server → Admission Controller → Pod Creation

---

## Step-by-Step Implementation

### 1. Created Namespace with Restricted Policy
- Created `secure-namespace`
- Applied PSS: restricted

### 2. Tested Insecure Pod
- Created pod running as root
- Kubernetes blocked the pod

### 3. Created Secure Pod
- Applied proper securityContext
- Used unprivileged nginx image
- Pod successfully deployed

### 4. Admission Control Demonstration
- Created `baseline-namespace`
- Applied baseline policy
- Pod allowed with fewer restrictions

---

## Key Learnings
- PSS enforces security at cluster level
- Restricted policy blocks insecure workloads
- Admission Controllers validate requests before deployment
- Secure configurations are required for production

---

## Conclusion
Successfully implemented Pod Security Standards and demonstrated Admission Control in Kubernetes.
