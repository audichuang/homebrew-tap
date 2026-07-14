cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "c01b2bbb8f88b2ac2d38a47de43b962d5c91ced76c3989eab39d068543622fb7",
         intel: "becb579259d997ca587f37bb4ae617b4f60d1caabf27b9c1e5783335071a5deb"

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
