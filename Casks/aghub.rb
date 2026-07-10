cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.4"
  sha256 arm:   "257417de4de30069082d44a1c6ba19a262283f054e4f92590b016dd495a55792",
         intel: "a72161734dcabbc28ee178f0f3f95806b9145636ae31d92aed1caf4a49c860aa"

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
