class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-macos-arm64.tar.gz"
      sha256 "07df38e3af608359ab3f6e415ee868d3ab12f38e4905d1e5b64d1148072c4b4e"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-macos-x86_64.tar.gz"
      sha256 "a15c784d942ebe1531a2173013a7871989e35a3cc7a876bcaf6cfd8d70004d9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-linux-arm64.tar.gz"
      sha256 "f09be0d1466cbab50b17db20cd6735c5846d60e530fb4165f4941cb43670d28f"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-linux-x86_64.tar.gz"
      sha256 "d3c5e01385d7c0e3c8539d09799b71073f6904ad854139ed095e045e7a46bb8f"
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
