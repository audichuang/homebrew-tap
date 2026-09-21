cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.27.0"
  sha256 arm:   "f1cbc5716d5c4ea19d7e0bf4c4881bb25d3157e90f806ff7121dc4148195f8a4",
         intel: "54eb6089ed3443b74a9d9033e99988b9dd490e2baac6024ce415943cd05c15df"

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
