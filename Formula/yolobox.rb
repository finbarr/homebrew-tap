class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.0/yolobox-darwin-arm64"
      sha256 "f9b183c2851191e786b98b04e7c2599f2d8566e48ea54805445cf45561a3b5dc"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.0/yolobox-darwin-amd64"
      sha256 "4ad6b8d195acf0276b8a8e73f3b8c66af91d43c0d748531571126870d7cf3362"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.0/yolobox-linux-arm64"
      sha256 "f88a7c12f712f91783b64fe6bfae18f5476ff7d6259ccd3c56649216b92473f4"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.0/yolobox-linux-amd64"
      sha256 "d56e3b5e4241b7b295a7e638e5d5c00127df296020aef9826271d7144766bb18"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
