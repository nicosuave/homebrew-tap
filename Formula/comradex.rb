class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.2/comradex-0.10.2-macos-arm64.tar.gz"
      sha256 "bbd44ea72f9e8fadc8b102049c6124530325abf7a4c21dfbcb66d55cf5cd6a0c"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.2/comradex-0.10.2-macos-x86_64.tar.gz"
      sha256 "43c93e0f3a9674a9a18cc6e05e8195e442f195a6ee51c7f277d0fe520981bfc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.2/comradex-0.10.2-linux-arm64.tar.gz"
      sha256 "4833beeb9d4dcc91e4dbaaed5212f910542675f7efaa825c19fa9afd9494e28f"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.2/comradex-0.10.2-linux-x86_64.tar.gz"
      sha256 "19a33ae5b8a13c8d4ba9fca1bd5f3ed36279612dff22d93e397cb9c5f1b3e7fc"
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
