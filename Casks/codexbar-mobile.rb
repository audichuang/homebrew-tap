cask "codexbar-mobile" do
  version "0.84.0.1-mobile.3.3.0-audi.1"
  sha256 "bb2a67e00ccc1ab83a53020a5ed15fd4b1850c993b769405b45362ce33ef278f"

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
