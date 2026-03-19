class Gmx < Formula
  desc "Ghostty Multiplexer: tmux-like sessions with native Ghostty splits + zmx"
  homepage "https://github.com/nicosuave/gmx"
  version "0.1.1"
  license "MIT"

  depends_on "neurosnap/tap/zmx"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/gmx-#{version}-macos-arm64.tar.gz"
      sha256 "0eea0281967f14be12b06b21d5d83f37bfd99dc43c062397ebd122d62595d41b"
    else
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/gmx-#{version}-macos-x86_64.tar.gz"
      sha256 "1b922fd2bd68cc6417419a36450c1f550b9bab081f371379ff2d55d2aedd0eb7"
    end
  end

  def install
    bin.install "gmx"
  end

  test do
    assert_match "gmx", shell_output("#{bin}/gmx --help")
  end
end
