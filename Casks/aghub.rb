cask "aghub" do
  version "2.43.1"
  sha256 "1032f2a4a0c4f6233357e2cae990e32ce2c03fa9fe614dc327d5eb007a29d43b"

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
