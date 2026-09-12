cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.23.0"
  sha256 arm:   "c61483e9e1dfd0e2e1aa3608baffa5d9dd48389863e8e147ed3916f9f2c14d2c",
         intel: "b300822353edecb6569f48e6e1abf75988b751fc342e556f0feb4c696e037ee6"

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
