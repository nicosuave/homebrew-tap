class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.6/comradex-0.9.6-macos-arm64.tar.gz"
      sha256 "1f274660c9597998eefceafe86db6f751fa2e688c2069456cf9bd6222e5369d4"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.6/comradex-0.9.6-macos-x86_64.tar.gz"
      sha256 "628ed32f8535a276025c961ad13ec1787fc6cae46cd3bac3681bcd9b3d3930ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.6/comradex-0.9.6-linux-arm64.tar.gz"
      sha256 "07b0e2a4a412b74fddfdf95bafd564098a9cba72bb407d30ffc58d5a44e07f0f"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.6/comradex-0.9.6-linux-x86_64.tar.gz"
      sha256 "71a3696a7aac53968701c5500dc1deebcfb03f029da5b93a1dc12bc654cbaffa"
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
