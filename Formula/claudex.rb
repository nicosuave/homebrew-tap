class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.10/claudex-0.2.10-macos-arm64.tar.gz"
      sha256 "d845bdee9a6326e23dc78eba61f39c59bb0772e2645f132dbc8bfb300bfa0e5c"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.10/claudex-0.2.10-macos-x86_64.tar.gz"
      sha256 "e67db48159ce35e2c6cd6b2c75ca46a81c79184e0a121ff747d9672f02dc325b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.10/claudex-0.2.10-linux-arm64.tar.gz"
      sha256 "0f13a341dd252917117dddb0427fd267b9eeb6f9460cd0b9dce1f9db6147c3f2"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.10/claudex-0.2.10-linux-x86_64.tar.gz"
      sha256 "cc414477c7c9e337e76eeb4fc27e63f36837fc4cc055e6e1f08ece763199b4f2"
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
