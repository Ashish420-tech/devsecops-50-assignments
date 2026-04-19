🚀 Assignment 33 · Container Security
Multi-stage Dockerfile Security Best Practices
📌 Overview

This project demonstrates how to build a secure, production-ready Docker image using:

Multi-stage builds
Non-root user execution
Minimal base images
Security scanning & linting

The goal is to reduce attack surface, image size, and vulnerabilities while following DevSecOps best practices.

🛠 Tech Stack
Docker
Hadolint
Checkov
Python (Flask app)
📂 Project Structure
assignment-33-docker-security/
│── Dockerfile
│── app.py
│── requirements.txt
│── README.md
│── venv/
⚙️ Application Code
app.py
from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello Secure Docker"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
🔐 Secure Multi-stage Dockerfile
# Stage 1: Build
FROM python:3.11-slim AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

COPY . .

# Stage 2: Run
FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

RUN useradd -m appuser

COPY --from=builder /root/.local /home/appuser/.local
COPY --from=builder /app /app

RUN chown -R appuser:appuser /app /home/appuser

USER appuser

ENV PATH=/home/appuser/.local/bin:$PATH

EXPOSE 5000

HEALTHCHECK CMD curl --fail http://localhost:5000 || exit 1

CMD ["python", "app.py"]
🔍 Key Security Concepts Implemented
1. Multi-stage Build
Separates build and runtime
Removes unnecessary dependencies
Reduces image size
2. Minimal Base Image
Used python:3.11-slim
Reduces vulnerabilities vs full OS images
3. Non-root User
USER appuser
Prevents privilege escalation attacks
4. No Cache Dependency Install
pip install --no-cache-dir
Avoids storing unnecessary files
5. HEALTHCHECK
HEALTHCHECK CMD curl --fail http://localhost:5000 || exit 1
Enables container health monitoring
6. Reduced Attack Surface
Only required files copied
No unnecessary packages installed
▶️ Build & Run
docker build -t secure-app .
docker run -d -p 5000:5000 secure-app

Test:

curl http://localhost:5000
🔎 Dockerfile Linting

Using Hadolint:

hadolint Dockerfile

✔ Fixed:

Added --no-cache-dir
🛡 Security Scanning

Using Checkov:

checkov -f Dockerfile
✅ Result
Passed checks: 82
Failed checks: 0
🎯 Key Learnings
Secure Dockerfile design is critical in DevSecOps
Multi-stage builds significantly improve security
Running containers as non-root is mandatory
Static analysis tools help enforce best practices
🎤 Interview Questions & Answers
❓ What is a multi-stage Docker build?

👉 A technique where multiple FROM statements are used to separate build and runtime environments, reducing final image size and attack surface.

❓ Why should containers not run as root?

👉 Running as root increases risk of privilege escalation and container breakout attacks.

❓ What is the purpose of HEALTHCHECK?

👉 It monitors container health and helps orchestration tools restart unhealthy containers.

❓ What does --no-cache-dir do in pip?

👉 It prevents caching dependencies, reducing image size and sensitive residue.

❓ Difference between Hadolint and Checkov?

👉

Hadolint → Dockerfile best practices (linting)
Checkov → Security & compliance scanning
❓ Why use slim images?

👉 Smaller images reduce vulnerabilities and improve performance.

❓ What is attack surface in containers?

👉 The number of potential entry points for attackers (packages, ports, services).

❓ How does multi-stage improve security?

👉 Removes build tools and dependencies from final image, reducing exploitable components.

🏁 Conclusion

This project demonstrates real-world container hardening techniques used in DevSecOps pipelines to build secure, minimal, and production-ready images.
