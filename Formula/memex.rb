class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.0/memex-0.19.0-macos-arm64.tar.gz"
      sha256 "ebcb404ff449afd56bc244566acc691888851812e5c228c9ca6a2efaa47857e1"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.0/memex-0.19.0-macos-x86_64.tar.gz"
      sha256 "00d4ffd568a9acf147ea47a4297f14361a6cf0856242e7402f8032a3913e4895"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.0/memex-0.19.0-linux-arm64.tar.gz"
      sha256 "9303f5054b91d96d9225ce166114ec882ccf9ee9e7fca02a5f64b26cda54c8bb"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.0/memex-0.19.0-linux-x86_64.tar.gz"
      sha256 "f9c818541a8978a7c12e0729076f070f5f33af92ef1de5b2e02c794429a86f1b"
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
