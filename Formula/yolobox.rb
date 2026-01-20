class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  url "https://github.com/finbarr/yolobox/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "8c1c7d01d33d5090bd6c7a7aa228ed9079aceeff854b34f9821577524b4f6325"
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
