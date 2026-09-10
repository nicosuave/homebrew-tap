class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.19.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.1/memex-0.19.1-macos-arm64.tar.gz"
      sha256 "87564f2ba8afad3f5d627d3d79a14a4a231b5f762ee17b42521a9f19cfd7de03"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.1/memex-0.19.1-macos-x86_64.tar.gz"
      sha256 "f45fa6be13242fc51cc30db06a8e62194d1c1d87cd99dfd4b8ef3982c406dc87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.19.1/memex-0.19.1-linux-arm64.tar.gz"
      sha256 "d206805629b7e51d504b12c3e8708749664427094aa5d3f3d30aa73949746139"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.19.1/memex-0.19.1-linux-x86_64.tar.gz"
      sha256 "2ed0cf772907ed72fcb03c21952ec3e157aa9b61982eb56bdedf615805340973"
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
