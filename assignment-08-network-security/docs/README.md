# Assignment 8: Network Security in Kubernetes

## 🔐 Objective

Implement Kubernetes Network Policies to control pod-to-pod communication and enforce zero-trust networking.

---

## 🛠️ Tools Used

* Kubernetes (Minikube)
* Calico (CNI for Network Policy enforcement)
* kubectl

---

## 📁 Project Structure

```
assignment-08-network-security/
├── app/
├── docs/
├── reports/
├── workflows/
```

---

## 🚀 Implementation Steps

### 1. Setup Kubernetes Cluster

* Started Minikube with Calico CNI

### 2. Deploy Sample Application

* Created nginx deployment with 2 replicas
* Exposed using ClusterIP service

### 3. Baseline Testing

* Verified pod-to-service communication using curl

### 4. Apply Deny-All Policy

* Blocked all incoming traffic

### 5. Apply Allow Policy

* Allowed communication only between nginx pods

### 6. Validation

* Verified traffic blocked and restored after applying policies

---

## 🔍 Key Concepts

### Default Behavior

* Kubernetes allows all traffic by default

### Network Policy

* Controls traffic between pods
* Enables micro-segmentation

### Zero Trust

* Deny all → Allow only required

---

## 💼 Real-world Use Cases

* Prevent lateral movement in attacks
* Secure microservices communication
* Enforce internal cluster security

---

## 🎤 Interview Questions

### Q: What is a Network Policy?

A Kubernetes resource that controls traffic flow between pods.

### Q: Why use deny-all policy?

To enforce zero-trust and restrict all unauthorized access.

### Q: What is micro-segmentation?

Dividing network into smaller secure zones with strict access control.

---

## ✅ Conclusion

Successfully implemented Kubernetes Network Policies to enforce secure and controlled communication between pods.
