class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.8/claudex-0.2.8-macos-arm64.tar.gz"
      sha256 "3d63432edf0cc73bf56bf864bb2c02c632b59a6fda1e5669f86a48f143fad303"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.8/claudex-0.2.8-macos-x86_64.tar.gz"
      sha256 "02605bd95d764d9428c709451d3d67561352aecb04918c78a9601b733dfa2502"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.8/claudex-0.2.8-linux-arm64.tar.gz"
      sha256 "a3412643fcbb8b8600385ed10b1ad85e4ba58b45d7c772b6bf6b8c14da3a6c27"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.8/claudex-0.2.8-linux-x86_64.tar.gz"
      sha256 "d2731ed4e04ef39123fbee8bc4a4e10f47627df98888407a02561026366625a2"
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
