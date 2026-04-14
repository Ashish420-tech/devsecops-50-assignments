# API Security Testing Report (Nuclei)

## Target
- https://jsonplaceholder.typicode.com

## Tool Used
- Nuclei

## Findings Summary
- High: 2
- Info: Multiple

## Key Vulnerabilities

### 1. Unauthorized Access (High)
- grafana-unauth-access
- Endpoint: /api/users

### 2. CORS Misconfiguration
- Arbitrary origin allowed

### 3. Missing Security Headers
- CSP, HSTS, X-Frame-Options missing

### 4. Data Exposure
- Emails extracted from API

## OWASP API Top 10 Mapping
- API1: Broken Object Level Authorization
- API3: Excessive Data Exposure
- API7: Security Misconfiguration
- API9: Improper Assets Management

## Conclusion
API contains multiple security misconfigurations and exposed endpoints.
