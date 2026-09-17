class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.22.0"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.22.0/memex-0.22.0-macos-arm64.tar.gz"
    sha256 "2969e143df3227bba9de227287973e533787d6272a2caf4cf4a0552b3a5307ca"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.22.0/memex-0.22.0-linux-arm64.tar.gz"
      sha256 "629afc1b3397dd6830b50f3a6de471f98f7055f3a5a6bb5346a0cca5acf95145"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.22.0/memex-0.22.0-linux-x86_64.tar.gz"
      sha256 "194fb5023dcafe920b6e4e8f2ba564adfb355f732ef8abff93eedaacc5f76ca4"
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
