cask "skills-hub" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "PLACEHOLDER_ARM64",
         intel: "PLACEHOLDER_X86_64"

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
