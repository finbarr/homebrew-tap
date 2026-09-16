# frozen_string_literal: true

# BoxHaven binary formula template for the finbarr/homebrew-tap tap.
#
# This file is a template: the release orchestrator replaces the
# placeholders below from a tagged release and its SHA256SUMS file,
# then commits the result to the tap as Formula/boxhaven.rb.
#
#   0.3.1              release version without the leading "v" (e.g. 0.3.0)
#   99c27b105bc97485edb85762be4ee0d1d4f7f013a509a46aa8a15e12a7b075f1  sha256 of bh_v0.3.1_darwin_amd64.tar.gz
#   877539fad5ff3f10d91fda1c3dd846e098a65d863dccfdd5e2570d599220f89b  sha256 of bh_v0.3.1_darwin_arm64.tar.gz
#   123ae6e352ebefc9ab057682ad0e51a9a218fcdac4b8f926fbbd76f00a5c096f   sha256 of bh_v0.3.1_linux_amd64.tar.gz
#   0677fd78ee31786fb0594b868e621df904ff03f5e5bd03785feff9f663dda63a   sha256 of bh_v0.3.1_linux_arm64.tar.gz
#
# See packaging/homebrew/README.md for the fill-in workflow.
class Boxhaven < Formula
  desc "Named remote Linux boxes for AI coding agents"
  homepage "https://github.com/finbarr/boxhaven"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v0.3.1/bh_v0.3.1_darwin_arm64.tar.gz"
      sha256 "877539fad5ff3f10d91fda1c3dd846e098a65d863dccfdd5e2570d599220f89b"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v0.3.1/bh_v0.3.1_darwin_amd64.tar.gz"
      sha256 "99c27b105bc97485edb85762be4ee0d1d4f7f013a509a46aa8a15e12a7b075f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v0.3.1/bh_v0.3.1_linux_arm64.tar.gz"
      sha256 "0677fd78ee31786fb0594b868e621df904ff03f5e5bd03785feff9f663dda63a"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v0.3.1/bh_v0.3.1_linux_amd64.tar.gz"
      sha256 "123ae6e352ebefc9ab057682ad0e51a9a218fcdac4b8f926fbbd76f00a5c096f"
    end
  end

  def install
    bin.install "bh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bh version")
  end
end
