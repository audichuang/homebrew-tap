class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-aarch64-apple-darwin.tar.gz"
      sha256 "8351f7d4ff6555df75be479a9d53f97139e1d88d4b7c203401460ebf367ca34c"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-x86_64-apple-darwin.tar.gz"
      sha256 "383dd01aedee027b43e0a995051424053f84c639e7ace3183b0a33114c084fab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb956ca4d5105a489bff0a3c04fe2c2df3e9edb7933aef63a40ca63dc1767efe"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
