cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.10.8"
  sha256 arm:   "8cd9621dd2fd7bda5ff65ad4c544ab4b3c5768dd292717957855921033bf15ce",
         intel: "00e65954ff87770c197ac282bbdb10cb120724772b3362b9468cdd5730233891"

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
