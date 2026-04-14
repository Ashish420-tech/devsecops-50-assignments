# 🚀 Assignment 27 · DAST  
## API Security Testing with Nuclei  

### 📌 Objective  
Perform API security testing using Nuclei and identify vulnerabilities based on OWASP API Top 10.

---

### 🛠 Tools Used  
- Nuclei  
- REST API  

---

### 🏗️ Architecture  
REST API → Nuclei Scanner → Vulnerability Detection → OWASP Mapping  

---

### 🔍 Steps Performed  
1. Installed Nuclei  
2. Updated templates  
3. Added API targets  
4. Ran Nuclei scan  
5. Analyzed results  
6. Mapped findings to OWASP  

---

### 🚨 Findings  
- Unauthorized API access  
- CORS misconfiguration  
- Missing security headers  
- Data exposure  

---

### 📊 OWASP API Top 10 Mapping  
- API1: Broken Object Level Authorization  
- API3: Excessive Data Exposure  
- API7: Security Misconfiguration  
- API9: Improper Assets Management  

---

### ✅ Conclusion  
The API has multiple security misconfigurations and exposed endpoints identified using Nuclei.
