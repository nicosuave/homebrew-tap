class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.16.0/memex-0.16.0-macos-arm64.tar.gz"
      sha256 "939470db3e40a34ef3fdb7e9441202effc9ab29ae1670969bb202180a1fc8905"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.16.0/memex-0.16.0-macos-x86_64.tar.gz"
      sha256 "962c3860c0e49cc3008ea1b406a57a751365d42c6f38a70a119ae377ca7129a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.16.0/memex-0.16.0-linux-arm64.tar.gz"
      sha256 "71307dd7833f84076a3bd315a96f868ed9aab3eb05d678328e3031e5aed6496c"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.16.0/memex-0.16.0-linux-x86_64.tar.gz"
      sha256 "31fbce67a2e93445d3ca8ff44d7d213c72851192e8f63a1735dbed7b75bec8e6"
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
