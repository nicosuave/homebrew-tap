class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.3/comradex-0.19.3-macos-arm64.tar.gz"
      sha256 "9fa79676dcd5d03e9020d98f4971b72d927d27df089e37355cabeb9b3e259fbc"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.3/comradex-0.19.3-macos-x86_64.tar.gz"
      sha256 "cd88718db29485405486167db97af8b8a927e1a85d6529b6e3da6620c5c59bf4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.3/comradex-0.19.3-linux-arm64.tar.gz"
      sha256 "50d181f7847a6ac7c5c26b0f80c3685a55d7ad06bf75d4e5deea89fe1c8429ed"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.3/comradex-0.19.3-linux-x86_64.tar.gz"
      sha256 "1f44711be83807a3b78de47e317e45119616a695b834cee01ebc9d8f4c844ca3"
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
