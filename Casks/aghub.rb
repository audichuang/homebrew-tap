cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.23.2"
  sha256 arm:   "82660ea22dcc6709eb765062db94fd79ccd99e54e3df48c0cd4913fd9bab1eaf",
         intel: "57320b2554ee3625ba634f4682aaa30488da1afaf235e3872f4919c80a8136d3"

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
