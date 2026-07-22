cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "f536840d2d4cc99fb3714734dfa241cabe4ab205b37d0c570c965a6f150a8e77",
         intel: "8616ac1a3ade0e74f9799b470aee9a00adf0c897e5943981fa1a5737e1177c48"

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
