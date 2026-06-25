cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.12"
  sha256 arm:   "a426da3aa1800524ae11fc414aac76bfbf81e65eae752638fd538bf8ecc0be74",
         intel: "5528174cafd77020f810af5454815723d0c37d563744a0fcd80ea9e6ef25879a"

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
