cask "nanobanana-cli" do
  version "0.2.4"

  on_arm do
    sha256 "03e86cfe0bf3b6596a88fb6aedb7ddea672ce15b4375d87d3f4aa44e75314d12"
    url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.4/nanobanana-darwin-arm64.tar.gz"
  end
  on_intel do
    sha256 "e09626221dd7daf2b56c7485392e7801cda7b6c60257ec15cf0228a1cf0c5524"
    url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.4/nanobanana-darwin-amd64.tar.gz"
  end

  name "nanobanana-cli"
  desc "Generate and edit images with Gemini from the command-line"
  homepage "https://github.com/finbarr/nanobanana-cli"

  binary "nanobanana"
end
