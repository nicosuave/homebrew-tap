class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.19.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.4/memex-0.19.4-macos-arm64.tar.gz"
      sha256 "8c9b26c680e4acae934299f523861c3f5b9f4f9b9a3af303e9976808be52b7dd"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.4/memex-0.19.4-macos-x86_64.tar.gz"
      sha256 "aae6c590786a90ba9df09879a8d66756c5eb0bc00e0cdfc9e0768599b5c9767a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.4/memex-0.19.4-linux-arm64.tar.gz"
      sha256 "7a78df51eb17a977bd782d9d05446571ad1541a60ec9d6fc1271b4cde2d17e29"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.4/memex-0.19.4-linux-x86_64.tar.gz"
      sha256 "b4cb899d8af9b5d2484ca1d25c7cbc423d2d4493afad5323174ac1127098b771"
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
