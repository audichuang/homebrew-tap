cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.10"
  sha256 arm:   "797791c1bf8d9a344d9d193b84218c03c7e9ff0f55e851731fa64f28a340d7d5",
         intel: "05f7777504e768ad0eefa4e5c0d3555f41937de36f9033aae30e59509a0f8717"

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
