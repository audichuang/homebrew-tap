cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "d92282e83a4793dfb6a4d01282c3a44dce191e5b51e47540a7663ba00356fe89",
         intel: "6b4b201af4df48cff530e92da1990610d88e08a5b09a661804850489b64ab9bc"

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
