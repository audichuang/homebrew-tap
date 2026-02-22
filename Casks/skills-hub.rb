cask "skills-hub" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "b8038cb7db3a0c343a88c43c25e06d66403724f60dd5f1067e6e5fcf4129c188",
         intel: "8f208c53f107032230ffd94ede9dfdc5e29aca238944a8b6f746d3ce376d7b64"

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
