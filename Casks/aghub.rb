cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.4"
  sha256 arm:   "16314ad375735cd969f899bae6557a4e02e48022a64e5e3a35604b9d11bced1c",
         intel: "b7dd5023e0a35fa020571c8f709178194e271c54612d6dec7bd7753564876e27"

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
