class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.4/comradex-0.19.4-macos-arm64.tar.gz"
      sha256 "b94a1f84aa6b980ed4eb6db8d9b9c181fb44ab66493e003ecc305981a2a24e8d"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.4/comradex-0.19.4-macos-x86_64.tar.gz"
      sha256 "e2f49fdcb956e14b5935e682a9b387f07380f3c4835be98a251626e5e9677159"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.4/comradex-0.19.4-linux-arm64.tar.gz"
      sha256 "18f2275d631ec474bfa2b194799f36d9acbdaaad61a6a37f25be041fb95a70de"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.19.4/comradex-0.19.4-linux-x86_64.tar.gz"
      sha256 "24490e7479156b6fd10bc3ea0cb47660f3a72c6cce600092729573c7892f77a8"
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
