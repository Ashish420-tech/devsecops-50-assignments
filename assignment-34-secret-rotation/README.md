🔐 Assignment 34 — AWS Secrets Manager Auto-Rotation (Terraform)
📌 Overview

Implemented secure secret storage and rotation pipeline using Terraform on AWS.
Integrated RDS, Secrets Manager, and Lambda to demonstrate automated credential lifecycle.

🏗 Architecture
RDS (MySQL)
Secrets Manager (stores credentials)
Lambda (rotation trigger)
IAM roles + policies
Terraform (IaC)
⚙️ Implementation Steps
Provision RDS using Terraform
Store DB credentials in Secrets Manager
Create Lambda function (rotation handler)
Grant invoke permission (aws_lambda_permission)
Enable rotation via Terraform
🔁 Rotation Flow (Concept)
createSecret
setSecret
testSecret
finishSecret

⚠️ Note: Current Lambda is a placeholder. Full rotation requires implementing AWS rotation lifecycle.

🔐 Security Best Practices
No secrets in code
IAM role-based access
Secret encryption (KMS)
Rotation mechanism enabled
🧪 Validation
Triggered manual rotation
Verified Lambda invocation via CloudWatch
Confirmed integration between services
🚨 Known Limitation
Rotation fails intentionally due to placeholder Lambda (expected behavior)
Production requires full rotation logic
🧠 Key Learnings
IAM permission chaining (RDS + Lambda + Secrets Manager)
Resource-based vs identity-based policies
Terraform dependency management
Real-world AWS debugging
🧠 3) Interview Power Points

You now have strong answers:

🔹 Why did rotation fail?

Lambda didn’t implement 4-step rotation lifecycle.

🔹 What permission was critical?

aws_lambda_permission allowing Secrets Manager to invoke Lambda.

🔹 Biggest challenge?

IAM permission chaining + AWS service dependencies.

🔥 4) Make It EVEN Stronger (Optional Upgrades)
✅ Add CloudWatch Alarm
Alert on rotation failure
✅ Replace FullAccess IAM
Move to least privilege
✅ Add Gitleaks in GitHub Actions
Prevent secret leaks
