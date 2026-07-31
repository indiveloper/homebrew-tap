# Homebrew tap for Waindow

This tap installs the current public Waindow binary. It does not contain the
Waindow application source code.

This is a third-party tap maintained by Waindow, not an official Homebrew cask
or a repository endorsed or supported by Homebrew.

## Install

```sh
brew install --cask indiveloper/tap/waindow
```

Waindow is free, requires no account or license key, and supports macOS 13.1 or
later on Apple Silicon and Intel Macs.

The current direct build is ad-hoc signed rather than Developer ID notarized.
Homebrew keeps the download quarantined, so the first launch may require
**System Settings → Privacy & Security → Open Anyway**. Do not disable
Gatekeeper.

## Upgrade

```sh
brew update
brew upgrade --cask indiveloper/tap/waindow
```

When Waindow reports that a newer direct build exists, prefer the Homebrew
upgrade command above once the tap has been updated. This keeps Homebrew's
installed-version record consistent.

## Uninstall

```sh
brew uninstall --cask indiveloper/tap/waindow
```

Normal uninstall removes the app but does not intentionally erase Waindow's
local preferences or memo data.

## Verify the release

The cask pins the same SHA-256 published on the
[Waindow download page](https://www.waindow.app/download) and the single public
[GitHub Release](https://github.com/indiveloper/waindow-releases/releases/latest).

Product support and bug reports belong in the
[public release repository](https://github.com/indiveloper/waindow-releases),
not in this tap.
