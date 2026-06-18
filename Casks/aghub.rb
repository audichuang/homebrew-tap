cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.3"
  sha256 arm:   "e9c3c50fb59935ac4c6de76d8b25357ccc2e42ac7e531a6218ea3f1c1ce7eb08",
         intel: "c3039136bfa7621e2d65ceda651351452e0f525ea6a8a6d3650c1fd7c1bd810d"

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
