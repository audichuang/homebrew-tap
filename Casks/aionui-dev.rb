cask "aionui-dev" do
  version "2.0.0"
  sha256 "93f816610190c2fd25504b0bad6b23b07936f9c5a720fc6f3553d587463db140"

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
