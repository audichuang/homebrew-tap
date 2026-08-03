cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.10.3"
  sha256 arm:   "56e7f2d2963040c807e950af41af87943ecac78a67e4b57d82fe8dc02906d59b",
         intel: "986521945f2c2209d5b995f559690d36898818accf1237b61db45937e9b045f4"

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
