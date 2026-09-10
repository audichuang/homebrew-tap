cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.22.0"
  sha256 arm:   "ee4fcf837c59c31a506e3bde85b7d449a558abcc6e95d94f81ccb48558263022",
         intel: "3bce32654d5bff2390acad6c18824db4ad0d98efae5c502e912fb39263c5bc27"

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
