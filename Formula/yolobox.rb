class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.17.0/yolobox-darwin-arm64"
      sha256 "8ac273cd64caffed83e66c45a3f2c8b7365990a77ecbe71b0356f5ae3f3e1fa4"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.17.0/yolobox-darwin-amd64"
      sha256 "c9630df10285cdd1680a16f8333fe8374a458d6fd9a65cbde74153d254dc5a42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.17.0/yolobox-linux-arm64"
      sha256 "1f684ae1eb5754e915922a9a2b6f212495c94ea41a413b3c8f41ede7d015ec4f"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.17.0/yolobox-linux-amd64"
      sha256 "772cbd5215650ecc1edd219f0cff2649be3414694a094f69ad47c37e62394fc1"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
