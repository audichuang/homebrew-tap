cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.8.2"
  sha256 arm:   "49fdb70d71a8f0e8a6f89ef32db0457bd45a5dac94de0ffb8ccfe03ee11fa47b",
         intel: "65e8d1b72cee0421b9c4529535386b66e05e95a4c8984b7f8d5f3a635362fd5d"

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
