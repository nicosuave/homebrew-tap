class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.20.0"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.20.0/memex-0.20.0-macos-arm64.tar.gz"
    sha256 "4ceeaca74e2ce6beae9bbff26247a9e5235d6d3b83c343a12bc1e074294bce1c"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.20.0/memex-0.20.0-linux-arm64.tar.gz"
      sha256 "9e5a1edeb0545332b2c4f648c337230170d45e84d106055bcf6a89dcaaf72048"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.20.0/memex-0.20.0-linux-x86_64.tar.gz"
      sha256 "6d7ad786e25c9e3de8615d1ca4551a58574ab45519ace21bf72729fc293c8598"
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
