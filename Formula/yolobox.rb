class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.10.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.4/yolobox-darwin-arm64"
      sha256 "182192d4f7eec072eaf87992f2163328177d9743b028276fb5bbf7f81ce95707"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.4/yolobox-darwin-amd64"
      sha256 "e06aec8ad939ee4a188df680e3e8f4cbc0a4c6173c418c555f531c8c05659da2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.4/yolobox-linux-arm64"
      sha256 "1c13ae37d776c60512afde14f0e2df45041d96048b450d4b12346e73c298b584"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.4/yolobox-linux-amd64"
      sha256 "f4ae9431d8760bc97ac87d7b4ef93a4738c4e2606f04b8af6c50400755ac961a"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
