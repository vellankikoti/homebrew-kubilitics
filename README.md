# Homebrew Tap for Kubilitics

Official Homebrew tap for **[Kubilitics](https://github.com/vellankikoti/kubilitics)** — the Kubernetes Operational Intelligence Platform.

## Install

```bash
brew tap vellankikoti/kubilitics
brew install --cask kubilitics
```

Then launch **Kubilitics.app** from `/Applications` or Spotlight.

## Upgrade

```bash
brew upgrade --cask kubilitics
```

Kubilitics also auto-updates itself in-app via `tauri-plugin-updater`, so most users won't need to run `brew upgrade` manually.

## Uninstall

```bash
brew uninstall --cask kubilitics
# optional: remove all local data
brew uninstall --cask --zap kubilitics
```

## Requirements

- macOS 14 Sonoma or later
- Apple Silicon or Intel (universal binary)

## What is Kubilitics?

Kubilitics is a desktop app that gives you end-to-end operational intelligence for Kubernetes — multi-cluster dashboards, topology, blast-radius simulation, policy engine, and an in-app AI assistant (chat, tools, autonomous remediation).

Open source, self-hostable, signed & notarized releases.

## Release cadence

This tap is updated automatically by the [post-release workflow](https://github.com/vellankikoti/kubilitics/blob/main/.github/workflows/post-release.yml) in the main repo. Every tagged release on `vellankikoti/kubilitics` bumps `Casks/kubilitics.rb` here with the new version + DMG SHA256.

## Issues

Please file issues on the main repository: <https://github.com/vellankikoti/kubilitics/issues>

## License

The cask definition in this repo is licensed under the same terms as [Kubilitics](https://github.com/vellankikoti/kubilitics).
