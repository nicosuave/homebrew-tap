class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.26.0"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.26.0/memex-0.26.0-macos-arm64.tar.gz"
    sha256 "29a7b13944e1f05164136e062ad7c3037a18a6a9f82ef4ae2e0527ae755b16b1"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.26.0/memex-0.26.0-linux-arm64.tar.gz"
      sha256 "dd55ab9adb3ba39c13c9f48a9aa09156fe2ef31fbd315d09d5388e976440e873"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.26.0/memex-0.26.0-linux-x86_64.tar.gz"
      sha256 "ba722a440d63c985b3f1ba41d145f6028f90e9875b28cab604090d1ec0be651b"
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
