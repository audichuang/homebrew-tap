cask "snip-sync" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "d173f0bba00fd6d67e577d00ac28680140b609a45358159a0d6e973a4f54c3f7",
         intel: "6c430f71f4d2b4eda1ca5ab72168433b71c653bef9c16a26030e3e83cbbcdc63"

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
