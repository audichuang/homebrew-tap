cask "skills-hub" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.0"
  sha256 arm:   "1129a0b08f707203a6b73c949fbdc93aa25a46f13ddf467aafaa355e00c48235",
         intel: "6a9a5b6866bf331f7d1b1376a6264def0527685e5bdb7919f0b1b4f850b75e28"

  url "https://github.com/audichuang/skills-hub/releases/download/v#{version}/Skills-Hub-v#{version}-macOS-#{arch}.dmg"
  name "Skills Hub"
  desc "Manage and sync AI coding skills across tools"
  homepage "https://github.com/audichuang/skills-hub"

  depends_on macos: ">= :monterey"

  app "Skills Hub.app"

  zap trash: [
    "~/Library/Application Support/com.skillshub.app",
    "~/Library/Caches/com.skillshub.app",
    "~/Library/Preferences/com.skillshub.app.plist",
    "~/Library/Saved Application State/com.skillshub.app.savedState",
  ]
end
