class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.13.0/memex-0.13.0-macos-arm64.tar.gz"
      sha256 "b3c844b47e64eb62085d225d4bc15127f0dc0bd0342ac8b5aa82aebafed13e7d"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.13.0/memex-0.13.0-macos-x86_64.tar.gz"
      sha256 "b4176cb99f00cdfcef5cfb47fe8659a252fd7d070a453b069e6493cd1d5b48a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.13.0/memex-0.13.0-linux-arm64.tar.gz"
      sha256 "3689273c9a88808d003f4d13000b9fbce5b9805c20a80bdaa304fc96260d83f4"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.13.0/memex-0.13.0-linux-x86_64.tar.gz"
      sha256 "9c108ffbddb6b296e01826308a4733b1ab0dfc1764fb6bc891b4128a3e6c3f3f"
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
