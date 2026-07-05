cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.1"
  sha256 arm:   "878851c5acad97e940586bcee2389a4720e6cce91013c03be232dd3e449b1b02",
         intel: "4a1d57f3624a445f29383366dd7f0c6001db074981f8133087c07903b49d5420"

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
