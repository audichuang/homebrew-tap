cask "aghub" do
  version "2.41.9"
  sha256 "5e59c34823c7540fe8b633868629c2159c6a11d1068497917e2b752f49b3f908"

  url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub_#{version}_aarch64.dmg"
  name "aghub"
  desc "AI coding agent configuration management tool (Desktop App)"
  homepage "https://github.com/audichuang/aghub"

  depends_on :macos
  depends_on arch: :arm64

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
