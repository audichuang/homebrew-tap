class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.0/snip-aarch64-apple-darwin.tar.gz"
      sha256 "baca5b1306d2cd60c90c3072b6781e70c6005bfa3720d04a463389f208234c4a"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.0/snip-x86_64-apple-darwin.tar.gz"
      sha256 "8c22cc647008606909525562ce8cc0dc0c1cb152781d5eea546d5f716b9ed774"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.0/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f6850c13ffb0cbf5cbede99187ffb499cedfbd39e03a936e3c8da8d08b34dfc"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
