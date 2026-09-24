cask "snip-sync" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "18e869c1ccf0f08d9c0c7734ea971e6ba1a784fc875128928ecf2cabff56e69a",
         intel: "7c7c50d15561fc003912561e860e3e588e0ed411c4887d796c83372b152a2fc6"

  url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-sync_#{version}_#{arch}.dmg"
  name "snip-sync"
  desc "Sync code snippets between machines through the clipboard (Desktop App)"
  homepage "https://github.com/audichuang/snip-sync"

  app "snip-sync.app"

  zap trash: [
    "~/Library/Application Support/com.audichuang.snip-sync",
    "~/Library/Preferences/com.audichuang.snip-sync.plist",
    "~/Library/Saved Application State/com.audichuang.snip-sync.savedState"
  ]
end
