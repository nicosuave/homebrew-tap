class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.17.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.5/memex-0.17.5-macos-arm64.tar.gz"
      sha256 "61911c6e589b7734e0f71eeaf23cdfc852f46efb0d86a4c410e83cd888a5d7de"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.5/memex-0.17.5-macos-x86_64.tar.gz"
      sha256 "ac0315c14107651dc38e44187e5c02c225bb48f981b21dbc0496fb0ddd493bb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.5/memex-0.17.5-linux-arm64.tar.gz"
      sha256 "846bd83e50331506b8c67c1598b2cd417138208b816d90b473f409df60c6b944"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.5/memex-0.17.5-linux-x86_64.tar.gz"
      sha256 "0134253eb5ccd72476896d75901c6f834eb23eb909cb2830cc789f5025b2d8f1"
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
