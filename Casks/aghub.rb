cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "3861ae7d78c3a27ced755d6c03e3dd3c103a60391c2210e514e198755ea63714",
         intel: "dcfe9839fcc7d58512c13598ed5372e593dbdc905a6e53b05cee8d20da0a69a9"

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
