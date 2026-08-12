class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.1/comradex-0.9.1-macos-arm64.tar.gz"
      sha256 "f12f7f7d94f4067cf15f41e05589fe2901fc9b392129b43a885bdb8d019b323b"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.1/comradex-0.9.1-macos-x86_64.tar.gz"
      sha256 "63d9025cb8ed793bd78a8196f585cfefc74e82bb7178970456028b706c2e5681"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.1/comradex-0.9.1-linux-arm64.tar.gz"
      sha256 "cde74bcd3756101f1320746ccbf0a4f8ae58c37d6cb5b17b4e9855c0d837fd4d"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.1/comradex-0.9.1-linux-x86_64.tar.gz"
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
