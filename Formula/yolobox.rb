class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.0/yolobox-darwin-arm64"
      sha256 "29bed62f293ff3fb8dbf5e2a14574dbb2a70772096c60db850814074c7508b0c"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.0/yolobox-darwin-amd64"
      sha256 "2ce4477caad2886107ccb1111e156c1d0ca576f6e40c53f4acccfa6e62090484"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.0/yolobox-linux-arm64"
      sha256 "d80d7aeec88944f21541cb266e90f7c464d2891db8afdc24f78bf7d9097accef"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.13.0/yolobox-linux-amd64"
      sha256 "390283f711b6d425090b49f9b57fea85b735129056ebbe726a09a8ec18c07bd4"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
