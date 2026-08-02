cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.10.2"
  sha256 arm:   "c119160357aa48ebc96d35d2e0ceaf236f3f0848eecad771290b3df1938a0adf",
         intel: "ad063950eaa9d39cb42a4c18a4b85f86bc72a9126da22f58bb5f3bbf270e9443"

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
