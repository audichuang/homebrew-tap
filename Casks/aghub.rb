cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.3"
  sha256 arm:   "69cfa23983ccea35dea89973cd26b3952e73f3b2ba9ce77fefd8d422c3b9209c",
         intel: "39cb5bb4df169f0ffb91fcb3bc1e1385fc87bb2d15c74167dcebedc4648fafcf"

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
