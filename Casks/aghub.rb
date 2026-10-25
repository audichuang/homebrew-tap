cask "aghub" do
  version "2.43.2"
  sha256 "a2f988790e2d76512ca128b099b0bc8badb783e1e44839772de52db63c1d7d01"

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
