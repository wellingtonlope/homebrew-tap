# homebrew-tap 🍺

Homebrew tap for [gandalf](https://github.com/wellingtonlope/gandalf) — *Speak, friend, and enter.*

## Installation

```bash
brew tap wellingtonlope/tap
brew install gandalf

# or directly
brew install wellingtonlope/tap/gandalf

# verify
gandalf --version
gandalf --help
```

## Upgrade

```bash
brew update
brew upgrade gandalf
```

## What is a tap?

A tap is a third-party Homebrew repository. This repo (`wellongtonlope/homebrew-tap`) provides the formula `gandalf` that downloads the pre-built binary from [gandalf releases](https://github.com/wellingtonlope/gandalf/releases).

## Formula

- `Formula/gandalf.rb` — installs the correct binary for your OS/arch (`darwin`/`linux` x `amd64`/`arm64`)

Formula is auto-updated on each `gandalf` release (`v*` tag) via GitHub Actions.

## Development

```bash
# audit locally
brew audit --strict wellingtonlope/tap/gandalf
brew style Formula/gandalf.rb
```
