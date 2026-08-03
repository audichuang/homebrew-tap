cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.10.6"
  sha256 arm:   "c623a592d3736a38f525acfa45de1198a32850073d8bacb2e6a66a87a4a1cc31",
         intel: "fdabbb1b3f5a1a5d3c2afcb98f9b67d58dc7006db49a8b482d40a3d8669532ad"

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
