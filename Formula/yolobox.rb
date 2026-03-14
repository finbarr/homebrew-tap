class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.0/yolobox-darwin-arm64"
      sha256 "2a6855aa4fd7f74999d12505331e70ab6a6f558c8908144514b84a1b6b655f25"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.0/yolobox-darwin-amd64"
      sha256 "6179ab050a021a2bc7e01ed09a0cdd5ad785aa7f759c34137289fca4fde6303c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.0/yolobox-linux-arm64"
      sha256 "31afdf2a1a125b8b68c698c36b6d32ba0b963db93556573404ed218d21d6604c"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.0/yolobox-linux-amd64"
      sha256 "d4ed869a9022d52a7ebce0793775b3aa4cc1072ca638c29a6a8f8cabf6208346"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
