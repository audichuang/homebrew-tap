cask "mdflux" do
  version "0.1.2"
  sha256 "5a1afd507d5866ea92c12a5b58248a8444ee0c6312930debab7fdd98482bc669"

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
