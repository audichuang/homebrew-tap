cask "snip-sync" do
  arch arm: "arm", intel: "intel"

  version "0.3.0"
  sha256 arm:   "1e066a3165f09387799042b8ae771842778ebd2cb54a0a786771e3e30310841f",
         intel: "401c5306ba15337ef3c7370731d5f3e5bf67e67c604953c5ce7bc71e118adef5"

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
