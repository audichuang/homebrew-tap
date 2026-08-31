cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.17.0"
  sha256 arm:   "9b9d0cd496fb1135f6ab9c2888f0b438c72072fdd7aab09b3aa6330bd51a0af3",
         intel: "6a67ce71341e35529198bb2e7ddcd7a102e978a92608979d8f3312d5114e13bf"

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
