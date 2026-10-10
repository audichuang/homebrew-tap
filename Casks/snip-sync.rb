cask "snip-sync" do
  arch arm: "arm", intel: "intel"

  version "0.9.0"
  sha256 arm:   "c1f78fe5843944e48f80c14bae5acfd2a59af078d91cc75a070fca9ffbb849eb",
         intel: "2ebb411bf488c0ccc410c45ee516aa4b3b160cf56ee4be18da56121dcc3e6fc5"

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
