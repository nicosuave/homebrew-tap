class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.19.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.6/memex-0.19.6-macos-arm64.tar.gz"
      sha256 "7f157822f5c7c0b89f71a301cf935b2a5763bd5d3dd6f03e90dc1300b5c5f621"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.6/memex-0.19.6-macos-x86_64.tar.gz"
      sha256 "c13ac7cb2090a5c7830253988baf1804224166436a181bf6217c08f090a4a7d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.6/memex-0.19.6-linux-arm64.tar.gz"
      sha256 "694ddded2810933d2a2b6df235f00c0f56daa48a391b204baf0f644cd096f4b2"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.6/memex-0.19.6-linux-x86_64.tar.gz"
      sha256 "050ccd6d9a3db5d440b10f020fed2f42026cf08ed7a349a85c8c01eba61c5022"
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
