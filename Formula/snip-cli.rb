class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.3/snip-aarch64-apple-darwin.tar.gz"
      sha256 "8b1f29bc6bfe9f22bbbc6b01e912949d91ba54dfd412c163980d96c2379bb2f5"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.3/snip-x86_64-apple-darwin.tar.gz"
      sha256 "1f97d3b176671f2ad322ef08ea725217edae2014fde636bcb85e3e25d32ed691"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.3/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8667e86123c9428103747f1eca280d3e0e40f7a7ad96f86fb24605166742119a"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
