cask "aionui-dev" do
  version "2.0.0"
  sha256 "f2a37c769c205f8f84fa251bc6c5cefdeb1afaf3d293f71bd7cd7e1d38cb8855"

  url "https://github.com/audichuang/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-arm64.dmg"
  name "AionUi (Dev)"
  desc "AI Agent Cowork Platform - Personal Development Build"
  homepage "https://github.com/audichuang/AionUi"

  depends_on macos: ">= :monterey"

  app "AionUi.app"

  zap trash: [
    "~/Library/Application Support/AionUi",
    "~/Library/Caches/AionUi",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
