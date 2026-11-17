cask "openidea-fork" do
  version "0.1.47-fork.1"
  sha256 "9c7a4fd55550f0eb2a7fd0007ab95998308dae24b9111d8ea79c2ea1953108e4"

  url "https://github.com/audichuang/openidea/releases/download/v#{version}/openidea-fork-macos-arm64.dmg"
  name "OpenIDEA Fork"
  desc "Personal fork of the OpenIDEA IDE with IntelliJ's Git staging area mode"
  homepage "https://github.com/audichuang/openidea"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-fork\.\d+)$/i)
    strategy :github_releases
  end

  # The app updates itself from the fork's releases; brew installs it once.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  # Same bundle id and user data as the official OpenIDEA, renamed on disk so both can stay installed.
  app "OpenIDEA.app", target: "OpenIDEA Fork.app"

  # No zap: the settings and caches are shared with the official app.

  caveats <<~EOS
    OpenIDEA Fork shares its bundle id and settings with the official OpenIDEA, so run only one at a time.
    Its built-in updater follows the fork's releases (from 0.1.34-fork.2 on).
  EOS
end
