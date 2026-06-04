cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "a977e7b1c2a75ed5b851055a842260e378982b9fa5e0da31ff722e2096a4c319",
         intel: "220c68c7327b59c0fc9b0e1b3779b67e8cdf992ead7344dea18ddc269b4bcc3d"

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
