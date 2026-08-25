class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.1/yolobox-darwin-arm64"
      sha256 "e1d53393be85a387711a5fd69d04c0f653709a6b26d47528b0cd5e407ef375a0"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.1/yolobox-darwin-amd64"
      sha256 "aa48fd4ae5339b0574a97a8c3d464ad7f3ebe702af1b7181f416cb49bb471df4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.1/yolobox-linux-arm64"
      sha256 "60295b316ce7d6f3b607da322301ffe0ede1dd56bcb10b63000c640c2c0d9f9a"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.1/yolobox-linux-amd64"
      sha256 "a9c6ab8960967e3a5b6feb167e64077c1dcf91ad0b6dd325cd21728c4a0baa1a"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
