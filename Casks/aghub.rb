cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.25.1"
  sha256 arm:   "2ef84dac6ababf4505922cd7b90a0933ddcb09d8c039855439ad5ad21d9e64cd",
         intel: "8459db3d61b4f47f8ae5009a52bb5ca727342f64c1ec2c1b442739f27b5da19d"

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
