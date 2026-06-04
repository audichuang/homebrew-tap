cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "80281366257b2375281dddd5e80e8439bf96b9dfe981d5221caad0c253847bb7",
         intel: "c63c854fca683dc1ae4c0bfe00072d656910dd3c0d35f73d72113cb854d003c9"

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
