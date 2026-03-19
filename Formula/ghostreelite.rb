class Ghostreelite < Formula
  desc "Worktree manager with zmx sessions + Ghostty splits"
  homepage "https://github.com/nicosuave/gmx"
  version "0.1.7"
  license "MIT"

  depends_on "neurosnap/tap/zmx"
  depends_on "worktrunk"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/ghostreelite-#{version}-macos-arm64.tar.gz"
      sha256 "df04d09714e3dcaded3c4d2429196ed4b2aa2f8d14252e7ace2db7984ff8fa1b"
    else
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/ghostreelite-#{version}-macos-x86_64.tar.gz"
      sha256 "86d81e1f0ff452a4de0725941e4daec5c280ea116c18fa72a1a6cd105256ea08"
    end
  end

  def install
    bin.install "ghostreelite"
    bin.install "gtl"
  end

  test do
    assert_match "ghostreelite", shell_output("#{bin}/ghostreelite --help")
  end
end
