cask "openidea-fork" do
  version "0.1.33-fork.6"
  sha256 "d1ae90880bd7f74f9a04f2127cc806bb96ce41780b97e7034b9509c42902b2a9"

  url "https://github.com/audichuang/openidea/releases/download/v#{version}/openidea-fork-macos-arm64.dmg"
  name "OpenIDEA Fork"
  desc "Personal fork of the OpenIDEA IDE with IntelliJ's Git staging area mode"
  homepage "https://github.com/audichuang/openidea"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-fork\.\d+)$/i)
    strategy :github_releases
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  # Same bundle id and user data as the official OpenIDEA, renamed on disk so both can stay installed.
  app "OpenIDEA.app", target: "OpenIDEA Fork.app"

  # No zap: the settings and caches are shared with the official app.

  caveats <<~EOS
    OpenIDEA Fork shares its bundle id and settings with the official OpenIDEA, so run only one at a time.
    Its built-in update check is off; update with:
      brew upgrade --cask openidea-fork
  EOS
end
