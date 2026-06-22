cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.7"
  sha256 arm:   "ef6f67ef43a864a0117d27ee115163095ba5695a527b631664b18bffa3fd9fd2",
         intel: "719c3b9acb19a5252dcdeb16925b4636cb20badee85b53124fae062cb2f60683"

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
