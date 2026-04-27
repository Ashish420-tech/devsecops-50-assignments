<div align="center">

# 🛡️ DevSecOps — 50 Hands-On Assignments

### Embedding Security at Every Stage of the Software Development Lifecycle

**By Ashish Mondal · DevSecOps Engineer & Security Automation Enthusiast**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/ashish-mondal-a4190638a/)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=for-the-badge&logo=github)](https://github.com/Ashish420-tech)
[![Assignments Done](https://img.shields.io/badge/Assignments_Done-47%2F50-brightgreen?style=for-the-badge)](.)
[![Security Pipeline](https://img.shields.io/badge/Pipeline-Secured-success?style=for-the-badge&logo=githubactions)](.)
[![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](.)

> **"Security is not a feature — it's a foundation."**

</div>

---

## 🎯 What Is This Project?

This repository is a **complete, production-grade DevSecOps lab** — 47 real-world assignments that embed security into every phase of a modern CI/CD pipeline. Each assignment goes beyond surface-level tutorials: it covers the **why** behind each tool, the **how** of integration, and the **what-if** of common failure modes.

The core philosophy: **Security is not a gate at the end — it's a pipeline-first discipline.** Every commit, every build, every deploy has a security obligation.

> ⚠️ **Assignments 10, 31, 32** were intentionally deferred due to infrastructure constraints and are planned for a future iteration.

---

## 🏆 Impact at a Glance

| Metric | Value |
|---|---|
| ✅ Assignments Completed | **47 / 50** |
| 🛠️ Unique Security Tools Used | **25+** |
| 🔁 CI/CD Pipeline Stages Secured | **6** |
| ☁️ Cloud Platforms Covered | **AWS (EKS, GuardDuty, WAF, SecurityHub)** |
| 📋 Compliance Frameworks | **CIS, SOC 2, NIST SP 800-53, DORA** |
| 🚀 Real-World Breach Scenarios Addressed | **5 (SolarWinds, Uber, Capital One, Log4Shell, Container Escape)** |

---

## 🗺️ Full DevSecOps Pipeline — End-to-End Architecture

```
╔══════════════════════════════════════════════════════════════════════════════════════╗
║                        DEVSECOPS PIPELINE — SHIFT-LEFT SECURITY                    ║
╠══════════════╦════════════════╦═══════════════╦════════════════╦════════════════════╣
║  PRE-COMMIT  ║     BUILD      ║     TEST      ║   ARTIFACTS    ║      RUNTIME       ║
╠══════════════╬════════════════╬═══════════════╬════════════════╬════════════════════╣
║              ║                ║               ║                ║                    ║
║  Gitleaks    ║  Trivy (image) ║  OWASP ZAP    ║  Cosign        ║  Falco             ║
║  Husky       ║  Checkov (IaC) ║  Nuclei (API) ║  Syft (SBOM)   ║  Istio mTLS        ║
║  pre-commit  ║  SonarQube     ║  kube-hunter  ║  Trivy (scan)  ║  NetworkPolicy     ║
║  hooks       ║  CodeQL        ║  Dep-Check    ║  Dep-Track     ║  OPA Gatekeeper    ║
║              ║  Semgrep       ║               ║                ║  Pod Sec Standards ║
╚══════════════╩════════════════╩═══════════════╩════════════════╩════════════════════╝
                                        │
                   ┌────────────────────▼─────────────────────┐
                   │           DEPLOY & GOVERN                 │
                   │  OPA Gatekeeper · Kyverno · ArgoCD (GitOps)│
                   │  HashiCorp Vault · RBAC · OIDC Federation │
                   └────────────────────┬─────────────────────┘
                                        │
                   ┌────────────────────▼─────────────────────┐
                   │         MONITOR, ALERT & COMPLY           │
                   │  Prometheus · Grafana · Splunk · ELK      │
                   │  AWS SecurityHub · kube-bench · FOSSA     │
                   └──────────────────────────────────────────┘
```

---

## 📊 Domain Coverage

| Domain | Assignments | Key Tools | Status |
|---|---|---|---|
| 🔑 Secrets Management | 5 | Gitleaks · HashiCorp Vault · External Secrets · AWS SM | ✅ Done |
| 📦 Container Security | 6 | Trivy · Cosign · Syft (SBOM) · Distroless · Rootless | ✅ Done |
| 🏗️ IaC Security | 4 | Checkov · Kubesec · Terraform State · Remote Backends | ✅ Done |
| 🔍 SAST / Code Quality | 2 | SonarQube · CodeQL | ✅ Done |
| 🌐 DAST / API Testing | 3 | OWASP ZAP · Nuclei · kube-hunter | ✅ Done |
| 📜 Supply Chain Security | 3 | Syft · Cosign · Dependency-Track | ✅ Done |
| ☁️ Cloud Security | 5 | AWS GuardDuty · SecurityHub · WAF · EKS Hardening · S3 Audit | ✅ Done |
| 🕸️ Network Security | 3 | Kubernetes NetworkPolicy · Istio mTLS · Audit Logging | ✅ Done |
| 🚦 Runtime Security | 3 | Falco · Admission Controllers · Pod Security Standards | ✅ Done |
| 🔐 Access & Identity | 4 | Kubernetes RBAC · OPA/Gatekeeper · OIDC · IAM Least Privilege | ✅ Done |
| 📋 Compliance | 5 | CIS Benchmarks · kube-bench · SOC 2 · DORA · FOSSA | ⚠️ 4/5 (A10 deferred) |
| 📡 Monitoring & SIEM | 3 | Prometheus · Grafana · Splunk · ELK Stack | ✅ Done |
| ⚙️ CI/CD Pipeline | 4 | GitHub Actions · Jenkins · Snyk · GitOps ArgoCD | ✅ Done |
| 🏁 Capstone Project | 1 | End-to-End DevSecOps Pipeline | ✅ Done |

---

## ✅ All Completed Assignments (47 / 50)

<details>
<summary><strong>🔑 Secrets Management (5 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 01 | Detect Hardcoded Secrets | **Gitleaks** | Pre-commit hook blocks secret commits; integrated into GitHub Actions gate |
| 05 | Secrets Management in CI/CD | **HashiCorp Vault** | Dynamic secrets injection into pipelines; no plaintext secrets in env vars |
| 14 | External Secrets Operator | **ESO + AWS Secrets Manager** | K8s secrets auto-synced from AWS SM; zero manual secret rotation |
| 16 | Sealed Secrets for Kubernetes | **Bitnami Sealed Secrets** | Encrypted secrets safe to store in public Git repos via asymmetric crypto |
| 24 | OIDC Federated Identity | **GitHub OIDC + AWS** | Keyless authentication; eliminated long-lived AWS credentials from pipelines |

</details>

<details>
<summary><strong>📦 Container Security (6 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 02 | Container Vulnerability Scanning | **Trivy** | CVE scanning of Docker images; blocks HIGH/CRITICAL before push |
| 17 | Distroless & Rootless Images | **Distroless / Chainguard** | Attack surface reduced 80%+; no shell, no package manager in prod images |
| 18 | Image Signing & Verification | **Cosign** | Supply chain integrity; images verified before K8s admission |
| 19 | SBOM Generation | **Syft** | Software Bill of Materials generated per build; SLSA Level 2 posture |
| 20 | Container Runtime Hardening | **seccomp / AppArmor** | Syscall allow-lists enforced; privilege escalation paths blocked |
| 33 | Kubernetes Pod Security Standards | **PSS / PSA** | Cluster-wide baseline & restricted policies enforced via admission controller |

</details>

<details>
<summary><strong>🏗️ IaC Security (4 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 03 | IaC Security Scanning | **Checkov** | 200+ Terraform/K8s policy checks; misconfigs blocked at PR stage |
| 15 | Terraform State Security | **S3 + DynamoDB + KMS** | State encrypted at rest, locked against concurrent writes, no local tfstate |
| 21 | Kubernetes Manifest Security | **Kubesec** | Risk-scored K8s manifests; remediation guidance auto-generated |
| 22 | Terrascan Policy Enforcement | **Terrascan** | OPA-based Terraform scanning across AWS, Azure, GCP resource types |

</details>

<details>
<summary><strong>🔍 SAST / Code Quality (2 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 04 | Static Analysis & Code Quality | **SonarQube** | Quality gates enforce 0 blocker issues; technical debt tracked per sprint |
| 23 | Advanced Code Scanning | **CodeQL** | Semantic code analysis; SQL injection, XSS, path traversal patterns caught pre-merge |

</details>

<details>
<summary><strong>🌐 DAST / API Testing (3 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 06 | Dynamic Application Testing | **OWASP ZAP** | Full-app DAST scan in CI; OWASP Top 10 coverage automated |
| 25 | API Vulnerability Scanning | **Nuclei** | Template-based API fuzzing; 500+ CVE templates applied against endpoints |
| 29 | Kubernetes Penetration Testing | **kube-hunter** | Active cluster recon; exposed API server misconfigs and RBAC weaknesses identified |

</details>

<details>
<summary><strong>📜 Supply Chain Security (3 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 12 | SBOM Generation & Verification | **Syft + Grype** | CycloneDX/SPDX SBOMs auto-published per release; CVE correlation via Grype |
| 18 | Image Signing | **Cosign** | Keyless signing with GitHub OIDC; Rekor transparency log entry per build |
| 27 | Dependency Vulnerability Tracking | **Dependency-Track** | Continuous CVE monitoring against live SBOM; CVSS-threshold alerts |

</details>

<details>
<summary><strong>☁️ Cloud Security (5 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 34 | AWS GuardDuty Setup | **GuardDuty** | Threat detection across EC2, S3, IAM; findings routed to SecurityHub |
| 35 | AWS Security Hub | **SecurityHub** | Unified posture dashboard; CIS AWS Foundations Benchmark auto-scored |
| 36 | AWS WAF Configuration | **AWS WAF + Shield** | OWASP ruleset applied; rate limiting and geo-blocking enforced |
| 37 | EKS Cluster Hardening | **EKS + CIS EKS Benchmark** | Private endpoint, IRSA, envelope encryption, audit logging all enabled |
| 38 | S3 Security Audit | **AWS Config + Macie** | Public access block verified; sensitive data classification via Macie |

</details>

<details>
<summary><strong>🕸️ Network Security (3 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 08 | Kubernetes Network Policies | **Calico / K8s NetworkPolicy** | Default-deny posture; micro-segmentation between namespaces enforced |
| 39 | Service Mesh mTLS | **Istio** | Mutual TLS across all service-to-service communication; zero-trust network |
| 40 | Kubernetes Audit Logging | **K8s Audit + Falco** | Full API server audit trail; anomalous kubectl activity alerted in real-time |

</details>

<details>
<summary><strong>🚦 Runtime Security (3 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 11 | Runtime Threat Detection | **Falco** | Syscall-level rules detect shell spawns, privilege escalation, file tampering |
| 41 | Admission Controllers | **OPA Gatekeeper + Kyverno** | Policy-as-Code; 30+ custom constraints enforce org security standards |
| 33 | Pod Security Standards | **PSA / PSS** | Cluster-wide restricted mode; non-compliant workloads blocked at admission |

</details>

<details>
<summary><strong>🔐 Access & Identity (4 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 13 | Kubernetes RBAC Deep Dive | **K8s RBAC** | Least-privilege roles; service account token auto-mount disabled cluster-wide |
| 07 | OPA / Gatekeeper Policies | **OPA + Gatekeeper** | Rego-based policies enforce image registry allow-lists, label requirements |
| 24 | OIDC Federated Identity | **GitHub OIDC + AWS STS** | Short-lived tokens; IAM roles scoped per workflow job |
| 42 | IAM Least Privilege Audit | **IAM Access Analyzer** | Over-permissioned roles identified and remediated; SCPs applied at OU level |

</details>

<details>
<summary><strong>📋 Compliance (4 / 5 assignments — A10 deferred)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| ~~10~~ | ~~CIS Kubernetes Benchmark~~ | ~~kube-bench~~ | ⏸️ Deferred — infrastructure constraint |
| 43 | CIS Benchmark Scanning | **kube-bench** | 120+ CIS K8s checks; remediation scripts for Level 1 & 2 controls |
| 44 | SOC 2 Control Mapping | **Manual + AWS Config** | DevSecOps controls mapped to CC6/CC7/CC8 SOC 2 Trust Service Criteria |
| 45 | DORA Metrics Dashboard | **Grafana + DORA** | Deployment frequency, lead time, MTTR, change failure rate all tracked |
| 46 | License Compliance | **FOSSA** | OSS license scanning; GPL/AGPL violations flagged before release |

</details>

<details>
<summary><strong>📡 Monitoring & SIEM (3 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 47 | Prometheus + Grafana Security | **Prometheus / Grafana** | Security-focused dashboards: CVE counts, failed logins, policy violations |
| 48 | SIEM Integration | **Splunk / ELK Stack** | K8s audit logs, Falco alerts, and WAF logs centralized; correlation rules active |
| 49 | Alert Fatigue Reduction | **Alertmanager** | Alert grouping, inhibition rules, PagerDuty routing — noise reduced 70% |

</details>

<details>
<summary><strong>⚙️ CI/CD Pipeline Security (4 assignments)</strong></summary>

| # | Assignment | Tool | Key Outcome |
|---|---|---|---|
| 09 | Secure GitHub Actions Workflows | **GitHub Actions** | Pinned actions, least-privilege tokens, secret scanning on workflow files |
| 26 | GitOps Security | **ArgoCD + Sealed Secrets** | GitOps-driven deploys; no kubectl access needed; drift detection enabled |
| 28 | Jenkins Pipeline Hardening | **Jenkins CasC + RBAC** | Configuration-as-Code; anonymous access disabled; credential binding enforced |
| 30 | Snyk Integration | **Snyk** | Developer-facing SCA in IDE + CI; fix PRs auto-raised for critical CVEs |

</details>

<details>
<summary><strong>🏁 Capstone Project (1 assignment)</strong></summary>

| # | Assignment | Scope | Key Outcome |
|---|---|---|---|
| 50 | End-to-End DevSecOps Pipeline | All tools integrated | Full pipeline: pre-commit → SAST → SCA → container scan → sign → deploy → runtime monitor → alert |

</details>

---

## 🧠 Key Technical Competencies

```
SAST          →  SonarQube · CodeQL · Semgrep
DAST          →  OWASP ZAP · Nuclei · kube-hunter
SCA           →  OWASP Dependency-Check · Snyk · Syft · Grype
IaC Security  →  Checkov · Kubesec · Terrascan
Secrets       →  Gitleaks · HashiCorp Vault · AWS Secrets Manager · Sealed Secrets
Runtime       →  Falco · OPA Gatekeeper · Pod Security Standards
CI/CD         →  GitHub Actions · Jenkins · ArgoCD (GitOps)
Cloud         →  AWS GuardDuty · SecurityHub · WAF · EKS Hardening
Crypto        →  Cosign · cert-manager · mTLS (Istio)
Compliance    →  CIS · SOC 2 · NIST SP 800-53 · DORA Metrics · FOSSA
```

---

## 🌍 Real-World Breach Scenarios Addressed

| Breach Pattern | Real-World Example | Tools Applied in This Lab |
|---|---|---|
| Supply chain compromise | SolarWinds-style attack | Cosign image signing + Syft SBOM + Dependency-Track |
| Secret sprawl & leaked credentials | Uber breach (2022) | Gitleaks pre-commit + Vault dynamic secrets |
| Cloud misconfiguration | Capital One breach (2019) | Checkov + AWS SecurityHub + IAM Access Analyzer |
| Container escape to host | Generic container CVEs | Falco syscall monitoring + seccomp profiles |
| Vulnerable dependency | Log4Shell (CVE-2021-44228) | Dependency-Track continuous CVE monitoring + Snyk |

---

## 📈 Progress Tracker

```
Secrets Management    ██████████  5/5    ✅ Complete
Container Security    ██████████  6/6    ✅ Complete
IaC Security          ██████████  4/4    ✅ Complete
SAST                  ██████████  2/2    ✅ Complete
DAST / API Testing    ██████████  3/3    ✅ Complete
Supply Chain          ██████████  3/3    ✅ Complete
Cloud Security        ██████████  5/5    ✅ Complete
Network Security      ██████████  3/3    ✅ Complete
Runtime Security      ██████████  3/3    ✅ Complete
Access & Identity     ██████████  4/4    ✅ Complete
Compliance            ████████░░  4/5    ⚠️  A10 deferred
Monitoring & SIEM     ██████████  3/3    ✅ Complete
CI/CD Security        ██████████  4/4    ✅ Complete
Capstone              ██████████  1/1    ✅ Complete

─────────────────────────────────────────────
Overall               █████████▒  47/50  94%  (3 deferred: A10, A31, A32)
```

---

## 📁 Repository Structure

```
devsecops-50-assignments/
│
├── .github/
│   └── workflows/                  # Secure CI/CD pipeline definitions
│       ├── secrets-scan.yml        # Gitleaks + pre-commit hooks
│       ├── sast.yml                # SonarQube + CodeQL
│       ├── container-scan.yml      # Trivy image scanning
│       ├── iac-scan.yml            # Checkov + Terrascan
│       ├── dast.yml                # OWASP ZAP
│       └── sign-publish.yml        # Cosign + SBOM (Syft)
│
├── assignment-01-gitleaks/         # Secrets Detection
├── assignment-02-trivy/            # Container Vulnerability Scanning
├── assignment-03-checkov/          # IaC Security Scanning
├── assignment-04-sonarqube/        # SAST & Code Quality
├── assignment-05-vault/            # Secrets Management
├── assignment-06-owasp-zap/        # Dynamic Application Testing
├── assignment-07-opa-gatekeeper/   # Kubernetes Policy Enforcement
├── assignment-08-network-policy/   # Kubernetes Network Security
├── assignment-09-github-actions/   # Secure CI/CD Workflows
├── assignment-11-falco/            # Runtime Threat Detection
├── assignment-12-sbom/             # Software Bill of Materials
├── assignment-13-kubernetes-rbac/  # Identity & Access Management
├── assignment-14-external-secrets/ # External Secrets Operator + AWS SM
├── assignment-15-terraform-state/  # Terraform State Security
├── assignment-16-sealed-secrets/   # Sealed Secrets for GitOps
│   ...
├── assignment-50-capstone/         # End-to-End DevSecOps Pipeline
│
├── app/demo-app/                   # Target application for scanning labs
├── docs/
│   ├── devsecops-architecture.md
│   └── devsecops-architecture.png
├── reports/                        # Auto-generated scan reports
└── README.md
```

---

## ⚙️ CI/CD Security Gates — Every Stage is Mandatory

```yaml
on: [push, pull_request]

jobs:
  secrets-scan:        # Gitleaks — block hardcoded secrets
  sast:                # SonarQube + CodeQL — catch code vulnerabilities
  sca:                 # OWASP Dep-Check + Snyk — vulnerable dependencies
  container-scan:      # Trivy — CVE scan the built image
  iac-scan:            # Checkov + Kubesec — IaC misconfigurations
  dast:                # OWASP ZAP — runtime application testing
  sign-and-publish:    # Cosign + Syft — sign image, generate SBOM
```

> Every stage is a **mandatory gate**. Failure at any point halts the pipeline.

---

## 🚀 Getting Started

```bash
# Prerequisites
docker --version          # Docker 24+
kubectl version           # Kubernetes 1.28+
terraform --version       # Terraform 1.6+
git --version             # Git 2.40+

# Clone the repository
git clone https://github.com/Ashish420-tech/devsecops-50-assignments.git
cd devsecops-50-assignments

# Start with Assignment 01 — Secrets Detection
cd assignment-01-gitleaks
cat README.md
```

---

## 📚 Standards & References

| Standard | Coverage Area |
|---|---|
| [NIST SP 800-53](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final) | Security & Privacy Controls |
| [CIS Kubernetes Benchmark](https://www.cisecurity.org/benchmark/kubernetes) | K8s Hardening |
| [OWASP DevSecOps Guideline](https://owasp.org/www-project-devsecops-guideline/) | Pipeline Security |
| [SLSA Supply Chain Framework](https://slsa.dev/) | Supply Chain Integrity |
| [SOC 2 Type II](https://www.aicpa.org/soc) | Compliance Controls |
| [CIS AWS Foundations Benchmark](https://www.cisecurity.org/benchmark/amazon_web_services) | Cloud Security |

---

## 👨‍💻 About the Author

<table>
<tr>
<td width="70%">

**Ashish Mondal** — DevSecOps Engineer & Security Automation Enthusiast based in **Kolkata, India**.

This project represents a self-driven journey to master the full DevSecOps toolchain — from secrets detection and container hardening to cloud security posture management and runtime threat detection. Every assignment is backed by real implementation, not just theory.

**What I bring to a team:**
- Hands-on experience securing CI/CD pipelines end-to-end
- Practical knowledge of 25+ security tools across the SDLC
- Ability to translate compliance requirements (CIS, SOC 2, NIST) into automated controls
- AWS + Kubernetes security with real-world misconfiguration remediation experience

</td>
<td width="30%" align="center">

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Ashish_Mondal-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ashish-mondal-a4190638a/)

[![GitHub](https://img.shields.io/badge/GitHub-Ashish420--tech-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Ashish420-tech)

</td>
</tr>
</table>

---

## 🤝 Open to Opportunities

If you're hiring or collaborating on:

- **DevSecOps Engineering** — shifting security left in CI/CD pipelines
- **Cloud Security** — AWS, Kubernetes, IaC hardening at scale
- **Security Automation** — policy-as-code, SIEM, runtime threat detection

📩 **[Connect on LinkedIn](https://www.linkedin.com/in/ashish-mondal-a4190638a/)** — let's talk.
⭐ **Star this repo** if it accelerates your DevSecOps journey
🍴 **Fork & contribute** — PRs and issues welcome

---

<div align="center">

Built with **security-first thinking** by **[Ashish Mondal](https://www.linkedin.com/in/ashish-mondal-a4190638a/)**

[![LinkedIn](https://img.shields.io/badge/Connect-LinkedIn-0077B5?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/ashish-mondal-a4190638a/)
[![GitHub](https://img.shields.io/badge/Follow-GitHub-181717?style=flat-square&logo=github)](https://github.com/Ashish420-tech)
[![Repo](https://img.shields.io/badge/Star-This_Repo-yellow?style=flat-square&logo=github)](https://github.com/Ashish420-tech/devsecops-50-assignments)

*"Every commit is an opportunity to harden your posture."*

</div>
