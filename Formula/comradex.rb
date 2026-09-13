class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.13.0/comradex-0.13.0-macos-arm64.tar.gz"
      sha256 "8da4cb04240e4d46a4d9db9d966be1b1bdace975355f4aacc219a86d833cd47a"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.13.0/comradex-0.13.0-macos-x86_64.tar.gz"
      sha256 "e564d5c4c25082fa59c5ff3d296bd66aa915fda6a64bd3b0f080ad6eeaa495dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.13.0/comradex-0.13.0-linux-arm64.tar.gz"
      sha256 "c4bec8e9a27d02d028af04f86a19793ece0d4b1c5569af1a75ee32b8b178daad"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.13.0/comradex-0.13.0-linux-x86_64.tar.gz"
      sha256 "1ba70c3420cea1e61c2e3c46cd40705af620534a746a2f77266a922863020d68"
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
