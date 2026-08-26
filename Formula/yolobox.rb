class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.2/yolobox-darwin-arm64"
      sha256 "154de57ada02939fa7b580e157f440d851b4a0f0dd3fdcab6c164a3875a85fb1"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.2/yolobox-darwin-amd64"
      sha256 "d9036f348cce1e552f38f3a581cb5acb33038a2de176c9de6a13d906cc3a0c4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.2/yolobox-linux-arm64"
      sha256 "391c25b26a688be7271370e9694eec01182d618588b53be8350a352d5326ce51"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.2/yolobox-linux-amd64"
      sha256 "44d4d1be45dd63d3acb7b5c2abc5a66aac62823242af34552b12449cbfd0cb9c"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
