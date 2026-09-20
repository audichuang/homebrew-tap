cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.26.1"
  sha256 arm:   "8f7799670235f8c59a60a2c9b23891742e376ee79363c381ab39bc74c310c010",
         intel: "e9bb848e8e6741adde647699f24494fb3baaf2d7c58eacabf4b9632ca2a77b56"

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
