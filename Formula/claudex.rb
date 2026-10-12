class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.5/claudex-0.2.5-macos-arm64.tar.gz"
      sha256 "a47a3b2aaf8d666aee61ebc651039daf828a7023f70fe3562370538bc645a755"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.5/claudex-0.2.5-macos-x86_64.tar.gz"
      sha256 "7eef96b88739a53b84fa71efe7739c6dd893510dbd1b5075c58b67f6b600bedd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.5/claudex-0.2.5-linux-arm64.tar.gz"
      sha256 "1a2263389ffa77b7ed923a6b370cae90c8ee9081f44c0b49e649b582b15c22f7"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.5/claudex-0.2.5-linux-x86_64.tar.gz"
      sha256 "db6a8e13dfe7c7d0baee168b12a0a46e3e2cf253f271efb14869df2ed3d21e1e"
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
