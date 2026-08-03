class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  version "0.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-macos-arm64.tar.gz"
      sha256 "7dd401d74f97feac497e61094f15f1792fe962699ccea860394d14b29a7692ce"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-macos-x86_64.tar.gz"
      sha256 "7fb0289914f0b80eb8d990915241d9ff81240ecf86c2c91bb734f5f94d240497"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-linux-arm64.tar.gz"
      sha256 "067998dfb21d10d058b0da6712536dfba81e3d2c5f9d4313d2b121965a5e27f0"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-linux-x86_64.tar.gz"
      sha256 "bc19c194f760d629845e7a48d48247b46de91162c4f8694e9b081e3c9ad6fec2"
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
