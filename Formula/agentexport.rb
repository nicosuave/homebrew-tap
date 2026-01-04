class Agentexport < Formula
  desc "Share Claude Code and Codex session transcripts with end-to-end encryption"
  homepage "https://github.com/nicosuave/agentexport"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-macos-arm64.tar.gz"
      sha256 "436eef738f8fa748fdc1beea3a9fe6e5e909bf50deb3ad1fdc2c11aec544a53b"
    else
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-macos-x86_64.tar.gz"
      sha256 "2472574abf3741d4adedc7a48c94b88b41b60e9025489db6a3421d63d9edfcc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-linux-arm64.tar.gz"
      sha256 "ce5f0d357cfb1dbd3c84acef8f45c3252883e99118f89018f19294cf2df71e4c"
    else
      url "https://github.com/nicosuave/agentexport/releases/download/v#{version}/agentexport-#{version}-linux-x86_64.tar.gz"
      sha256 "a2f69794c29e0fa6d2f3f11953801ccd942f52f33b64b46bd9a628c05fef05e2"
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
