cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.19.1"
  sha256 arm:   "d45acf79d2b13a1a7e68f9707bd81e571b2f5b6d318111962d3c7ee8970b0afb",
         intel: "e767f9d7c641ba96b28a98530ec0395313b9dbaa058471e33b1915fda9e3f463"

  url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub_#{version}_#{arch}.dmg"
  name "aghub"
  desc "AI coding agent configuration management tool (Desktop App)"
  homepage "https://github.com/audichuang/aghub"

  app "aghub.app"

  zap trash: [
    "~/Library/Application Support/com.akrc.aghub",
    "~/Library/Preferences/com.akrc.aghub.plist",
    "~/Library/Saved Application State/com.akrc.aghub.savedState"
  ]
end
