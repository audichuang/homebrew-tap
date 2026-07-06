cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.2"
  sha256 arm:   "b3a479676b617b3f8eef70c5169a1c817d7800a829d6ea3abafb489c2f5c6045",
         intel: "7508664698e41d542f40238e7d140aaaeea99e575058143cd2ccb28332fae502"

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
