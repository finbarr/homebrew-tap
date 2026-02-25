class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.1/yolobox-darwin-arm64"
      sha256 "7974bafae4530ab84755bed2b7543b2353f6c7a2327fdbcc44e2991498bc6215"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.1/yolobox-darwin-amd64"
      sha256 "2859d02c795a11045fa96f7a3a2de869c37f4623c71ce1130dfc5c0bbd6e02d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.1/yolobox-linux-arm64"
      sha256 "0a4544b5623cb09b2bbe0870e40025d8ff18d01f3eb059c52ff9fc2c794c5f86"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.1/yolobox-linux-amd64"
      sha256 "5ce97510c7d526eae9311709e593eade75b6ed3b6d4ab7ec2053fa6ce674d97c"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
