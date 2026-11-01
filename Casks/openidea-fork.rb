cask "openidea-fork" do
  version "0.1.33-fork.4"
  sha256 "d1bdb76d04bdd2e23347a8b6c9ad8be23587dc7218254a8296f5a781cf2b813b"

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
