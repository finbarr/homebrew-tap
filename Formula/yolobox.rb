class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.5/yolobox-darwin-arm64"
      sha256 "a160ee5494366d0c06d76c60af14977eb9f2b575821ba99da19176d2faad9a4e"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.5/yolobox-darwin-amd64"
      sha256 "eb2fefceb081444e537272692ed974f60b9a5ddb936ffff68f72b868429b9133"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.5/yolobox-linux-arm64"
      sha256 "9faf78e862ce8658a60a9c9f1b57cb4ca17e32580927604d16d62a0c8a10e84e"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.5/yolobox-linux-amd64"
      sha256 "ae84514d98bb71c2ce0c4312a8869cf31de347f0547db3de08acb8d4b8a88265"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
