class AghubCli < Formula
  desc "AI coding agent configuration management tool (CLI)"
  homepage "https://github.com/audichuang/aghub"
  version "2.23.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-aarch64-apple-darwin.tar.gz"
      sha256 "5525b73e68b652114ada98789978d438d186b30a7fb30518e2fdecf904e9c92a"
    else
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-x86_64-apple-darwin.tar.gz"
      sha256 "a8ab19668e5e8cf19d4832057eea13b7b625ade8377352bf699452475f4c49f1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e091a49d1cb2156e34b378dc50acb2f84d2e2229b04a55e16e6c335c19af57f"
    end
  end

  def install
    bin.install "aghub-cli"
  end

  test do
    system "#{bin}/aghub-cli", "--version"
  end
end
