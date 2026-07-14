# audichuang/homebrew-tap

Personal [Homebrew](https://brew.sh) tap for apps and CLIs from [audichuang](https://github.com/audichuang).

GitHub repo: [`audichuang/homebrew-tap`](https://github.com/audichuang/homebrew-tap)  
Tap name (Homebrew short form): **`audichuang/tap`**

## Install the tap

```bash
brew tap audichuang/tap
```

If a cask or formula is missing after a new release, refresh first:

```bash
brew update
# or re-tap if the local clone is stale
brew untap audichuang/tap && brew tap audichuang/tap
```

## Casks (macOS apps)

| Cask | Install | Notes |
|------|---------|--------|
| **mdflux** | `brew install --cask audichuang/tap/mdflux` | Convert documents → clean Markdown. **Apple Silicon only** (`arm64`). Updated on stable `v*` tags from [audichuang/mdflux](https://github.com/audichuang/mdflux). |
| **aghub** | `brew install --cask audichuang/tap/aghub` | AI coding agent config manager (desktop). arm64 + Intel. |
| **skills-hub** | `brew install --cask audichuang/tap/skills-hub` | Manage / sync AI coding skills. arm64 + Intel. |
| **aionui-dev** | `brew install --cask audichuang/tap/aionui-dev` | AionUi personal dev build. |

### MDFlux (quick start)

```bash
brew tap audichuang/tap
brew install --cask audichuang/tap/mdflux
```

Upgrade / uninstall:

```bash
brew update
brew upgrade --cask mdflux
brew uninstall --cask mdflux
```

Unsigned builds may need quarantine cleared once:

```bash
xattr -cr /Applications/MDFlux.app
```

Project: [audichuang/mdflux](https://github.com/audichuang/mdflux) · Tap source: [`Casks/mdflux.rb`](Casks/mdflux.rb)

## Formulae (CLI / Linux)

| Formula | Install | Notes |
|---------|---------|--------|
| **aghub-cli** | `brew install audichuang/tap/aghub-cli` | aghub CLI (macOS arm/Intel, Linux x86_64). |
| **aionui-dev** | `brew install audichuang/tap/aionui-dev` | AionUi AppImage helper (Linux). |

## Upgrade everything from this tap

```bash
brew update
brew upgrade --greedy
```

Or upgrade a single package:

```bash
brew upgrade --cask mdflux
brew upgrade aghub-cli
```

## How packages get updated

- **MDFlux:** CI on [audichuang/mdflux](https://github.com/audichuang/mdflux) (`publish-homebrew` on stable `v*` tags) rewrites `Casks/mdflux.rb` (version + sha256). Requires `HOMEBREW_TAP_TOKEN` on that repo.
- Other casks/formulae: updated from their own release pipelines or manually.

## Links

- Tap: https://github.com/audichuang/homebrew-tap
- MDFlux: https://github.com/audichuang/mdflux
- aghub: https://github.com/audichuang/aghub
- skills-hub: https://github.com/audichuang/skills-hub
