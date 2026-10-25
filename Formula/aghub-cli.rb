class AghubCli < Formula
  desc "AI coding agent configuration management tool (CLI)"
  homepage "https://github.com/audichuang/aghub"
  version "2.43.3"
  license "MIT"

  # Apple Silicon only: Intel Mac builds were dropped.
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-aarch64-apple-darwin.tar.gz"
      sha256 "1610ec68af980898df02b0dc4c7272986a6fe7c569721ddf63d1173c39ebc13d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95b7aac30a441fa45c89d6e71dc275fd40db770418d7a5d01a3311d8e5112522"
    end
  end

  def install
    bin.install "aghub-cli"
  end

  test do
    system "#{bin}/aghub-cli", "--version"
  end
end
