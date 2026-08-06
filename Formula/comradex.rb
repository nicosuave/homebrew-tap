class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.0/comradex-0.9.0-macos-arm64.tar.gz"
      sha256 "fbd137befa3b5d701b73c4f26fb8ae01d2dc8625c341d70ab6c3bdeba89de1b0"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.0/comradex-0.9.0-macos-x86_64.tar.gz"
      sha256 "ec204bd1d989157ecaa2bd85532a2b3d4c9aa721c9c805f17098a189dab6a4c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.0/comradex-0.9.0-linux-arm64.tar.gz"
      sha256 "142c5425e02f47fcb3b5acf8631fb968a50e3c104bee885781b53d226b0010af"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.0/comradex-0.9.0-linux-x86_64.tar.gz"
      sha256 "019bf4a246e53524d162445bb6d6be6a9fee1c33b807514e238d5f1e5f575997"
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
