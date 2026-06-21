class AghubCli < Formula
  desc "AI coding agent configuration management tool (CLI)"
  homepage "https://github.com/audichuang/aghub"
  version "2.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-aarch64-apple-darwin.tar.gz"
      sha256 "ea46c15208566c39c4a3eb9d8c34491b54987b19d10add64669ae71934a723ab"
    else
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-x86_64-apple-darwin.tar.gz"
      sha256 "f5c1f5ef527fb2876c2690a6ad91dd36f363325a9dd95eb4b21e03c0b2469883"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f99edd072f7588521f3a4f0871f8baa9978fd4f0f13ad4d10cfe9b72abee0706"
    end
  end

  def install
    bin.install "aghub-cli"
  end

  test do
    system "#{bin}/aghub-cli", "--version"
  end
end
