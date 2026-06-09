class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.18.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.4/yolobox-darwin-arm64"
      sha256 "1bba59ca37e00698b507dbc01171e31395a6a128c66551ddb5247f590d401e21"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.4/yolobox-darwin-amd64"
      sha256 "1b7fe8de6c144d7d3709e7cfc48e11b367c495f5c12f87b802a5e474ead6caea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.4/yolobox-linux-arm64"
      sha256 "bdb70017f4cc03ef7643047e2039d52600751075f2b4965c524092e4c0baa30d"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.4/yolobox-linux-amd64"
      sha256 "77f95df417dcf251b812e103260dad116cf221d4f0969893be0f5dc3cf66119f"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
