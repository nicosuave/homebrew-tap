class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.2/comradex-0.18.2-macos-arm64.tar.gz"
      sha256 "236674eb56fb0bc80f19b07e2f64a4f2c6f541a65d1c736ecf935b459ec3a9cb"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.2/comradex-0.18.2-macos-x86_64.tar.gz"
      sha256 "66eb9cf69687d7f7e1c5e67df16b22041a4912798bd9189bc143555bfd7c6ea0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.2/comradex-0.18.2-linux-arm64.tar.gz"
      sha256 "aca94f5ae15999eba7ec0984788b02e809e1428dd069a0f632d29e0f4a58949d"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.18.2/comradex-0.18.2-linux-x86_64.tar.gz"
      sha256 "17410028153b91829b51fb4a0acb7086cbb6d8f7b8d7d69feec2adff6c83cac4"
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
