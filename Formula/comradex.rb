class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.10/comradex-0.9.10-macos-arm64.tar.gz"
      sha256 "c092cdca2e6c8073d6f12ba42604fc2a975536099c2bb53e604cf90c01ee1e05"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.10/comradex-0.9.10-macos-x86_64.tar.gz"
      sha256 "9b86108e6fd1cd8685d153bea1e14c08d02eb8dcfd63f2de7031727a4a9b3803"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.10/comradex-0.9.10-linux-arm64.tar.gz"
      sha256 "ba3eef9b4fa5f24227c9e0f4990171d9df3edc1bf31c80906f4898daa5a93aa3"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.10/comradex-0.9.10-linux-x86_64.tar.gz"
      sha256 "ac3f1621ba51a44425e205583fb25f1cccc2eace5b06cea7cbcf911c0027fe8d"
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
