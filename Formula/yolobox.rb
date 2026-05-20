class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.1/yolobox-darwin-arm64"
      sha256 "71580c5eda60ee3a5ec7d58419c6b277d33c3641b9f704ba89697144f60659de"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.1/yolobox-darwin-amd64"
      sha256 "06945887beeb4f28b3f8066102abb1be78cca01fa8748b1f015428b60d86f278"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.1/yolobox-linux-arm64"
      sha256 "1fb3c584bc52bca530ac0ada52f98dbae45d650916bd9524726184548d444eb5"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.1/yolobox-linux-amd64"
      sha256 "42b779c6df14dd87a21a12e66e1b0ddfea93c04fb26f8bb9ab6b31043d94c748"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
