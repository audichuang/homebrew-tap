cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.10.5"
  sha256 arm:   "8c5402f9d98a51e1e7a69a9cf0c543e1de40c6743f925dd0818262fa838fb0dd",
         intel: "398d31cbb272a923cda9f8c1394403787c70c69c476218eb6592e66ad190ce1d"

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
