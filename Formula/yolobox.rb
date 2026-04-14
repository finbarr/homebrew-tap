class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.11.0/yolobox-darwin-arm64"
      sha256 "6cc8bda354adc1dfc94412e04e01a31e987a6f6e729ecd0c3cb2536358476f10"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.11.0/yolobox-darwin-amd64"
      sha256 "8fc17789d30aaa7eaed9cf820cac4bdad6db59e10c2bc6c6e784ebbed27bd9f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.11.0/yolobox-linux-arm64"
      sha256 "57fa83bc64a2e24d0163550e7d4582101908fbd20466a97ac1aa12d622b17c1b"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.11.0/yolobox-linux-amd64"
      sha256 "44609f6cabf3b3e13639b45e8cf92dbe22eac1b78e8f525fa880073fb25e5408"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
