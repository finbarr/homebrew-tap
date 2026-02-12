class Nanobanana < Formula
  desc "Generate and edit images with Gemini from the command line"
  homepage "https://github.com/finbarr/nanobanana-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.1.0/nanobanana-darwin-arm64"
      sha256 "b4281ecfcf45479b87dab37ba0a82649c570441afa10b87ab967c987a2ef6fd9"
    end
    on_intel do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.1.0/nanobanana-darwin-amd64"
      sha256 "3e235d29adfb80fb10c85573d9f7fc3a9243d1ac4d4732746b8395284a56c7e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.1.0/nanobanana-linux-arm64"
      sha256 "4144f8bb1b629299e3e3e3c9a0ef003150ee5cd11af2a2988155c2365bce640f"
    end
    on_intel do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.1.0/nanobanana-linux-amd64"
      sha256 "d4eb22c08b31d7b539d2bd039a3c36ee9a377544413f6621eb81a1d8040e922e"
    end
  end

  def install
    bin.install Dir["nanobanana-*"].first => "nanobanana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanobanana version")
  end
end
