class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.27.1"
  license "MIT"

  on_macos do
    url "https://github.com/nicosuave/memex/releases/download/v0.27.1/memex-0.27.1-macos-arm64.tar.gz"
    sha256 "a7dde7a85669c0d06a417269f9fa048d0f172cbd57da9be22989a114d4e4bdac"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v0.27.1/memex-0.27.1-linux-arm64.tar.gz"
      sha256 "4720d3086e306c0daf597e8c98bfc93b62fceaa1f83efc041dccf8380a2626fb"
    else
      url "https://github.com/nicosuave/memex/releases/download/v0.27.1/memex-0.27.1-linux-x86_64.tar.gz"
      sha256 "5506556affb9cb522584188ff1b03de8adc5c01c1992af486b2883eef4872e94"
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
