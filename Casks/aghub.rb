cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.15.0"
  sha256 arm:   "5ed8db38dc055056be2cf891f3e78a9086d70ce031101e68989f03a10eb5c8c2",
         intel: "ecde0d3d99ea0cb8f3247b07e32aa8848dd97120fab1a5c338b427b6d23ceb26"

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
