cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.24.0"
  sha256 arm:   "89145db8a49e480af2040a5a6090b473d3cfb44e196293ec1dccec6a4998a360",
         intel: "5eb006a366dec2989db0b1dd3e75eb1a165ae3bad656adeb066d07f780abe485"

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
