cask "aghub" do
  version "2.44.1"
  sha256 "e3381f812cbf3ebb7e7e96a5443d058dcb79df8e9a666a38f0f181f0aa30fe75"

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
