---
name: New Formula or Tap Improvement
about: Request a new AgentScore CLI formula, or a tap-level improvement
title: ''
labels: enhancement
assignees: ''
---

**Type**
- [ ] New formula (specify which AgentScore CLI)
- [ ] Tap-level improvement (CI, README, security, etc.)

**Describe the request**
What you'd like and why it matters.

**Note for new formulas**
This tap is auto-managed: each AgentScore CLI publishes its own formula via its release workflow. To add a new CLI's formula, the upstream repo needs to mirror `agentscore/pay`'s `.github/workflows/publish.yml` Homebrew step (it uses `HOMEBREW_TAP_TOKEN` to push the rendered Formula here on release).
