class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-macos-arm64.tar.gz"
      sha256 "70afa3bcd6b7cd4bb3152cecd4fc398a03fd5232301e6a00726bb23d4fca28a7"
    else
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-macos-x86_64.tar.gz"
      sha256 "42ffd03dda6969d2626c23513768538c846f7d2f429018c27bd4eb8a3dc7bf43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-linux-arm64.tar.gz"
      sha256 "e08301ca18ac68bee0b79ee6e3c0bca9185038346daf0f438939750e752462a1"
    else
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-linux-x86_64.tar.gz"
      sha256 "199148006c08bf152e627b60675bc1a18f4a7a834be441f2651c6899fa722398"
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
