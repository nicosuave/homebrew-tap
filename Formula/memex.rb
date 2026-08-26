class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.12.0/memex-0.12.0-macos-arm64.tar.gz"
      sha256 "c9c54c2f6395a5b40f2a486d545f10590cd4b42a9846f56bd1994e95a04312ca"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.12.0/memex-0.12.0-macos-x86_64.tar.gz"
      sha256 "5d3c456d8e0e95852a82bf8da819bcb82ea099651f231ec6678b1ea54484657b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.12.0/memex-0.12.0-linux-arm64.tar.gz"
      sha256 "4b1b43e0b0db4d050d412f4bf37a6caec01ff5bde7fc6ec1642188fbe036c8f6"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.12.0/memex-0.12.0-linux-x86_64.tar.gz"
      sha256 "f0f270ec5d5dfa01fc55a5d3d6202764b12322057a4782fa96c1c5ef04ed0676"
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
