cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.3"
  sha256 arm:   "6fecd5b9e8f72f9f6ef0f5499a74a730f4b0f60d73b4c4482786a42e2b0535ba",
         intel: "d5c0edddd6fdead88d12a10d832cfdd02ebbee738361a761a56054e3c6f6f888"

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
