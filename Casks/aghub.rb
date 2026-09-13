cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.25.0"
  sha256 arm:   "f8bfd108ef82e48d9a4fc5f36a2858ee1884fed807337eeaaab5aa0bd0129593",
         intel: "d0509187167e55108c5a33d6f69b0abdc159166e00876e38f8ca4312eb355385"

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
