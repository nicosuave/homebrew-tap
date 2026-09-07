class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.0/comradex-0.11.0-macos-arm64.tar.gz"
      sha256 "45032f31de57c40982d692da13b645176766feb00fbf12f04c50b3dac6d1af16"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.0/comradex-0.11.0-macos-x86_64.tar.gz"
      sha256 "e2610a6f8f6ad17558d7647be94c47b8b372ef238ee9248bdbf623c121a70ae9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.0/comradex-0.11.0-linux-arm64.tar.gz"
      sha256 "0b2ab6888f01731e06893d7210795bb89af34639eded3f9f7228f53e32e7e2a4"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.0/comradex-0.11.0-linux-x86_64.tar.gz"
      sha256 "318ef04fa6f734c2b8037f1d2e355259db5eba935e2f2fe4ffd3c4d696fb7e49"
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
