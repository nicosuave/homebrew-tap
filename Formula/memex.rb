class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.15.0/memex-0.15.0-macos-arm64.tar.gz"
      sha256 "5a935c1de2fe9bf2cdf017296fd5b2dc159384faf3b757b8da99b6869230572c"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.15.0/memex-0.15.0-macos-x86_64.tar.gz"
      sha256 "aeb9e366ed763f7ef6c1f2e4e89228d77d8736ba62589ccbe80290ce4da379db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.15.0/memex-0.15.0-linux-arm64.tar.gz"
      sha256 "30ec6ee4d0ffd7b984dcbfc88f3f4ddb8e379b8107ae6e4ea133c7122805c720"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.15.0/memex-0.15.0-linux-x86_64.tar.gz"
      sha256 "807eb7ba440d9a99a14b8d72788bf5a885857cf79731ba33eb9dce27a1a46db1"
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
