cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.2"
  sha256 arm:   "5c6af86ed9b26ac8493517168b9a3f97324b516f9a6d962306bf3279239f45f4",
         intel: "bc0061c395ac54a4c1cd9e127e8eb50745cec1399cb46eb133bbe76af7fe8aa1"

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
