class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.24.0"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.24.0/memex-0.24.0-macos-arm64.tar.gz"
    sha256 "a011e1b319eec83e0f9dfd302871bfced9d792905aef9b0eb5671da8ed620f4d"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.24.0/memex-0.24.0-linux-arm64.tar.gz"
      sha256 "bf423af2afbd0368ebf4854d993f4bda1ed7dd726176282e509dd0b600ae5bc9"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.24.0/memex-0.24.0-linux-x86_64.tar.gz"
      sha256 "cf94cc8c70838f963176e1d0a5f6dff2e021c715941bcb0cd31051d95aef5beb"
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
