class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.15.1/memex-0.15.1-macos-arm64.tar.gz"
      sha256 "76c174cb1540be715e0dc4522df77924650a36ec4a823b9ac9de61fdce9fa97d"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.15.1/memex-0.15.1-macos-x86_64.tar.gz"
      sha256 "a90b0d2e860a4e7629c799e57e33441c9572fef8f4511cd9de0e28c16257bd1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.15.1/memex-0.15.1-linux-arm64.tar.gz"
      sha256 "1f980467168c598bcbecbd2202e0e72f1ce37aa9706bf62df7fa4811f94eada1"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.15.1/memex-0.15.1-linux-x86_64.tar.gz"
      sha256 "38c9a9a9538e3e26ce7df3c9bfd90c1ee2cff7943dae6cb82a7fff393f152326"
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
