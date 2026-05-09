class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.16.0/yolobox-darwin-arm64"
      sha256 "9356d7bdc0bc0877a54995e1c56618f1afb76771831c095f39ac87400c9f8097"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.16.0/yolobox-darwin-amd64"
      sha256 "4bc23d2b498085bb350fadc99fe27411222535e741356e7017e0fb25c6df07f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.16.0/yolobox-linux-arm64"
      sha256 "f00adda0821a6ec60d0e62a997672ccce3fbefca669cf1a6dc8f1094408c2151"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.16.0/yolobox-linux-amd64"
      sha256 "8a53659e42dc542d9122264229659cadc64bc00821923a22541c172396039433"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
