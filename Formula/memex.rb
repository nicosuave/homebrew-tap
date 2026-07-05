class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-macos-arm64.tar.gz"
      sha256 "ce0f6a2ef6526f3191413b92e8ba10473485999bafca87682855e061558c338e"
    else
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-macos-x86_64.tar.gz"
      sha256 "26546717a8795c494f4cdbcd15dfd2dce7f823301b9a74e335b379bbc4f7924b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-linux-arm64.tar.gz"
      sha256 "40928e82d020176fbfacb33ecff012e0add9d223918a7f759d08616b147372a7"
    else
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-linux-x86_64.tar.gz"
      sha256 "ee9167257bfedb4d40da0f9e50bd3cccfe9968593244341ad1d2bd90b52663c1"
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
