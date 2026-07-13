class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-macos-arm64.tar.gz"
      sha256 "cca408596eb51791a2c41d8b93464b9a5adf572ce561e9526727074702fa8c9e"
    else
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-macos-x86_64.tar.gz"
      sha256 "ed891954097e5a2389cae8aa5bafa6a347993cde24e90ba0a9959b02dd02acf2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-linux-arm64.tar.gz"
      sha256 "dc665841818cf71b165d1b98dfc6b86fbb5d6185018ff4e5db3ca6fcb694a2e4"
    else
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-linux-x86_64.tar.gz"
      sha256 "60d7d17cbadacf3340e539bf6a834961f35feb99a760d812ccd9a0e6c429630a"
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
