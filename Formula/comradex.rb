class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.4/comradex-0.18.4-macos-arm64.tar.gz"
      sha256 "c68fc29f5c5ecb1ec8b9e68c7ade8ca4ed3ba5f9f63db644b220ac5d96920353"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.4/comradex-0.18.4-macos-x86_64.tar.gz"
      sha256 "49bee2034e1af4b4ccd7c502192659eb81e4b6c5005979bc26fa0ab1869ebb3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.4/comradex-0.18.4-linux-arm64.tar.gz"
      sha256 "95c70f16ca5d1c2be39bdd8c5fed344adb6f67401a1f62b8606a599a1c33ac05"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.4/comradex-0.18.4-linux-x86_64.tar.gz"
      sha256 "df6e3f55953e1165ea5c4a3064e46180ca59c40ee39fd64de433b2f6e847fbb0"
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
