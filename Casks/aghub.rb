cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.28.0"
  sha256 arm:   "d719fdade9b00cbbcdcf6d92767f49f60686f2d036419d738c9c65ee96281c8e",
         intel: "ca0dadad3f4c554c6531d6199a2f551208c8e8ba76f25856ac8c80c14d098984"

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
