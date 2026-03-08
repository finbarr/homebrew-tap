class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.2/yolobox-darwin-arm64"
      sha256 "c0cecde1090030be85e67d090815c78fc05b1553f9ff55b7e453e03c4bc66890"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.2/yolobox-darwin-amd64"
      sha256 "bd9a150d50316b48c9071d260b6fbed535079cfc549325a0fbba8c5c26754c63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.2/yolobox-linux-arm64"
      sha256 "284e57bacc8378afc4fcbc8669ec92f3effe3af3e13d12b5bd5350a9b2bb4eb8"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.9.2/yolobox-linux-amd64"
      sha256 "e00f3f5468c7ae916dfad6b394e422ed310f6e86d5a483859e38edc3f511fa6e"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
