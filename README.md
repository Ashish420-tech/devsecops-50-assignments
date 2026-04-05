import { useState } from "react";

const content = `<div align="center">

<img src="https://img.shields.io/badge/DevSecOps-50%20Assignments-0a0a0a?style=for-the-badge&logo=shield&logoColor=white" />
<img src="https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white" />
<img src="https://img.shields.io/badge/Security-Shift--Left-critical?style=for-the-badge&logo=opensourceinitiative&logoColor=white" />
<img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge" />

# 🛡️ DevSecOps — 50 Hands-On Assignments

### *Integrating Security at Every Stage of the Software Development Lifecycle*

**By Ashish Mondal** · DevSecOps Engineer & Security Automation Enthusiast

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat-square&logo=linkedin)](https://linkedin.com)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=flat-square&logo=github)](https://github.com)

</div>

---

## 🎯 What Is This Project?

This repository is a **complete, hands-on DevSecOps lab** — 50 real-world assignments that embed security into every phase of a modern CI/CD pipeline. Each assignment goes beyond surface-level tutorials: it covers the *why* behind each tool, the *how* of integration, and the *what-if* of common failure modes.

> **The core philosophy:** Security is not a gate at the end — it's a pipeline-first discipline. Every commit, every build, every deploy has a security obligation.

---

## 📊 Coverage at a Glance

| Domain | Assignments | Key Tools |
|---|---|---|
| 🔑 Secrets Management | 5 | Gitleaks · HashiCorp Vault · External Secrets Operator · AWS Secrets Manager |
| 📦 Container Security | 6 | Trivy · Cosign · Syft (SBOM) · Distroless · Rootless Images |
| 🏗️ IaC Security | 4 | Checkov · Kubesec · Terraform State Security · Remote Backends |
| 🔍 SAST / Code Quality | 2 | SonarQube · CodeQL |
| 🌐 DAST / API Testing | 3 | OWASP ZAP · Nuclei · kube-hunter |
| 📜 Supply Chain Security | 3 | Syft · Cosign · Dependency-Track |
| ☁️ Cloud Security | 5 | AWS GuardDuty · AWS SecurityHub · AWS WAF · EKS Hardening · S3 Audit |
| 🕸️ Network Security | 3 | Kubernetes NetworkPolicy · Istio mTLS · Kubernetes Audit Logging |
| 🚦 Runtime Security | 3 | Falco · Admission Controllers · Pod Security Standards |
| 🔐 Access & Identity | 4 | Kubernetes RBAC · OPA/Gatekeeper · OIDC Federated Identity · IAM Least Privilege |
| 📋 Compliance | 5 | CIS Benchmarks · kube-bench · SOC 2 · DORA Metrics · FOSSA |
| 📡 Monitoring & SIEM | 3 | Prometheus · Grafana · Splunk · ELK Stack |
| ⚙️ CI/CD Pipeline | 4 | GitHub Actions Security · Jenkins Hardening · Snyk · GitOps with ArgoCD |
| 🏁 Capstone Project | 1 | End-to-End DevSecOps Pipeline |

---

## 📁 Repository Structure

\`\`\`
devsecops-50-assignments/
│
├── 📂 assignment-01-gitleaks/              # Secrets Detection
├── 📂 assignment-02-trivy/                 # Container Vulnerability Scanning
├── 📂 assignment-03-checkov/               # IaC Security Scanning
├── 📂 assignment-04-sonarqube/             # SAST & Code Quality
├── 📂 assignment-05-vault/                 # Secrets Management
├── 📂 assignment-06-owasp-zap/             # Dynamic Application Testing
├── 📂 assignment-07-opa-gatekeeper/        # Kubernetes Policy Enforcement
├── 📂 assignment-08-network-policy/        # Kubernetes Network Security
├── 📂 assignment-09-github-actions/        # Secure CI/CD Workflows
├── 📂 assignment-10-kube-bench/            # CIS Benchmark Compliance
├── 📂 assignment-11-falco/                 # Runtime Threat Detection
├── 📂 assignment-12-sbom/                  # Software Bill of Materials
├── 📂 assignment-13-kubernetes-rbac/       # Identity & Access Management
├── 📂 assignment-14-external-secrets/      # External Secrets Operator + AWS SM
│   ...
├── 📂 assignment-50-capstone/              # End-to-End DevSecOps Pipeline
│
└── 📂 .github/
    └── workflows/
        ├── secret-scan.yml
        ├── container-scan.yml
        ├── sast-scan.yml
        └── full-pipeline.yml
\`\`\`

---

## 🔧 The DevSecOps Toolchain

\`\`\`
 ┌──────────────────────────────────────────────────────────────────────────────┐
 │                         CI/CD SECURITY PIPELINE                              │
 ├─────────────┬────────────────┬────────────────┬─────────────┬───────────────┤
 │  Pre-Commit │     Build      │      Test      │   Artifacts │    Runtime    │
 ├─────────────┼────────────────┼────────────────┼─────────────┼───────────────┤
 │  Gitleaks   │  Trivy (image) │   OWASP ZAP    │   Cosign    │  Falco        │
 │  Husky      │  Checkov (IaC) │   Nuclei (API) │   Syft      │  Istio mTLS   │
 │  pre-commit │  SonarQube     │   kube-hunter  │   Trivy     │  NetworkPolicy│
 │  hooks      │  Snyk (SCA)    │   Dependency   │   SBOM      │  GuardDuty    │
 └─────────────┴────────────────┴────────────────┴─────────────┴───────────────┘
                                    │
                   ┌────────────────▼─────────────────┐
                   │        DEPLOY & GOVERN            │
                   │  OPA Gatekeeper · Kyverno         │
                   │  ArgoCD · Vault · RBAC            │
                   └──────────────────────────────────┘
                                    │
                   ┌────────────────▼─────────────────┐
                   │      MONITOR & COMPLY             │
                   │  Prometheus · Grafana · Splunk    │
                   │  AWS SecurityHub · kube-bench     │
                   └──────────────────────────────────┘
\`\`\`

---

## ✅ Completed Assignments (14 / 50)

<details>
<summary><b>🔐 Assignment 01 — Detect Hardcoded Secrets with Gitleaks</b></summary>

**Category:** Secrets Management | **Difficulty:** ⭐ Beginner

**What I built:** Configured Gitleaks v8.x to scan entire Git history using entropy analysis and regex-based rules. Integrated into a GitHub Actions workflow that blocks PRs on secret detection.

**Key skills:** \`gitleaks detect\`, \`.gitleaks.toml\` baseline config, pre-commit hooks, pipeline failure gates

</details>

<details>
<summary><b>📦 Assignment 02 — Container Vulnerability Scanning with Trivy</b></summary>

**Category:** Container Security | **Difficulty:** ⭐ Beginner

**What I built:** Automated Docker image scanning with Trivy, targeting CVEs in OS packages and application dependencies. CI pipeline fails on CRITICAL/HIGH severity findings.

**Key skills:** \`trivy image\`, severity thresholds, SARIF report output, GitHub Actions integration

</details>

<details>
<summary><b>🏗️ Assignment 03 — IaC Security Scanning with Checkov</b></summary>

**Category:** Infrastructure as Code Security | **Difficulty:** ⭐⭐ Intermediate

**What I built:** Scanned Terraform configs against CIS Benchmarks using Checkov. Misconfigured S3 buckets, open security groups, and unencrypted EBS volumes are caught pre-deploy.

**Key skills:** \`checkov -d .\`, custom policy creation, Terraform plan scanning, SARIF integration

</details>

<details>
<summary><b>🔍 Assignment 04 — Static Analysis with SonarQube</b></summary>

**Category:** SAST | **Difficulty:** ⭐⭐ Intermediate

**What I built:** Deployed SonarQube Community Edition, configured Quality Gates, and integrated SAST into the CI pipeline. Code coverage, bug density, and security hotspots tracked per PR.

**Key skills:** SonarScanner, Quality Gate policies, OWASP Top 10 rule mapping, branch analysis

</details>

<details>
<summary><b>🗝️ Assignment 05 — Secrets Management with HashiCorp Vault</b></summary>

**Category:** Secrets Management | **Difficulty:** ⭐⭐⭐ Advanced

**What I built:** Deployed Vault in dev mode, configured KV secrets engine, created AppRole authentication, and injected secrets into CI/CD via environment variables — zero plaintext secrets in pipelines.

**Key skills:** Vault AppRole auth, dynamic secrets, lease management, CI/CD injection patterns

</details>

<details>
<summary><b>🌐 Assignment 06 — Dynamic Testing with OWASP ZAP</b></summary>

**Category:** DAST | **Difficulty:** ⭐⭐ Intermediate

**What I built:** Ran automated DAST scans against a live application using OWASP ZAP in headless mode. Discovered OWASP Top 10 vulnerabilities including XSS and SQL injection in staging.

**Key skills:** ZAP CLI, baseline scan, active scan, HTML/XML report generation, CI gate integration

</details>

<details>
<summary><b>📦 Assignment 07 — Dependency Scanning with OWASP Dependency-Check</b></summary>

**Category:** Software Composition Analysis (SCA) | **Difficulty:** ⭐⭐ Intermediate

**What I built:** Automated SCA scanning of application dependencies against NVD CVE database. Pipeline blocks deployments with known vulnerable library versions.

**Key skills:** OWASP Dependency-Check, NVD API integration, suppression files, HTML/JSON reports

</details>

<details>
<summary><b>🕸️ Assignment 08 — Network Policy Enforcement in Kubernetes</b></summary>

**Category:** Network Security | **Difficulty:** ⭐⭐⭐ Advanced

**What I built:** Implemented Kubernetes NetworkPolicies for namespace isolation and east-west traffic control. Verified deny-all defaults with allowed-only egress/ingress rules per service.

**Key skills:** NetworkPolicy manifests, namespace isolation, Calico CNI, traffic analysis

</details>

<details>
<summary><b>⚙️ Assignment 09 — Secure GitHub Actions Workflows</b></summary>

**Category:** CI/CD Security | **Difficulty:** ⭐⭐ Intermediate

**What I built:** Hardened GitHub Actions workflows with pinned action versions, least-privilege GITHUB_TOKEN scopes, secret masking, and OIDC-based AWS authentication — eliminating long-lived credentials from pipelines entirely.

**Key skills:** GITHUB_TOKEN scoping, OIDC federation, action pinning by SHA, secret masking, environment protection rules

</details>

<details>
<summary><b>📋 Assignment 10 — Kubernetes CIS Benchmark with kube-bench</b></summary>

**Category:** Compliance | **Difficulty:** ⭐⭐ Intermediate

**What I built:** Ran kube-bench against a live Kubernetes cluster to assess compliance with CIS Kubernetes Benchmark v1.8. Remediated failing controls across API server, etcd, kubelet, and scheduler configurations.

**Key skills:** kube-bench job manifests, CIS control mapping, etcd encryption at rest, API server hardening flags

</details>

<details>
<summary><b>🦅 Assignment 11 — Runtime Threat Detection with Falco</b></summary>

**Category:** Runtime Security | **Difficulty:** ⭐⭐⭐ Advanced

**What I built:** Deployed Falco as a DaemonSet using the eBPF driver for low-overhead syscall monitoring. Authored custom rules for container breakout attempts, privilege escalation, and sensitive file reads. Alerts routed to Slack and Elasticsearch.

**Key skills:** Falco rules engine, eBPF vs kernel module drivers, custom rule authoring, Falcosidekick alerting

</details>

<details>
<summary><b>📜 Assignment 12 — SBOM Generation and Verification</b></summary>

**Category:** Supply Chain Security | **Difficulty:** ⭐⭐ Intermediate

**What I built:** Generated Software Bill of Materials (SBOM) in CycloneDX and SPDX formats using Syft for every container image. Attached SBOMs as OCI attestations alongside Cosign signatures for supply chain transparency.

**Key skills:** Syft SBOM generation, CycloneDX/SPDX formats, \`cosign attest\`, SLSA provenance, Grype vulnerability scanning against SBOM

</details>

<details>
<summary><b>🔐 Assignment 13 — Kubernetes RBAC Deep Dive</b></summary>

**Category:** Identity & Access Management | **Difficulty:** ⭐⭐⭐ Advanced

**What I built:** Designed a full RBAC model for a multi-team Kubernetes cluster — Roles, ClusterRoles, RoleBindings, and ServiceAccount scoping with least-privilege principles. Audited existing permissions using \`kubectl-who-can\` and \`rbac-lookup\`.

**Key skills:** Role vs ClusterRole, RoleBinding scoping, ServiceAccount automation tokens, \`kubectl auth can-i\`, RBAC audit tooling

</details>

<details>
<summary><b>🗝️ Assignment 14 — External Secrets Operator with AWS Secrets Manager</b></summary>

**Category:** Secrets Management | **Difficulty:** ⭐⭐⭐ Advanced

**What I built:** Deployed External Secrets Operator (ESO) in a Kubernetes cluster and connected it to AWS Secrets Manager via IRSA (IAM Roles for Service Accounts). Secrets sync automatically into native Kubernetes Secrets with rotation support.

**Key skills:** ESO ClusterSecretStore, ExternalSecret CRDs, IRSA configuration, automatic secret rotation, namespace-scoped secret injection

</details>

---

## 🧠 Key Technical Competencies Demonstrated

\`\`\`
┌─────────────────────────────────────────────────────────────────┐
│  SAST     │  SonarQube · CodeQL · Semgrep                       │
│  DAST     │  OWASP ZAP · Nuclei · kube-hunter                   │
│  SCA      │  OWASP Dependency-Check · Snyk · Syft               │
│  IaC Sec  │  Checkov · Kubesec · Terrascan                      │
│  Secrets  │  Gitleaks · HashiCorp Vault · AWS Secrets Manager   │
│  Runtime  │  Falco · OPA · Pod Security Standards               │
│  CI/CD    │  GitHub Actions · Jenkins · ArgoCD                  │
│  Cloud    │  AWS GuardDuty · SecurityHub · WAF · EKS            │
│  Crypto   │  Cosign · cert-manager · mTLS (Istio)               │
│  Compliance│ CIS · SOC 2 · NIST SP 800-53 · DORA Metrics       │
└─────────────────────────────────────────────────────────────────┘
\`\`\`

---

## ⚙️ CI/CD Pipeline Overview

\`\`\`yaml
# .github/workflows/devsecops-pipeline.yml (simplified)

on: [push, pull_request]

jobs:
  secrets-scan:      # Gitleaks — blocks on any exposed credential
  sast:              # SonarQube — Quality Gate must pass
  sca:               # OWASP Dependency-Check / Snyk
  container-scan:    # Trivy — no CRITICAL CVEs allowed
  iac-scan:          # Checkov — CIS Benchmark compliance
  dast:              # OWASP ZAP — against staging environment
  sign-and-publish:  # Cosign + Syft SBOM — attestation on every image
\`\`\`

Every stage is a **mandatory gate**. Failure at any point halts the pipeline.

---

## 🌍 Real-World Impact

These are not toy examples — the patterns implemented here directly address:

- **Supply chain attacks** (SolarWinds-style) → Cosign image signing + SBOM generation
- **Secret sprawl** (Uber 2022 breach vector) → Gitleaks + Vault injection
- **Misconfigured cloud** (Capital One breach vector) → Checkov + AWS SecurityHub
- **Container escape** → Falco syscall monitoring + Pod Security Standards
- **Vulnerable dependencies** (Log4Shell) → Dependency-Track CVE management

---

## 🚀 Getting Started

\`\`\`bash
# Prerequisites
docker --version      # Docker 24+
kubectl version       # kubectl 1.28+
terraform --version   # Terraform 1.6+
git --version         # Git 2.40+

# Clone the repository
git clone https://github.com/yourusername/devsecops-50-assignments.git
cd devsecops-50-assignments

# Start with Assignment 01
cd assignment-01-gitleaks
cat README.md   # Each assignment has its own guide
\`\`\`

> Assignments build on each other. Completing them in order (01 → 50) is strongly recommended.

---

## 📈 Progress Tracker

\`\`\`
Secrets Management    ██████░░░░ 3/5   🔄 In Progress  (Gitleaks · Vault · ESO)
Container Security    ████░░░░░░ 2/6   🔄 In Progress  (Trivy · OPA/Gatekeeper)
IaC Security          ██░░░░░░░░ 1/4   🔄 In Progress  (Checkov)
SAST                  █████░░░░░ 1/2   🔄 In Progress  (SonarQube)
DAST / API Testing    ███░░░░░░░ 1/3   🔄 In Progress  (OWASP ZAP)
Supply Chain          ███░░░░░░░ 1/3   🔄 In Progress  (SBOM / Syft)
Network Security      ███░░░░░░░ 1/3   🔄 In Progress  (NetworkPolicy)
CI/CD Security        ██░░░░░░░░ 1/4   🔄 In Progress  (GitHub Actions)
Compliance            ██░░░░░░░░ 1/5   🔄 In Progress  (kube-bench)
Runtime Security      ███░░░░░░░ 1/3   🔄 In Progress  (Falco)
Access & Identity     ██░░░░░░░░ 1/4   🔄 In Progress  (Kubernetes RBAC)
Cloud Security        ░░░░░░░░░░ 0/5   📅 Upcoming
Monitoring & SIEM     ░░░░░░░░░░ 0/3   📅 Upcoming
Capstone              ░░░░░░░░░░ 0/1   📅 Upcoming

Overall: ██████░░░░  14/50 (28%)
\`\`\`

---

## 📚 References & Standards

- [NIST SP 800-53 — Security and Privacy Controls](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)
- [CIS Kubernetes Benchmark](https://www.cisecurity.org/benchmark/kubernetes)
- [OWASP DevSecOps Guideline](https://owasp.org/www-project-devsecops-guideline/)
- [SLSA Supply Chain Framework](https://slsa.dev/)
- [SOC 2 Type II Controls Reference](https://www.aicpa.org/interestareas/frc/assuranceadvisoryservices/aicpasoc2report.html)

---

<div align="center">

**Built with security-first thinking by Ashish Mondal**

*"Security is not a feature — it's a foundation."*

[![Stars](https://img.shields.io/github/stars/yourusername/devsecops-50-assignments?style=social)](https://github.com)
[![Forks](https://img.shields.io/github/forks/yourusername/devsecops-50-assignments?style=social)](https://github.com)

</div>`;

