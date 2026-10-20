class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.10/yolobox-darwin-arm64"
      sha256 "f2379c24ceb0f0acea0ea71537f73857f1ad6e188731c034e660478bf0956452"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.10/yolobox-darwin-amd64"
      sha256 "41153f9fa83f4864919cbe1e77c11b78971175d1327bc9c28df31915e967d555"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.10/yolobox-linux-arm64"
      sha256 "b5f941769a7a7863ba00010fb3307ce4aa595a36232903b9dde2e9a0762bbf30"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.10/yolobox-linux-amd64"
      sha256 "6199223c843a3857b6662cb76c99daf93fb304aaa9fa92e5ee47466dca1a36ef"
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
