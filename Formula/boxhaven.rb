# frozen_string_literal: true

# BoxHaven binary formula template for the finbarr/homebrew-tap tap.
#
# This file is a template: the release orchestrator replaces the
# placeholders below from a tagged release and its SHA256SUMS file,
# then commits the result to the tap as Formula/boxhaven.rb.
#
#   0.6.0              release version without the leading "v" (e.g. 0.3.0)
#   466f6f1d715bca643e994da76df4382445f7677647e70b54ab5477817ade6ad9  sha256 of bh_v0.6.0_darwin_amd64.tar.gz
#   ac95e9e4efdc08f59c77b4ac08e8b09c888b72ab9941d2cc65cc21bc5aa77a2a  sha256 of bh_v0.6.0_darwin_arm64.tar.gz
#   c741024cee884c827c8946616dacc2e29a9d2d13e206cbc8862fbe27c6e5f5d3   sha256 of bh_v0.6.0_linux_amd64.tar.gz
#   7504ca7fbed526204aea550ee045e1a83032a39069f9c99e522abd0fb32104fe   sha256 of bh_v0.6.0_linux_arm64.tar.gz
#
# See packaging/homebrew/README.md for the fill-in workflow.
class Boxhaven < Formula
  desc "Named remote Linux boxes for AI coding agents"
  homepage "https://github.com/finbarr/boxhaven"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v0.6.0/bh_v0.6.0_darwin_arm64.tar.gz"
      sha256 "ac95e9e4efdc08f59c77b4ac08e8b09c888b72ab9941d2cc65cc21bc5aa77a2a"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v0.6.0/bh_v0.6.0_darwin_amd64.tar.gz"
      sha256 "466f6f1d715bca643e994da76df4382445f7677647e70b54ab5477817ade6ad9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v0.6.0/bh_v0.6.0_linux_arm64.tar.gz"
      sha256 "7504ca7fbed526204aea550ee045e1a83032a39069f9c99e522abd0fb32104fe"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v0.6.0/bh_v0.6.0_linux_amd64.tar.gz"
      sha256 "c741024cee884c827c8946616dacc2e29a9d2d13e206cbc8862fbe27c6e5f5d3"
    end
  end

  def install
    bin.install "bh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bh version")
  end
end
