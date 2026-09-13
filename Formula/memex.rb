class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.19.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.7/memex-0.19.7-macos-arm64.tar.gz"
      sha256 "389fd196999ce80b2bdf83c0e49fc610f51fd386d3e98c21a0804fa2f6485eb2"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.7/memex-0.19.7-macos-x86_64.tar.gz"
      sha256 "bb3dd36e38f4074c4ebbc57e738b39c3a215ee7f742c453732a5125889e33943"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.7/memex-0.19.7-linux-arm64.tar.gz"
      sha256 "e7e4a2f48c23aeb54438a10eb2aa7de50eac887cae4689b08ed24ab7c3f411cb"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.7/memex-0.19.7-linux-x86_64.tar.gz"
      sha256 "2b6bb51980a56bca39964e90a8ef12cc78099df8d25362400f2d038d4e1cebad"
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
