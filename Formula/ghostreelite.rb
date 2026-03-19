class Ghostreelite < Formula
  desc "Worktree manager with zmx sessions + Ghostty splits"
  homepage "https://github.com/nicosuave/gmx"
  version "0.1.4"
  license "MIT"

  depends_on "neurosnap/tap/zmx"
  depends_on "worktrunk"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/ghostreelite-#{version}-macos-arm64.tar.gz"
      sha256 "745ec3dfe78d2038095e7ff4ac9b5dbea65c36a9f0e9dd86b6c3ecac886e7726"
    else
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/ghostreelite-#{version}-macos-x86_64.tar.gz"
      sha256 "3daa607d7359f639061c03e591b1b5a76c02f1a8ab71fc25f5d9c43aa528d0b9"
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
