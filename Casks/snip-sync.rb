cask "snip-sync" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "d93f85ddcca0adac7538ced2350b29f111384dd8ded05a6b327e47b6993b93aa",
         intel: "e40e2fe30e954ab0b3a60a96870167d22e67503811a1323e76db80bb3f303590"

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
