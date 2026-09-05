class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.17.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.2/memex-0.17.2-macos-arm64.tar.gz"
      sha256 "043abdbff25203877f94422bdc48d3d04cd97f505b1091036919c9375ec26d67"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.2/memex-0.17.2-macos-x86_64.tar.gz"
      sha256 "eed66e4de091c5471ed6a07a04ffee1e30640b85605779266bb59608a5e5905a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.2/memex-0.17.2-linux-arm64.tar.gz"
      sha256 "39579127d3da4b1150c9dd50035909180913632a7d1f12d56bd0527c4aeeba7d"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.2/memex-0.17.2-linux-x86_64.tar.gz"
      sha256 "6e5364ca07c8265bb90dc6e7995b8beffa2c6b096e339e3c65ad9f1b2336b381"
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
