class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.3/memex-0.11.3-macos-arm64.tar.gz"
      sha256 "1dd480cbfdb899e7faf4f3b4e4f7c377296bd2aa95b96737120e27fa27475b0c"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.3/memex-0.11.3-macos-x86_64.tar.gz"
      sha256 "8e8a8f5283e5c496ed809a8aa039393d46a6dc5df72b2352158940e74eee6c58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.3/memex-0.11.3-linux-arm64.tar.gz"
      sha256 "18a762ae19effee4d317fa8217ca1e50666d221b8cedcd170183727c45149899"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.3/memex-0.11.3-linux-x86_64.tar.gz"
      sha256 "e1fdbd3f67ffe9ff0b1faae7e8bc29f71a035d65d2f5d77753a7f23184a2a66f"
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
