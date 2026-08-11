# frozen_string_literal: true

# BoxHaven binary formula template for the finbarr/homebrew-tap tap.
#
# This file is a template: the release orchestrator replaces the
# placeholders below from a tagged release and its SHA256SUMS file,
# then commits the result to the tap as Formula/boxhaven.rb.
#
#   0.2.0              release version without the leading "v" (e.g. 0.3.0)
#   dde61deebaee76101bcce28845a85c4800dfb762771d875c88b5a203799fc51a  sha256 of bh_v0.2.0_darwin_amd64.tar.gz
#   75bc3611fee260222a9e1830c792ba6e18545b1b2ca54ba3bc8435411344db3f  sha256 of bh_v0.2.0_darwin_arm64.tar.gz
#   ae61c8805ef0d0acbef5f9882baf2247ee46db085bf81781beaac5963c343c91   sha256 of bh_v0.2.0_linux_amd64.tar.gz
#   e980df20873533ccdaecf42670de2932ef79c745437fe0efe9e4d5f441d571b2   sha256 of bh_v0.2.0_linux_arm64.tar.gz
#
# See packaging/homebrew/README.md for the fill-in workflow.
class Boxhaven < Formula
  desc "Named remote Linux boxes for AI coding agents"
  homepage "https://github.com/finbarr/boxhaven"
  version "0.2.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v#{version}/bh_v#{version}_darwin_arm64.tar.gz"
      sha256 "75bc3611fee260222a9e1830c792ba6e18545b1b2ca54ba3bc8435411344db3f"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v#{version}/bh_v#{version}_darwin_amd64.tar.gz"
      sha256 "dde61deebaee76101bcce28845a85c4800dfb762771d875c88b5a203799fc51a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v#{version}/bh_v#{version}_linux_arm64.tar.gz"
      sha256 "e980df20873533ccdaecf42670de2932ef79c745437fe0efe9e4d5f441d571b2"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v#{version}/bh_v#{version}_linux_amd64.tar.gz"
      sha256 "ae61c8805ef0d0acbef5f9882baf2247ee46db085bf81781beaac5963c343c91"
    end
  end

  def install
    bin.install "bh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bh version")
  end
end
