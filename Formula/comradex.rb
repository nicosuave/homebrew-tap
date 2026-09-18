class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.0/comradex-0.14.0-macos-arm64.tar.gz"
      sha256 "cc567726a6fea7c2577b14f299d14b9f2fd9b5dd210add8cfcacc4619c701fce"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.0/comradex-0.14.0-macos-x86_64.tar.gz"
      sha256 "a35c44c56081ddad6db74184376152a140bdb4fc14a81d7df058fb5d9d1a9f7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.0/comradex-0.14.0-linux-arm64.tar.gz"
      sha256 "db7eefa320ae2c68206b5915dfc99141b895251e4a8406e9a3b898ee29a2dd56"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.14.0/comradex-0.14.0-linux-x86_64.tar.gz"
      sha256 "41ec43fbabd1a3eb231eee67d3cf708944750e81b5bd33a400fff9086f198b11"
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
