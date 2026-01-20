class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  url "https://github.com/finbarr/yolobox/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "d0b943c5009a9b56f67333a70378fdcc88bcf5a07b79bdb07588d8236c807f02"
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
