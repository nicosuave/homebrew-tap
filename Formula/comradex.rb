class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.5/comradex-0.18.5-macos-arm64.tar.gz"
      sha256 "48fc8ddb0db3574e1232264aecb7bb800bc2afcc9101803f9dbde4994a37397e"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.5/comradex-0.18.5-macos-x86_64.tar.gz"
      sha256 "1929d1161f879e04752fa35c5d740bdcd7aa0cb61affdbb8bf7ae572936a5117"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.5/comradex-0.18.5-linux-arm64.tar.gz"
      sha256 "ac55ce6353df0b1cc96000fc7f1b001f11c938aefff45770f808a61886063683"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.5/comradex-0.18.5-linux-x86_64.tar.gz"
      sha256 "5588009c37afb6479e0f265385e9d32ebbb0d6b7d513fdee883196eb0459d97a"
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
