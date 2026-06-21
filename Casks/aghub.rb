cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "f6967b43a5a263f4f9baeead8dfacb5a1db3ccbbdbaf3c60a53dfd0307af2450",
         intel: "e7c163e80d1c665c5286023660ad5a4ca0c72f4a31ad587e962ccaa3d880ea11"

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
