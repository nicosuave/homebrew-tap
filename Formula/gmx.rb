class Gmx < Formula
  desc "Ghostty Multiplexer: tmux-like sessions with native Ghostty splits + zmx"
  homepage "https://github.com/nicosuave/gmx"
  version "0.1.7"
  license "MIT"

  depends_on "neurosnap/tap/zmx"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/gmx-#{version}-macos-arm64.tar.gz"
      sha256 "29393a99b7394a14b523fe08ea901c0b844ce1629a68aadd031ae16366553f0a"
    else
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/gmx-#{version}-macos-x86_64.tar.gz"
      sha256 "4b0b3ffa0808dc0fba4bb56ef0660b71056c62d4e3b885605ae8f86dba3ee9d9"
    end
  end

  def install
    bin.install "gmx"
  end

  test do
    assert_match "gmx", shell_output("#{bin}/gmx --help")
  end
end
