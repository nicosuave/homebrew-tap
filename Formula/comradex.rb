class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-macos-arm64.tar.gz"
      sha256 "2647f4d3e6d15590a27904f1bac4a40f352ac475fc021e27a459e71f50765d06"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-macos-x86_64.tar.gz"
      sha256 "c89af8771d618d2f623e9bafcf880939433f855915d12a30385518abe0474e54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-linux-arm64.tar.gz"
      sha256 "791844ce3232cff7acda37fd3ec60f0873b49b964f141982719b5d5bbd188512"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-linux-x86_64.tar.gz"
      sha256 "dd14308e2eeb1999f9dbdb1219a70d981376e53797a847eeea53fcff14c720cd"
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
