class Agentexport < Formula
  desc "Share Claude Code and Codex session transcripts with end-to-end encryption"
  homepage "https://github.com/nicosuave/agentexport"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-macos-arm64.tar.gz"
      sha256 "bfffdac75b0287801e8dd9475178d459fedaa1a0c538f5fd02ea67e4e9c2351c"
    else
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-macos-x86_64.tar.gz"
      sha256 "40c832c53f9cb9f3f6127db4aedeec7619aee99267700834d8ec956dc1235807"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-linux-arm64.tar.gz"
      sha256 "f3cc9cb3307d58443386a7be919f1df6e645ee8bbb1d55bd2fe1e92af921c582"
    else
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-linux-x86_64.tar.gz"
      sha256 "b495f29d329e6f3b5b2b0661d08b412c1f5517eaa14eeddd0ff4af13964e006b"
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
