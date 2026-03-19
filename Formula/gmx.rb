class Gmx < Formula
  desc "Ghostty Multiplexer: tmux-like sessions with native Ghostty splits + zmx"
  homepage "https://github.com/nicosuave/gmx"
  version "0.1.5"
  license "MIT"

  depends_on "neurosnap/tap/zmx"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/gmx-#{version}-macos-arm64.tar.gz"
      sha256 "5cac37397a81b0268ed5bc9c160008897e3a78d6b34a550fb5dd579deb5e3eec"
    else
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/gmx-#{version}-macos-x86_64.tar.gz"
      sha256 "523617ebfd1fdd562876503f8f3ae28f22205ef17140945564baee73e231d46d"
    end
  end

  def install
    bin.install "gmx"
  end

  test do
    assert_match "gmx", shell_output("#{bin}/gmx --help")
  end
end
