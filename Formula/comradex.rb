class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.2/comradex-0.14.2-macos-arm64.tar.gz"
      sha256 "831410344a7571d90d373a4ff3dcbad92e4638cfb12633c3e5a1453a659ff0ba"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.2/comradex-0.14.2-macos-x86_64.tar.gz"
      sha256 "3b2154fca5501dce367b9e7ee3c66cdaef91b52f60fae919e125a6c12fed67ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.2/comradex-0.14.2-linux-arm64.tar.gz"
      sha256 "d2604210f238c5ca180a33f527dfebf2c5ed595794be512b8d770dec24d6d637"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.2/comradex-0.14.2-linux-x86_64.tar.gz"
      sha256 "73b88b9b25d288478a20bb82a04b6e5167f9903e795f8a2d20e2e81e9d266380"
    end
  end

  def install
    bin.install "comradex"
  end

  def caveats
    <<~EOS
      Create a configuration before starting Comradex:
        comradex init
    EOS
  end

  test do
    assert_match "comradex", shell_output("#{bin}/comradex --version")
  end
end
