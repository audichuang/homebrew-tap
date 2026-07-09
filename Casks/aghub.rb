cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "eb74315475af47cf5c9d35fac1c9e9059fec05d141a753cb021a7c4d587113b3",
         intel: "fd15b201901d1257df67043cd111e3d19867132d4c75703ee07b9433b9505ff0"

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
