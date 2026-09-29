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
| **aionui-dev** | `brew install --cask audichuang/tap/aionui-dev` | AionUi personal dev build. Apple Silicon only. |
| **snip-sync** | `brew install --cask audichuang/tap/snip-sync` | Clipboard snippet sync (desktop). arm64 + Intel. |

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

None of these apps are notarized. Every cask clears the quarantine flag after install, so they open normally; if macOS still refuses, run once:

```bash
xattr -cr /Applications/MDFlux.app
```

Project: [audichuang/mdflux](https://github.com/audichuang/mdflux) · Tap source: [`Casks/mdflux.rb`](Casks/mdflux.rb)

## Formulae (CLI / Linux)

| Formula | Install | Notes |
|---------|---------|--------|
| **aghub-cli** | `brew install audichuang/tap/aghub-cli` | aghub CLI (macOS arm/Intel, Linux x86_64). |
| **aionui-dev** | `brew install audichuang/tap/aionui-dev` | AionUi AppImage (Linux x86_64 only; on macOS use the cask). |
| **snip-cli** | `brew install audichuang/tap/snip-cli` | `snip` CLI (macOS arm/Intel, Linux x86_64). |

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

Each project's release CI pushes to this tap (needs `HOMEBREW_TAP_TOKEN` on that repo):

| Package | Source workflow | How |
|---------|-----------------|-----|
| mdflux | [mdflux](https://github.com/audichuang/mdflux) `portable.yml` | rewrites the whole cask from a template |
| aghub, aghub-cli | [aghub](https://github.com/audichuang/aghub) `release.yml` | rewrites both files from templates |
| snip-sync, snip-cli | [snip-sync](https://github.com/audichuang/snip-sync) `release.yml` | rewrites both files from templates |
| skills-hub | [skills-hub](https://github.com/audichuang/skills-hub) `release.yml` | `sed` on version + sha256 only |
| aionui-dev | this repo, `update-aionui-dev.yml` (manual dispatch) | `sed` on version + sha256 + url only |

A change to a templated cask/formula must also go into its source workflow, or the next release overwrites it.

## Links

- Tap: https://github.com/audichuang/homebrew-tap
- MDFlux: https://github.com/audichuang/mdflux
- aghub: https://github.com/audichuang/aghub
- skills-hub: https://github.com/audichuang/skills-hub
- snip-sync: https://github.com/audichuang/snip-sync
