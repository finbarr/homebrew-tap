class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.4.0/yolobox-darwin-arm64"
      sha256 "4782363f491ef0f172ef1784dc139c0709efcb50fe848a9a213710f8789b6f64"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.4.0/yolobox-darwin-amd64"
      sha256 "07b7eb8e55abfe20d802f17fa8cae6b97e0d801d4313db927135fc6bf213ab84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.4.0/yolobox-linux-arm64"
      sha256 "9d3ab8680466bae7ae6de0006891a0947eaebc067f948400cb6ffa61223dd118"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.4.0/yolobox-linux-amd64"
      sha256 "4f1d0de7b995f92f38d0d9fda36fe2bbc59306b7b63dc1af2dbc7e80e1cab5cd"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
