cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "c67f6035304399e0a777cf52682a4a6b5d7136d09434448b00e0f4d11338a04f",
         intel: "2ab4293917af297b22e16c4de3d36b72d14f0efbcf978ca9d0104439ff28e6d0"

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
