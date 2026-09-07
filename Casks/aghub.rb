cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.20.0"
  sha256 arm:   "a4d3a1aa7bff24fd06ae0b1c37984c306061fc24fd84c517832dd3e94cec7166",
         intel: "af7c682431626c83e2c0e15096c2332d54d000b04d341ef2452c349bb3d47ab1"

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
