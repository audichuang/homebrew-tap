cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.31.0"
  sha256 arm:   "20de1a1e57f0720530e987810b6a41325242b5505694576edd238c5c7957a81f",
         intel: "b1b52d7a40d220d1f528f5f9f29878a2132dcf1bcc00b73568f0cacdb5ce83ac"

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
