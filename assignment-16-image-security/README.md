# Assignment 16 - Image Security (Cosign + GHCR)
# 🔐 Assignment 16: Image Security using Cosign

## 📌 Overview

This assignment focuses on securing the container image supply chain using **Cosign**, **GitHub Container Registry (GHCR)**, and **Sigstore Rekor**.

The goal is to ensure that container images are:

* Authenticated
* Tamper-proof
* Verifiable before deployment

---

## 🎯 Objectives

* Sign container images using Cosign
* Store signatures in Sigstore Rekor
* Verify image authenticity
* Demonstrate tamper protection
* Secure the software supply chain

---

## 🛠️ Tools Used

* Cosign
* GitHub Container Registry (GHCR)
* Sigstore
* Rekor
* Docker

---

## 📂 Project Structure

```
assignment-16-image-security/
├── app/
├── docs/
├── reports/
├── workflows/
└── README.md
```

---

## 🚀 Implementation Steps

### 1. Installed Cosign

Set up Cosign for image signing and verification.

### 2. Generated Signing Keys

* Created private key: `cosign.key`
* Created public key: `cosign.pub`

### 3. Built Docker Image

* Created a sample container image
* Verified using Docker

### 4. Pushed Image to GHCR

* Tagged image
* Uploaded to GitHub Container Registry

### 5. Signed Image

* Used Cosign to sign image
* Signature stored in Rekor transparency log

### 6. Verified Signature

* Verified using public key
* Confirmed authenticity and integrity

---

## 🔐 Image Signing Workflow

```
Build Image → Push to GHCR → Sign using Cosign → Store in Rekor → Verify before deployment
```

---

## 🔍 Verification Process

* Verified signature using `cosign verify`
* Confirmed:

  * Signature validity
  * Rekor log inclusion
  * Public key match

---

## 🚨 Tamper Protection Demonstration

### ✅ Signed Image (v1.0)

* Successfully verified
* Trusted

### ❌ Tampered Image (v2.0)

* Not signed
* Verification failed

---

## 🛡️ Security Benefits

* Prevents unauthorized image usage
* Ensures integrity of container images
* Enables Zero Trust security model
* Protects against supply chain attacks

---

## 🌍 Real-World Use Case

* Kubernetes admission controllers can block unsigned images
* CI/CD pipelines can enforce image verification
* Enterprises ensure trusted deployments

---

## 📚 DevSecOps Insights

* Signing is critical for modern supply chains
* Transparency logs ensure accountability
* Verification must be enforced before deployment

---

## 🎤 Interview Q&A

**Q: What is container image signing?**
A: It is the process of cryptographically signing images to ensure authenticity and integrity.

**Q: Why use Cosign?**
A: Cosign simplifies signing without complex PKI and integrates with Sigstore.

**Q: What is Rekor?**
A: A transparency log that stores signatures for public verification.

**Q: What happens if an image is tampered?**
A: Verification fails, preventing deployment.

---

## 🧩 Framework Mapping

* **NIST**: Supply Chain Risk Management
* **CIS**: Secure CI/CD and artifact validation
* **OWASP**: Software supply chain security
* **DSOMM**: Build integrity and verification

---

## 🏁 Conclusion

This assignment demonstrates how to secure container images using modern DevSecOps practices.
By implementing signing and verification, we ensure a trusted and tamper-proof software supply chain.
