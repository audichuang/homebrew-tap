cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.2"
  sha256 arm:   "ef07934febaa8e8ee9e0933397cf41224aae06037ba68fc4791e185735fed747",
         intel: "ad6a751f73c6b683d4d7bc555aba77829d250d23bddaaf47c76bbbe4cac920ee"

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
