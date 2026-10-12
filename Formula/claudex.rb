class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.2/claudex-0.2.2-macos-arm64.tar.gz"
      sha256 "0c494e85efa15a94d068aba57ff710430c06731127bb74f8d3c7fec13074ccf1"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.2/claudex-0.2.2-macos-x86_64.tar.gz"
      sha256 "6decf2251084c4519c558f2ba8d82062d407c9b09d54a626f088b288cec8dcd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.2/claudex-0.2.2-linux-arm64.tar.gz"
      sha256 "58f5b29e0dfa437eb89f8bda9e7e269114b8b6eef6cefaecfa477b05a645b74d"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.2/claudex-0.2.2-linux-x86_64.tar.gz"
      sha256 "3a2a1aa39c4cf5af0d5cff0dfaabbf4730d473a5f5616529afabd36138f3f7a9"
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
