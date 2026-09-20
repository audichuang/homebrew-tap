cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.26.2"
  sha256 arm:   "e679a1fca5ed90f36eed1b4f36b10f9f2f906dcd140b57419d288e1320e3cfea",
         intel: "66df62b6dc8d238e4de9eb6984dd09fa855dbed5b73b50a149ca16684bf39a73"

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
