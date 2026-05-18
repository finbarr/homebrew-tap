class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.17.1/yolobox-darwin-arm64"
      sha256 "0affb2218d976b331a26e6e76c2c41fe72e50c764376ba8c1817fe94eddaa515"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.17.1/yolobox-darwin-amd64"
      sha256 "3a8c26db192b01c9dc8605767ca6f8169ca27aacddae8ddb41d0cffa157910b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.17.1/yolobox-linux-arm64"
      sha256 "bc9314e36732e784aea41f1b8d6b38625837a587bf9cacc4e8e15b49daa13dba"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.17.1/yolobox-linux-amd64"
      sha256 "374e0681aa5ca5fa2b4eb300b6fde89771f9baa9e26a40f606b67dca297822e9"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
