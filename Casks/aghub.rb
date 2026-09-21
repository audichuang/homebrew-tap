cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.26.4"
  sha256 arm:   "f03980c444c8ee74274d2a6c77ff5e099392c6d6ffffeeef6935c921648762c3",
         intel: "c433ebdf3df8b82e5985f170054428852de3705349e5b26c1ce37c52d8a21500"

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
