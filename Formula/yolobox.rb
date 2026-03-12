class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.3/yolobox-darwin-arm64"
      sha256 "f2b56b32fe9c6033376dc0fa284bac20b6dca6fc54602cb17f946f74bba6ffae"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.3/yolobox-darwin-amd64"
      sha256 "d24b581bad0d6c40b852caa417c531a513195b4992572893a2bfb4088545936a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.3/yolobox-linux-arm64"
      sha256 "aad885dc02de362937e8fcbf0682753721cb315a27c145dcf9361fe7a8aecd4a"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.3/yolobox-linux-amd64"
      sha256 "48e97e0ed090908f4f571dd244693c1a8406eb6190240acd99f2aa7ea4ab4b43"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
