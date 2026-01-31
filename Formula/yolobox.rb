class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.6.0/yolobox-darwin-arm64"
      sha256 "2454c1457ce8a4d0d798a2565aa98db7f55e18e747cfdc56bfbd53c8d85b4bfd"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.6.0/yolobox-darwin-amd64"
      sha256 "c9e5809536770dbd2c58d373a0fd769303d521624624ae5d322762beac9c789c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.6.0/yolobox-linux-arm64"
      sha256 "62d0e418148e2490577327cdee942a6510347dff5c2f06b032b94b40e3521d87"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.6.0/yolobox-linux-amd64"
      sha256 "03b67ee8f2271700f479862e798cbd79b6f0c9bb22e50b98520999ea6ad752e7"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
