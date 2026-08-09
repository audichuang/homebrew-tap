class AghubCli < Formula
  desc "AI coding agent configuration management tool (CLI)"
  homepage "https://github.com/audichuang/aghub"
  version "2.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-aarch64-apple-darwin.tar.gz"
      sha256 "3e4c6d6ba057f8f6c17d24420ea9f3425be1ce0de48c6eacb08556de697fb8f9"
    else
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-x86_64-apple-darwin.tar.gz"
      sha256 "ebf3f0cb8a7acdb4de11cf111866b6cda4054b2c02df6c1cec19bef330f0b1c3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/audichuang/aghub/releases/download/v#{version}/aghub-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8fc9a89e51efbf716f82c8ea3bb1f32b69abb540443f68aac497c63bedeccd03"
    end
  end

  def install
    bin.install "aghub-cli"
  end

  test do
    system "#{bin}/aghub-cli", "--version"
  end
end
