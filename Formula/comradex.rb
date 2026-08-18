class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.5/comradex-0.9.5-macos-arm64.tar.gz"
      sha256 "9be8b1db14eb4be2f3d2ae8478698594b5372a69dd4e04d5359db0065910b968"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.5/comradex-0.9.5-macos-x86_64.tar.gz"
      sha256 "ebb705168d8bd64a9753a5f62b9298ab08483cf774a88c2cde8c80e1a16ef94c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.5/comradex-0.9.5-linux-arm64.tar.gz"
      sha256 "29a0824c436b3a984005c90c134f9d217aa4587919dd38499d72b96c43cf4aad"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.5/comradex-0.9.5-linux-x86_64.tar.gz"
      sha256 "526eb4cfcec513d932e06b944475f595fe25326e5d5bdc33ba8bcdbf69e7b673"
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
