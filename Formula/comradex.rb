class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.0/comradex-0.19.0-macos-arm64.tar.gz"
      sha256 "5a4fc07b4e9b07e48e5994a1375353ce39e514fb9a16defaa181afe86cfaf6bf"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.0/comradex-0.19.0-macos-x86_64.tar.gz"
      sha256 "d1469d46128ec85979c0c5f5ee61c602a44f0946214a9e70a77acf01a61ef9a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.0/comradex-0.19.0-linux-arm64.tar.gz"
      sha256 "743e0d6eebddb32c3ed97e22b5e97e23a22fd30e331e63d3f1d7f8b28a271788"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.0/comradex-0.19.0-linux-x86_64.tar.gz"
      sha256 "7978139d971cf500b51e878b16aca2cf0077b916c6ce83359546189107336f25"
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
