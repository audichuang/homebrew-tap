cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.10.7"
  sha256 arm:   "9de8dfd12ab623fabd90c5ded0b25437d028a272538b1bf7be9bd868568655af",
         intel: "d0d4001b46bcde79addeb46f3d57b656f44708938ba9f821f42ebefb580b824f"

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
