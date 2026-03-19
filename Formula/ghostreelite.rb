class Ghostreelite < Formula
  desc "Worktree manager with zmx sessions + Ghostty splits"
  homepage "https://github.com/nicosuave/gmx"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/ghostreelite-#{version}-macos-arm64.tar.gz"
      sha256 "e8dc5db1f4e7fe6bc2d7d12314a42b9beb1bb0ab22ce65f5bf7b7d74df1b966c"
    else
      url "https://github.com/nicosuave/gmx/releases/download/v#{version}/ghostreelite-#{version}-macos-x86_64.tar.gz"
      sha256 "dadad94d87cf95617c664daf2ba1b9a1c36b220e8aba77055831f9f975e0c9ea"
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
