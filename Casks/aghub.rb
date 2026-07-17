cask "aghub" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "5fbd137433666087976f9cff6905ab64aa08cb2888e974636ac393eb4763b811",
         intel: "f2735f040edda1a35c922946da5fe970a6cd04b4488a58f0e6bd36d02dde7418"

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
