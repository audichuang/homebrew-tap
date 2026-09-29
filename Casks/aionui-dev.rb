cask "aionui-dev" do
  version "2.0.0"
  sha256 "1b0f285459018b0afdeab2eff4e2c5d4a3f281d936115bf3fd70943bf024e443"

  url "https://github.com/audichuang/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-arm64.dmg"
  name "AionUi (Dev)"
  desc "AI Agent Cowork Platform - Personal Development Build"
  homepage "https://github.com/audichuang/AionUi"

  depends_on macos: :monterey

  app "AionUi.app"

  # Ad-hoc signed only: Gatekeeper kills a quarantined copy on launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/AionUi.app"]
  end

  zap trash: [
    "~/Library/Application Support/AionUi",
    "~/Library/Caches/AionUi",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]

  caveats <<~EOS
    AionUi is not notarized (ad-hoc signed only). If macOS refuses to open it:
      System Settings > Privacy & Security > Open Anyway
    or
      xattr -cr #{appdir}/AionUi.app
  EOS
end
