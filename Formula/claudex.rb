class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.13/claudex-0.2.13-macos-arm64.tar.gz"
      sha256 "c34f5677f98e1556a92ccb7bd29fbb3d98037b07cb3f8a9e9707487e6d339942"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.13/claudex-0.2.13-macos-x86_64.tar.gz"
      sha256 "f1fb1cf639e8bb51d10729aa339b50823d2e09b9413671cef73b5d2168641545"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.13/claudex-0.2.13-linux-arm64.tar.gz"
      sha256 "bc973265d67d0237b9d85abc2dd7efc098bf17a5a3aa1f24a69acd7a307368a3"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.13/claudex-0.2.13-linux-x86_64.tar.gz"
      sha256 "16b757a5b9613e01e61ef413f9017201c2df9c2c2ce6f9f003e4357574cc5f79"
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
