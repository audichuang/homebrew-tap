cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.10.0"
  sha256 arm:   "3b287696e2a26d2a17af6ceca075e7c71ef31a95bcdc957c94743529aa2349f5",
         intel: "ead7c73d911e0d4923c9c8df94939f569371f7a474daf52b061f48748b18f1ad"

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
