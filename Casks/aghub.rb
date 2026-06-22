cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.9"
  sha256 arm:   "259d63c5830f35e5bb8b29d7de8813826836c968668b6e2a54feca987e77a355",
         intel: "dccf522c13148ee99d3918fd76e287c15d2ed4e1abc23a7208cb939afef106be"

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
