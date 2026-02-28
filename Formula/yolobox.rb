class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.3/yolobox-darwin-arm64"
      sha256 "2df41674196c04d168f32c9d16c665e1de2387f1a6a208925c0ba25cbb9deba4"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.3/yolobox-darwin-amd64"
      sha256 "6d5bf2fed8740c3223937513cd19ee324ce440ba3a36fa28f28d07ae2c9b478a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.3/yolobox-linux-arm64"
      sha256 "47b55529bdfab4784a638eb12f5c8f0181f3dc3eab0bafc37e76d319d981ea7d"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.8.3/yolobox-linux-amd64"
      sha256 "0a95f2fbab16a51b6619972bfd1137e3343f04c43fa22085439b08384058e026"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
