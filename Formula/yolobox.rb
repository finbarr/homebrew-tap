class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.7/yolobox-darwin-arm64"
      sha256 "b50dce487639bf433e70f79c00c307ceb5d4e2780313e33dd375534a5b112810"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.7/yolobox-darwin-amd64"
      sha256 "42101c08d93ac1bce014eee7ec4bc3544b6cea8717262e4edfb1beb8c948a52f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.7/yolobox-linux-arm64"
      sha256 "2ae2e912f6367a0544688db4b825b5b6640742c93edb4b72a67a5827d47f142e"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.7/yolobox-linux-amd64"
      sha256 "d6b2d157c550c68e470eb6bb1ebd5c88cd9770f74c7786b3040e2b9166c309ce"
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
