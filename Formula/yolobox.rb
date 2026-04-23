class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.12.0/yolobox-darwin-arm64"
      sha256 "8cc4fb2cce4265b5e1fe0df1f50cf011b4810ef34de14d6f1628b1181307915c"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.12.0/yolobox-darwin-amd64"
      sha256 "c1b444d7b9436fba11e487bde656012d940aafa25f4c3ebd31e91c259869f191"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.12.0/yolobox-linux-arm64"
      sha256 "7cff6131948e177b2e051530e88c4c5299b06a703b7a6e0fc4bb0d66df75daf0"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.12.0/yolobox-linux-amd64"
      sha256 "19206de7cdea66c4995569895ee7d8b5f3796babd43f82c34b3aae1407f07c7b"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
