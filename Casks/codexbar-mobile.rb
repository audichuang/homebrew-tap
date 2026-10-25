cask "codexbar-mobile" do
  version "0.79.0.1-mobile.3.1.0-audi.3"
  sha256 "5e3304292a3bca7043447f668de3d7d417d812d308384f191b1806194e784077"

  url "https://github.com/audichuang/CodexBar-Mobile/releases/download/v#{version}/CodexBar-#{version}.zip"
  name "CodexBar Mobile Mac Companion"
  desc "AI provider usage monitor with iCloud sync to the iOS companion"
  homepage "https://github.com/audichuang/CodexBar-Mobile"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-mobile\.\d+(?:\.\d+)+-audi\.\d+)$/i)
    strategy :github_releases
  end

  # The machines update this app with mac-codexbar-update.sh, which
  # restarts it through the managed LaunchAgent; auto_updates keeps a
  # generic `brew upgrade` from swapping it underneath that agent.
  auto_updates true
  conflicts_with cask: "codexbar"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CodexBar.app"
  binary "#{appdir}/CodexBar.app/Contents/Helpers/CodexBarCLI", target: "codexbar"
end
