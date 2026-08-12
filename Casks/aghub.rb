cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.13.3"
  sha256 arm:   "992e0cfadbe0b49b39c7d70c83dc3df664bca0967dd96477d665b66395c20cd6",
         intel: "6faebcaed72671a9491587c76a5e3bbbe416aa8514993800aaf8b2c1c3cc5ae9"

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
