class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.6/yolobox-darwin-arm64"
      sha256 "535d1626642f2efabff4fd40d80a390f5f4007699b2c7fb52e9100c5f665723d"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.6/yolobox-darwin-amd64"
      sha256 "b7a56805c6c9ad84f9c653dfe2644dcd73ee00cfe5a9228dcad6a79e5380bb2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.6/yolobox-linux-arm64"
      sha256 "801c138f209c04027306bd1e3780b0554911b05af7a3a588a6f71725fa425dd4"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.6/yolobox-linux-amd64"
      sha256 "04cb3df000424bc9d70b6b0678a5601d2bc5210577b3015f0a619609e182d4bf"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
