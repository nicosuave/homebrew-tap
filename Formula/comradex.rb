class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.17.0/comradex-0.17.0-macos-arm64.tar.gz"
      sha256 "622007e36f12074b0af2e492cae5b715c14e90087d2b0aa61ebb9dff2f460b9f"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.17.0/comradex-0.17.0-macos-x86_64.tar.gz"
      sha256 "e2baa4ca2d4b9362088dce6b6ad91a7ee460f3113b0e45ff285ef543608a81a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.17.0/comradex-0.17.0-linux-arm64.tar.gz"
      sha256 "49faf9baca8b9b7c8095025969e9cdb02ccfcea22422c886225fb682c5dc7a27"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.17.0/comradex-0.17.0-linux-x86_64.tar.gz"
      sha256 "d11c247d450231826cd733ef63437f0e629ba0a0d2569ac6620bc13165398f3b"
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
