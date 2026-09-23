# kipyin/homebrew-tap

Personal Homebrew tap for [gitee-cli](https://github.com/kipyin/gitee-cli) and [Eloquent](https://github.com/kipyin/eloquent).

## gitee

A gh-like command-line client for Gitee.

```bash
brew install kipyin/tap/gitee
```

## Eloquent

Native macOS menu-bar text-to-speech app. The cask installs the notarized GitHub Release zip (`Eloquent.app`). It requires Apple Silicon and macOS 14 or newer.

```bash
brew tap kipyin/tap
brew install --cask kipyin/tap/eloquent
```

`brew install --cask kipyin/tap/eloquent` taps this repo on its own, so the `brew tap` line is optional.

Use the fully qualified name `kipyin/tap/eloquent`. Homebrew's official cask repository also publishes a cask token named `eloquent` for a different app.
