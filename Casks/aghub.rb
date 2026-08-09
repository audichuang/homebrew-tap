cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.12.0"
  sha256 arm:   "d04803b033683e324aac190d4251ad9b040a29715783e2ce061aa205039b6df9",
         intel: "1fc6e4405dabcc014c8d04175566cb320fd59ed17f64c9fedf39b316b3f25209"

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
