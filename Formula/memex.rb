class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.19.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.3/memex-0.19.3-macos-arm64.tar.gz"
      sha256 "3a35579571d51f1b591239eb590ee7435dee9c12644339904d114fb9fa8bc55c"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.3/memex-0.19.3-macos-x86_64.tar.gz"
      sha256 "b38bb09d851187ad16068915c7ddc08432e4f26ce68efd709c49240a544aac2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.3/memex-0.19.3-linux-arm64.tar.gz"
      sha256 "cc0ad714843b5b2916ec2ac18ed747ed85b35bd8af863117cf6223726060c993"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.3/memex-0.19.3-linux-x86_64.tar.gz"
      sha256 "17080be08e385ae96c9e0352eaf11e6e9d73f33feba2f78cd20c6539475daf95"
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
