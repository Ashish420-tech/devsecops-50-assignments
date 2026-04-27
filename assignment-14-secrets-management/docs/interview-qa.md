# 🎤 Interview Questions & Answers

### Q1: What is External Secrets Operator?

A Kubernetes operator that syncs secrets from external providers like AWS Secrets Manager.

---

### Q2: Why not store secrets in Kubernetes directly?

Because Kubernetes secrets are base64 encoded, not encrypted by default.

---

### Q3: How does ESO authenticate with AWS?

Using IAM credentials (access keys or roles).

---

### Q4: Does secret rotation update running pods?

No. Environment variables require pod restart.

---

### Q5: What is SecretStore?

Defines connection to external secret provider.

---

### Q6: What is ExternalSecret?

Defines which secret to fetch and how to map it.

---

### Q7: What is best practice in production?

Use IAM Roles (IRSA) instead of static credentials.

