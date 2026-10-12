class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.3/claudex-0.2.3-macos-arm64.tar.gz"
      sha256 "495e345ad5148a327f7f3baaef622d077121b09fa89243a610c4b2c2ad67027c"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.3/claudex-0.2.3-macos-x86_64.tar.gz"
      sha256 "6f9eedb65ccf3e46fc4593b1c9111295221c789ad513887b13ddbe92f719c858"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.3/claudex-0.2.3-linux-arm64.tar.gz"
      sha256 "a8c80328c2b6be3d5593428d7add49c14e4460f1012a3fb0195394ef72fa5d75"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.3/claudex-0.2.3-linux-x86_64.tar.gz"
      sha256 "ef001f5034dd62dfd9a8593f7b95472729cc4d0e9811f114236e966a860c0f1b"
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
