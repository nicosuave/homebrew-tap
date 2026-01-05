class Agentexport < Formula
  desc "Share Claude Code and Codex session transcripts with end-to-end encryption"
  homepage "https://github.com/nicosuave/agentexport"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-macos-arm64.tar.gz"
      sha256 "59a9fe70e73111847435cdac0bb51c5aad734bdc4a227d32052364ad150aed5c"
    else
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-macos-x86_64.tar.gz"
      sha256 "b979088ba933e51d6498c962066082cfaacdd05a8d0d7c6cd22a5df5581e0cbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-linux-arm64.tar.gz"
      sha256 "5a85de29edd6e7313fa9b67599edb4f33a25f680c7967b68bb9fe655bae47c92"
    else
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-linux-x86_64.tar.gz"
      sha256 "4ec04f1eabf7ba4118d22cae022a758a87abac258525f7ac45c654715ca5e1b0"
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
