class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.18.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.18.1/memex-0.18.1-macos-arm64.tar.gz"
      sha256 "52e90a8018a029cb5e889edc66f92f77a73d0b6a9021e10a9bfdda183831ed42"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.18.1/memex-0.18.1-macos-x86_64.tar.gz"
      sha256 "4e63fdf41452153eae4fcfcdea66257a31b3c963db92b4712f8897c7a9c362f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.18.1/memex-0.18.1-linux-arm64.tar.gz"
      sha256 "8779f8ac88f7fef05fcf4d90e731be583e1f9dc2579b4207f66abdea279338c8"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.18.1/memex-0.18.1-linux-x86_64.tar.gz"
      sha256 "775534510e9baeb8b54f10d44e3993b3708835dbc6b4909792d691d365320d9d"
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
