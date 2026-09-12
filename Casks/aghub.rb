cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.23.1"
  sha256 arm:   "982b5e3386900a48a3225f9ce662e25e2b5b3403361b6fced7478159aba89f3a",
         intel: "4f6798e9f4a4c5f8c3fbad370b2b33e18c708e749fc891ed3ce78fb5a3c94cb9"

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
