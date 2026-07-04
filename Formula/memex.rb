class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-macos-arm64.tar.gz"
      sha256 "0a2eedbedd87fe13b29ea03f090184cfa15949d76ac33ce4fae460b07394d305"
    else
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-macos-x86_64.tar.gz"
      sha256 "a6ba7ee3c9eedc35fcbe94cfc37eb76c5417506ac5592aa55ca1e0af78e2e510"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-linux-arm64.tar.gz"
      sha256 "287392ce41f7cf800db3ef8f27f2d33dcbf94166c6496c1a341e2c898bc61b02"
    else
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-linux-x86_64.tar.gz"
      sha256 "12d23832cf3d02864a450e299be6b8e17775915355e168354b672bc1ade1b74c"
    end
  end

  def install
    bin.install "memex"
  end

  def caveats
    <<~EOS
      Run setup to install the Claude/Codex skill:
        memex setup
    EOS
  end

  test do
    assert_match "memex", shell_output("#{bin}/memex --version")
  end
end
