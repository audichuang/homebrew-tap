cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.41.2"
  sha256 arm:   "9ea6e1cd95dd59c300505b25ea3935f49a97cdc06598cf7c3e34fae0d8dbcec5",
         intel: "d6b343a432e55c25e66e04b85ae46ac29faecde901a39e6ce7ebed736e15692e"

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
