# 🚀 Assignment 25: IAM Least Privilege

## 🔐 Objective

Implement least privilege access using AWS IAM, validate using Access Analyzer, and audit using CloudTrail.

---

## 🛠 Tools Used

* AWS IAM
* AWS Access Analyzer
* AWS CloudTrail

---

## 📌 Steps Performed

1. Created IAM user `dev-user`
2. Attached over-permissive policy (`*:*`)
3. Enabled Access Analyzer
4. Analyzed permissions (no findings for internal access)
5. Created least privilege policy (S3 read-only)
6. Removed excessive permissions
7. Enabled CloudTrail logging
8. Verified allowed and denied actions

---

## ✅ Outcome

* Secure IAM user with minimal access
* No excessive permissions
* Full audit visibility using CloudTrail

---

## 📸 Screenshots

(Add screenshots here)

---

## 🧠 Key Learnings

* Least privilege is critical for security
* Access Analyzer detects external risks, not all issues
* CloudTrail is essential for auditing

---

## 💼 Resume Highlight

Implemented AWS IAM least privilege with policy validation and audit logging using CloudTrail.

