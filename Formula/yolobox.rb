class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  url "https://github.com/finbarr/yolobox/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "0d04ef2f608441f468961d9c16c6fae59b01c8ed69cad27eb0a064866e219275"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
