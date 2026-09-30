cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.35.0"
  sha256 arm:   "4ffafdf93066c2cd63d3a54845d161fc3962ca9d60c07b69ef544abb439f9709",
         intel: "bc8d9f58b5b37921d343020e591d440691c7b0aa344386a38ed943a9decf33d8"

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
