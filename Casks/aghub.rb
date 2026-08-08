cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.11.0"
  sha256 arm:   "7c81c0518951c71a127be550d91af603bc380aee0ca69b3472db27569c6dfeb3",
         intel: "cd27ee0980946c3075d69d30c7fbcb512e8647ab8c29f3c7e1e73492748bf67f"

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
