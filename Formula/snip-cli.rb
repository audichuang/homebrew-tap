class SnipCli < Formula
  desc "Sync code snippets between machines through the clipboard (CLI)"
  homepage "https://github.com/audichuang/snip-sync"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-aarch64-apple-darwin.tar.gz"
      sha256 "9100570cc33b97f7d4acbed9344513282ff70e833c497ec145ebea164e0e4fd0"
    else
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-x86_64-apple-darwin.tar.gz"
      sha256 "3f8d56c2a6ef017571d1c09117b90cd7bd2422e1d173d63b405a054f218aa041"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/snip-sync/releases/download/v#{version}/snip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04d349e59f48a3d55e59615e3bc8aee72d25ebbc6d1318bcefdf6670422082b8"
    end
  end

  def install
    bin.install "snip"
  end

  test do
    system "#{bin}/snip", "--version"
  end
end
