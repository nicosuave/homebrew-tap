class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.6/claudex-0.2.6-macos-arm64.tar.gz"
      sha256 "d994b13fa45d9455737efebcd3a23915b272d8bb5dbc648506a55e5bb1b30ee4"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.6/claudex-0.2.6-macos-x86_64.tar.gz"
      sha256 "cbd704489dbf7448c38d295d09d4af013b273ef9b653ce8b50731a208d58b46b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.6/claudex-0.2.6-linux-arm64.tar.gz"
      sha256 "fa7ec0c853acaad2de928cf8c5e50f31a3f8340c8c93371c4ac162c3285f5029"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.6/claudex-0.2.6-linux-x86_64.tar.gz"
      sha256 "4e2db0349d48f878bf450e2d509ae34f513aaf96ca6848f2674350798118374c"
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
