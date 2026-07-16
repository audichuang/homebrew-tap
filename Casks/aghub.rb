cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.4"
  sha256 arm:   "e699c9f3b2966ac72c2909d628236ad41dee74cdf203adee12887c94a5e4640b",
         intel: "fc929dc475b7f0ca49844246c810ae55cbc142e33e2b74ec2ba3f2565837d0ac"

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
