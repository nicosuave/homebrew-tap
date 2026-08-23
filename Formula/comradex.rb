class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.9/comradex-0.9.9-macos-arm64.tar.gz"
      sha256 "7e729e8a4e12c20a71be72b25d5ff189cdb811a516412de3a12b2de5838c034d"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.9/comradex-0.9.9-macos-x86_64.tar.gz"
      sha256 "564f8f2155a4efbb9d834cb43611b71676aeff186e24bd0ab8446f05eea6e1fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.9/comradex-0.9.9-linux-arm64.tar.gz"
      sha256 "d4c77ca98dec9b263668e44df5c300c00f4bf4c3afc06392a246654736b5fa44"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.9/comradex-0.9.9-linux-x86_64.tar.gz"
      sha256 "fcf50fc216b08fb1635f181620557c090ef8eccafac1915e7124991e90026ee5"
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
