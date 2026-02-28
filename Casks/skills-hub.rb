cask "skills-hub" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.2"
  sha256 arm:   "b05fbb379688da017f689c6d133d31ce3c2a6a2a0a7b58cae24c4fe413d05f02",
         intel: "ca3473a70310ade4ce616785af6f3e8d44fb65d7b1bacd0ac6a5f115340dc412"

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
