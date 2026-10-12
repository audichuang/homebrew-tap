cask "mdflux" do
  version "0.2.7"
  sha256 "47a950652d7b644b915f961ef8a1c52000328662f9860e684b7925b17ea40628"

  url "https://github.com/audichuang/mdflux/releases/download/v#{version}/MDFlux_#{version}_aarch64.dmg"
  name "MDFlux"
  desc "Convert documents to clean Markdown"
  homepage "https://github.com/audichuang/mdflux"

  # Skip rolling tags (offline-latest) and non-semver (vX.Y.Z-offline).
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on arch: :arm64
  # Keep in sync with tauri.conf.json bundle.macOS.minimumSystemVersion (14.0).
  depends_on macos: ">= :sonoma"

  app "MDFlux.app"

  # Ad-hoc signed only: Gatekeeper kills a quarantined copy on launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/MDFlux.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.projektvisyo.mdflux",
    "~/Library/Caches/com.projektvisyo.mdflux",
    "~/Library/HTTPStorages/com.projektvisyo.mdflux",
    "~/Library/Preferences/com.projektvisyo.mdflux.plist",
    "~/Library/Saved Application State/com.projektvisyo.mdflux.savedState",
    "~/Library/WebKit/com.projektvisyo.mdflux",
  ]

  caveats <<~EOS
    MDFlux is not notarized (ad-hoc signed only). If macOS refuses to open it:
      System Settings > Privacy & Security > Open Anyway
    or
      xattr -cr #{appdir}/MDFlux.app
  EOS
end
