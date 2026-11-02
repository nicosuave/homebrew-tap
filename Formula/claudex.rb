class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.15/claudex-0.2.15-macos-arm64.tar.gz"
      sha256 "381e5b2124aa505df470d2d330f2d565809d151da215d8e20c2183323f31e3cb"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.15/claudex-0.2.15-macos-x86_64.tar.gz"
      sha256 "905c81f8217bcc60f6c09ebf0dcb7535bd1ad8a36dd1f0dae75dee6900865665"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.15/claudex-0.2.15-linux-arm64.tar.gz"
      sha256 "d4f90511d59d6738c74f572f559e5768626685dbf75a53475f70b4965cba6676"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.15/claudex-0.2.15-linux-x86_64.tar.gz"
      sha256 "bd0e791bc876f1c7bda0c9f30d23216f79d7c12cd0e1bf2474c17b6bc42845a2"
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
