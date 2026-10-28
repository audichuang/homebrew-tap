cask "orca-fork" do
  version "1.4.243-fork.2"
  sha256 "c1a3c262805bbdcc3d83b1b252cf9204b9a02c26cd73481814c09a61205e390f"

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
