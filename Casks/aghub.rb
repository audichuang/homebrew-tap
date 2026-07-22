cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.6"
  sha256 arm:   "d45798a11427f0d3b0afcbde593a85d7635999592cb7371792610a54b092476b",
         intel: "7c13068aa05cf34353b76618865a390d07186cec583f0980b4e1748735b6bb50"

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
