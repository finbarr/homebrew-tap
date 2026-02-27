cask "nanobanana-cli" do
  version "0.4.0"

  on_arm do
    sha256 "308ee97894ebd42cc3adbd5f80b0e28ad73afc2e5609444f6bc7ca796748f3c8"
    url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.4.0/nanobanana-darwin-arm64.tar.gz"
  end
  on_intel do
    sha256 "6ab9e215131ea512adc3748771791eccd3fdf3d92f3d596dc42a40fd6647689c"
    url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.4.0/nanobanana-darwin-amd64.tar.gz"
  end

  name "nanobanana-cli"
  desc "Generate and edit images with Gemini from the command-line"
  homepage "https://github.com/finbarr/nanobanana-cli"

  binary "nanobanana"
end
