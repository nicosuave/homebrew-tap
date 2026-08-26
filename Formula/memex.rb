class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.12.1/memex-0.12.1-macos-arm64.tar.gz"
      sha256 "b5c84b6f80b5c9cf62af6727a2040617927ef9e74c3785be662640bd625cfc33"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.12.1/memex-0.12.1-macos-x86_64.tar.gz"
      sha256 "f266401461e45049d541094ec0c69c8b311d05c29f7b6acc4f302193a32f45a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.12.1/memex-0.12.1-linux-arm64.tar.gz"
      sha256 "d490bb8e301df5f5f0cf29acc240e431deb9ce9f7ac5c46c61d42a74c35b9031"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.12.1/memex-0.12.1-linux-x86_64.tar.gz"
      sha256 "d9c75e276f83e80ea824881d0f153f2c26640f372c8261f471ad8b692e8b5383"
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
