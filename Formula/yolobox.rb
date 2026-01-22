class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  url "https://github.com/finbarr/yolobox/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "8be50ca6c52a5ec6a83bee136254e652ab15508d92f51f659407a4230ee0fc92"
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
