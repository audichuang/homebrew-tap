cask "snip-sync" do
  arch arm: "arm", intel: "intel"

  version "0.3.1"
  sha256 arm:   "6641eb6be5718c2eda2c8cd364da9b7707d219cc3d0abcc846cd88200378549a",
         intel: "c932c6d890e412b780d7493e77dc10ef31f4cb419141d55f1274318dabc1394c"

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
