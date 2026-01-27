class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.5.0/yolobox-darwin-arm64"
      sha256 "1201e1ec9af54f8b1eb7ec6e6f1c96bf3ea39076f8ee8200cdea267dba2b0700"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.5.0/yolobox-darwin-amd64"
      sha256 "d4f94ec5d1f520732295834bb6185e3f943a17d35f9db5d9bac7a82ac17b54d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.5.0/yolobox-linux-arm64"
      sha256 "e287f69c97791b069e3a7ea0a622ed287f3e9b44887f58366160c758a060642f"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.5.0/yolobox-linux-amd64"
      sha256 "1ccac7ac3edd3bd448f4c422c6826e70d0f6fd2c50e24af072bf76ce1379de23"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
