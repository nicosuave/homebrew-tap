class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.17.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.1/memex-0.17.1-macos-arm64.tar.gz"
      sha256 "0a90fb5052dcffc92f18430802f4901feed254a18cfb18ddb59b749fdb4ed791"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.1/memex-0.17.1-macos-x86_64.tar.gz"
      sha256 "2fb3ff138d7d8b96bf946101daf3a3a75062f1639ead001a71e58943e9b1a910"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.1/memex-0.17.1-linux-arm64.tar.gz"
      sha256 "5c2aa71d4ffa543f4d7a4b9fedfa4e94fe1a467a7e3f52e6ac65a66c52916e8c"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.1/memex-0.17.1-linux-x86_64.tar.gz"
      sha256 "dace1cf6b802920079ae7a69049be56eaea7fd2fa2c349722726684dc21f553e"
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
