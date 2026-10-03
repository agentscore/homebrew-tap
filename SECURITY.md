# Security Policy

This repository hosts Homebrew formulas for AgentScore CLIs. The formulas are auto-published by each upstream release workflow.

## Reporting a Vulnerability

For vulnerabilities in the **formulas themselves** (manifest tampering, suspicious deps), open an issue or email security@agentscore.com.

For vulnerabilities in the **upstream tools** (e.g., `agentscore-pay`), report directly to the source repo:
- `agentscore-pay` → https://github.com/agentscore/pay/security/advisories

We follow coordinated disclosure. Public PoCs are appreciated only after a fix has shipped.

## Verification

Releases of `agentscore-pay` (and other AgentScore CLIs distributed via this tap) attach sigstore-signed native binaries, each with a `.bundle` beside it. Verify one (cosign v2.4+ or v3) with:

```sh
cosign verify-blob \
  --bundle agentscore-pay-darwin-arm64.bundle \
  --certificate-identity-regexp 'https://github.com/agentscore/.+' \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com \
  agentscore-pay-darwin-arm64
```
