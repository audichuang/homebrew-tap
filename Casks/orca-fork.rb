cask "orca-fork" do
  version "1.4.229-fork.3"
  sha256 "a606d6ba76b2ec2faca8ce95b36d5a4cc66284a67351735bcc0af40fbad402a4"

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

  # Ad-hoc signed only: Gatekeeper kills a quarantined copy on launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Orca Fork.app"]
  end

  # No zap: the profile under ~/Library/Application Support/Orca and ~/.orca is shared with the official app.

  caveats <<~EOS
    Orca Fork shares its bundle id and settings with the official Orca, so run only one at a time.
    Its built-in auto-update is off; update with:
      brew upgrade --cask orca-fork
    It is self-signed, not notarized. If macOS refuses to open it:
      xattr -cr "#{appdir}/Orca Fork.app"
  EOS
end
