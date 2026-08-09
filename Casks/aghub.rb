cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.13.0"
  sha256 arm:   "b4317680f90278170dcfb1e5e05f83c3eca4de8251d437ca3f582aeb245fe77c",
         intel: "9f0546a05f62d105c3c3ec9d738ec94361943f013965d883715a57c5e3d47c09"

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
