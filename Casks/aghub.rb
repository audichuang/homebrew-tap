cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.11.1"
  sha256 arm:   "fb8e92ceca8fd49023fbccf7235dffa118a7df5ed90291df7ac513abd327c7ae",
         intel: "ee7c59a034ff5e7a87033d95860cbcf42ccddba0f24d19db6173e26ac5369442"

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
