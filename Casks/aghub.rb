cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.10.1"
  sha256 arm:   "20e1db25f0c23e9ed79e51ec50b3666d617e8e5ac4e7cef7e26187289ec2cb10",
         intel: "2dae9ac4d2138a12b6fd077a7741cd01c1fe5abb3ac1d1138300b4554b232dc5"

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
