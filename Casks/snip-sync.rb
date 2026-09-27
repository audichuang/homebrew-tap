cask "snip-sync" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "eace57345b8d55b7619734df647cdb25e74d9a8529b50f3cfdded7336ebfc316",
         intel: "9a09dcde8fe5e759a45d64ba9c18962a2d06b675d7e7dce63bfe8d6130addca0"

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
