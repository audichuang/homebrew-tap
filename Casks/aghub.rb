cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.6"
  sha256 arm:   "ac96f711601c791d0aa3549a9d4b92e5cc494ad93f6ccdc6a8fd0bdcc8e3ae73",
         intel: "aaed6da87ae58d7fdf23e4f84d6e7d541ebecc6e5b62afa3358e7c6bea0ed8c8"

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
