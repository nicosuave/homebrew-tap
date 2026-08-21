class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.11.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.6/memex-0.11.6-macos-arm64.tar.gz"
      sha256 "208ddd2073635651af2fe900740002f7adbc6d2f085e5c0c495dff19e4c85395"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.6/memex-0.11.6-macos-x86_64.tar.gz"
      sha256 "37ffac6972c1da1c294aff939a85c9136c7db26bcd97624f6fb1c80aa95418c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.6/memex-0.11.6-linux-arm64.tar.gz"
      sha256 "f647effab44b008888968a8abd8ead022f2dffff009cdcdb56166d7a7cda5487"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.6/memex-0.11.6-linux-x86_64.tar.gz"
      sha256 "87d2939a2826e6ee573f6b0fa1e43dc735103a32078f3129359f192951630737"
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
