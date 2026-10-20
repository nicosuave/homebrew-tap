class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.11/claudex-0.2.11-macos-arm64.tar.gz"
      sha256 "ea8a9f2fd44a651d58b1ea1a9c31452316d3034007f294bc84991f926abe7568"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.11/claudex-0.2.11-macos-x86_64.tar.gz"
      sha256 "efa52043bbbba90fd5002f16033bc1f4de2b283170b8a715e85d7f16202ee14e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.11/claudex-0.2.11-linux-arm64.tar.gz"
      sha256 "b802a6d5538d5258b9fa4debd282e9ea54795c6adfcc973e51684c65804fdfb8"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.11/claudex-0.2.11-linux-x86_64.tar.gz"
      sha256 "a1435a6cb3162ece591399d850686e3e6ae42408500e75a56496f017f61e7c40"
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
