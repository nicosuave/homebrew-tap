class Gmx < Formula
  desc "Ghostty Multiplexer: tmux-like sessions with native Ghostty splits + zmx"
  homepage "https://github.com/nicosuave/gmx"
  version "0.1.10"
  license "MIT"

  depends_on "neurosnap/tap/zmx"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/gmx-#{version}-macos-arm64.tar.gz"
      sha256 "ce4c56730d1c13f5b524acda641c1eda9bab91fdc7c33e468ea6d04d1a945de9"
    else
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/gmx-#{version}-macos-x86_64.tar.gz"
      sha256 "bf69401301224d0658858de90e24f77db648d8876eba1438dd30bc18f142eaa4"
    end
  end

  def install
    bin.install "gmx"
  end

  test do
    assert_match "gmx", shell_output("#{bin}/gmx --help")
  end
end
