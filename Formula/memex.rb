class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.23.0"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.23.0/memex-0.23.0-macos-arm64.tar.gz"
    sha256 "2477eacac528fa186c6bdc026cce556fb1ebffdea7141c25cd92a31b5101e0ba"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.23.0/memex-0.23.0-linux-arm64.tar.gz"
      sha256 "4578c81e1d5013d73d0734142fb65e326562a626842664e6d34acdc051e821f2"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.23.0/memex-0.23.0-linux-x86_64.tar.gz"
      sha256 "09326e09a231f041fea27caaec71790aae7a746d133af49f4c02a67be01130cb"
    end
  end

  def install
    bin.install "memex"
  end

  def caveats
    <<~EOS
      Run setup to install the Claude/Codex skill:
        memex setup
    EOS
  end

  test do
    assert_match "memex", shell_output("#{bin}/memex --version")
  end
end
