cask "mdflux" do
  version "0.2.0"
  sha256 "ef8be0f07b7e0f6783334c0d848717c82678822b035d1150f32ecda944e8d72d"

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
