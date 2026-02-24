class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.0/yolobox-darwin-arm64"
      sha256 "6c6dcdc8930c7ac479dbe5fc2e4efbde3e36531690e78f1f5e175a4a302050e7"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.0/yolobox-darwin-amd64"
      sha256 "7e54ed1d6bca9f54e0c334ba0c01c1a88bc0885b2b161f5cc581f3971123ccb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.0/yolobox-linux-arm64"
      sha256 "2d61c023d03ee9c5f47302072c856ec1434e41e477938b12ec802cd84ae5f752"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.0/yolobox-linux-amd64"
      sha256 "5de7fa8a9c161a22f4984ef03f0723d42eecdc59d5aee22752b8c6054e6bb4ef"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
