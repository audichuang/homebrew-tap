cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.5"
  sha256 arm:   "a58b9b2a3b574c5e15054d638460978ec518c8aee2b23907c929e06c1337f703",
         intel: "e00c9e1ac968efb8d02d0064f1f12406096997ae882ecb7a66e7acc94c93c308"

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
