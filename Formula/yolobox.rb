class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.10.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.6/yolobox-darwin-arm64"
      sha256 "209114836cd2a4337d3cd1a32afef52d486f612b550c698a1c68faa4234989a1"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.6/yolobox-darwin-amd64"
      sha256 "06ae17f0effe9170c555ae7b78805054d98fd7e2868d9c4619645f511ee76841"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.6/yolobox-linux-arm64"
      sha256 "4f14fd48bc07e6a14b3d9f3cfd31af297936b3a48dca8b43da575029b8b3d540"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.6/yolobox-linux-amd64"
      sha256 "4adfb96c53b963c159eafdebfdae6d8df743a9265e935c3a1ba5347101dd2737"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
