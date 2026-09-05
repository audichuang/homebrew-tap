cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.18.1"
  sha256 arm:   "06a36ab24daaf051323a22071ea438d34c9236ad6390d3d85c60932f54b228a7",
         intel: "c3d2aaaf202a432ed08a23c5415cf7e5ac06b8cc462dcfc35096f2a16802002a"

  url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub_#{version}_#{arch}.dmg"
  name "aghub"
  desc "AI coding agent configuration management tool (Desktop App)"
  homepage "https://github.com/audichuang/aghub"

  app "aghub.app"

  zap trash: [
    "~/Library/Application Support/com.akrc.aghub",
    "~/Library/Preferences/com.akrc.aghub.plist",
    "~/Library/Saved Application State/com.akrc.aghub.savedState"
  ]
end
