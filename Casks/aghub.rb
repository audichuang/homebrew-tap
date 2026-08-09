cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.13.1"
  sha256 arm:   "9e9d6b797444efbf90d0640567bffa693fd6c1642ebc4fdc2a5ad63d75ae30b6",
         intel: "6a8412a2c340431831bc30dcde6d951fea1805ff1cbf6ebc071bd78baedc1d87"

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
