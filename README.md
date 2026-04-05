import { useState } from "react";

const rawContent = `<div align="center">

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
 │                         CI/CD SECURITY PIPELINE       
 
 │
 ├─────────────┬────────────────┬────────────────┬─────────────┬───────────────┤
 │  Pre-Commit │     Build      │      Test      │   Artifacts │    Runtime    
 │
 ├─────────────┼────────────────┼────────────────┼─────────────┼───────────────┤
 │  Gitleaks   │  Trivy (image) │   OWASP ZAP    │   Cosign    │  Falco      
 │
 │  Husky      │  Checkov (IaC) │   Nuclei (API) │   Syft      │  Istio mTLS 
 │
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

// ── mini markdown renderer ──────────────────────────────────────────
let _key = 0;
const k = () => _key++;

function parseInline(str) {
  const out = [];
  let s = str;
  while (s.length) {
    let m;
    if ((m = s.match(/^\*\*\*(.+?)\*\*\*/))) { out.push(<strong key={k()}><em>{m[1]}</em></strong>); s = s.slice(m[0].length); }
    else if ((m = s.match(/^\*\*(.+?)\*\*/))) { out.push(<strong key={k()}>{m[1]}</strong>); s = s.slice(m[0].length); }
    else if ((m = s.match(/^\*(.+?)\*/))) { out.push(<em key={k()}>{m[1]}</em>); s = s.slice(m[0].length); }
    else if ((m = s.match(/^`([^`]+)`/))) { out.push(<code key={k()} style={{background:"#1f2937",color:"#79c0ff",padding:"1px 6px",borderRadius:4,fontSize:"0.87em",fontFamily:"monospace"}}>{m[1]}</code>); s = s.slice(m[0].length); }
    else if ((m = s.match(/^\[!\[([^\]]*)\]\(([^)]+)\)\]\(([^)]+)\)/))) { out.push(<img key={k()} src={m[2]} alt={m[1]} style={{verticalAlign:"middle",height:20,marginRight:3}}/>); s = s.slice(m[0].length); }
    else if ((m = s.match(/^\[([^\]]+)\]\(([^)]+)\)/))) { out.push(<a key={k()} href={m[2]} target="_blank" rel="noreferrer" style={{color:"#58a6ff",textDecoration:"none"}}>{m[1]}</a>); s = s.slice(m[0].length); }
    else if ((m = s.match(/^<img[^>]+src="([^"]+)"[^>]*\/?>/))) { out.push(<img key={k()} src={m[1]} alt="" style={{verticalAlign:"middle",height:22,marginRight:4}}/>); s = s.slice(m[0].length); }
    else if ((m = s.match(/^<[^>]+>/))) { s = s.slice(m[0].length); }
    else { out.push(s[0]); s = s.slice(1); }
  }
  return out;
}

