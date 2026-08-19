class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.1/memex-0.11.1-macos-arm64.tar.gz"
      sha256 "0322aae5692fcb10690f4e7d4762861b18d0e901a197167271323725dbf7cac8"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.1/memex-0.11.1-macos-x86_64.tar.gz"
      sha256 "0b88fad8efae01b941c36c0b8d366875fc69c2f81f1d4609e71bcd1b4d9cfa59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.1/memex-0.11.1-linux-arm64.tar.gz"
      sha256 "01e07bfdf9918ff1667335b03be214afafdb812a39ad2faaac5600ad0919a8ec"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.1/memex-0.11.1-linux-x86_64.tar.gz"
      sha256 "16a3595890b6a819cfbde620a87d0b4f323c70375680dc1b47b39173ed61a040"
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
