cask "snip-sync" do
  arch arm: "arm", intel: "intel"

  version "0.3.2"
  sha256 arm:   "25e49272a2b8ec6bcc680ddbc6437fa9d0c9cfd2edebba08f8c45b21893d2263",
         intel: "e112fc39698fe3691edfa46a9cf23a245a6a3bb9e188daf23819863b05e0f250"

  url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-sync_mac_#{arch}.dmg"
  name "snip-sync"
  desc "Sync code snippets between machines through the clipboard (Desktop App)"
  homepage "https://github.com/audichuang/snip-sync"

  depends_on macos: ">= :big_sur"

  app "snip-sync.app"

  # Ad-hoc signed only: Gatekeeper kills a quarantined copy on launch.
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/snip-sync.app"]
  end

  caveats <<~EOS
    snip-sync is not notarized (ad-hoc signed only). If macOS refuses to open it:
      System Settings > Privacy & Security > Open Anyway
    or
      xattr -cr #{appdir}/snip-sync.app
  EOS

  zap trash: [
    "~/Library/Application Support/com.audichuang.snip-sync",
    "~/Library/Preferences/com.audichuang.snip-sync.plist",
    "~/Library/Saved Application State/com.audichuang.snip-sync.savedState"
  ]
end
