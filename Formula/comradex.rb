class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.1/comradex-0.19.1-macos-arm64.tar.gz"
      sha256 "75970cf5229a7772d7d790a1bd2be304400aa64d5b062a7058ea1a3f929bb786"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.1/comradex-0.19.1-macos-x86_64.tar.gz"
      sha256 "9947cf5135ffef291f6def0ff721356ad2625be1cae059f2b8e200a0d9111eb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.1/comradex-0.19.1-linux-arm64.tar.gz"
      sha256 "f8c9c207d3bb82697f0212472c69e3ecced9122591f13030c8fcd32db7ff5dad"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.1/comradex-0.19.1-linux-x86_64.tar.gz"
      sha256 "3ba0c86a0d751b2219686607d5a1cfecd3548674a281fae07cfc618b4314cd46"
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
