# homebrew-formulae

Personal Homebrew tap for formulae and casks I maintain.

## Tap

```bash
brew tap mackhaymond/formulae
```

## Install

Install a formula directly:

```bash
brew install mackhaymond/formulae/<formula>
```

Or tap first, then install by name:

```bash
brew tap mackhaymond/formulae
brew install <formula>
```

## Formulae

### macblock

Local DNS sinkhole for macOS using `dnsmasq`.

- Repo: https://github.com/mackhaymond/macblock
- Install: `brew install mackhaymond/formulae/macblock`

## Casks

### awake

Menu-bar app that shows who is keeping your Mac awake.

- Repo: https://github.com/mackhaymond/Awake
- Install: `brew install --cask mackhaymond/formulae/awake`

The app is ad-hoc signed (not notarized): right-click → Open on first
launch, or `xattr -dr com.apple.quarantine /Applications/Awake.app`.

