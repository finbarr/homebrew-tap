class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.6.1/yolobox-darwin-arm64"
      sha256 "eb73ec49d48975c811f3e4287cd0d2781c46362ef0272c4309213aaaf6323de2"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.6.1/yolobox-darwin-amd64"
      sha256 "92211a4ae3b670312208ab0244ad9b401e70cc120e2159f17c1da0403d30ac9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.6.1/yolobox-linux-arm64"
      sha256 "c45ded5a42fd039a041f425f48303a0fc6e5d8f19eb13af284ea2d2893da3147"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.6.1/yolobox-linux-amd64"
      sha256 "a331a97ed34d6c9b9110f5916c4d961acbe72f1a7f3a5886177aed5fcc94ecd2"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
