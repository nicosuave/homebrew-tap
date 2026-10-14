class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.1/comradex-0.18.1-macos-arm64.tar.gz"
      sha256 "13218f542c389bfb2bd8dc2deffb495b1644cf1065c159368af5f8219a85aaac"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.1/comradex-0.18.1-macos-x86_64.tar.gz"
      sha256 "b6e0098f8fb3059e95b531733936a4c7ec74144a503914fa1c98873911579682"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.1/comradex-0.18.1-linux-arm64.tar.gz"
      sha256 "7fca567e17135e4f9687e60e5368e4f5907326f9053c4d237abfb86e5d4a96c6"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.1/comradex-0.18.1-linux-x86_64.tar.gz"
      sha256 "4296be121d544cbe97b2548493dabb8dce3351761db99fe04625b9622d237292"
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
