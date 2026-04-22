🚀 Assignment 39 – DORA Metrics for DevSecOps Teams
📌 Overview

This project implements DORA Metrics (DevOps Research & Assessment) using a GitHub Actions CI/CD pipeline integrated with Datadog for real-time event tracking.

It simulates a full DevSecOps lifecycle:

Build & Deployment
Security Scanning
Failure Handling (MTTR)
Event Tracking (Four Keys Framework)
🎯 Objectives
Implement DORA Metrics
Integrate CI/CD + Security + Observability
Track deployment lifecycle events
Send real-time data to Datadog
📊 DORA Metrics Implemented
Metric	Implementation
🚀 Deployment Frequency	Logged on every pipeline run
⏱ Lead Time for Changes	Derived from commit → deploy
❌ Change Failure Rate	Simulated via security scan failure
🔧 MTTR (Mean Time to Recovery)	Recovery event tracking
🧱 Architecture
GitHub Commit
     ↓
GitHub Actions Pipeline
     ↓
Build → Security Scan → Deploy
     ↓
DORA Events Generated
     ↓
Datadog Events API
     ↓
Event Explorer Dashboard
⚙️ Tech Stack
GitHub Actions (CI/CD)
Bash scripting
Datadog Events API
Four Keys Framework
🔄 Pipeline Workflow
1️⃣ Build & Deploy Simulation
echo "Building app..."
echo "Deploying app..."
2️⃣ Security Scan (DevSecOps Gate)
echo '{"severity":"LOW"}' > results.json

👉 Pipeline fails if CRITICAL found

3️⃣ DORA Metrics Tracking
echo "Deployment recorded at $(date)" >> dora_metrics.log
4️⃣ Event Generation Script
scripts/emit_dora.sh

Generates:

{
  "title": "DORA: deployment",
  "tags": ["dora","event:deployment","status:success"]
}
5️⃣ Datadog Integration

Events sent using:

curl -X POST https://api.us5.datadoghq.com/api/v1/events
🔐 GitHub Secrets
Secret	Description
DD_API_KEY	Datadog API Key
📈 Datadog Visualization

Go to:
👉 Event Explorer

Filter:

tags:dora

You will see:

✅ Deployment events
❌ Incident events
🔧 Recovery events
🧠 Key Concepts
🔹 Four Keys Framework
Deployment
Change
Incident
Recovery
🔹 Observability
Event-driven tracking
Real-time monitoring via Datadog
🔹 DevSecOps
Security integrated into pipeline
Fail-fast mechanism
🚨 Challenges Faced
Issue	Solution
YAML syntax error	Fixed indentation
Datadog events not visible	Corrected API region (us5)
Events not readable	Added tags & structured JSON
🎯 Results
Fully automated DORA tracking pipeline
Real-time event monitoring
Production-like DevSecOps workflow
💼 Interview Questions
Q1: What are DORA metrics?

DORA metrics measure software delivery performance:

Deployment Frequency
Lead Time
Change Failure Rate
MTTR
Q2: How did you implement DORA?

Using GitHub Actions + event emission + Datadog API integration.

Q3: Why Datadog?
Real-time observability
Event tracking
Easy API integration
Q4: What is MTTR?

Time taken to recover from failure, tracked via incident → recovery events.

Q5: How is security integrated?

Pipeline fails if critical vulnerabilities are detected.

🚀 Future Enhancements
Dashboard visualization in Datadog
Slack alerts for incidents
Real application deployment
Automated MTTR calculation
📢 Conclusion

This project demonstrates a real-world DevSecOps implementation combining:

CI/CD automation
Security enforcement
Observability with DORA metrics
🔥 Author

Ashish Mondal
DevSecOps Engineer | Cloud | Kubernetes | Security

⭐ If you found this useful

Give a ⭐ to the repo and share 🚀
