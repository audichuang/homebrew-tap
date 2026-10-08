class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-aarch64-apple-darwin.tar.gz"
      sha256 "ce69dbebb5bf9c2bbc74c505c159b9afc6a88bd9631d77f0088994337500aa53"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-x86_64-apple-darwin.tar.gz"
      sha256 "d647a3ce95c587f45647a22a466477f7aec935cebafe50c20ff83f6bebc617e8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6cc30487d4962353c40502368bdb9b70571cea6dfaf702b503f2e60de829de75"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
