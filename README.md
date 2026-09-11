# getdictus/homebrew-tap

Homebrew tap for [Dictus](https://getdictus.com) — offline voice dictation for macOS.

## Install

```sh
brew tap getdictus/tap
brew install --cask dictus
```

Homebrew 6.0 asks you to confirm trust the first time you install from a third-party tap. To grant it up front:

```sh
brew trust --cask getdictus/tap/dictus
```

Already have Dictus in `/Applications`? `--adopt` hands the existing app over to Homebrew instead of reinstalling it:

```sh
brew install --cask --adopt dictus
```

## Uninstall

```sh
brew uninstall --cask dictus
```

To also remove settings, history and downloaded models (several GB):

```sh
brew uninstall --zap --cask dictus
```

## Updates

Dictus updates itself, so the cask is marked `auto_updates true` and `brew upgrade` leaves it alone. To let Homebrew drive the update instead:

```sh
brew upgrade --cask --greedy dictus
```

The cask is bumped automatically by [`bump-cask.yml`](.github/workflows/bump-cask.yml) within a day of each [dictus-desktop release](https://github.com/getdictus/dictus-desktop/releases).

## License

MIT
