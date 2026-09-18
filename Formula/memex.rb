class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.23.1"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.23.1/memex-0.23.1-macos-arm64.tar.gz"
    sha256 "67a8e667ba35173366073adb386da25a7eb6cf147c8a28ca37b101ebb0065e22"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.23.1/memex-0.23.1-linux-arm64.tar.gz"
      sha256 "713744033117013f3defa550c88b60f93c5d93e799ac1ebba929f67100ad45f8"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.23.1/memex-0.23.1-linux-x86_64.tar.gz"
      sha256 "23b1cf370f6a9a99752369134603326915a0efbd9c1ea5ccf42928404821eb56"
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
