class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.18.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.3/yolobox-darwin-arm64"
      sha256 "59107a7e7df3498149f8c7c10e3afa9f5f765b3be9849dfb270ce588812df4e5"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.3/yolobox-darwin-amd64"
      sha256 "0c3e6a96fc969047aaf0e100ef33eea70156bd84f33303031e9f0217d5af9767"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.3/yolobox-linux-arm64"
      sha256 "4a00837f40fc90dd7cff414f246dddcebe16cd932d4f7bf7b2e03c31e0160215"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.3/yolobox-linux-amd64"
      sha256 "c7ffd3fb9883dafe8fed51f6d00bfcc6c68ed042788b2b02e9556912eaab4457"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
