class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.13.1/comradex-0.13.1-macos-arm64.tar.gz"
      sha256 "ef79880dbc9e45a50a4e535a29f2232d2d99b82db5e79aa329e4707196daad08"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.13.1/comradex-0.13.1-macos-x86_64.tar.gz"
      sha256 "993ea1667e7b57bd6cbdc6f6aeabc1e7ae99443208a20f02cafe3d3b95ea1bc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.13.1/comradex-0.13.1-linux-arm64.tar.gz"
      sha256 "4bf1d451011e7c20c8282797424a70df28a4f46c49cfefccd8ad710304943edb"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.13.1/comradex-0.13.1-linux-x86_64.tar.gz"
      sha256 "bfbeb469a6366370fcf16fcfb462b20450f217b8d2931437f98c66d900039acc"
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
