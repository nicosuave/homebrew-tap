class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.2/comradex-0.19.2-macos-arm64.tar.gz"
      sha256 "4234add29c11273c9c3ac0a4aaf76aff236a8c6514acfc18bb88fe1a27307b25"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.2/comradex-0.19.2-macos-x86_64.tar.gz"
      sha256 "2b17e8e514ba5778faa25b445feca8a1baf6c9d69873f7cfb90f43c6bb3f7dc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.2/comradex-0.19.2-linux-arm64.tar.gz"
      sha256 "de5f3cdbef93f55a9bd3dd3885b6c1b60469e01eaed67cdd8d24e66c7b3828ea"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.2/comradex-0.19.2-linux-x86_64.tar.gz"
      sha256 "49ff9cee6076b40ebb23821b4ffd6236ef17f59af17320d21e7aa7f0e0b7b8b8"
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
