cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.21.1"
  sha256 arm:   "80ee12fa4f456a24ce1770f06e054212508029abf638ba3f658796eaf5df7d9f",
         intel: "6cb4e4fc4237c194e86e166459119abe85c2a0269105b423c07a01ff91e14a6c"

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
