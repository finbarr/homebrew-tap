class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.0/yolobox-darwin-arm64"
      sha256 "8708e339e92ec97aff2f3326bb2a76a3bdc5012adf6e452b657b1a7bf40e69b8"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.0/yolobox-darwin-amd64"
      sha256 "8eb60fe742bc9087f9b94db574aab291e9c59d847fa4af4a1450ef53e411ffc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.0/yolobox-linux-arm64"
      sha256 "3776aaaa3477a30b24f4ed8b5bc9bcf4778805146e38ed1e18fc45f7884f6419"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.0/yolobox-linux-amd64"
      sha256 "88df3963f9d043055932b0bbde951c067264c5f4ecb80d1347106711fda3cf81"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
