cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.18.3"
  sha256 arm:   "2cb33c614d219ebb7c4f9fb42b2959437afdcc921fa00d8b6c982209891884b3",
         intel: "4479a148ad7315077a82b9bc521a03b2d211b5008d51085b6a024ef17e3d8605"

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
