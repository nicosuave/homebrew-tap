class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.4/comradex-0.11.4-macos-arm64.tar.gz"
      sha256 "8d5a59326c01da37a6be8bfbb756b0dca7b39fa8ea8a071466d3a7c971d5f8d1"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.4/comradex-0.11.4-macos-x86_64.tar.gz"
      sha256 "20cf3cb7534956e146d8c0cd8ef5f96f4f237a74f3071b1978a25dd40cab8bf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.4/comradex-0.11.4-linux-arm64.tar.gz"
      sha256 "88028b73b7348a885dcc0021d1aaf9bba05942dd2c06dde1d32e1219b42f0a56"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.4/comradex-0.11.4-linux-x86_64.tar.gz"
      sha256 "382c938334f9a4b6ecb044ec974f0c89f4921caf05086650c56eef681400e5b8"
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
