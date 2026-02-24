class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.0/yolobox-darwin-arm64"
      sha256 "0ebd3dc7b261b17946d777a050a541d906024f3bf0091762beea9d11e8afa441"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.0/yolobox-darwin-amd64"
      sha256 "5c3006f88e2e0caa9b36bcda295647d0662e6326624980989d5875eb9123b4d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.0/yolobox-linux-arm64"
      sha256 "ed731c055062c68f21ff209732aad211aea4e97e9f5667412b0debc001d5e031"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.0/yolobox-linux-amd64"
      sha256 "05ec5093e1531b10843401b17541a679d8dff37c0065009048abc11d2e2c020c"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
