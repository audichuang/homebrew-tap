class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.1/snip-aarch64-apple-darwin.tar.gz"
      sha256 "0ce0114a3e81b855c2fbefc095a00d94029c4ad416bec8b68b52acd5e27c98bb"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.1/snip-x86_64-apple-darwin.tar.gz"
      sha256 "2cc12428b47d5f51fcc6d500fdcbb59feed955a21029ac3673c890f9534341a1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.1/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ad4cfcc2f2ea25a7e25ad55ecf9ad368aadeed3de355d54e0bcf212bf201a1f"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
