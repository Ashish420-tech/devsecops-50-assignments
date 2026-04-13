# Implementation Details

## Insecure Pipeline
- Hardcoded password used
- Secret visible in console logs

## Secure Pipeline
- Secret stored in Jenkins Credentials Store
- Accessed using withCredentials()
- Secret not exposed in logs

## Security Improvement
- Removed hardcoded secrets
- Implemented secure credential handling
