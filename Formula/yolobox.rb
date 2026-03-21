class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.2/yolobox-darwin-arm64"
      sha256 "8519b4233072a524298cb25fa59b670fc906fd0fb7142a7e483c6cf39a3c40bb"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.2/yolobox-darwin-amd64"
      sha256 "5eeed62f74f0987c9d805b84b443fa2b5d0f759a58b36ac085a838c86d75e993"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.2/yolobox-linux-arm64"
      sha256 "61fa7d249582f8e2ce53b83b6078fc2c2deada192ad66625af5f89de7c473840"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.2/yolobox-linux-amd64"
      sha256 "7fa24c31fda8ac82c8f295c3a29709eefcaef284b02e61dcd1eb7cc87230bc52"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
