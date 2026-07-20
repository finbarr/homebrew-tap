class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.18.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.5/yolobox-darwin-arm64"
      sha256 "26fb66d245fc1abad55d28d824e2d8740f562f5457efa42c9a4ecb132122f873"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.5/yolobox-darwin-amd64"
      sha256 "d8bd0e3e7de79614a2b2cd3eeb96d836872065a8aa2bf7a7af459cf2bec7ad92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.5/yolobox-linux-arm64"
      sha256 "fd6a1d1e25bda81b67a59e88942cd0e428142c0ccfbc53da446eb9cb46460d90"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.5/yolobox-linux-amd64"
      sha256 "a0c2c8511b87c4d4392c51f8e2ca68e58508ea3fd628b78614f51cebb13186b9"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
