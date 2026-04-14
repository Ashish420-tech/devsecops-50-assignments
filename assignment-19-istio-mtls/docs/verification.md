# mTLS Verification

## Test Performed
Verified service communication using Istio proxy configuration.

## Command
istioctl proxy-config cluster productpage-v1

## Result
Services are communicating via Istio service mesh.

## Security Verification
- PeerAuthentication set to STRICT mode
- Only mTLS traffic is allowed

## Conclusion
Secure service-to-service communication is successfully implemented using Istio mTLS.