function renderMd(text) {
  _key = 0;
  const lines = text.split("\n");
  const els = [];
  let i = 0;

  while (i < lines.length) {
    const line = lines[i];
    const trim = line.trim();

    // skip html wrappers
    if (/^<\/?div/.test(trim)) { i++; continue; }

    // HR
    if (/^---+$/.test(trim)) {
      els.push(<hr key={k()} style={{border:"none",borderTop:"1px solid #30363d",margin:"20px 0"}}/>);
      i++; continue;
    }

    // Headings
    let m;
    if ((m = trim.match(/^# (.+)/))) { els.push(<h1 key={k()} style={{fontSize:26,fontWeight:700,color:"#e6edf3",borderBottom:"2px solid #30363d",paddingBottom:8,marginTop:20,marginBottom:10}}>{parseInline(m[1])}</h1>); i++; continue; }
    if ((m = trim.match(/^## (.+)/))) { els.push(<h2 key={k()} style={{fontSize:19,fontWeight:700,color:"#e6edf3",borderBottom:"1px solid #21262d",paddingBottom:5,marginTop:24,marginBottom:8}}>{parseInline(m[1])}</h2>); i++; continue; }
    if ((m = trim.match(/^### (.+)/))) { els.push(<h3 key={k()} style={{fontSize:15,fontWeight:600,color:"#cdd9e5",marginTop:14,marginBottom:4}}>{parseInline(m[1])}</h3>); i++; continue; }

    // Blockquote
    if (trim.startsWith("> ")) {
      els.push(<blockquote key={k()} style={{borderLeft:"3px solid #388bfd",paddingLeft:14,margin:"10px 0",color:"#8b949e",fontStyle:"italic",fontSize:13}}>{parseInline(trim.slice(2))}</blockquote>);
      i++; continue;
    }

    // Code block
    if (line.startsWith("```")) {
      i++;
      const cLines = [];
      while (i < lines.length && !lines[i].startsWith("```")) { cLines.push(lines[i]); i++; }
      i++;
      els.push(<pre key={k()} style={{background:"#1f2937",border:"1px solid #30363d",borderRadius:8,padding:"12px 16px",overflowX:"auto",margin:"10px 0",fontSize:11.5,lineHeight:1.65,color:"#e2e8f0",fontFamily:"'Courier New',monospace"}}><code>{cLines.join("\n")}</code></pre>);
      continue;
    }

    // Details block
    if (trim === "<details>") {
      i++;
      let summary = "";
      if (i < lines.length && lines[i].trim().startsWith("<summary>")) {
        summary = lines[i].replace(/<\/?summary>/g,"").replace(/<\/?b>/g,"").trim();
        i++;
      }
      const dLines = [];
      while (i < lines.length && lines[i].trim() !== "</details>") { dLines.push(lines[i]); i++; }
      i++;
      const id = k();
      els.push(
        <DetailsBlock key={id} summary={summary} content={dLines.join("\n")} />
      );
      continue;
    }

    // Table
    if (trim.includes("|") && lines[i+1] && lines[i+1].includes("|---")) {
      const headers = trim.split("|").filter(c=>c.trim()).map(c=>c.trim());
      i += 2;
      const rows = [];
      while (i < lines.length && lines[i].includes("|")) {
        rows.push(lines[i].split("|").filter(c=>c.trim()).map(c=>c.trim()));
        i++;
      }
      els.push(
        <div key={k()} style={{overflowX:"auto",margin:"10px 0"}}>
          <table style={{width:"100%",borderCollapse:"collapse",fontSize:12.5}}>
            <thead><tr style={{background:"#161b22"}}>
              {headers.map((h,j)=><th key={j} style={{padding:"7px 12px",textAlign:"left",color:"#8b949e",fontWeight:600,borderBottom:"1px solid #30363d",whiteSpace:"nowrap"}}>{parseInline(h)}</th>)}
            </tr></thead>
            <tbody>
              {rows.map((row,ri)=>(
                <tr key={ri} style={{borderBottom:"1px solid #21262d",background:ri%2===0?"transparent":"#161b22"}}>
                  {row.map((cell,ci)=><td key={ci} style={{padding:"6px 12px",color:"#c9d1d9"}}>{parseInline(cell)}</td>)}
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      );
      continue;
    }

    // Bullet list
    if (/^[-*] /.test(trim)) {
      const items = [];
      while (i < lines.length && /^[-*] /.test(lines[i].trim())) {
        items.push(lines[i].trim().replace(/^[-*] /,""));
        i++;
      }
      els.push(
        <ul key={k()} style={{paddingLeft:20,margin:"6px 0"}}>
          {items.map((it,j)=><li key={j} style={{marginBottom:4,fontSize:13,lineHeight:1.65,color:"#c9d1d9"}}>{parseInline(it)}</li>)}
        </ul>
      );
      continue;
    }

    // Badge-only img line
    if (trim.startsWith("<img ")) {
      const srcs = [...trim.matchAll(/src="([^"]+)"/g)].map(m=>m[1]);
      els.push(<div key={k()} style={{display:"flex",flexWrap:"wrap",justifyContent:"center",gap:4,margin:"6px 0"}}>{srcs.map((s,j)=><img key={j} src={s} alt="" style={{height:24}}/>)}</div>);
      i++; continue;
    }

    // Empty
    if (!trim) { els.push(<div key={k()} style={{height:5}}/>); i++; continue; }

    // Paragraph
    els.push(<p key={k()} style={{margin:"4px 0",fontSize:13,lineHeight:1.75,color:"#c9d1d9"}}>{parseInline(trim)}</p>);
    i++;
  }
  return els;
}

function DetailsBlock({ summary, content }) {
  const [open, setOpen] = useState(false);
  return (
    <div style={{background:"#161b22",border:"1px solid #30363d",borderRadius:8,marginBottom:6}}>
      <div onClick={()=>setOpen(o=>!o)} style={{padding:"10px 14px",cursor:"pointer",display:"flex",alignItems:"center",gap:8,userSelect:"none"}}>
        <span style={{color:"#8b949e",fontSize:10,transition:"transform 0.2s",display:"inline-block",transform:open?"rotate(90deg)":"rotate(0deg)"}}>▶</span>
        <span style={{fontWeight:600,color:"#58a6ff",fontSize:13}}>{parseInline(summary)}</span>
      </div>
      {open && (
        <div style={{padding:"10px 16px 14px",borderTop:"1px solid #30363d",fontSize:13,color:"#c9d1d9",lineHeight:1.7}}>
          {renderMd(content)}
        </div>
      )}
    </div>
  );
}

// ── main component ─────────────────────────────────────────────────
export default function ReadmeViewer() {
  const [copied, setCopied] = useState(false);
  const [tab, setTab] = useState("preview");

  const copy = () => {
    navigator.clipboard.writeText(rawContent).then(() => {
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    });
  };

  return (
    <div style={{fontFamily:"-apple-system,BlinkMacSystemFont,'Segoe UI',sans-serif",background:"#0d1117",minHeight:"100vh",display:"flex",flexDirection:"column",color:"#c9d1d9"}}>

      {/* ── toolbar ── */}
      <div style={{background:"#161b22",borderBottom:"1px solid #30363d",padding:"9px 18px",display:"flex",alignItems:"center",justifyContent:"space-between",position:"sticky",top:0,zIndex:99}}>
        <div style={{display:"flex",alignItems:"center",gap:10}}>
          <span style={{fontSize:17}}>🛡️</span>
          <span style={{color:"#58a6ff",fontWeight:700,fontSize:13}}>README.md</span>
          <span style={{background:"#21262d",color:"#3fb950",fontSize:11,padding:"2px 8px",borderRadius:10,border:"1px solid #30363d",fontWeight:600}}>14 / 50 · 28%</span>
        </div>
        <div style={{display:"flex",gap:8,alignItems:"center"}}>
          <div style={{display:"flex",background:"#21262d",borderRadius:6,padding:2,border:"1px solid #30363d"}}>
            {[["preview","👁 Preview"],["raw","📄 Raw"]].map(([t,label])=>(
              <button key={t} onClick={()=>setTab(t)} style={{background:tab===t?"#388bfd":"transparent",color:tab===t?"#fff":"#8b949e",border:"none",borderRadius:4,padding:"4px 11px",cursor:"pointer",fontSize:11.5,fontWeight:600,transition:"all 0.15s"}}>
                {label}
              </button>
            ))}
          </div>
          <button onClick={copy} style={{background:copied?"#238636":"#21262d",color:copied?"#fff":"#c9d1d9",border:"1px solid "+(copied?"#2ea043":"#30363d"),borderRadius:6,padding:"5px 13px",cursor:"pointer",fontSize:12,fontWeight:600,transition:"all 0.2s",whiteSpace:"nowrap"}}>
            {copied?"✅ Copied!":"📋 Copy All"}
          </button>
        </div>
      </div>

      {/* ── content ── */}
      <div style={{flex:1,overflowY:"auto"}}>
        {tab === "preview"
          ? <div style={{maxWidth:880,margin:"0 auto",padding:"22px 28px"}}>{renderMd(rawContent)}</div>
          : <pre style={{margin:0,padding:"18px 22px",whiteSpace:"pre-wrap",wordBreak:"break-word",fontSize:12,lineHeight:1.7,color:"#c9d1d9",fontFamily:"'Courier New',monospace"}}>{rawContent}</pre>
        }
      </div>

      {/* ── footer ── */}
      <div style={{background:"#161b22",borderTop:"1px solid #30363d",padding:"6px 18px",color:"#8b949e",fontSize:11,display:"flex",justifyContent:"space-between"}}>
        <span>Ashish Mondal · DevSecOps 50 Assignments</span>
        <span>Switch to <strong style={{color:"#58a6ff"}}>Raw</strong> → Copy → paste into GitHub README.md</span>
      </div>
    </div>
  );
}
