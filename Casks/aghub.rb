cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.5"
  sha256 arm:   "ae90cf8c767644cba4b4012da4229db9da31dde5ebb85475d35729d3812ccbc1",
         intel: "a585baa4683f94a0419c3f0592bd5b68e0fb99bb9ccb014a58fef3085586133b"

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
