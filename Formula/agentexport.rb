class Agentexport < Formula
  desc "Share Claude Code and Codex session transcripts with end-to-end encryption"
  homepage "https://github.com/nicosuave/agentexport"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-macos-arm64.tar.gz"
      sha256 "bf5a5916c3c404972056fda5925c5d3204842506e52ec6591b5e215c80c82609"
    else
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-macos-x86_64.tar.gz"
      sha256 "0fbf4bec610dc7576dd3a6bae11ac65bc890fac20c0a9b75bf02b745631a44d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-linux-arm64.tar.gz"
      sha256 "5c2557240e27d4cc6f3cc79537fc64cf18b8dc997dca402fbd0c165b0eddb508"
    else
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-linux-x86_64.tar.gz"
      sha256 "d245314033e5313bfeb467020447ba29ca2ffc78aca2f114b7a9e4a856155dbb"
    end
  end

  def install
    bin.install "agentexport"
  end

  def caveats
    <<~EOS
      Run setup to install commands and hooks:
        agentexport setup
    EOS
  end

  test do
    assert_match "agentexport", shell_output("#{bin}/agentexport --version")
  end
end
