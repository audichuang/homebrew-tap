cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.2"
  sha256 arm:   "4b24126fae5f6b61b9f2a90fd7e6bf0beacfbd7e7145178523c9a1b6392f2ada",
         intel: "acc1a85cafe92e19c52a40405926cc05b64a66ad4bd796c781f4868df9b40931"

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
