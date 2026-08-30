cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.16.0"
  sha256 arm:   "095cdf2f3a35863fe71a10c3130d1bae375dd8019e44c663416c73a9c9825dcf",
         intel: "40736c526465451387679e89068f95632af20494a93da1ed09263cf5f8aea51d"

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
