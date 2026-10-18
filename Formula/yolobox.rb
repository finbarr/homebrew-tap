class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.9/yolobox-darwin-arm64"
      sha256 "cb7c87587eefb176202af30df0cfc0694553866a621ef508fb2222e9610be512"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.9/yolobox-darwin-amd64"
      sha256 "d7c295f20340f28b8ef15bc38ef795ed1af50a31127978fc64948701318073a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.9/yolobox-linux-arm64"
      sha256 "f4d4383bd902691ced1a650808df309a6408a5e3467dcaa2f525a9ebebec883d"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.9/yolobox-linux-amd64"
      sha256 "0e90425c5336f2b1c4a678a19bc058fb2c7fa937743c8e9b3e38dafdbb29d390"
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
