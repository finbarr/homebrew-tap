# frozen_string_literal: true

# BoxHaven binary formula template for the finbarr/homebrew-tap tap.
#
# This file is a template: the release orchestrator replaces the
# placeholders below from a tagged release and its SHA256SUMS file,
# then commits the result to the tap as Formula/boxhaven.rb.
#
#   0.1.0              release version without the leading "v" (e.g. 0.3.0)
#   be85928620224663bebd6b282268832fbf53c3088d14c43298d23e7ffff45ad4  sha256 of bh_v0.1.0_darwin_amd64.tar.gz
#   4c87cba9d7bac770bfe9dd3cf4990f818111b53742f47991a321a94e9297d25e  sha256 of bh_v0.1.0_darwin_arm64.tar.gz
#   0bca0ee5e6d1a6d5a06603af6fd14025dacdb6a4820c6a31e4d0fc0b30a70c43   sha256 of bh_v0.1.0_linux_amd64.tar.gz
#   b05e9b976855f439e79c1a003cea3ccd1715339795fc5713887e9e0e6f6299d7   sha256 of bh_v0.1.0_linux_arm64.tar.gz
#
# See packaging/homebrew/README.md for the fill-in workflow.
class Boxhaven < Formula
  desc "Named remote Linux boxes for AI coding agents"
  homepage "https://github.com/finbarr/boxhaven"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v#{version}/bh_v#{version}_darwin_arm64.tar.gz"
      sha256 "4c87cba9d7bac770bfe9dd3cf4990f818111b53742f47991a321a94e9297d25e"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v#{version}/bh_v#{version}_darwin_amd64.tar.gz"
      sha256 "be85928620224663bebd6b282268832fbf53c3088d14c43298d23e7ffff45ad4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v#{version}/bh_v#{version}_linux_arm64.tar.gz"
      sha256 "b05e9b976855f439e79c1a003cea3ccd1715339795fc5713887e9e0e6f6299d7"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v#{version}/bh_v#{version}_linux_amd64.tar.gz"
      sha256 "0bca0ee5e6d1a6d5a06603af6fd14025dacdb6a4820c6a31e4d0fc0b30a70c43"
    end
  end

  def install
    bin.install "bh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bh version")
  end
end
