class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.4/memex-0.11.4-macos-arm64.tar.gz"
      sha256 "44b78f1a54d9793a041aa092ca95357a20ef7a01ab32f099817664f3265b3c7f"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.4/memex-0.11.4-macos-x86_64.tar.gz"
      sha256 "12905407c13cf0c171d85c6bc030874f87fddb1d29936c26c7be3135cd1d0ef7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.4/memex-0.11.4-linux-arm64.tar.gz"
      sha256 "1d56d2e922729ac6d2205fbf42aca301c0886e9ef36270a620134272fab6a4af"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.4/memex-0.11.4-linux-x86_64.tar.gz"
      sha256 "c6eaf392dc924e7c65adff715334b1b018ae2a6e8ecd4e0bd002d98c1cd2b56c"
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
