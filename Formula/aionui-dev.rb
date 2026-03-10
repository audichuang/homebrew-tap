class AionuiDev < Formula
  desc "AI Agent Cowork Platform - Personal Development Build (Linux)"
  homepage "https://github.com/audichuang/AionUi"
  version "2.0.0"

  on_linux do
    url "https://github.com/audichuang/AionUi/releases/download/v#{version}/AionUi-#{version}-linux-x86_64.AppImage"
    sha256 "1be4d7de0c51b972117f16fc04a249c00a4ea05e7f3e0f3e49b00e0718a755d0"
  end

  def install
    # 直接把 AppImage 安裝到 bin
    bin.install Dir["AionUi-*-linux-*.AppImage"].first || Dir["*.AppImage"].first => "aionui-dev"
    chmod 0755, bin/"aionui-dev"
  end

  def caveats
    <<~EOS
      AionUi Dev 已安裝為 AppImage。

      啟動方式：
        aionui-dev

      注意：首次啟動需要 FUSE 支援。
      如果遇到 FUSE 錯誤，請安裝：
        sudo apt-get install -y libfuse2

      如果要以 headless WebUI 模式啟動（不需要 display）：
        aionui-dev --no-sandbox --webui
    EOS
  end

  test do
    assert_predicate bin/"aionui-dev", :exist?
    assert_predicate bin/"aionui-dev", :executable?
  end
end
