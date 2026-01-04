class Agentexport < Formula
  desc "Share Claude Code and Codex session transcripts with end-to-end encryption"
  homepage "https://github.com/nicosuave/agentexport"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-macos-arm64.tar.gz"
      sha256 "8e5b2cbd283ef6f4862b023e4f3292ea5d4083814e621a6b278566d28844d178"
    else
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-macos-x86_64.tar.gz"
      sha256 "5f3f87d0fa9bf082950c50bf997c9bfbf955054a470f6f018f799f3d805c51f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-linux-arm64.tar.gz"
      sha256 "2037c82167d3b3d5129213ac8a9db61bd17a4738651d309fbde3542cb3120a63"
    else
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-linux-x86_64.tar.gz"
      sha256 "1a2a4dc5a814276f3ec3008354543066826fdd94f02871bf01ad643729b873a2"
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
