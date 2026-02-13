class NanobananaCli < Formula
  desc "Generate and edit images with Gemini from the command line"
  homepage "https://github.com/finbarr/nanobanana-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.2/nanobanana-darwin-arm64.tar.gz"
      sha256 "af827e5e4f95324ea82273f95b663f16248766533ab63876367141bbbf78ff54"
    end
    on_intel do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.2/nanobanana-darwin-amd64.tar.gz"
      sha256 "bfff140888ffd635187bf4381a672b0dc36898daf2612e95239f11ff546e8ac0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.2/nanobanana-linux-arm64.tar.gz"
      sha256 "a269f3660893e17ec944019eff765af456d5c33ff51468c4df8ad9d08b7f50a5"
    end
    on_intel do
      url "https://github.com/finbarr/nanobanana-cli/releases/download/v0.2.2/nanobanana-linux-amd64.tar.gz"
      sha256 "df3bfba2a61b097b94470f5583b2099fe55bc89fd097fd3170639cfd6735f397"
    end
  end

  def install
    bin.install "nanobanana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanobanana version")
  end
end
