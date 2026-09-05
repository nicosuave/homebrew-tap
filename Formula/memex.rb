class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.14.0/memex-0.14.0-macos-arm64.tar.gz"
      sha256 "7774402cb1ca21cb630af2d6a9a55a5463bc29123526b70801fc2d187c0ababb"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.14.0/memex-0.14.0-macos-x86_64.tar.gz"
      sha256 "685ea98510a03f9ca931fa8c9f72c6f173ff1dcd57c72c630c82d17d846e2978"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.14.0/memex-0.14.0-linux-arm64.tar.gz"
      sha256 "5b510579b0f1881f2a86b64668e964cb0c9f272700247c32cea697ee53af9321"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.14.0/memex-0.14.0-linux-x86_64.tar.gz"
      sha256 "e31c4803372b7614dfbe43dde30c9bfeacf47d85d03099e320beaca988f52a8c"
    end
  end

  def install
    bin.install "memex"
  end

  def caveats
    <<~EOS
      Run setup to install the Claude/Codex skill:
        memex setup
    EOS
  end

  test do
    assert_match "memex", shell_output("#{bin}/memex --version")
  end
end
