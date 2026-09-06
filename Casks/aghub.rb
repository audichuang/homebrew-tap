cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.19.0"
  sha256 arm:   "5092763cdcaea62f4040db8eaebeb4730b9705a05cbea0d0198d1dcfdf8d10db",
         intel: "ce0f77ebf558eb119db71e15dac763c19eca9a6cc71dc0b1fb91e09f4f947e43"

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
