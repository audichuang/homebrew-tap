cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.38.1"
  sha256 arm:   "5a6c26f5abb20e8ae3fd70a3d730cfe2e25a90786081947bf4c3eb1af9c1cdf0",
         intel: "3dd826db0b9286dc27f3bdfcd19a1966f5210e9dbc6010447f20a4f81aa55d13"

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
