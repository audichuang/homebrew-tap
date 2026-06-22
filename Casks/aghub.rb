cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.8"
  sha256 arm:   "8d6c4cf8754f405c9a27b301bfa79256ed590038cfd12176dfb0b909d57c629d",
         intel: "f1856e48cff61cc69250a42c842f883c3c0b4ff491bf399b8d9901c0e11d1951"

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
