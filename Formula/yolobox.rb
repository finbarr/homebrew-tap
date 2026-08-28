class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.4/yolobox-darwin-arm64"
      sha256 "521c90106e027e854f029e220d416b942659085518fd19d769da07ca11c27a20"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.4/yolobox-darwin-amd64"
      sha256 "c6f2d36ca14e4468ae6ad3f51f30ca4074b7e8db7f262e4ccb2a6c8ff990554e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.4/yolobox-linux-arm64"
      sha256 "ba617b0fc1c3c44fdbfa0a3c4cbc5e69aee9fdde35b0270d0ece70853adf2579"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.4/yolobox-linux-amd64"
      sha256 "c85ce95a1c199cac8cbd764d5aa91219f71de065fb5c9f94154644f52107fa88"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
