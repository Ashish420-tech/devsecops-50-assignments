# Assignment 24: Centralized Logging with ELK Stack

## 📌 Overview
Implemented centralized logging using ELK Stack (Elasticsearch, Logstash, Kibana) on AWS EC2.

---

## 🛠️ Tools Used
- Elasticsearch
- Logstash
- Kibana
- Docker & Docker Compose
- AWS EC2

---

## 🚀 Setup Steps

### 1. Launch EC2 Instance
- Open Ports: 22, 5601, 9200, 5044

### 2. Install Docker
```bash
sudo apt update
sudo apt install docker.io docker-compose -y
sudo usermod -aG docker ubuntu
3. Deploy ELK Stack
docker-compose up -d
4. Access Kibana
http://<EC2-PUBLIC-IP>:5601
5. Create Index Pattern
Pattern: logstash-*
Time field: @timestamp
6. Send Test Logs
curl -X POST "localhost:9200/logstash-test/_doc" \
-H "Content-Type: application/json" \
-d '{
  "message": "ELK pipeline working 🚀",
  "@timestamp": "'$(date -u +"%Y-%m-%dT%H:%M:%S")'"
}'
7. View Logs
Go to Discover in Kibana
📸 Screenshots
🔹 Kibana Home

🔹 Index Pattern

🔹 Logs in Discover

🔹 Docker Containers

✅ Outcome

Successfully implemented centralized logging and visualized logs using Kibana.

🧠 Learnings
ELK architecture
Log ingestion pipeline
Kibana visualization
Debugging real-world issues (Docker, Elastic security)
