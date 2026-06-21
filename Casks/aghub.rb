cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.2"
  sha256 arm:   "cc7bd2be8ce142889b6f7f966f001ce82b3311e93966481fb6ed854992e9c90b",
         intel: "35b473bc03cfb10d40d1f0a937bf2ddb9a45528ab1081607fab6e0762730f7ab"

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
