class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.10.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-aarch64-apple-darwin.tar.gz"
      sha256 "ed4f2381756468e37c06ba8d7bfbf6ef4f57d765086ce4cad50cdaad0349a638"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-x86_64-apple-darwin.tar.gz"
      sha256 "7057a4948883f79b74004a550f3f5da7e63505a385e0b82aa0ff3151959178d7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ec267b029d36e17944863fa7375371584088fe5ecb0a91aa5a4019b493f1d1a"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
