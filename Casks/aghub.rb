cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.6"
  sha256 arm:   "116d7889964e39e359a895574a76d975ccfc2e5d1d4587240b5fb87e9af61dd2",
         intel: "8fa4f257e3e03606f237cd3360e9bdeec05f005d39b3f8be9c80bc1986d792ff"

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
