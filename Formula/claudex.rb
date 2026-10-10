class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.1.1/claudex-0.1.1-macos-arm64.tar.gz"
      sha256 "d30585356b4b39460732a8b406221814d669fcdce9e08358ac699c099e1a75d2"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.1.1/claudex-0.1.1-macos-x86_64.tar.gz"
      sha256 "13ad23abe62faf67721a7ffb44e64a70b2c3cd6fcdc8d2a14f7a65820b3a3f5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.1.1/claudex-0.1.1-linux-arm64.tar.gz"
      sha256 "b7b6eceedef6504cf34f7cb85f690df915dfa0c844bcf7aca43efe56580206c1"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.1.1/claudex-0.1.1-linux-x86_64.tar.gz"
      sha256 "fcefa07378f30ca68809bc75e681b65d0c80ffc5b50b0f54cd99eb8b00fb94d5"
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
