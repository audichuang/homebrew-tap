cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.13"
  sha256 arm:   "da2b7f715a44913bb64ce017cf6ef6709275a3c50a298a2e4a5c1ec04ace3c02",
         intel: "6a83f52d1bb2f90d70b522a154dc916f7d80c75c639cb889f599374477371b70"

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
