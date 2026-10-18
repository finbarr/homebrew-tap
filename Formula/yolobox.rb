class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.8/yolobox-darwin-arm64"
      sha256 "f54dbf1fa2b74297bef7f83210d99f889fc0e65ee24eb074b6b88e06bc8739e0"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.8/yolobox-darwin-amd64"
      sha256 "e6fb713896b5985feebeaee1d16ee3968ee477a58d3afb3b3501b2bac1e7f3db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.8/yolobox-linux-arm64"
      sha256 "8c6ff9d508153292a2379cb16d5908bc97d6b2d588f7d538a6a45bc972f20841"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.8/yolobox-linux-amd64"
      sha256 "fbad004b4384014ac944db1123d3395a8954bfc914367ee4f04b6e8d06677d7c"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
    chmod 0755, bin/"yolobox"
    generate_completions_from_executable(bin/"yolobox", "completion", shells: [:bash, :zsh])
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
    assert_match "complete -F _yolobox yolobox", shell_output("#{bin}/yolobox completion bash")
  end
end
