cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.11"
  sha256 arm:   "cc40c54aca81ac560577bcbaef4a8ef02fa5e63635f625456076104ac6a48d8e",
         intel: "bce8d376092526b42218572f5cbdaedb4e6d7fe4a0167f3703a27b096ef20953"

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
