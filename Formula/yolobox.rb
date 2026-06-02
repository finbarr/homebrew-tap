class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.18.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.2/yolobox-darwin-arm64"
      sha256 "700f1c107c1e389d8f01598d94c13c65a5b0c19f2adcdc6bbba3fa2133b09d72"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.2/yolobox-darwin-amd64"
      sha256 "2dfb5bf94283de7d1f43f6d7aac13155e55b12a071cd4824f1df9d944a7d22c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.2/yolobox-linux-arm64"
      sha256 "6607751d685a624e07d37128bcc63a085281c38d9eec1b1c1228cc318230567d"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.2/yolobox-linux-amd64"
      sha256 "07cf54d848e2dc92133ef41f9b2d1336eec4b5542eaed4f7356d773b75174532"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
