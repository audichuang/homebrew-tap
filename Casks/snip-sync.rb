cask "snip-sync" do
  arch arm: "arm", intel: "intel"

  version "0.8.2"
  sha256 arm:   "cd0160f54ed2d83212b96641819e81086822f0489898261b7a0a1c9fd3c11535",
         intel: "ad87a805290d5ae0671a1fbb0f4393453dd7961faa6582551f8c96b28809e8a6"

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
