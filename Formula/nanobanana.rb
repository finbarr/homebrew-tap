class Nanobanana < Formula
  desc "Generate and edit images with Gemini from the command line"
  homepage "https://github.com/finbarr/nanobanana-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.0/nanobanana-darwin-arm64"
      sha256 "e1f1168c1da534dda8160eeef8615b986e149e66675f824a1eaff12f43b12035"
    end
    on_intel do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.0/nanobanana-darwin-amd64"
      sha256 "4138a077a6bf5b0cd3594ab574b4a7ca8c4af2f68811b62e8df78519f7f137a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.0/nanobanana-linux-arm64"
      sha256 "9b3f21071708f5713971bed7ad3386b63acfc3718d91da99a10c5421de3dca88"
    end
    on_intel do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.0/nanobanana-linux-amd64"
      sha256 "24b9f4cbe8bdb10848b031e67fd17452de47959e779e59823daca765c7eb5ca3"
    end
  end

  def install
    bin.install Dir["nanobanana-*"].first => "nanobanana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanobanana version")
  end
end
