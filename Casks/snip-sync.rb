cask "snip-sync" do
  arch arm: "arm", intel: "intel"

  version "0.7.0"
  sha256 arm:   "a37fd172d308bf1d238d1fcea055ad8b60fc10c61bd0a96e5f7bbc7ad1a43d9b",
         intel: "6b7e3855ab9b290b43e4ec4f1649a0469a422f2b7c817734e24f8ca5a14388d4"

  url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-sync_mac_#{arch}.dmg"
  name "snip-sync"
  desc "Sync code snippets between machines through the clipboard (Desktop App)"
  homepage "https://github.com/audichuang/snip-sync"

  depends_on :macos

  app "snip-sync.app"

  # Ad-hoc signed only: Gatekeeper kills a quarantined copy on launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/snip-sync.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.audichuang.snip-sync",
    "~/Library/Preferences/com.audichuang.snip-sync.plist",
    "~/Library/Saved Application State/com.audichuang.snip-sync.savedState",
  ]

  caveats <<~EOS
    snip-sync is not notarized (ad-hoc signed only). If macOS refuses to open it:
      System Settings > Privacy & Security > Open Anyway
    or
      xattr -cr #{appdir}/snip-sync.app
  EOS
end
