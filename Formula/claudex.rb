class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.1/claudex-0.2.1-macos-arm64.tar.gz"
      sha256 "f68817ef72f9b8b704d4c79a3a6ef4ec4bc61622133d03add1fd4782347bcbc2"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.1/claudex-0.2.1-macos-x86_64.tar.gz"
      sha256 "bfcbe03b1a835cb4b4a2d75b9d6c97f170aa199c28ace63b1a203de33a31bbb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.1/claudex-0.2.1-linux-arm64.tar.gz"
      sha256 "0047be762cfb1a42441612e55106b849ae3072eec329bcdc3a1b55ca1c2f1f2e"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.1/claudex-0.2.1-linux-x86_64.tar.gz"
      sha256 "eadfe006fa036491d9bc2137965f9898cd519ed919d4dd68b78f6c506d67f027"
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
