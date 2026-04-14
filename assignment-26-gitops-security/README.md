# 🚀 Assignment 26 – Secure GitOps with ArgoCD & Vault

## 📌 Objective

Implement a secure GitOps workflow using:
- ArgoCD
- HashiCorp Vault
- Sealed Secrets
- Kubernetes

---

## 🏗️ Architecture

GitHub Repo → ArgoCD → Kubernetes  
                 ↓  
              Vault  
                 ↓  
         Sealed Secrets  

---

## ⚙️ Setup Steps

### 1. Setup Kubernetes (Minikube)

```bash
minikube start
kubectl get nodes
2. Install ArgoCD
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

Access UI:

kubectl port-forward svc/argocd-server -n argocd 8081:443
3. Install Vault
kubectl create namespace vault
helm install vault hashicorp/vault -n vault

Initialize Vault:

kubectl exec -it vault-0 -n vault -- sh
vault operator init
vault operator unseal
vault login
4. Store Secrets in Vault
vault kv put secret/myapp username=admin password=secure123
vault kv get secret/myapp
5. Install Sealed Secrets
kubectl apply -f https://github.com/bitnami-labs/sealed-secrets/releases/latest/download/controller.yaml

Install kubeseal:

kubeseal --version
6. Create Kubernetes Secret
apiVersion: v1
kind: Secret
metadata:
  name: mysecret
data:
  username: YWRtaW4=
  password: c2VjdXJlMTIz
7. Encrypt Secret
kubeseal < secret.yaml > sealed-secret.yaml
kubectl apply -f sealed-secret.yaml
8. Verify Secret
kubectl get secret mysecret -o yaml
9. Create ArgoCD Application
Repo: GitHub repo
Path: assignment-26-gitops-security
Namespace: default
⚠️ Issues Faced (IMPORTANT)
❌ Error
repository contains out-of-bounds symlinks
checkov-env/bin/python3
🔍 Root Cause
Virtual environment (checkov-env) committed
ArgoCD scans entire repo
Detects unsafe symlinks → blocks deployment
✅ Fix
git rm -r --cached checkov-env
git rm -r --cached node_modules
git rm -r --cached .scannerwork

echo "checkov-env/" >> .gitignore
echo "node_modules/" >> .gitignore
echo ".scannerwork/" >> .gitignore

git add .
git commit -m "Remove unwanted directories"
git push origin assignment-26-gitops-security --force

Restart ArgoCD cache:

kubectl delete pod -n argocd -l app.kubernetes.io/name=argocd-repo-server
✅ Final Result
ArgoCD Application: Synced ✔
Health Status: Healthy ✔
Secrets managed securely
📚 Key Learnings
GitOps security requires clean repositories
Never commit:
Virtual environments
node_modules
scanner outputs
ArgoCD validates repository integrity
🧰 Tools Used
Kubernetes
ArgoCD
Vault
Sealed Secrets
📸 Screenshots

Add:

ArgoCD UI (Healthy & Synced)
Vault initialization
Sealed secret output
Error screenshot
