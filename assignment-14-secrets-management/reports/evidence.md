# 📸 Evidence

## ✔ ESO Installed

kubectl get pods -n external-secrets

## ✔ AWS Secret Created

aws secretsmanager list-secrets

## ✔ Secret Synced

kubectl get externalsecret

## ✔ Kubernetes Secret

kubectl get secret db-secret

## ✔ Pod Access

kubectl exec -- printenv

## ✔ Secret Rotation

Updated AWS secret → verified in pod

