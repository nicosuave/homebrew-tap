class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.27.2"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.27.2/memex-0.27.2-macos-arm64.tar.gz"
    sha256 "ca845c99b9040b055e1667cc88b47ccb8efc1c7c7db4bf2a328aa60662730f73"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.27.2/memex-0.27.2-linux-arm64.tar.gz"
      sha256 "7ee1463b13b7d5467227ff072870634f40dae73c17d83d943542083b6fdaada6"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.27.2/memex-0.27.2-linux-x86_64.tar.gz"
      sha256 "bd57e0f86b801b0b36ddbd2876fc24117f4a5ba6a1882be8ee36f5c105d69f42"
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
