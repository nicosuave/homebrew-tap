class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.2/comradex-0.11.2-macos-arm64.tar.gz"
      sha256 "b0068195a135b3a8b06d0ca8cc267903a42971b20e10108b79785ef7f1d5f910"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.2/comradex-0.11.2-macos-x86_64.tar.gz"
      sha256 "fb1a61ee470d0d70a17a470b3f673ae2737e70e420660a83b8b5bbd1ef26f2d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.2/comradex-0.11.2-linux-arm64.tar.gz"
      sha256 "fe6a4d8d6ac902496d3ab7316adaa3f2892a0a267b5f210d163ed59d1288ee3f"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.11.2/comradex-0.11.2-linux-x86_64.tar.gz"
      sha256 "aeefda5929bdcf01d16a6efc74e6f02b729a682501211a3d7b80e42145113f54"
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
