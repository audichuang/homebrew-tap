class AghubCli < Formula
  desc "AI coding agent configuration management tool (CLI)"
  homepage "https://github.com/audichuang/aghub"
  version "2.10.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-aarch64-apple-darwin.tar.gz"
      sha256 "31ba02c2f4ea91d3ce1550e5ad17cca82ee731304825158b1491762f3923eb31"
    else
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-x86_64-apple-darwin.tar.gz"
      sha256 "49277de9932404467338074b286986df8bd3b653d9257d80000d78d46d0ca18d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0640568cda3da2f22e95bc732645869350b9c96783a7eb76076c236bb18506f8"
    end
  end

  def install
    bin.install "aghub-cli"
  end

  test do
    system "#{bin}/aghub-cli", "--version"
  end
end
