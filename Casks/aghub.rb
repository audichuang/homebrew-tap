cask "aghub" do
  version "2.43.5"
  sha256 "7f0f196acddce4e5060c3f375a29918f3a97a9fa07e140a4ae547f65f813e565"

  url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub_#{version}_aarch64.dmg"
  name "aghub"
  desc "AI coding agent configuration management tool (Desktop App)"
  homepage "https://github.com/audichuang/aghub"

  depends_on :macos
  depends_on arch: :arm64

  app "aghub.app"

  zap trash: [
    "~/Library/Application Support/com.akrc.aghub",
    "~/Library/Preferences/com.akrc.aghub.plist",
    "~/Library/Saved Application State/com.akrc.aghub.savedState",
  ]
end
