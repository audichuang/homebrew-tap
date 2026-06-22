cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.4"
  sha256 arm:   "2197c5a530478de7856ec24f52fcfde692c49c84c347c7ac8a5622971f58cc3c",
         intel: "625793b5849f54caf3c6539e7c2f78727023ee7addbf3bc4204f6151a3c0c728"

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
