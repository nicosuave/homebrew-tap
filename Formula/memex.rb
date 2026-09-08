class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.18.0/memex-0.18.0-macos-arm64.tar.gz"
      sha256 "481622a5c121cc2c40673968fd64a60d7a98b1a25452de6f3fd203997914d023"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.18.0/memex-0.18.0-macos-x86_64.tar.gz"
      sha256 "adfc81b366ecc7a6a49ca64c4bc810e20ab55c994e334ce5fe066160762f8897"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.18.0/memex-0.18.0-linux-arm64.tar.gz"
      sha256 "f13f22404bdebfb188d4bf328f3b266f93fe784fcf4f09a1bae43672e903bdb6"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.18.0/memex-0.18.0-linux-x86_64.tar.gz"
      sha256 "a5df5ae4f212f696057cedf4a3507683a9149d2b1ec128f4205785d95219b195"
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
