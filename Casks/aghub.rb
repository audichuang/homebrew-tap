cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.32.0"
  sha256 arm:   "dcbb112196bb77950d5e9bcc2ddb0bb1a757c803bd2144cb90810cabd0edc109",
         intel: "4efdd5b184faedce9252e0156573c1d7f3ad24c53dde2d7eafab3a9570b91ead"

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
