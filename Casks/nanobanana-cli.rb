cask "nanobanana-cli" do
  version "0.2.3"
  license "MIT"

  on_arm do
    sha256 "b0b19ebfde52723b5b5cd7bd4615ed2acb41df506f8c986f6b4867928ca296c8"
    url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.3/nanobanana-darwin-arm64.tar.gz"
  end
  on_intel do
    sha256 "0df9a67edac54c030040d3ce87c756b45a11ca86e99b8d4bb9b16f8444eb5044"
    url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.3/nanobanana-darwin-amd64.tar.gz"
  end

  name "nanobanana-cli"
  desc "Generate and edit images with Gemini from the command line"
  homepage "https://github.com/finbarr/nanobanana-cli"

  binary "nanobanana"
end
