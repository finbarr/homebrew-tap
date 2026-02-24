class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.1/yolobox-darwin-arm64"
      sha256 "245e6823d1ae3b02b10e944563a0e7a102c7c3515d2cd5c6d569907ad9152d70"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.1/yolobox-darwin-amd64"
      sha256 "8d19b0118ee205fb753acf9fc1eae2ec3de61dff56e46fafa676f7b376cdc82d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.1/yolobox-linux-arm64"
      sha256 "1766bb0993fe4fe03a0206f11ca873ecd3a650a11240709bc6dc53bd8ddad536"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.1/yolobox-linux-amd64"
      sha256 "0a0003902869a3ea6497e28a7897bc8bf77c1c9a31efa9b0440cb9b9a207c498"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
