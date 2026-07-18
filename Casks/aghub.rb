cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.3"
  sha256 arm:   "91f7cbf5d9d47a39406471af736df2c5c12b23af86fa989f12299fb49aa20834",
         intel: "23be16857feb10dd73086401b4d2fa96864d28f5d671d1c28dc11e1906ca8af8"

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
