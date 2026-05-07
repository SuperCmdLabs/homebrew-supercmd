# homebrew-supercmd

A [Homebrew](https://brew.sh) tap for [SuperCmd](https://supercmd.sh/) — an open-source, Raycast-compatible launcher for macOS with voice, AI, and memory.

## Installation

Add the tap and install:

```bash
brew tap supercmdlabs/supercmd
brew install --cask supercmd
```


## Requirements

- macOS Big Sur (11) or newer
- Apple Silicon (`arm64`) or Intel (`x86_64`)

The cask automatically picks the correct build for your architecture.

## Updating

SuperCmd ships with built-in auto-updates (`auto_updates true`), so once installed it will keep itself current. To check for or pull a newer cask version manually:

```bash
brew update
brew upgrade --cask supercmd
```

## Uninstalling

To remove the app:

```bash
brew uninstall --cask supercmd
```

To also remove application support, caches, preferences, and logs (defined under `zap` in the cask):

```bash
brew uninstall --cask --zap supercmd
```

## What this tap contains

- `Casks/supercmd.rb` — the cask formula that downloads SuperCmd from the official [GitHub releases](https://github.com/SuperCmdLabs/SuperCmd/releases) and installs `SuperCmd.app` into `/Applications`.

## Links

- Website: https://supercmd.sh/
- Releases: https://github.com/SuperCmdLabs/SuperCmd/releases
- Issues with the app itself: https://github.com/SuperCmdLabs/SuperCmd/issues
- Issues with this tap (cask packaging): open an issue in this repository

## License

This tap repository contains only Homebrew packaging metadata. SuperCmd itself is distributed under its own license — see the [upstream project](https://github.com/SuperCmdLabs/SuperCmd) for details.
