cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.18.2"
  sha256 arm:   "7a940c5b4f91f1f8ab549899456acea9774fab8eaef7f5ad88c711dfa0d71139",
         intel: "7cf87f789d3c7859645b84236a5adc9ee49ca71ce7515ac3ccfbc11d0d5b8807"

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
