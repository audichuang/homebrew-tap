cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.6"
  sha256 arm:   "d2cc4dc47124feb6e8a7979ee306b6e0f9c75c5ff4270a7995f97aeb98a5a3a7",
         intel: "a531579248bd7714c4e140726c5a1a75232c23fe1b5cef0ea3700374ae830487"

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
