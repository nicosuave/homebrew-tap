class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.4/claudex-0.2.4-macos-arm64.tar.gz"
      sha256 "f08eb164d3ed9f2777f172975fbaa35f2efc7992cb54f39c1d3293c307e83d6c"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.4/claudex-0.2.4-macos-x86_64.tar.gz"
      sha256 "720420f4ea047bc72744961004d5797ff2de704b80d8522bf34c534e1a2a23ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.4/claudex-0.2.4-linux-arm64.tar.gz"
      sha256 "a42b253a3ae04fb8e05c4e52f777da2762b7b0eb87f2a583e65057e86cc3a99e"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.4/claudex-0.2.4-linux-x86_64.tar.gz"
      sha256 "d7d221dcb33a589726eb5730ac63fb3c8f236687673bfd5277d8a74e5f7ae86f"
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
