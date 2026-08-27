class Yolobox < Formula
  desc "Run AI coding agents in a sandboxed container"
  homepage "https://github.com/finbarr/yolobox"
  version "0.19.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.3/yolobox-darwin-arm64"
      sha256 "727089cb73faa694556a8f4100aba75d6c3aed8536387281ae64f494976e42fb"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.3/yolobox-darwin-amd64"
      sha256 "3cad1eb7c70ebab69aad8bd14dcc9b4c7540a560ee7594b67d753e4d377c6759"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.3/yolobox-linux-arm64"
      sha256 "ca29e660e356022d43abe0da36efc87bb43a3a26d3363dbc4a4b82b2cce65116"
    end
    on_intel do
      url "https://github.com/finbarr/yolobox/releases/download/v0.19.3/yolobox-linux-amd64"
      sha256 "4a5c9b00a9f1e85caf022027021be96b9511f2373d606529448d2df1f10e5a55"
    end
  end

  def install
    bin.install Dir["yolobox-*"].first => "yolobox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yolobox version")
  end
end
