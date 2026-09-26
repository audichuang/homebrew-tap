cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.30.0"
  sha256 arm:   "395c21af3ab199daa723b544311f8afcf6b9da9ab5d3d502ed7e6f492f8f86c7",
         intel: "fa88d9747a7c9cee77d0fab6089c26adfb51402058d392d0f8c19271734a36ed"

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
