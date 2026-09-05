class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.17.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.3/memex-0.17.3-macos-arm64.tar.gz"
      sha256 "613067deffdb63290e29995e23ea67e6233f0a91e0f092fbf8b6021f6b4a6df8"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.3/memex-0.17.3-macos-x86_64.tar.gz"
      sha256 "5d877f630feed5bc026cb3d94868ff8beafa400554523fd7e78d4528539852fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.17.3/memex-0.17.3-linux-arm64.tar.gz"
      sha256 "3355c3a9e14c2d3e10006031f39043221067c06104b057ef3fa885c935bb3ca5"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.17.3/memex-0.17.3-linux-x86_64.tar.gz"
      sha256 "1a8c10e2fa35c7b1a1a78b1abae8815d6cae34878fda5734a2938c37fe904e8b"
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
