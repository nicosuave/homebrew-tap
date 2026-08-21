class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.7/comradex-0.9.7-macos-arm64.tar.gz"
      sha256 "06530a80002a1ce0c60cdb5574b6b071552af30439d4cade798c2091bf17f109"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.7/comradex-0.9.7-macos-x86_64.tar.gz"
      sha256 "d2ecd148764e2819923345f5f9eb1f6a110e2d81cb7f7dff6f141ed15fa75a0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.7/comradex-0.9.7-linux-arm64.tar.gz"
      sha256 "c38901aaf446bd2d0e31f735e901bbe67d9bb49ab2581a00ef61aabe3a61ba31"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.7/comradex-0.9.7-linux-x86_64.tar.gz"
      sha256 "8be40e99517d4e2da55e954c113bbf8ad734c64104524fcbfa6ad0235b66f388"
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
