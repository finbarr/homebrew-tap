class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.0/yolobox-darwin-arm64"
      sha256 "c14bbc03e776752140e66887d6445774f0d8fd99df156031e7b399207218ad99"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.0/yolobox-darwin-amd64"
      sha256 "2762f2387035d1667572f5cbb254f5490817e5e0c782f862d4cbd019ff1fbf9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.0/yolobox-linux-arm64"
      sha256 "66cd28fd6d8ce5f03bc9632da268675378ba2960d26b36501efbfc52ae2c945c"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.0/yolobox-linux-amd64"
      sha256 "2143f08e89436172ec6c2c1df923c12638720ce0d9c650cba569f2afc24216f0"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
