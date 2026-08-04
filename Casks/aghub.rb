cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.10.9"
  sha256 arm:   "08d9cf510750e05eacd1ea2f2c9a46fdfb6583ab48a447d6b8eb51aacc055ca1",
         intel: "a224d3264bf348bd24478427e598df089fa9855a78b432a1c9ce234dd2ceb46f"

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
