cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "c13d689b5c7caa22dae25bfdc0d551fd8927b309d5c8705e00edafc82914cb53",
         intel: "7b438eaf7f25a127f409477147eb1fdd656d01773d73b8048422bb95994563d8"

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
