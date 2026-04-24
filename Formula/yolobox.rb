class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.1/yolobox-darwin-arm64"
      sha256 "dda62074f166474f553bfa0da565ec69cf504b8c765800eb9b549b674344ce47"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.1/yolobox-darwin-amd64"
      sha256 "817fc137ad92f1d90076a926b5913dd4abaf067baf73ba6f6294c7bbcc3b3c9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.1/yolobox-linux-arm64"
      sha256 "b787c9c552448e85fba454d384e690818c05c4242a94e5d46ddac7d8c4ec9ce9"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.1/yolobox-linux-amd64"
      sha256 "6d7ecabb3b1de2ee719d9f9a5e30320991e5d695d956bf3b4b9cf85904245cdf"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
