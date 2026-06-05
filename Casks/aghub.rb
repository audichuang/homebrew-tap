cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.4"
  sha256 arm:   "338c5faa2f932e5c1b1ad20fd0ded79c554c64d0aff0dfeb95d86775b4066849",
         intel: "7b323bca7a71a54d0687baa4aa279e5bd09274b4811f3f311bf050cfd1b03a0e"

  url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub_#{version}_#{arch}.dmg"
  name "aghub"
  desc "AI coding agent configuration management tool (Desktop App)"
  homepage "https://github.com/audichuang/aghub"

  app "aghub.app"

  zap trash: [
    "~/Library/Application Support/com.akrc.aghub",
    "~/Library/Preferences/com.akrc.aghub.plist",
    "~/Library/Saved Application State/com.akrc.aghub.savedState"
  ]
end
