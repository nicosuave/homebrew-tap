class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.4/comradex-0.10.4-macos-arm64.tar.gz"
      sha256 "0b880c40e882e86c1f72138cb764e4ee66714a81f9bed9fdfa25a9b83c749fce"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.4/comradex-0.10.4-macos-x86_64.tar.gz"
      sha256 "f87e9093b6ddd42db96e29be0bc3c13f353366a1fd85896123a74c0ea8c52312"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.4/comradex-0.10.4-linux-arm64.tar.gz"
      sha256 "26205561b5e09a5790116ba7624ac9e9659bb73202df350c0df5fdc858d90a5b"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.4/comradex-0.10.4-linux-x86_64.tar.gz"
      sha256 "312103764d14124d5f1cfc08baa561f6d7a12a5bfb8c2c2e23dd6b7181310ea7"
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
