class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.10.2/memex-0.10.2-macos-arm64.tar.gz"
      sha256 "a59fb6adcb111f290ac1aae7d60c69abb15b1ec46bad3a1a880f3565b3a518d4"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.10.2/memex-0.10.2-macos-x86_64.tar.gz"
      sha256 "0061e93ea4a9cf829c3b04b5e0b7db2a91e10dbf565c7158c07c47531cf66787"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.10.2/memex-0.10.2-linux-arm64.tar.gz"
      sha256 "7ac6f7bfa4864448d731190fec97c9ef6ac8b1c57999d48ec24d7a3bbbdb1817"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.10.2/memex-0.10.2-linux-x86_64.tar.gz"
      sha256 "0c7cfc375c60bd288f0131fcf2eb97b595b331333f6acbc0b840c083031f704e"
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
