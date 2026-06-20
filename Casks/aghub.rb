cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.5"
  sha256 arm:   "c30f4c9b6d78e2ee7e5a6a34f23cfea0ff9f371ce0d55678d18fd1eb81b6c99d",
         intel: "69c50ec300c43f9a4025581c0985ba6ff73ed5100c3789c7d79f2ff33615b218"

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
