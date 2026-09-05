cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.18.0"
  sha256 arm:   "7f01bf15714f13d110ac3007405fe84ee0591213dc3242584855709fc8018b3a",
         intel: "81a06231ac990d80d1832163a870e5074a560dbda9e28deaf1393cfa0e8bfe5c"

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
