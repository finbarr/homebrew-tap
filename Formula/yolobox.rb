class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.3/yolobox-darwin-arm64"
      sha256 "2ab9f661f634041a85b5b4da6bc51680e91e3ef28e82cb1140e9a1b06c210511"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.3/yolobox-darwin-amd64"
      sha256 "7f4eda5de66b4c4b1d767a04b35133b0a106b7826bb154899a03153694e69774"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.3/yolobox-linux-arm64"
      sha256 "7cc8433cf5909d892ddce48a3a4abd4525fad18a2be2436e9747dc26ec0be6ea"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.10.3/yolobox-linux-amd64"
      sha256 "e8ff4e89c6f3487f287e0614039f0856692224eb323680d0d65a9707d397dfbd"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
