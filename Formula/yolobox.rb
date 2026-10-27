class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.12/yolobox-darwin-arm64"
      sha256 "0665aae0a289b3c2c8d5e547610993cc438796999c8156ca260496861004d4d1"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.12/yolobox-darwin-amd64"
      sha256 "080a6ba81912f79c589fe084847cd356b0f61e987e35e835870b3703a2a48a06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.12/yolobox-linux-arm64"
      sha256 "327430822f207d27c38c856bfed742feedd5d10554d5a44578b34ae3cf1ca541"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.12/yolobox-linux-amd64"
      sha256 "733682ffa662a908dc89790f04e5fce96227562b8b2a9bbd12469b708989278b"
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
