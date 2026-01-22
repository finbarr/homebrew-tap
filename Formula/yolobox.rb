class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.2.2/yolobox-darwin-arm64"
      sha256 "dc0b1d13f5406a6de24569937b5e1853b2c676b40765172359b9e52d6981c002"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.2.2/yolobox-darwin-amd64"
      sha256 "dbfb0c8fa27ff3de719dee9f7751da095a8a973c2bfceb7e1d212c880242aecc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.2.2/yolobox-linux-arm64"
      sha256 "c6234ec435ef296b366a3922cbf604fab10eb806e7c791458c84a4838a081cc6"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.2.2/yolobox-linux-amd64"
      sha256 "d40b5dabda999b281f721ed845bca54f0ac8069af5ef03dae508d6ab9e6fb376"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
