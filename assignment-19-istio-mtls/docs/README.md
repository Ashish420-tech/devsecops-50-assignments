# Assignment 19 - Network Security with Istio mTLS

## 📌 Objective

Implement Service Mesh Security using Istio with mTLS in a Kubernetes environment.

---

## 🧰 Tools Used

* Kubernetes (Minikube)
* Istio
* mTLS
* SPIFFE

---

## 🧠 Key Concepts

### Network Security

Network security ensures that communication between services is protected from unauthorized access and data breaches.

### Service Mesh

A service mesh is a dedicated infrastructure layer that manages service-to-service communication.

### Istio

Istio is a service mesh that provides security, traffic management, and observability for microservices.

### mTLS (Mutual TLS)

mTLS ensures both client and server authenticate each other and encrypt communication.

---

## ⚙️ Implementation Steps

### 1. Kubernetes Setup

* Installed Minikube
* Started local Kubernetes cluster
* Verified cluster status

### 2. Istio Installation

* Downloaded Istio
* Installed using demo profile
* Enabled automatic sidecar injection

### 3. mTLS Configuration

* Applied PeerAuthentication policy
* Enabled STRICT mode for secure communication

### 4. Application Deployment

* Deployed Bookinfo sample application
* Verified all pods are running
* Confirmed sidecar proxy injection

### 5. Verification

* Verified service communication using Istio proxy configuration
* Confirmed mTLS is enforced in STRICT mode

---

## 🔐 Security Implementation

* mTLS enabled in STRICT mode
* All service-to-service communication is encrypted
* Only authenticated services can communicate

---

## 📊 Architecture (Basic)

User → Product Page → Reviews → Ratings
All communication secured via Istio mTLS

---

## ✅ Conclusion

Successfully implemented service mesh security using Istio with mTLS.
All microservices communicate securely with encrypted and authenticated connections.

---
