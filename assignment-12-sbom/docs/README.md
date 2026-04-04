📘 DevSecOps Assignment 12: SBOM Generation and Verification
🔐 Overview

This assignment demonstrates software supply chain security using SBOM (Software Bill of Materials).

We used:

Syft → Generate SBOM
Grype → Scan vulnerabilities
📦 What is SBOM?

SBOM (Software Bill of Materials) is a list of:

Components
Dependencies
Versions
Licenses

👉 It provides full transparency into application dependencies.

⚙️ Tools Used
Tool	Purpose
Syft	Generate SBOM
Grype	Vulnerability scanning
CycloneDX	SBOM format
SPDX	SBOM format
🚀 Implementation Steps
1. Install Syft
curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh
sudo mv ./bin/syft /usr/local/bin/
2. Generate SBOM
syft nginx:latest -o cyclonedx-json > reports/sbom-cyclonedx.json
syft nginx:latest -o spdx-json > reports/sbom-spdx.json
3. Install Grype
curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh
sudo mv ./bin/grype /usr/local/bin/
4. Scan SBOM
grype sbom:reports/sbom-cyclonedx.json -o table > reports/grype-report.txt
grype sbom:reports/sbom-spdx.json -o table > reports/grype-spdx-report.txt
📊 Results
Total vulnerabilities: 184
High: 26
Medium: 43
Low: 18

Example:

nginx  CVE-2013-0337  Low
libde265  CVE-2024-38950  Medium
🧠 Key Learnings
Even trusted images contain vulnerabilities
SBOM helps in dependency visibility
Vulnerability scanning is essential before deployment
🎯 Real-World DevSecOps Insight
SBOM is now required in:
Enterprise security
Compliance frameworks
Government regulations
DevSecOps pipelines use:
SBOM generation → build stage
Vulnerability scanning → security gate
🎤 Interview Questions & Answers
Q1: What is SBOM?

👉 A list of all software components and dependencies in an application.

Q2: Difference between SBOM and SCA?

👉

SBOM → lists components
SCA → identifies vulnerabilities
Q3: Why is SBOM important?

👉 Helps detect vulnerable dependencies and ensures transparency.

Q4: What tools generate SBOM?

👉 Syft, CycloneDX tools, SPDX tools

Q5: How is SBOM used in CI/CD?

👉 Generated during build and scanned before deployment.

📌 Conclusion

This assignment demonstrates how to:

Generate SBOM
Analyze dependencies
Detect vulnerabilities

👉 A critical step in securing modern software supply chains.
