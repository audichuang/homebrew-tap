cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "1fc92ab0f937ebfe8a696e315b52155b6b79d1756aed5270e5d8535697700a4d",
         intel: "01d9f31c713e7c13631e2411370ec29539a92e782e3bd78ea107a461de8c5adf"

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
