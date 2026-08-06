class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.1/comradex-0.9.1-macos-arm64.tar.gz"
      sha256 "158d64a3c21a300416697f8e66c9985ef9c6ec0d057b111315a8b84da24f71ca"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.1/comradex-0.9.1-macos-x86_64.tar.gz"
      sha256 "0e31062624bae5fc1adccde073c5750faa0d7fe9a52109df822a5d08180cb32a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.1/comradex-0.9.1-linux-arm64.tar.gz"
      sha256 "06dd455860b32f144254bf5286a0ecbbf806a202f903aef5fc7dedcc4594d6d7"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.1/comradex-0.9.1-linux-x86_64.tar.gz"
      sha256 "68867f9ec4a87d6375440b5714e8ef711505c87852362e18c382bc607b210e11"
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
