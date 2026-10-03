# frozen_string_literal: true

# BoxHaven binary formula template for the finbarr/homebrew-tap tap.
#
# This file is a template: the release orchestrator replaces the
# placeholders below from a tagged release and its SHA256SUMS file,
# then commits the result to the tap as Formula/boxhaven.rb.
#
#   0.5.1              release version without the leading "v" (e.g. 0.3.0)
#   5efb40d21a144f5dbcb9e25a893460f2fd4f1cb5abd116b3ff8b499432cb4536  sha256 of bh_v0.5.1_darwin_amd64.tar.gz
#   a5686a26309643723fe7e930fad89a5aa32b9e733c7cf882244cf0910ffd9f83  sha256 of bh_v0.5.1_darwin_arm64.tar.gz
#   f5d2133cd670116a321757debf1b4e06a82cb671159edb53f934686077fc9179   sha256 of bh_v0.5.1_linux_amd64.tar.gz
#   17bf1cb45a45baf9993d34e682eab2363481000d8e8bfad063cd696c87827358   sha256 of bh_v0.5.1_linux_arm64.tar.gz
#
# See packaging/homebrew/README.md for the fill-in workflow.
class Boxhaven < Formula
  desc "Named remote Linux boxes for AI coding agents"
  homepage "https://github.com/finbarr/boxhaven"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v0.5.1/bh_v0.5.1_darwin_arm64.tar.gz"
      sha256 "a5686a26309643723fe7e930fad89a5aa32b9e733c7cf882244cf0910ffd9f83"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v0.5.1/bh_v0.5.1_darwin_amd64.tar.gz"
      sha256 "5efb40d21a144f5dbcb9e25a893460f2fd4f1cb5abd116b3ff8b499432cb4536"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v0.5.1/bh_v0.5.1_linux_arm64.tar.gz"
      sha256 "17bf1cb45a45baf9993d34e682eab2363481000d8e8bfad063cd696c87827358"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v0.5.1/bh_v0.5.1_linux_amd64.tar.gz"
      sha256 "f5d2133cd670116a321757debf1b4e06a82cb671159edb53f934686077fc9179"
    end
  end

  def install
    bin.install "bh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bh version")
  end
end
