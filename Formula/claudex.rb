class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.0/claudex-0.2.0-macos-arm64.tar.gz"
      sha256 "e35218504b0496eba0ed6be5f8a10a6bce611a595b975bcd940fb70be91bdeec"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.0/claudex-0.2.0-macos-x86_64.tar.gz"
      sha256 "6c27ad3ef5d5b2fd1998d75f071fa8d10989501fabe17fe399a015bad021ba49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.0/claudex-0.2.0-linux-arm64.tar.gz"
      sha256 "002cad7f497b814b866e287dc289d6e01852587177b16f8f591b76ac14168383"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.0/claudex-0.2.0-linux-x86_64.tar.gz"
      sha256 "3ee48b87da13595e1fd53574bac66d1506520848d66ba5ec275ab033ebec0004"
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
