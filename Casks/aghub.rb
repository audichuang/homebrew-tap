cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.26.0"
  sha256 arm:   "cf6cb8b45af11f5cbc71c9fe720995f622520654524d015c403d38c46e7f8f19",
         intel: "7cf771bf134afd8a539d2034cf354c1e3e59db3fa721391dcfaa80f19bb300a4"

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
