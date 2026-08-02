class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-macos-arm64.tar.gz"
      sha256 "56e91373f43c8c7da157ebf2e4c4324ea5c0eb5fc86fccc4195e65ec435040e4"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-macos-x86_64.tar.gz"
      sha256 "eab4c418984404432d8aec2aa7d42b021158bb152f9712ec331e465136486226"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-linux-arm64.tar.gz"
      sha256 "2754e3d8bb6aee0f1111ad0fa86dbdda726d33566d98a6f1bba15158ba90455d"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v#{version}/comradex-#{version}-linux-x86_64.tar.gz"
      sha256 "f5f5fcc4c6bff92d4bcfba1587ea4f18463327fbf657c27d364bdde77dfc302e"
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
