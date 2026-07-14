cask "mdflux" do
  version "0.1.2"
  sha256 "5a1afd507d5866ea92c12a5b58248a8444ee0c6312930debab7fdd98482bc669"

  url "https://github.com/audichuang/mdflux/releases/download/v#{version}/MDFlux_#{version}_aarch64.dmg"
  name "MDFlux"
  desc "Convert documents to clean Markdown — offline desktop app"
  homepage "https://github.com/audichuang/mdflux"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "MDFlux.app"

  zap trash: [
    "~/Library/Application Support/com.projektvisyo.mdflux",
    "~/Library/Caches/com.projektvisyo.mdflux",
    "~/Library/Preferences/com.projektvisyo.mdflux.plist",
    "~/Library/WebKit/com.projektvisyo.mdflux",
  ]
end
