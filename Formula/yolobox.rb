class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  url "https://github.com/finbarr/yolobox/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "4887644bb623ee22521477bc0b4c936ffa8140bb7c3c555d74ef029c8d2f5be8"
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
