# Security Policy

This repository hosts Homebrew formulas for AgentScore CLIs. The formulas are auto-published by each upstream release workflow.

## Reporting a Vulnerability

For vulnerabilities in the **formulas themselves** (manifest tampering, suspicious deps), open an issue or email security@agentscore.sh.

For vulnerabilities in the **upstream tools** (e.g., `agentscore-pay`), report directly to the source repo:
- `agentscore-pay` → https://github.com/agentscore/pay/security/advisories

We follow coordinated disclosure. Public PoCs are appreciated only after a fix has shipped.

## Verification

Releases of `agentscore-pay` (and other AgentScore CLIs distributed via this tap) include sigstore-signed binaries. Verify with:

```sh
cosign verify-blob \
  --signature agentscore-pay-darwin-arm64.sig \
  --certificate agentscore-pay-darwin-arm64.pem \
  --certificate-identity-regexp 'https://github.com/agentscore/.+' \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com \
  agentscore-pay-darwin-arm64
```
