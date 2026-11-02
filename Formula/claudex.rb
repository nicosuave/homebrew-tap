class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.14/claudex-0.2.14-macos-arm64.tar.gz"
      sha256 "5389b4615efb6a99ccd9dcb1f3e2f7171f2d16b19cd437c5c485fa0220388fdb"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.14/claudex-0.2.14-macos-x86_64.tar.gz"
      sha256 "1e121a0bf0f34c8e955af5ec41ded3873004eb806e2c8f9e054a32710554ddbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.14/claudex-0.2.14-linux-arm64.tar.gz"
      sha256 "5f470cacb9cc28e38d6a78a2d04105df0565aeae1fa97cebeb3eea78552ffcb2"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.14/claudex-0.2.14-linux-x86_64.tar.gz"
      sha256 "bbf8dc79d1f3173b2a1a8328d8cbc34dacf8ac0ed0963f9f542fb2027c65885b"
    end
  end

  def install
    bin.install "claudex"
    pkgshare.install "NOTICE", "licenses"
  end

  def caveats
    <<~EOS
      macOS desktop setup requires Codex, authenticated Claude Code, and Remote Login:
        claudex install
        claudex doctor

      Linux supports the stdio server; desktop installation requires macOS.
    EOS
  end

  test do
    assert_match "claude-codex-server #{version}", shell_output("#{bin}/claudex --version")
    assert_match "install", shell_output("#{bin}/claudex install --help")
  end
end
