cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.1"
  sha256 arm:   "2967c0a35425f140c4e51ef96b01f838f4de3bd1fceaeac43a45ac2a0f3e2033",
         intel: "98e92078ae9cf64bfb289f06af6792b9aeeb4baaf8ca62b58e708e1242766405"

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
