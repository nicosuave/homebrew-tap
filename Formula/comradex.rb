class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.5/comradex-0.10.5-macos-arm64.tar.gz"
      sha256 "e8b7ea3b485b4d0aa890ca12114a1408ecdda258e9c40e6742fda775bc2b0132"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.5/comradex-0.10.5-macos-x86_64.tar.gz"
      sha256 "e130d2482491151a4a598400ae996f07cb6b332c3a6748afc58c2d3053e6ef6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.5/comradex-0.10.5-linux-arm64.tar.gz"
      sha256 "b29db0f88b59ce51f2cfa9a679e4ec1ac4827c79ddb491a1e96481f585c97a8b"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.5/comradex-0.10.5-linux-x86_64.tar.gz"
      sha256 "8d4d787c0864bea7de911a970d681f60f8caea73f869d8a101ee5f89a6352b33"
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
