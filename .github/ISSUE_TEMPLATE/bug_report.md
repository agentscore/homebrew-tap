---
name: Formula Bug
about: A formula in this tap fails to install, audit, or test
title: ''
labels: bug
assignees: ''
---

**Which formula?**
e.g. agentscore-pay

**What broke?**
- [ ] `brew install agentscore/tap/<formula>` fails
- [ ] `brew audit --strict --online <formula>` fails
- [ ] `brew test <formula>` fails
- [ ] Other (please describe)

**Reproduction**
```sh
brew tap agentscore/tap
brew install agentscore/tap/<formula>
# (paste the exact command + full error output)
```

**Environment**
- Homebrew version (`brew --version`):
- macOS / Linux version:
- Architecture (`uname -m`):
