cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.26.3"
  sha256 arm:   "e274cdf36d84d7b1e00f40efbfc08acc062680e43dc0f3970f593d3acc294253",
         intel: "f670195ed6d69f5ce788554bf506adad26d35c7daa7a586812e0d9abc98ab304"

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
