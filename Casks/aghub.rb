cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.2"
  sha256 arm:   "c8590c749e0592bd66175dc0821585ec30212800e7291f2baf59eaec0d9b88cf",
         intel: "774c5ad8ff7e02be160ffcef83e562306c547cd777e5abb034bd230ed9d8c72e"

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
