class Gmx < Formula
  desc "Ghostty Multiplexer: tmux-like sessions with native Ghostty splits + zmx"
  homepage "https://github.com/nicosuave/gmx"
  version "0.1.8"
  license "MIT"

  depends_on "neurosnap/tap/zmx"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/gmx-#{version}-macos-arm64.tar.gz"
      sha256 "289fa58bb0ece4816026c1fabf5efe18dd1655289e7928d18592ad050a2f3712"
    else
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/gmx-#{version}-macos-x86_64.tar.gz"
      sha256 "321b691b5b9af54e428a5068a7a67925d4cc20053a810260a6c7393c91bfb204"
    end
  end

  def install
    bin.install "gmx"
  end

  test do
    assert_match "gmx", shell_output("#{bin}/gmx --help")
  end
end
