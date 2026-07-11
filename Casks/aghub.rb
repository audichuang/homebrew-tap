cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.5"
  sha256 arm:   "2e05812944e30e85e4baf1a4559bfa91d74b54c2d13cec8ab0334faa02cee53f",
         intel: "08eb86417777b4fbd25353f35dae95b6275649d34f276c15a683bce7bd405f87"

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
