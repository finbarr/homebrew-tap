class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.11/yolobox-darwin-arm64"
      sha256 "7c5a8d100c01926b4497e15f0e87f0d945087a14df43d7d2ca1f9b2e3851e901"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.11/yolobox-darwin-amd64"
      sha256 "c725f27c6e166ef5b32582e2989e30611d935ebabc1340139141e0b80cea9cea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.11/yolobox-linux-arm64"
      sha256 "7d379a7eb2192ca88e33a95ec5cc8cd6bded074c80fe05563a15b38848b35498"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.11/yolobox-linux-amd64"
      sha256 "2eab08164cd46e9f876b4a69ab1a397244bfe1f4c6ac7999074cd7ec66a181fc"
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
