class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.1/comradex-0.11.1-macos-arm64.tar.gz"
      sha256 "d2113949ff96b24493c7d67dbb439896fba757968138182315f5990402ebcbd1"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.1/comradex-0.11.1-macos-x86_64.tar.gz"
      sha256 "d4fe7936d12b1ab7d243d176272ff3dd4cc9d16f6d484872ab2282f200e018d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.1/comradex-0.11.1-linux-arm64.tar.gz"
      sha256 "56145c09a5a8ad9648cb6974652656e33379b1aced27ddae6d3c24cf8b026070"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.1/comradex-0.11.1-linux-x86_64.tar.gz"
      sha256 "bae1fd0b3f0d72d0aac7d7e32bb6a3cb90b647ba5e73e37381633db2b2f33c03"
    end
  end

  def install
    bin.install "comradex"
  end

  def caveats
    <<~EOS
      Create a configuration before starting Comradex:
        comradex init
    EOS
  end

  test do
    assert_match "comradex", shell_output("#{bin}/comradex --version")
  end
end
