class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.14.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.2/yolobox-darwin-arm64"
      sha256 "fda44562ffb3963d0e19b222e507b9f0473adc1bedf108dcd05152d48b28f51c"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.2/yolobox-darwin-amd64"
      sha256 "9a69df0cf0db96d49e8e0e9d819a949de57946d225aca8546c2daecfaf68c9c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.2/yolobox-linux-arm64"
      sha256 "9294d8b77629a89179a525792f5b0fb3565d87a202c0fde0a4abe1ef12b7d916"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.14.2/yolobox-linux-amd64"
      sha256 "b5bc9b4f403a3d313b02ca5e7716c4a4087120ffde618b077a8793737a0a11cc"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
