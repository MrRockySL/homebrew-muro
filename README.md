# Homebrew tap for Muro

This is the developer-maintained Homebrew tap for
[Muro](https://github.com/MrRockySL/Muro), a native live wallpaper app for
Apple Silicon Macs.

## Install

```bash
brew install --cask MrRockySL/muro/muro
```

Muro is ad-hoc signed and not notarized. On first launch, macOS may block it.
Open **System Settings > Privacy & Security**, find the Muro message, then choose
**Open Anyway**.

## Update

```bash
brew update
brew upgrade --cask muro
```

## Uninstall

```bash
brew uninstall --cask muro
```

To also remove Muro's saved data and preferences:

```bash
brew uninstall --cask --zap muro
```

Please report app problems in the
[Muro issue tracker](https://github.com/MrRockySL/Muro/issues).
