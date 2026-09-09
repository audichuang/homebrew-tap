cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.21.2"
  sha256 arm:   "6a2cacfa4e8b0e6d60ecd354dd1e915660815b5d7174fbf4c869c80906c6d8cb",
         intel: "35d4ac6514f5ede6f9c89e5528bfd1fcdb0826d8011bb28c3ff701e48df14e3e"

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
