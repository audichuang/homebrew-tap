cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.3"
  sha256 arm:   "b062f41574b0013260a310ed95079225f0595bd4dd849a92dc0f3a986c1f1313",
         intel: "9fed5994cca6bffc60715a7fc95954525444c70da332decd8c771974b9dee30a"

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
