class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.0/comradex-0.18.0-macos-arm64.tar.gz"
      sha256 "a1a459e35fcf01ac5c12cd43844a05bb556e40adf629cee405c98606e9e162c2"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.0/comradex-0.18.0-macos-x86_64.tar.gz"
      sha256 "709a36825b532ae17c5952d150e1068daaea3f37b1a3b1ff1efb72cadc194229"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.0/comradex-0.18.0-linux-arm64.tar.gz"
      sha256 "2e7681388e06e38bbccd423ea02118b309e42fee336c119fd04547b8fbd47e26"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.0/comradex-0.18.0-linux-x86_64.tar.gz"
      sha256 "3b96c80b9eb5374d181220a4c69b0e9dcfaa277de934189ecb4a3ca0d79446b0"
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
