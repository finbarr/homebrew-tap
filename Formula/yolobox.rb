class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.5.1/yolobox-darwin-arm64"
      sha256 "b5cff6f4cff4cd694ec857d0cc11131ee0d5902c8d75b5de2766ebb9cb3c474d"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.5.1/yolobox-darwin-amd64"
      sha256 "970cddca90dd0629692a74ec36c1e62671dee1f80238d8b76baccf9c60e5830b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.5.1/yolobox-linux-arm64"
      sha256 "b909d09cf3778387508e03041e5e6886d0850bbe94a378436b85fa92c922a9f5"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.5.1/yolobox-linux-amd64"
      sha256 "8012fdccf76b0a51cd8212f1c06868848cea67f6054f2dee995e54c322c5c8de"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
