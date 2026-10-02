class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.25.0"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.25.0/memex-0.25.0-macos-arm64.tar.gz"
    sha256 "55307964630bea6ab26e7836e531b1714790f1624e47d50cc8fb1a9a49d4e246"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.25.0/memex-0.25.0-linux-arm64.tar.gz"
      sha256 "defd2d33e0b2d409044facb2b9149374d08093cb2b8174a00916e0277f3c3b01"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.25.0/memex-0.25.0-linux-x86_64.tar.gz"
      sha256 "eb2224a3f83be3a3717d4cb7022c9163f6f9fda231727d0d2082652947ee758d"
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
