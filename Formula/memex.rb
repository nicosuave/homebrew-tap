class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.27.0"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.27.0/memex-0.27.0-macos-arm64.tar.gz"
    sha256 "2e6d69d92215930fd766c784a0d1a9ae3a23a0e5cf3cfa44bb95d258a685e320"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.27.0/memex-0.27.0-linux-arm64.tar.gz"
      sha256 "f020dcd2f15430d8f77db249fe858a62c94efc6fd4b26599ff5bc4aaa25b14e7"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.27.0/memex-0.27.0-linux-x86_64.tar.gz"
      sha256 "b7c839161746fe104081935bc80b0282a2a37d05676940240f28e831965da341"
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
