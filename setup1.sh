#!/bin/bash
set -e

echo "🚀 Creating DevSecOps Splunk SIEM Project..."

PROJECT="assignment-46-devsecops-splunk-siem"
mkdir -p "$PROJECT"
cd "$PROJECT"

mkdir -p .github/workflows terraform fluentd splunk/dashboards app scripts reports docs

cat <<'EOF' > .github/workflows/splunk-scan.yml
name: SIEM Integration with Splunk
on:
  push:
    branches: [ main ]
  pull_request:
jobs:
  security-scan:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      security-events: write
    steps:
      - uses: actions/checkout@v4
      - run: echo '{"runs":[]}' > splunk-results.sarif
      - uses: github/codeql-action/upload-sarif@v3
        with:
          sarif_file: splunk-results.sarif
EOF

cat <<'EOF' > terraform/main.tf
resource "aws_s3_bucket" "logs" {
  bucket = "devsecops-splunk-logs"
}
resource "aws_cloudtrail" "main" {
  name           = "devsecops-trail"
  s3_bucket_name = aws_s3_bucket.logs.id
}
EOF

cat <<'EOF' > fluentd/fluent.conf
<source>
  @type tail
  path /var/log/*.log
  tag aws.logs
</source>
<match aws.logs>
  @type splunk_hec
  host localhost
  port 8088
  token YOUR_SPLUNK_TOKEN
</match>
EOF

cat <<'EOF' > splunk/splunk.yaml
version: "1.0"
scan:
  enabled: true
  severity: [CRITICAL, HIGH, MEDIUM]
  output:
    format: sarif
    file: splunk-results.sarif
EOF

cat <<'EOF' > app/app.py
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello DevSecOps"
EOF

echo "flask" > app/requirements.txt

cat <<'EOF' > scripts/setup-splunk.sh
#!/bin/bash
docker pull splunk/splunk:latest
docker run -d -p 8000:8000 -p 8088:8088 \
-e SPLUNK_START_ARGS="--accept-license" \
-e SPLUNK_PASSWORD="Admin123!" \
splunk/splunk:latest
EOF

chmod +x scripts/setup-splunk.sh

echo "*.log
*.sarif
.env" > .gitignore

git init
git add .
git commit -m "Initial commit"

echo "✅ Project created successfully!"
