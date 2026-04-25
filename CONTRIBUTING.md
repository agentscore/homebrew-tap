# Contributing

This tap is **auto-managed**: each AgentScore CLI release re-renders its formula via the upstream repo's publish workflow. Manual edits to `Formula/*.rb` will be overwritten on the next release.

## What you can contribute

- **Bug reports** — file an issue if a formula fails to install, audit, or test on a supported platform.
- **Tap-level improvements** — README, CI, dependabot, security policy. Open a PR against `main`. The `brew-audit` workflow validates that the formulas still pass `brew audit --strict` after your change.
- **New formulas** — for a new AgentScore CLI, add the formula via the upstream repo's release workflow (mirror the pattern in `agentscore/pay`'s `.github/workflows/publish.yml`). Direct PRs adding a `Formula/X.rb` here will be accepted but will be overwritten unless an upstream publish workflow exists.

## What you cannot do

- Push directly to `main` (PR + admin approval required; releases use a bot bypass).
- Force-push or delete `main` (ruleset blocks it).
