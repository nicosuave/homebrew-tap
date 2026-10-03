class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.15.0/comradex-0.15.0-macos-arm64.tar.gz"
      sha256 "b99e32a297aa3649866216efab5764f3cd1f59f27119d63669d94e304a826baa"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.15.0/comradex-0.15.0-macos-x86_64.tar.gz"
      sha256 "4379217ee17369c2c37df37d4d3ab994da1be23e61aa054dcd20a2d2bf2680b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.15.0/comradex-0.15.0-linux-arm64.tar.gz"
      sha256 "1f54490b45e32e9c29e0acb751bc14c3aff5af0e0b16cef5c9072dc5b0f3e3f0"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.15.0/comradex-0.15.0-linux-x86_64.tar.gz"
      sha256 "f6b761c703634a183dfcf30a71f398f4f005a348a79dfe9d83fb9016b7c5f080"
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
