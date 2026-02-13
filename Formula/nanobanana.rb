class Nanobanana < Formula
  desc "Generate and edit images with Gemini from the command line"
  homepage "https://github.com/finbarr/nanobanana-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.1/nanobanana-darwin-arm64"
      sha256 "60b6ac101d22279fc99f183112b0cd048fccf729f275bac069945f8ae709f924"
    end
    on_intel do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.1/nanobanana-darwin-amd64"
      sha256 "a144b01b4a3b9fbe56b2689cd0f131f023e15b781e650a55297d8a0b24434181"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.1/nanobanana-linux-arm64"
      sha256 "408288f56ce6bd4ffd514740a4129c3a0bed487d49eb41bcddd903c54f4e2183"
    end
    on_intel do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.1/nanobanana-linux-amd64"
      sha256 "f8fb9d852de0758b01d333749a6cb6dbbc8f859f9e235f85ff8dd826e41d2053"
    end
  end

  def install
    bin.install Dir["nanobanana-*"].first => "nanobanana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanobanana version")
  end
end
