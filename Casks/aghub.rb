cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.14.0"
  sha256 arm:   "4e71c2d1668aa3b6a1ca30392c74971c1b84565b3c40b98db564602e41d297cd",
         intel: "36a55d7b37411fd5a80393a49486a7bdf5a21eab45d5d6e707ae3ad35a0b7a7a"

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
