class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.12/claudex-0.2.12-macos-arm64.tar.gz"
      sha256 "aecbbedef44173f09e3d61fc90ec0a89f2a28c2a0ef13f5fe1a4442780ce685f"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.12/claudex-0.2.12-macos-x86_64.tar.gz"
      sha256 "fe581cdc7e379d3317f8b92576e3662299ef29a70b66d70ecd38bf342e6d5484"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.12/claudex-0.2.12-linux-arm64.tar.gz"
      sha256 "6ee6c2fd7a898fba9d578c5551a9d3b056a094b7eceaec7f8c64749fc24a3900"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.12/claudex-0.2.12-linux-x86_64.tar.gz"
      sha256 "474b2a1e3a24f58968a7c80752b9a979e91f47c0affe5b2ff5dbb401914776a2"
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
