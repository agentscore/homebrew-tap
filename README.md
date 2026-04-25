# agentscore/homebrew-tap

Homebrew tap for [AgentScore](https://agentscore.sh) CLIs.

## Install

```sh
brew tap agentscore/tap
brew install agentscore-pay
```

## Formulae

- `agentscore-pay` — CLI wallet for one-shell-command agent payments across x402 (Base, Solana) and MPP (Tempo). [Source](https://github.com/agentscore/pay)

## Maintenance

This tap is auto-published. Each `agentscore/pay` release runs a workflow that re-renders `Formula/agentscore-pay.rb` with the new version + tarball SHA and pushes here. Manual edits will be overwritten on the next release.
