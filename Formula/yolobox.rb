class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.2/yolobox-darwin-arm64"
      sha256 "32b0e58c7dbf8b04b550d6f25df6d60e55f176fcc277462e6ab7b13e5331cccc"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.2/yolobox-darwin-amd64"
      sha256 "0e1e55dc8a9bd5851598743eb3f56d0edbadd73917c8fb24d3ece90e17104a8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.2/yolobox-linux-arm64"
      sha256 "9ffc860291ad1c4a25cb0c5b29c030a2388238f8f156ec0b09de9a7f983e6834"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.2/yolobox-linux-amd64"
      sha256 "cff15297948bf76f743d5e77e12a43d71572dfecd84202f280e4130629aad1f4"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
