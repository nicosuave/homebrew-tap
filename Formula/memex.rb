class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.19.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.2/memex-0.19.2-macos-arm64.tar.gz"
      sha256 "51aa6439e1408e930137e03573cefd73e119edcac9e1e73a78050beb2322171d"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.2/memex-0.19.2-macos-x86_64.tar.gz"
      sha256 "c7b654180c52fbfbbbbde7e6a10b58d19fe5b2fa15b60100790063af6e99e92a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.2/memex-0.19.2-linux-arm64.tar.gz"
      sha256 "5b28aba19c5d1366aac84226e24ebe8d3ab97a564be6f018c8c86c15c4cb3cfc"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.2/memex-0.19.2-linux-x86_64.tar.gz"
      sha256 "d1cfe7c519d5ab83b06f2b2d252c5eac179a1b2dd5318670a9b001605fc049ed"
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
