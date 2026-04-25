class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.13.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.2/yolobox-darwin-arm64"
      sha256 "8275605c4ad35862042b1f19d3d14c58749805a5fe8700dcb4ab9ea2228e80b4"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.2/yolobox-darwin-amd64"
      sha256 "03a6ed292067b1126f805ca60067118505bdfc407656071e5435d428be5cb220"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.2/yolobox-linux-arm64"
      sha256 "1af33b3b898b40a037f640b74d01bc8b446c2ca68da676de3b5133ac2eccb019"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.2/yolobox-linux-amd64"
      sha256 "6eee0b0e771e0a61b313ca5bf27e39620940ea87aa16aefb9f5b128d3242226a"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
