class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.1/comradex-0.14.1-macos-arm64.tar.gz"
      sha256 "173e0c2f037fa321d0085c93771845b516f6496d90cd7375c48381f0e1d3044c"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.1/comradex-0.14.1-macos-x86_64.tar.gz"
      sha256 "b8a5bf6a66156f435f762ecdd90ad82358fd69d177a8324f67dd86b10206ada9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.1/comradex-0.14.1-linux-arm64.tar.gz"
      sha256 "6cc3c0def2af0d67e82f61c36aa3607f6bd82c47caee718dab7250923b7655ec"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.1/comradex-0.14.1-linux-x86_64.tar.gz"
      sha256 "717407374eedfad99dd911c1fb5936027da9a14fcc76857213a14a6a954be006"
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
