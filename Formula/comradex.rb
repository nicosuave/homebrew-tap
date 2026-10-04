class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.16.0/comradex-0.16.0-macos-arm64.tar.gz"
      sha256 "8439342dc03001526a4f728309d3d0c3e0e6f33ac2719177f11f69dc4765f78a"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.16.0/comradex-0.16.0-macos-x86_64.tar.gz"
      sha256 "cf61f6c27e6592e3a5b16246d6ee35663fc5b77f842aab4aab7a7510724e2805"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.16.0/comradex-0.16.0-linux-arm64.tar.gz"
      sha256 "3ea854b352a04aad0bfc6f6029d1d3cc94448c70d93bdc69617171ad16b478a2"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.16.0/comradex-0.16.0-linux-x86_64.tar.gz"
      sha256 "bb6e84ba1902f1905d47b50e7b9ae484d80f88b3ae98caba2229400e2a080c86"
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
