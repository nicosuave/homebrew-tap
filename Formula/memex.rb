class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.28.0"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.28.0/memex-0.28.0-macos-arm64.tar.gz"
    sha256 "462603d6044d5097014590defbad4b84a6362966f2e67f80e0fe62a5ddf85ee6"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.28.0/memex-0.28.0-linux-arm64.tar.gz"
      sha256 "8fb8ae87fa1d4af123f13117b06baf43e672ca1300194820fc436b82659128f0"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.28.0/memex-0.28.0-linux-x86_64.tar.gz"
      sha256 "dffac61f0d057145f10a708802b4cca04c69e08abbf6096f2fa18908895f0ebc"
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
