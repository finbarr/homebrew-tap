class Nanobanana < Formula
  desc "Generate and edit images with Gemini from the command line"
  homepage "https://github.com/finbarr/nanobanana-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.1.1/nanobanana-darwin-arm64"
      sha256 "cdfabfd85cb66eed6254067ef5c9907796df397acadb806bd2a1170c5ccbd9c7"
    end
    on_intel do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.1.1/nanobanana-darwin-amd64"
      sha256 "18f2775a737639c714a31f29e6fc803f0209181c2cceffaf029101ff7adf6f4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.1.1/nanobanana-linux-arm64"
      sha256 "164dcc517592d799cb9c12e58c41995126f71712852646f91e8a05ad3ced2912"
    end
    on_intel do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.1.1/nanobanana-linux-amd64"
      sha256 "688554c76089ffd3bc6f06749ce807d880fbc749ed966ce84a77e903448b10fb"
    end
  end

  def install
    bin.install Dir["nanobanana-*"].first => "nanobanana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanobanana version")
  end
end
