class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.6/comradex-0.18.6-macos-arm64.tar.gz"
      sha256 "9cf77675402d6531a583bb175d365ddd3cc007c0110fb3f55c5a91d327d9da46"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.6/comradex-0.18.6-macos-x86_64.tar.gz"
      sha256 "17ad5a2538f55d1c408ade510e9d152c0947cdd42a02be4b9e0e8c0911d8dd12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.6/comradex-0.18.6-linux-arm64.tar.gz"
      sha256 "d9a4f84058f664949b69d88e7c1c8dcf3a25d4931460546668211904e48a31de"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.6/comradex-0.18.6-linux-x86_64.tar.gz"
      sha256 "d1e01c673ca2fb7a480d044fa0907f64b5c48b9fc027cbee6bdf3845af5bc490"
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
