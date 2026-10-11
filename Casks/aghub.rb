cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.40.1"
  sha256 arm:   "82a72c63be46bd2ebff6b088a1dc235468b66645ce720805903e62bb55ab12de",
         intel: "1777e72b5529ab0677595c4980db2999e294b21800486f07c3a8a1755fbcbf0b"

  url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub_#{version}_#{arch}.dmg"
  name "aghub"
  desc "AI coding agent configuration management tool (Desktop App)"
  homepage "https://github.com/audichuang/aghub"

  depends_on :macos

  app "aghub.app"

  # Ad-hoc signed only: Gatekeeper kills a quarantined copy on launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/aghub.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.akrc.aghub",
    "~/Library/Preferences/com.akrc.aghub.plist",
    "~/Library/Saved Application State/com.akrc.aghub.savedState",
  ]

  caveats <<~EOS
    aghub is not notarized (ad-hoc signed only). If macOS refuses to open it:
      System Settings > Privacy & Security > Open Anyway
    or
      xattr -cr #{appdir}/aghub.app
  EOS
end
