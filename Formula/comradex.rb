class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.3/comradex-0.11.3-macos-arm64.tar.gz"
      sha256 "80c5ae051dc2863b0782ec41ac5c6d5df7157f9b87117db536fbad4fcb1d84bf"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.3/comradex-0.11.3-macos-x86_64.tar.gz"
      sha256 "7285d3c6f66845c60fe016f299c03dc96239700bd25ce56b87bcd51927c10f23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.3/comradex-0.11.3-linux-arm64.tar.gz"
      sha256 "205ce8d658c2d63451cd90238c2011aad9d6a1351230a69cfb95683cc448517e"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.3/comradex-0.11.3-linux-x86_64.tar.gz"
      sha256 "b485e687d1c1390b84cc697fd2411fc0cd8ccde8a5e06c9425be90d927bca2e0"
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
