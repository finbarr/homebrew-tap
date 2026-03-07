class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.1/yolobox-darwin-arm64"
      sha256 "c58d6e0f51eabe4de3c0dc2e0926036c0456bcc24393e6cbb9543774f8da0be9"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.1/yolobox-darwin-amd64"
      sha256 "a16959767d5e19a78d6d7da57605eef136e13ec0670adbec05746393ee097fc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.1/yolobox-linux-arm64"
      sha256 "1fdb2bca89bbc98fd2ca238f453b20a18c8a7b2f4d0a7869fd8bc029e8a9b9a8"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.1/yolobox-linux-amd64"
      sha256 "6de94960bbc33d2355689c175c90b74bd3ae040b8bf497ae7cc9c19f60e61bac"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
