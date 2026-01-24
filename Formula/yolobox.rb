class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.3.0/yolobox-darwin-arm64"
      sha256 "0a8d050c8cd8e019b1ac8b2f4c80763612406b82e24d92d812e81d128e6c03c9"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.3.0/yolobox-darwin-amd64"
      sha256 "47cf61d8e5084666d116265ba6c54f9b7a835cce9d58307761a32d2b8eb9abbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.3.0/yolobox-linux-arm64"
      sha256 "fe530606f8280cb8a37d9673e95f9bbd7107374a464ce2f7f2ff6bd2bf3852a5"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.3.0/yolobox-linux-amd64"
      sha256 "0331bcb80477e46d3ece1ed4352299762052d405d853fa118b1716e90537f9b4"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
