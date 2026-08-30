class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.12/comradex-0.9.12-macos-arm64.tar.gz"
      sha256 "081bb2372ebc6734d92d64c827f801f6c858640c1c4750c3d25ef42c06e03b74"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.12/comradex-0.9.12-macos-x86_64.tar.gz"
      sha256 "e9ac3a53491158b4bc2882f860dd178fcd91a6e0083b5825912d045836eebba2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.12/comradex-0.9.12-linux-arm64.tar.gz"
      sha256 "02a2f09e6298de394b3bd53f0f839a5eb4c2a539ae3e5f198bc62f3b95fa2416"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.12/comradex-0.9.12-linux-x86_64.tar.gz"
      sha256 "d40edf59abcf550d2fe12f0d9162eafc00de23195e4aec34c99b46c4c6a0acf3"
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
