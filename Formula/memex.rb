class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.0/memex-0.17.0-macos-arm64.tar.gz"
      sha256 "d4f80f956ff4b50c45174460713eb4c60f8fc09572064e1aea30f8ce1a9876ec"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.0/memex-0.17.0-macos-x86_64.tar.gz"
      sha256 "936a1d843bb58c8852560a16efdcea30c5d55467197c7c6f48832f4c9b67af8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.0/memex-0.17.0-linux-arm64.tar.gz"
      sha256 "de359519584f2d488b03b3ed57530801680139c507da369e585e6666fb25b260"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.0/memex-0.17.0-linux-x86_64.tar.gz"
      sha256 "8d547f14839a42109761aa7ae76cfc9a03600e1697668ffa2e7dd206b0f112ce"
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
