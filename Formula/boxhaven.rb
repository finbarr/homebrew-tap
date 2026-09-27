# frozen_string_literal: true

# BoxHaven binary formula template for the finbarr/homebrew-tap tap.
#
# This file is a template: the release orchestrator replaces the
# placeholders below from a tagged release and its SHA256SUMS file,
# then commits the result to the tap as Formula/boxhaven.rb.
#
#   0.4.0              release version without the leading "v" (e.g. 0.3.0)
#   25b3c34c979676b0085e79c38fc1c8c74056f1130442dfb0f06b8c89e3031e71  sha256 of bh_v0.4.0_darwin_amd64.tar.gz
#   af94f8fb17bf799ef4c0479789983c3846c2afebc1a19b2e32218f5421562d58  sha256 of bh_v0.4.0_darwin_arm64.tar.gz
#   f967b3cb7257a42d51930dc0c61c5f6254fd15894172396252f5602cb20d1a3a   sha256 of bh_v0.4.0_linux_amd64.tar.gz
#   f6ace34cbda3786a63ba7acd19b897ff72a7091b986eac592851bcc5a25d6c1f   sha256 of bh_v0.4.0_linux_arm64.tar.gz
#
# See packaging/homebrew/README.md for the fill-in workflow.
class Boxhaven < Formula
  desc "Named remote Linux boxes for AI coding agents"
  homepage "https://github.com/finbarr/boxhaven"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v0.4.0/bh_v0.4.0_darwin_arm64.tar.gz"
      sha256 "af94f8fb17bf799ef4c0479789983c3846c2afebc1a19b2e32218f5421562d58"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v0.4.0/bh_v0.4.0_darwin_amd64.tar.gz"
      sha256 "25b3c34c979676b0085e79c38fc1c8c74056f1130442dfb0f06b8c89e3031e71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/finbarr/boxhaven/releases/download/v0.4.0/bh_v0.4.0_linux_arm64.tar.gz"
      sha256 "f6ace34cbda3786a63ba7acd19b897ff72a7091b986eac592851bcc5a25d6c1f"
    else
      url "https://github.com/finbarr/boxhaven/releases/download/v0.4.0/bh_v0.4.0_linux_amd64.tar.gz"
      sha256 "f967b3cb7257a42d51930dc0c61c5f6254fd15894172396252f5602cb20d1a3a"
    end
  end

  def install
    bin.install "bh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bh version")
  end
end
