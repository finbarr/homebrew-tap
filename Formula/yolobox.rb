class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.0/yolobox-darwin-arm64"
      sha256 "d536232c05fc020144955bf6230709747e82565870deb5f50ee4ff25585fa210"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.0/yolobox-darwin-amd64"
      sha256 "15efa4f72ad3cbd17ccb7c7b814d172961ef3bf0e791d3525874eee05b2ef21d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.0/yolobox-linux-arm64"
      sha256 "6316a1b19bd87e124ac2ac6695c1cd5f09d11a7ded627a15b976f5c6022eda51"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.0/yolobox-linux-amd64"
      sha256 "d6ff3aeb120051b1f7fc5946cf87b00d0d655922defe39ab8f5277928c72d4ff"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
