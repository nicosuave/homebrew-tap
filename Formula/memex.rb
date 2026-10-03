class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.26.1"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.26.1/memex-0.26.1-macos-arm64.tar.gz"
    sha256 "bffbebbcb350f3bba3ce048d87fe12c301539c06581a6a61a0ada2918d5a96a3"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.26.1/memex-0.26.1-linux-arm64.tar.gz"
      sha256 "bf42b06263f3cc9210e13265b94e4e30a9b4d956bbe7d187e8c49e408a783542"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.26.1/memex-0.26.1-linux-x86_64.tar.gz"
      sha256 "cc607e80fc915c3c102af0da3ee9ac7da3048b89e211400bc206cd93fcd633d1"
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
