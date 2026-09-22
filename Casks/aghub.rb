cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.27.1"
  sha256 arm:   "a21b8422970be3a11ffeea071e4ba2041bddf9ba30666472fa797fc9ded4eb41",
         intel: "d2ab634c62c074df8bf6b52c14b479de009e9df0acfa939ed48274d4ab3c459c"

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
