cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.30.1"
  sha256 arm:   "37b9112a8cbb5e04934fcacdc02efe066c3ff1a32ae8f530d8cd97881e171442",
         intel: "b6249be82fe715ac7bd82ab78083e92d606e88247d8945caf25c9c382cdc127a"

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
