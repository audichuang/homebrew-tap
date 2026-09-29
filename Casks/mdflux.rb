cask "mdflux" do
  version "0.2.5"
  sha256 "adbb8f96ee49b6bc39b07a2b64b44e0945016919b2d40eadda5d08fb51ddc3ce"

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
  depends_on :macos

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
