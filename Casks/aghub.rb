cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.10.4"
  sha256 arm:   "95a613a74799971cb55e76ec2b672d7fbf26852bf0d1feecd8e5f83614b3668a",
         intel: "b5ca18d0e584ba98eeeb9fa081546f9b11b47b5d30f73186544d9d40001d12a0"

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
