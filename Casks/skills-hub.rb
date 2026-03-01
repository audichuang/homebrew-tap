cask "skills-hub" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.2"
  sha256 arm:   "9736281954ead55dd5545c8da244ce2dde347d5ec9479550ca177efbe4fadf06",
         intel: "fa91e3bfa8858db99f79150bd9d39197fc4b64ff5db79a10b492b00cdafe0a5d"

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
