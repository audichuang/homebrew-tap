cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.6"
  sha256 arm:   "72205b1e7d89572de638121e6a8c8f02d5652560bb0ee88fa069b5dcf61cd331",
         intel: "19f8a7f429aeabf163c31d6ac283aaca224e91b277c8809d15372c9c628f9c3c"

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
