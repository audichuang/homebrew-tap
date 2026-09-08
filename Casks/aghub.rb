cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.21.0"
  sha256 arm:   "81060e770385370e9acc14548728e454be7482b5cab6ced90a49ac1fbbef500c",
         intel: "388c93ba472ca59100f5758350972f5bb6fc2fc0572000ddd3ffe6e01a207b89"

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
