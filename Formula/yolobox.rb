class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.12.1/yolobox-darwin-arm64"
      sha256 "c59f1643d7951030d694a287ef67ac9fd209dcebd2c60bddc40a26b28d5ebc7f"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.12.1/yolobox-darwin-amd64"
      sha256 "652112ebf0a0fa8ea9540ea1de57b1ee29bee9a71e3bbe7be45ff3c740b1cb9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.12.1/yolobox-linux-arm64"
      sha256 "31b5a8c7734e0772e0b42c493537833fa8c348283431790e438c62448cb22f56"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.12.1/yolobox-linux-amd64"
      sha256 "28dd84a4dabf52856c9784a2724021676978a87feb1b5ff3acf86946b6106b43"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
