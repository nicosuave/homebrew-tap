class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.1.0/claudex-0.1.0-macos-arm64.tar.gz"
      sha256 "dda0194c89a5a05dea2a4b0a7c76473e4dd8dc94cc32de56ac4eab575d239264"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.1.0/claudex-0.1.0-macos-x86_64.tar.gz"
      sha256 "a8f61b4c6be64dabbc20032adada7408a0f19357ab5d751d892d6b696a92a12a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.1.0/claudex-0.1.0-linux-arm64.tar.gz"
      sha256 "4f8c62ddd68c5da7d005ab656ee2cccd67f39b81e6d8c93163b312fc4a214f94"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.1.0/claudex-0.1.0-linux-x86_64.tar.gz"
      sha256 "60ae0f5c5deb9bd38fd6b13e575136bfcc83da95abcffbc2f1b1f550b8f65a6a"
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
