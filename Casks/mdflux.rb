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

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "MDFlux.app"

  zap trash: [
    "~/Library/Application Support/com.projektvisyo.mdflux",
    "~/Library/Caches/com.projektvisyo.mdflux",
    "~/Library/HTTPStorages/com.projektvisyo.mdflux",
    "~/Library/Preferences/com.projektvisyo.mdflux.plist",
    "~/Library/Saved Application State/com.projektvisyo.mdflux.savedState",
    "~/Library/WebKit/com.projektvisyo.mdflux",
  ]
end
