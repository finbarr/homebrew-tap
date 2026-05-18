class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.0/yolobox-darwin-arm64"
      sha256 "2525d0246a137fe0c7e5119e63a8d6274bb527f91375fc22fe3bf8e3e48e80fc"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.0/yolobox-darwin-amd64"
      sha256 "9fed858dc1fff2feac14a454977fa6488f44b0121194cc1da1942c699a488e8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.0/yolobox-linux-arm64"
      sha256 "3f7741d4f688aa8de09f82fd2dc89f950427dfbf2e450a52618a839285f2cff5"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.18.0/yolobox-linux-amd64"
      sha256 "5462320741a4299f0c388c402fb73c0a984d07fa009ff9d25d64d75f4b1382e0"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
