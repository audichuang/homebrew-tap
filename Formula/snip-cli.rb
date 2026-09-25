class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.4/snip-aarch64-apple-darwin.tar.gz"
      sha256 "afcc8a1045a109ed0e0a8a3ce012b8455650e33c20ac10ddece494f0d5267009"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.4/snip-x86_64-apple-darwin.tar.gz"
      sha256 "00abb0d1533624cf89b956f7df3bb51d501a2e098a164e20bcdce7a52784e9a4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.4/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4fb3924dffbbfe85bc9c67071844c9e5ba5d849db4696795fa3c2ca5c22da356"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
