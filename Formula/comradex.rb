class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.0/comradex-0.10.0-macos-arm64.tar.gz"
      sha256 "b89028a51893f4c3cf97feb24742a51b196f17f7cb82bd0465e33ee59e420791"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.0/comradex-0.10.0-macos-x86_64.tar.gz"
      sha256 "3b750297b4fb83fa3e836e795041d5a2b3e50baf70a0165e72f31e7884f1b9a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.0/comradex-0.10.0-linux-arm64.tar.gz"
      sha256 "a69ccca368691798f79d41b22b0688c466c5fdfa1422969b49f56c0952db9e72"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.0/comradex-0.10.0-linux-x86_64.tar.gz"
      sha256 "cfa2ad7b9172a48ab405937e9b26a72ce44950fa78edaadd16abef719712afca"
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
