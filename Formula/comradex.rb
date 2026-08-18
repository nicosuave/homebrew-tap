class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.4/comradex-0.9.4-macos-arm64.tar.gz"
      sha256 "65d5d5abf5a1d7e4a2dd1b34af4850d8e27be43fd9f7bdbda3a67769e0cea775"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.4/comradex-0.9.4-macos-x86_64.tar.gz"
      sha256 "8c02d966ef7ed8fba3eac0fdfac675a0238bcb31e13a2c07fee9ce68215af25c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.4/comradex-0.9.4-linux-arm64.tar.gz"
      sha256 "5c9813c79ac3e3e763757d58872284534c4bf0a9e8a42a7f9336b943325e0f20"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.4/comradex-0.9.4-linux-x86_64.tar.gz"
      sha256 "2bab2cd74348aeb1a4a9b333bf894e7f806b94d1c4366096a52acc58068d47c5"
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
