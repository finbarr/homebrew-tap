class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.4/yolobox-darwin-arm64"
      sha256 "868afeecdf52cfce4c29da8acbb5faa24f53810f16de8dfe1de281af9de19ffe"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.4/yolobox-darwin-amd64"
      sha256 "c604d5f889bd1543ff2ba54ae56c21b87408c5dd6602c59b3fbaadbc91569e64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.4/yolobox-linux-arm64"
      sha256 "11808b70aaf5327a05e5849b8fa6afeb167c4dbae267fa2b8c56d9370e72c548"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.4/yolobox-linux-amd64"
      sha256 "93ab9eacd5788407e59e094b47565bf0c9cc7d23a5a40252b2630315b07ab981"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
