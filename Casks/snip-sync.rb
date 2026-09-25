cask "snip-sync" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "cb3c16832ffb3f1dcca582f6dc6e1c85afd093b27ffc658f60c9cc61082e3660",
         intel: "29b176b0f34d42c9f30f8ecd3e6bae0acd322b06b041c2e35d24eecef691d4f7"

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
