cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.29.0"
  sha256 arm:   "869ca5d0deff9d379f84b55c30421d1ac4aec1b6125e794447526f1f0e971954",
         intel: "9c1c1dc5e3cb46c87c913dd1d65cc48ee8e908a93a79858d253899e0e1686398"

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
