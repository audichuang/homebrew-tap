cask "snip-sync" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "fbb857ad3d9cc525b6ecc3916be8b25ae100d59f6a405fecae797456e47a74c4",
         intel: "63a9182c4c7d498ae802fc4253fde203dba7c47fbeda4d18e1e27351e16dfc64"

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
