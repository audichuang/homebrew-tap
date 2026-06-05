cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.3"
  sha256 arm:   "ea8694bca12136428cc6b885b3323c70643f929b25ee7657ae4587c2693b2b31",
         intel: "6709af07a8eb271ccb7606abbebb9a1b5ba38760784bff1642097f7e4cd65220"

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