export default function ReadmeViewer() {
  const [copied, setCopied] = useState(false);

  const handleCopy = () => {
    navigator.clipboard.writeText(content).then(() => {
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    });
  };

  return (
    <div style={{ fontFamily: "monospace", background: "#0d1117", minHeight: "100vh", color: "#c9d1d9", display: "flex", flexDirection: "column" }}>
      {/* Header bar */}
      <div style={{
        background: "#161b22",
        borderBottom: "1px solid #30363d",
        padding: "12px 20px",
        display: "flex",
        alignItems: "center",
        justifyContent: "space-between",
        position: "sticky",
        top: 0,
        zIndex: 10
      }}>
        <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
          <span style={{ fontSize: 18 }}>📄</span>
          <span style={{ color: "#58a6ff", fontWeight: 700, fontSize: 14 }}>README.md</span>
          <span style={{ color: "#8b949e", fontSize: 12 }}>— DevSecOps 50 Assignments</span>
        </div>
        <button
          onClick={handleCopy}
          style={{
            background: copied ? "#238636" : "#21262d",
            color: copied ? "#fff" : "#c9d1d9",
            border: "1px solid " + (copied ? "#2ea043" : "#30363d"),
            borderRadius: 6,
            padding: "6px 16px",
            cursor: "pointer",
            fontSize: 13,
            fontWeight: 600,
            display: "flex",
            alignItems: "center",
            gap: 6,
            transition: "all 0.2s"
          }}
        >
          {copied ? "✅ Copied!" : "📋 Copy All"}
        </button>
      </div>

      {/* Content */}
      <div style={{
        flex: 1,
        overflowY: "auto",
        padding: "24px 28px",
        whiteSpace: "pre-wrap",
        wordBreak: "break-word",
        fontSize: 13,
        lineHeight: 1.7,
        color: "#c9d1d9"
      }}>
        {content}
      </div>

      {/* Footer */}
      <div style={{
        background: "#161b22",
        borderTop: "1px solid #30363d",
        padding: "8px 20px",
        color: "#8b949e",
        fontSize: 11,
        display: "flex",
        justifyContent: "space-between"
      }}>
        <span>14 / 50 assignments complete · 28% progress</span>
        <span>Click "Copy All" → paste into your GitHub README.md</span>
      </div>
    </div>
  );
}
