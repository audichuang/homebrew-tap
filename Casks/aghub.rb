cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.4"
  sha256 arm:   "a6f2233919f283f8241e25ba03ce4c28ca136a778455b58797ee33171d56be8e",
         intel: "0c79768718b917d321c503a6f83857e88cf8c0de28a1a17a1814a246a3b7b449"

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
