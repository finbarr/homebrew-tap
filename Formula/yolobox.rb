class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.15.0/yolobox-darwin-arm64"
      sha256 "55bda39a8b8d1cfc1d47647d5599bc75d28ad6701c57ce0949eceaa521ad812c"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.15.0/yolobox-darwin-amd64"
      sha256 "642d2d5ac613dcdbe74293c64c8a398d9987ef2e91e768be15268eeca90b4d35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.15.0/yolobox-linux-arm64"
      sha256 "fa1d038e82aab482ad3e78ad49ffc3f93959c664f87b909ab29b88858db0c654"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.15.0/yolobox-linux-amd64"
      sha256 "3b7659444d4ee7e14784c322d65cfa26d4475c4cc0a63f407ea90e6a1bb4f5c8"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
