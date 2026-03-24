class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.10.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.5/yolobox-darwin-arm64"
      sha256 "0d01913baf946e39602905561b86bd443ee8ae046ce5346ffcf6f8868fdb5645"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.5/yolobox-darwin-amd64"
      sha256 "4d1afe85d49deeb747c995c09a7f849d6af5e16ebbcd9b4d899978952273b1d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.5/yolobox-linux-arm64"
      sha256 "c923e07e820af8ac92ec00978cb451769f49cdbc5dadf9857178dc97c3b71938"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.5/yolobox-linux-amd64"
      sha256 "ecca7927098397635ba6fef0950e4cdc537ec52346e3a85ba394af07193306a2"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
