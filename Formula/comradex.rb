class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.1/comradex-0.10.1-macos-arm64.tar.gz"
      sha256 "5aa834fd3b8d2cd28978a931c155aaf2f65672ac70171ce1091df238267dadc5"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.1/comradex-0.10.1-macos-x86_64.tar.gz"
      sha256 "5b7f5e1878aeeeee031527767b625f5f36f64d35dd98765e4f1fdd235af02137"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.1/comradex-0.10.1-linux-arm64.tar.gz"
      sha256 "a022cc847f754004e2fdfea309324d28f703165c79b72b96e4461d2dfdc7bf7d"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.1/comradex-0.10.1-linux-x86_64.tar.gz"
      sha256 "9745fb53ee162f935f99751b43b26b3a501b382c9e6fb93d2e95242ed7b93986"
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
