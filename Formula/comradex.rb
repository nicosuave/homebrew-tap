class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.3/comradex-0.9.3-macos-arm64.tar.gz"
      sha256 "a9904ede6bb43ffc151bc834b010f095612c180b2efca17ef1bcb2e293949ad0"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.3/comradex-0.9.3-macos-x86_64.tar.gz"
      sha256 "3a817f178033e5bacb427b1518f8d168bda179d451d441dd8d002701bf5fd67a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.3/comradex-0.9.3-linux-arm64.tar.gz"
      sha256 "9068f6592ea69f7f78af964aaf79dc011b9a1f184ad943cfe0c3df7a634f6ff5"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.3/comradex-0.9.3-linux-x86_64.tar.gz"
      sha256 "9a77ac3e00e7438c1a209fcff5acf5dabed953ce4d6ae54891b34cbef8988d7a"
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
