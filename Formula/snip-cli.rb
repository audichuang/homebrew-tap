class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.3.0/snip-aarch64-apple-darwin.tar.gz"
      sha256 "ddeba3c6e29d7633345ac5bc67b174d2430350529893f63bf7364934643cd41f"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v0.3.0/snip-x86_64-apple-darwin.tar.gz"
      sha256 "617918bdfddb1ff214ee7a40062578e50f9812a9ced2a24a8e28eff3babcbd31"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.3.0/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2b04ab4c5e1452e98d6d452ed3b1e50bb5d100ce4b57edfda108b645e029bd5"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
