class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.7/claudex-0.2.7-macos-arm64.tar.gz"
      sha256 "28eae596074fcd572c877b741b31336467d81989b35aca7959e3ea469dbd8eea"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.7/claudex-0.2.7-macos-x86_64.tar.gz"
      sha256 "7f1b84c40d8f88aecdbe090c93164b75c5e05858610b0d59057217c90dfcb495"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.7/claudex-0.2.7-linux-arm64.tar.gz"
      sha256 "943dc1c37be36ecb27a5cb565f6a9891aca72e44c8d35d1dcfa4c41afbe0c662"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.7/claudex-0.2.7-linux-x86_64.tar.gz"
      sha256 "9cce730d617e416364210d3b2a9c0453dc90e4a12acef5a3e9c8b4d32cd51c89"
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
