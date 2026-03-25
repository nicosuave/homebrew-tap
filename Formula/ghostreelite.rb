class Ghostreelite < Formula
  desc "Worktree manager with zmx sessions + Ghostty splits"
  homepage "https://github.com/nicosuave/gmx"
  version "0.1.9"
  license "MIT"

  depends_on "neurosnap/tap/zmx"
  depends_on "worktrunk"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/ghostreelite-#{version}-macos-arm64.tar.gz"
      sha256 "79a5835a170300721e6fc8003121868731c19a4514ec93c9a14346f4f7314b25"
    else
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/ghostreelite-#{version}-macos-x86_64.tar.gz"
      sha256 "bf8b45cf39d700d32252d91627597a595c1add20423c9502c2c50404a94a622f"
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
