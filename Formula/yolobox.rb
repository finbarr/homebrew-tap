class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.2/yolobox-darwin-arm64"
      sha256 "82b74675778cd23a22b9de6dc88bba5156e1fde663c04a9258ee97195c5c87ff"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.2/yolobox-darwin-amd64"
      sha256 "e51ae46a2fc478b699045d488fc73e59a4ea47765acbda22d137459e225746d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.2/yolobox-linux-arm64"
      sha256 "b7f37add46bd60104c01b49beaf11f623d9e3eb931455d70d34d075266f78575"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.7.2/yolobox-linux-amd64"
      sha256 "ddf94fc4dd917d8293964d6a448f98b3a1098350d506fe72cc8802ce0c680aa7"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
