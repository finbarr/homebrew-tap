class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.3/yolobox-darwin-arm64"
      sha256 "000080edc2ea4a1a6d46aed73b99857d96d9084f4f205813e9c8a6454a5b3814"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.3/yolobox-darwin-amd64"
      sha256 "a630d608f3335fe21c597014cb7fe0e0597ba3b7c5ca25462c44abf8593e577e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.3/yolobox-linux-arm64"
      sha256 "9c1ceb9511d99c2353c9788618b83be1bda8f1f002eede3e821a5749af890ce5"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.3/yolobox-linux-amd64"
      sha256 "5e970da260f63c78ad6890239e388e1d1985cc2358a8d6482139294744c99036"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
