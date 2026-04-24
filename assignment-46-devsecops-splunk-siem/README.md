# 🚀 DevSecOps SIEM Project using Splunk + Fluentd

## 📌 Overview
This project demonstrates an end-to-end **SIEM (Security Information and Event Management)** pipeline using:

- 🔹 Splunk Enterprise (Log Analysis)
- 🔹 Fluentd (Log Forwarder)
- 🔹 Custom Vulnerable App (Log Generator)

The system captures application logs, forwards them securely, and enables **real-time security monitoring and detection**.

---

## 🏗️ Architecture

App → Log File → Fluentd → Splunk HEC → Splunk Index → Search & Detection

---

## ⚙️ Tech Stack

- Docker
- Splunk Enterprise
- Fluentd
- HTTP Event Collector (HEC)
- Linux (Ubuntu)

---

## 🔧 Setup Instructions

### 1️⃣ Run Splunk Container

```bash
docker run -d \
  --name splunk \
  --network splunk-net \
  -p 8000:8000 \
  -p 8088:8088 \
  -e SPLUNK_GENERAL_TERMS="--accept-sgt-current-at-splunk-com" \
  -e SPLUNK_START_ARGS="--accept-license" \
  -e SPLUNK_PASSWORD="Str0ngP@ssw0rd!" \
  splunk/splunk:latest
2️⃣ Enable HEC in Splunk
Go to: Settings → Data Inputs → HTTP Event Collector
Enable HEC
Create new token
Copy token
3️⃣ Fluentd Configuration
<source>
  @type tail
  path /tmp/devsecops-app.log
  pos_file /tmp/devsecops-app.pos
  tag app.logs
  format none
</source>

<match app.logs>
  @type splunk_hec
  hec_host splunk
  hec_port 8088
  hec_token YOUR_TOKEN
  protocol https
  insecure_ssl true
</match>
4️⃣ Run Fluentd Container
docker run -d \
  --name fluentd \
  --network splunk-net \
  --user root \
  -v /tmp/devsecops-app.log:/tmp/devsecops-app.log \
  -v $(pwd)/fluentd/fluent.conf:/fluentd/etc/fluent.conf \
  fluent/fluentd:v1.16-1 \
  /bin/sh -c "gem install fluent-plugin-splunk-hec --no-document && exec fluentd -c /fluentd/etc/fluent.conf"
5️⃣ Generate Logs (Simulated Attacks)
curl -X POST http://localhost:5000/login -d "username=admin&password=admin123"
curl http://localhost:5000/admin
curl http://localhost:5000/error
🔍 Splunk Queries
Detect Errors
index=main "ERROR"
Detect Unauthorized Access
index=main "UNAUTHORIZED"
Analyze Log Patterns
index=main | stats count by message
🚨 Security Use Cases Implemented
❗ Weak password detection
❗ Unauthorized access attempts
❗ Application error tracking
❗ HTTP request monitoring
📊 Output (SIEM Dashboard Capabilities)
Real-time log ingestion
Event correlation
Security detection via queries
Aggregated analytics
🧠 Key Learnings
SIEM architecture design
Log forwarding with Fluentd
Splunk HEC integration
Security event detection
Troubleshooting real-world issues
🚀 Future Enhancements
Alerting system (Splunk Alerts)
Dashboard creation
Integration with AWS / Kubernetes
Threat intelligence enrichment
📌 Conclusion

This project demonstrates a complete DevSecOps security pipeline, showcasing real-world SIEM capabilities including ingestion, monitoring, and detection.

👤 Author

Ashish Mondal
DevSecOps Enthusiast 🚀
