class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.1/yolobox-darwin-arm64"
      sha256 "6025fa0eada9dccbc35e3c4b9bae708c42e9773ceac79bd77b69cb5e2d572c9f"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.1/yolobox-darwin-amd64"
      sha256 "fad935d3f81371f44e5b1074925227b9c69d8d050006bd75769b643eb0499593"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.1/yolobox-linux-arm64"
      sha256 "28c6cdec9d0cdf2b0b10efce6df484fa467ead98c6cc2fa6c88b949e4c01b136"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.1/yolobox-linux-amd64"
      sha256 "0c55044552f06b9bdaddb9be3a1a541ccd8063878c5334de8c1d779c4b36a852"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
