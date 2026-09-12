class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.19.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.5/memex-0.19.5-macos-arm64.tar.gz"
      sha256 "71aff475fa3b9f6c75b7e30cea80a836235c0cba3ca2df0345dcb4862882ff8a"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.5/memex-0.19.5-macos-x86_64.tar.gz"
      sha256 "d04d682a05ebb76eaa07459851b9795d3ad083f9d0d42f6520c59ec1ed44f483"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.5/memex-0.19.5-linux-arm64.tar.gz"
      sha256 "24f9bf89c7a217938df6980f45215ad36a9ecd389948182a40d7d6eb51fcf9d1"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.5/memex-0.19.5-linux-x86_64.tar.gz"
      sha256 "49711f374b86eb34da81084a2975641145dc97d101b5e03d0366819fbdb6e180"
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
