cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.3"
  sha256 arm:   "90318069a1d202a20d128990895588482ec75c37655f8c81f4f62f47bf5b0d74",
         intel: "786e89d3989f70bf283686721fa8daa7801c647b762a9dfb3fe68c765ff0fc7b"

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
