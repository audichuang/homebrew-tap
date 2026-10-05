class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-aarch64-apple-darwin.tar.gz"
      sha256 "a5ec13a1712ef77e52cf6625037339cb6c985455500eb36c63f39b968d9ecb9e"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-x86_64-apple-darwin.tar.gz"
      sha256 "6420ec28ae0dae79da3cf008732f01466b899837809383997e54a006abd97261"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08b62594fe9858191d858ca93abb8a0ab9beb5f37e46548a551365d164f43f61"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
