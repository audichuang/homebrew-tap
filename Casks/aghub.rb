cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.13.2"
  sha256 arm:   "b5b978bec6a851998480881d08edbd99f64511042cd10ab3b6454626e15df140",
         intel: "46ca0b4d9a0d5ee70875dd39c866becc4a5616292a3132fb039d4239ae153d70"

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
