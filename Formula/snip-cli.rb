class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.2/snip-aarch64-apple-darwin.tar.gz"
      sha256 "545a086445e0a3ea4e09ff39e24f423d20af6f31d27eef6bb4507cc5f10b6be9"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.2/snip-x86_64-apple-darwin.tar.gz"
      sha256 "bbbc4ffbdd12699f2a920967d800a2f00c3558b95a184198e084cc00a871818f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.1.2/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91afb6c51378939e61afd7a0478f04b5ab9633441176463c72c1d403fe12dc9d"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
