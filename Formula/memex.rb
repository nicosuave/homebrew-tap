class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.5/memex-0.11.5-macos-arm64.tar.gz"
      sha256 "9ffc6ca2d704eedd65809f93991c52b11d84db6b795f83066db49e08febb95c5"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.5/memex-0.11.5-macos-x86_64.tar.gz"
      sha256 "fc8e568fe46ad9567806af67292df3966f00d66fa7e3b4d766af42a1ce783dc1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.5/memex-0.11.5-linux-arm64.tar.gz"
      sha256 "1bc2e569ae48cdb0fc80fb92e76cb341be71b26b6f623bc76f724decd370ed5c"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.5/memex-0.11.5-linux-x86_64.tar.gz"
      sha256 "fe0e0c19942e177f8039c64834cba54f1fe18b4bc1c839be863e5a4f476399e6"
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
