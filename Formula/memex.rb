class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.17.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.4/memex-0.17.4-macos-arm64.tar.gz"
      sha256 "f393d29aad3fcf88de013bd9c292eaa15a6ce1a70284d4e4f7b8e4aae969c3f0"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.4/memex-0.17.4-macos-x86_64.tar.gz"
      sha256 "d452756238928e686d319b498ccb9e63793ce585059f15c8165f6888e3e61605"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.4/memex-0.17.4-linux-arm64.tar.gz"
      sha256 "f4ef0652291d015d4b51ef353eb9eadcab7115adf7926022024413e1875fee22"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.4/memex-0.17.4-linux-x86_64.tar.gz"
      sha256 "8a03b14e0901c1b6f59f81bafdf5b457e4711bac352c6feeb43830027dbe19d7"
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
