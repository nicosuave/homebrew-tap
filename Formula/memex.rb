class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.2/memex-0.11.2-macos-arm64.tar.gz"
      sha256 "a724bfae7138854c942da1c3ba286e38fa60817f7246f0e242ca39f3a28da4c8"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.2/memex-0.11.2-macos-x86_64.tar.gz"
      sha256 "eb553ea5c0ac4b311bb37091f8ca0c10576085d4e8dab024ac712c7f608ce40d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.11.2/memex-0.11.2-linux-arm64.tar.gz"
      sha256 "af5ca7d5450a0875275c813a2188e7ea4ae540787d58f0af0d3059b58495ff0f"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.11.2/memex-0.11.2-linux-x86_64.tar.gz"
      sha256 "e5d0d1b3d8b9a231b9a7ae4fb0501a50cf953c379c20461b50011632834389d4"
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
