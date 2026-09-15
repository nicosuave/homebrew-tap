class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.21.0"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.21.0/memex-0.21.0-macos-arm64.tar.gz"
    sha256 "f11bae216898b45c51eb82762a16131619fc542b1eb148f43cfaa35efff57a2e"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.21.0/memex-0.21.0-linux-arm64.tar.gz"
      sha256 "5483ba84cda5a0b9d6384851dc4c65a9ec8bd5eb0cf44df23e4f1f2c584c4caa"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.21.0/memex-0.21.0-linux-x86_64.tar.gz"
      sha256 "f9e0e49a1fb39aff8e7c5bcc5267febb62ed7ab039904e2b4b4da98597aa8650"
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
