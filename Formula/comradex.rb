class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.2/comradex-0.9.2-macos-arm64.tar.gz"
      sha256 "81ec8cccbb721d4aefc18965229cdca3049aa125e5d449b4eb1cc0cca6a0ac29"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.2/comradex-0.9.2-macos-x86_64.tar.gz"
      sha256 "699f6a4fc23e0ac403bc783d71e4442939f8f7f33f3ab723f3e6035790f27fa2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.2/comradex-0.9.2-linux-arm64.tar.gz"
      sha256 "cde74bcd3756101f1320746ccbf0a4f8ae58c37d6cb5b17b4e9855c0d837fd4d"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.2/comradex-0.9.2-linux-x86_64.tar.gz"
      sha256 "be33e6bd26f0bebc10e83abaaff4f726d0d5367e95f29298aee33112c72e9723"
    end
  end

  def install
    bin.install "comradex"
  end

  def caveats
    <<~EOS
      Create a configuration before starting Comradex:
        comradex init
    EOS
  end

  test do
    assert_match "comradex", shell_output("#{bin}/comradex --version")
  end
end
