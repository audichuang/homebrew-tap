cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "d20b7809d542d1b5e5b264820e6ce676a12daa4c146136fcfa691c577ef766ff",
         intel: "5095e69bdc48276424c129ba5409c741311376d835661501daad8d8184068d96"

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
