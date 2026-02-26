cask "nanobanana-cli" do
  version "0.3.0"

  on_arm do
    sha256 "ee10754348cd5314fe8ffdf410d001f0bdaf74cc6e9a7c8b6b8207f89fc8ac9f"
    url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.3.0/nanobanana-darwin-arm64.tar.gz"
  end
  on_intel do
    sha256 "0b63f6e3c0db7f5430e077230ac017448aa6463250f93375ef1a6ddfcd32877d"
    url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.3.0/nanobanana-darwin-amd64.tar.gz"
  end

  name "nanobanana-cli"
  desc "Generate and edit images with Gemini from the command-line"
  homepage "https://github.com/finbarr/nanobanana-cli"

  binary "nanobanana"
end
