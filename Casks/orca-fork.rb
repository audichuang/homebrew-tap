cask "orca-fork" do
  version "1.4.241-fork.1"
  sha256 "c65b6fa6f35fad1122ae107163114bf062bd7ca0185b2d23ac2b0d30df35339e"

  url "https://github.com/audichuang/orca/releases/download/v#{version}/orca-fork-macos-arm64.dmg"
  name "Orca Fork"
  desc "Personal fork of the Orca IDE for orchestrating AI coding agents"
  homepage "https://github.com/audichuang/orca"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-fork\.\d+)$/i)
    strategy :github_releases
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  # Same bundle id and user data as the official Orca, renamed on disk so both can stay installed.
  app "Orca.app", target: "Orca Fork.app"
  binary "#{appdir}/Orca Fork.app/Contents/Resources/bin/orca", target: "orca-fork"

  # No zap: the profile under ~/Library/Application Support/Orca and ~/.orca is shared with the official app.

  caveats <<~EOS
    Orca Fork shares its bundle id and settings with the official Orca, so run only one at a time.
    Its built-in auto-update is off; update with:
      brew upgrade --cask orca-fork
  EOS
end
