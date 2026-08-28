class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.12.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.12.2/memex-0.12.2-macos-arm64.tar.gz"
      sha256 "7cd6fc25f0f8af85f9cbfd8137d7d115e1d1f4db3e2b8d3d0bd5e6e41c7d136c"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.12.2/memex-0.12.2-macos-x86_64.tar.gz"
      sha256 "e77dbd16b0ebc078e5218479f834442a54412214147578eb9c58d99a8ac29f73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.12.2/memex-0.12.2-linux-arm64.tar.gz"
      sha256 "f6446974ef0c7b51412cfe8e0731d626c06dd96f2ab9ae789652c49e89c7daed"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.12.2/memex-0.12.2-linux-x86_64.tar.gz"
      sha256 "3fa80c5d8ec3b26f5fe0cb41960a11fb53047747ce35dceaeff0332c0fa63f0c"
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
