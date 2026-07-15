cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "f968e3a5bf61b6f76f6020808e00afca5595032d3d0c74c6d03b7f9f47b952b3",
         intel: "dad00141f88baacd42dd97519cd9002148eb43099440c380e2ad16a92886da56"

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
