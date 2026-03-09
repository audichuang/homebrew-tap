cask "aionui-dev" do
  version "1.8.23"
  sha256 "7a5cc4421fd1526ab8b4ce63b8815aa119bb8b514e16b806fa9e6b1d8798ecbd"

  url "https://github.com/audichuang/AionUi/releases/download/v1.8.23-my-e3cc71e/AionUi-#{version}-mac-arm64.dmg"
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
