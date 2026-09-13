class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.12.0/comradex-0.12.0-macos-arm64.tar.gz"
      sha256 "3d68f017e577bee3430e4cceb87ac1c07546c1516e84691583a6de59efd94f8b"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.12.0/comradex-0.12.0-macos-x86_64.tar.gz"
      sha256 "699bc55e55cbf6b56cf6d2e80067589e1fce7ba1b5993d54747b1ab169c79908"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.12.0/comradex-0.12.0-linux-arm64.tar.gz"
      sha256 "5828f02355744afd7a5d3a47641adc42eb9ef9839a65f5587315ec83796e3230"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.12.0/comradex-0.12.0-linux-x86_64.tar.gz"
      sha256 "b881505b54ff22f2440fc6761f616ef61dcc04a15fcdc372eede52696ca102ff"
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
