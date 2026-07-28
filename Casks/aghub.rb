cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.8.1"
  sha256 arm:   "039c1246ec1db9a37d00a1d1a09d1221a8f9b7eac6cee0f0f08dc5b4f2212329",
         intel: "f5ee8566a777ed73bb857bf1b2bbccb47eecb69563a32aaae4fc0da1a50c95fd"

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
