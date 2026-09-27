class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.2.0/snip-aarch64-apple-darwin.tar.gz"
      sha256 "a03e633032f25c0c02ba01b0dd16cf022cccd3709181f934e3e1681f1ceb14cb"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v0.2.0/snip-x86_64-apple-darwin.tar.gz"
      sha256 "201120bdf2a53617db5c8636d9bb5342cd6a3734e256b9d30a870d80dce6e821"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v0.2.0/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37c221339da5e721bcb6f0c8a29c4607dce86091781cbeee75aeed25a4bf34f3"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
