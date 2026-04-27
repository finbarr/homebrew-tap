class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.13.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.3/yolobox-darwin-arm64"
      sha256 "4205ced531f47d163cc2ad18438838dec6f5a329a0112b92bd190b4589a531cd"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.3/yolobox-darwin-amd64"
      sha256 "4140e0f2f852c3b71d1165b70f7b54bb6d0617b50a0bac8a5b5924e9415b0c9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.3/yolobox-linux-arm64"
      sha256 "260937199e8f82cd72e2b060d1b19e2cf2524179c8d27a7342e8499b3ace5881"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.3/yolobox-linux-amd64"
      sha256 "c5e49d363904f90a8c14f6b28a2e2049f0610c3d7e29f56dc4684c3ae624747c"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
