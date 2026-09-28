class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.3.1/snip-aarch64-apple-darwin.tar.gz"
      sha256 "0776a1f868c94b3901ee46bc40d103ff651bc08a042b4be0a89e3303bb6475cd"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v0.3.1/snip-x86_64-apple-darwin.tar.gz"
      sha256 "a210695fe0c043ca9ed450a3f2ec9de032cbb6390e1b5bd83fe12ecedcd1de4b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.3.1/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b3eb7378a4137d3b4dcb9fe1d9f48ae5fd003004216c62f93b08f0e53d9b322"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
