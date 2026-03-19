class Ghostreelite < Formula
  desc "Worktree manager with zmx sessions + Ghostty splits"
  homepage "https://github.com/nicosuave/gmx"
  version "0.1.5"
  license "MIT"

  depends_on "neurosnap/tap/zmx"
  depends_on "worktrunk"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/ghostreelite-#{version}-macos-arm64.tar.gz"
      sha256 "b3a75fabc3122c6a862e559f7a6922a25dd7efe9eeefe7a8bcb4031ef4df2cf0"
    else
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/ghostreelite-#{version}-macos-x86_64.tar.gz"
      sha256 "470aeacdf89f4d25f1a58b56ff81f86a7d7dd1202fa3c2707c997d617cc2849e"
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
