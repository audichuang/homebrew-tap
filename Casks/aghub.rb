cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.33.0"
  sha256 arm:   "612725effb21a2d69653e157272f26dbdb04d6460b62194ba1223aa5bb22d90f",
         intel: "07f8245b5c4a102a606ad9e4877f6971a6fb9f8360947204ccce1d309998944f"

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
