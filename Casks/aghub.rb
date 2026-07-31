cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.9.1"
  sha256 arm:   "39c0b386c77a11af4f013069c9774d884a0b2bb84d26875c151539913766051b",
         intel: "ca4e27ac2390bd188d57cf99ca5de97f74283dc86c1174221b3c53f4ee0d4ca0"

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
