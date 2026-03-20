class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.1/yolobox-darwin-arm64"
      sha256 "cac583e17543060e1a598aba72c76facd3df9127a593340cec7c1c28d54f3470"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.1/yolobox-darwin-amd64"
      sha256 "47330dcc4919d4f2f690ff6085be591f30fc6dcce0db3b54168d4780852f3a09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.1/yolobox-linux-arm64"
      sha256 "d6fe13fbc17dcf702f7e965773727b915d9a88a03ece4cd75a8d71ad66030629"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.1/yolobox-linux-amd64"
      sha256 "f4dec4411bdc2dd0ba3c0642f75ec9c4c99ba41fb26ccef4d6a35c2e1278d9cb"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
