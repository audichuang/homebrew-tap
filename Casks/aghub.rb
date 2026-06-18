cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "e245622a2b6fe2e04951e8807eb2baf64bac381cb11799a416488ea4306e7657",
         intel: "bc09437d38af3738c90aa350ec89e874b7618d8981856a50351ce6eebfc4c1dd"

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
