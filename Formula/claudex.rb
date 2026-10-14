class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.9/claudex-0.2.9-macos-arm64.tar.gz"
      sha256 "015e1e094a42b0f93e8e07eef1267c891c8bde14ee8777940b45b15fa826cb4b"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.9/claudex-0.2.9-macos-x86_64.tar.gz"
      sha256 "91cdb54574d43345316448f416bb92dc734f735bdf3e2fdc3bf12ac813658b54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.9/claudex-0.2.9-linux-arm64.tar.gz"
      sha256 "ea689822f0afd69a88ce341f33844375892ab70af774f910ddb30f09b3486500"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.9/claudex-0.2.9-linux-x86_64.tar.gz"
      sha256 "605730c2c51dcd21969ce92c10454420d2cc767a7dd03d05a5dcd5e6c29264b0"
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
