class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.11/comradex-0.9.11-macos-arm64.tar.gz"
      sha256 "09ecadbf4407101065475aa86c72e942aa959f88581468d7fa3d41537ca003cf"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.11/comradex-0.9.11-macos-x86_64.tar.gz"
      sha256 "a207483025294139ca25d78402cd62fcca728f5b319b4cd9983a0e303a0fbe5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.11/comradex-0.9.11-linux-arm64.tar.gz"
      sha256 "f5608244b2e50eb61b3a815b740b60d2e41d7151767e975e70b8b983d179267d"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.11/comradex-0.9.11-linux-x86_64.tar.gz"
      sha256 "5c9bb7c50c96ec7c5f5298bdcc2f612bd8acf161c09a09c0655a8e34e52119bc"
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
