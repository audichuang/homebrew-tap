class AghubCli < Formula
  desc "AI coding agent configuration management tool (CLI)"
  homepage "https://github.com/audichuang/aghub"
  version "2.41.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-aarch64-apple-darwin.tar.gz"
      sha256 "1589253f974ce257a9801a9bb3bed9dda05c05bef719d7629031a41bfae55b6f"
    else
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-x86_64-apple-darwin.tar.gz"
      sha256 "c744d005c4d9d0c4cdc4aaa0513cbf56f31fae02f530d5024fe034c033666167"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c1ca45893f17911422032d1ddd6a9b0d1445eb3dcfd53dc8dc909473aeb19e7"
    end
  end

  def install
    bin.install "aghub-cli"
  end

  test do
    system "#{bin}/aghub-cli", "--version"
  end
end
