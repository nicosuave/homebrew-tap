class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.3/comradex-0.14.3-macos-arm64.tar.gz"
      sha256 "303924a296c38d878c15f9e5b24e5b9eadb1f41ee14aac6d75c1f51e1e895e58"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.3/comradex-0.14.3-macos-x86_64.tar.gz"
      sha256 "61fa4180cbe0f3204ce1dc138ea5d44c1f78e6f6d887bbdbe058da1e38df7392"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.3/comradex-0.14.3-linux-arm64.tar.gz"
      sha256 "e19ad14147138087c4dcc555614c72c6327a71cb16c48aa467052d40fc354268"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.3/comradex-0.14.3-linux-x86_64.tar.gz"
      sha256 "0037578cb9015ea160f3fcfde71a73bc7daa7ce482c9e9349b1d0f085ecd7972"
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
